const router = require('express').Router()



const {  create, getAll, getById, deleteById } = require('../../models/like.model');


router.get('/', async (req, res) => {
    const post = await getAll();
    res.json(post);
});

router.post('/create', async (req, res) => {
   
    const post = await create(req.body);
    res.json(post);
});
router.get('/id', async (req, res) => {
    console.log(req.body);
    const post = await getById(req.body.idlike);
    res.json(post);
});
router.delete('/id', async (req, res) => {
    const post = await deleteById(req.body.idlike);
    res.json(post)
})



module.exports = router;