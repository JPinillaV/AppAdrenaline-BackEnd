const router = require('express').Router()



const {  create, getAll, getById, deleteById, getByUserId } = require('../../models/post.model');


router.get('/', async (req, res) => {
    const post = await getAll();
    res.json(post);
});

router.post('/create/:id', async (req, res) => {
   
    const post = await create(req.body);
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