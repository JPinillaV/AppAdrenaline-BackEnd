const jwt = require('jsonwebtoken');
const dayjs = require('dayjs');

const { getById } = require('../models/cliente.model');

const checkToken = async (req, res, next) => {
    // 1 - Si el TOKEN viene incluido en la petición (headers)
    if (!req.headers['authorization']) {
        return res.status(401).json({ error: 'Debes incluir la cabecera de autorización' });
    }

    // 2 - Que el TOKEN sea correcto
    const token = req.headers['authorization'];

    let obj;
    try {
        obj = jwt.verify(token, process.env.SECRET_KEY);
    } catch (err) {
        return res.status(401).json({ error: 'El token está malamente' });
    }

    // 3 - Que el TOKEN no esté expirado
    if (dayjs().unix() > obj.expiredAt) {
        return res.status(401).json({ error: 'El token está caducado' });
    }

    // 4 - A partir del TOKEN recuperamos el usuario logado
    const usuario = await getById(obj.usuarioId);
    req.user = usuario;

    next();
}

// const checkRole = (req, res, next) => {
//     if (req.user.role !== 'admin') {
//         return res.json({ error: 'Sección solo para administradores' });
//     }
//     next();
// }

// const checkRole = (role) => {
//     return (req, res, next) => {
//         if (req.user.role !== role) return res.status(403).json({ error: 'No puedes pasar' });
//         next();
//     }
// }

module.exports = { checkToken };