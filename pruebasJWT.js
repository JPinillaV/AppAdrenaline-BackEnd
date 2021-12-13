const jwt = require('jsonwebtoken');

const token = jwt.sign({ id_usuario: 3 }, 'clave ultra secreta');

console.log(token);