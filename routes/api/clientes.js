//   /api/clientes
//fichero que maneja las rutas de la API DE CLIENTES!
const { getAll, create,getById,deleteById,update } = require('../../models/cliente.model');
const router = require('express').Router()
const fs = require('fs');
const multer = require('multer');
const upload = multer({dest:'public/images'})


router.get('/', async (req, res) => {
    try {
        // Siempre que pasemos a través del middleware checkToken, en la propiedad req.user tenemos los datos del usuario logado
        //console.log(req.user);
        const result = await getAll();
        res.json(result);
    } catch (err) {
        res.json({ error: err.message });
    }
});
router.get('/profile', async (req, res) => {
    try {
        const result = await getById(req.user.id)
        res.json(result);
    } catch (err) {
        res.json({ error: err.message });
    }
})
router.post('/update', upload.single('photo'), async (req, res) => {
    const extension = '.' + req.file.mimetype.split('/')[1];
    const newName = req.file.filename + extension;
    const path = req.file.path + extension;
    fs.renameSync(req.file.path, path)

    req.body.photo = 'http://localhost:3000/images/'+ newName;
    try {
        const post = await update(req.user.id,req.body);
        res.json(post);
    } catch (err) {
        res.json({error: err.message })
    }  
});

router.get('/:usuarioId', async (req, res) => {
    let result;
    try {
        result = await getById(req.params.usuarioId);
    } catch (err) {
        res.json({ error: err.message });
    }

    if (!result) {
        return res.json({ error: 'El id no es correcto' });
    }
    res.json(result);
});




router.put('/:usuarioId', async (req, res) => {
    const result = await update(req.params.usuarioId, req.body);
    res.json(result);
});
router.delete('/:usuarioId', async (req, res) => {
    const result = await deleteById(req.params.usuarioId);
    res.json(result);
});



module.exports = router;