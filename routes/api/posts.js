const router = require('express').Router()
const fs = require('fs');
const multer = require('multer');
const upload = multer({dest:'public/images'})



const {  create, getAll, getById, deleteById, getByUserId } = require('../../models/post.model');


router.get('/', async (req, res) => {
    const post = await getAll();
    res.json(post);
});

router.post('/create', upload.single('photoPost'), async (req, res) => {
    const extension = '.' + req.file.mimetype.split('/')[1];
    const newName = req.file.filename + extension;
    const path = req.file.path + extension;
    fs.renameSync(req.file.path, path)
    
    req.body.photoPost = 'http://localhost:3000/images/'+ newName;
    
    const post = await create(req.body,req.user.id);
    res.json(post);
});
router.get('/:id', async (req, res) => {
    const post = await getById(req.params.id);
    res.json(post);
});
router.get('/user/:id', async (req, res) => {
    console.log(req.params.id);
    const post = await getByUserId(req.params.id);
    res.json(post);
});

router.delete('/:id', async (req, res) => {
    const post = await deleteById(req.body.id);
    res.json(post)
})


module.exports = router;