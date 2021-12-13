//   /api/clientes
//fichero que maneja las rutas de la API DE CLIENTES!
const { getAll, create,getById,deleteById,update } = require('../../models/cliente.model');
const router = require('express').Router()

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