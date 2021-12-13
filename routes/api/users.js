

const router = require('express').Router()
const bcrypt = require('bcryptjs');
const { createToken } = require('../../utils')
const { checkToken} = require('../middlewares')
const { create, getById, getByEmail } = require('../../models/cliente.model');


router.post('/create', (req, res) => {
    console.log( req.body);
    create(req.body)
        .then(async result => {
            // result.insertId -> ID del nuevo cliente
            const resultById = await getById(result.insertId);
            res.json(resultById);
        })
        .catch(err => {
            res.json({ error: err.message });
        });
});
router.post('/login', async (req, res) => {
    // 1 - ¿Existe el email en la base de datos?
    const usuario = await getByEmail(req.body.email);
    if (!usuario) {
        return res.json({ error: 'Error email y/o password 1' });
    }
    // 2 - Compruebo si coinciden las password
    const iguales = bcrypt.compareSync(req.body.password, usuario.password);
    if (iguales) {
        res.json({ token: createToken(usuario) });
    } else {
        res.json({ error: 'Error email y/o password 2' });
    }
});


module.exports = router;