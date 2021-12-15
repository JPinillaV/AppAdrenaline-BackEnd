const{executeQuery,executeQueryOne}= require('../utils')
const getAll = () => {
    return executeQuery('select * from usuario');
}

const create = ({ nombre, username, password, email }) => {
    
    return executeQuery('INSERT INTO usuario (nombre, username, password, email) VALUES (?, ?, ?, ?)', [nombre, username, password, email]);
}
const getById = (usuarioId) => {
    return executeQueryOne('SELECT * FROM usuario WHERE id = ?', [usuarioId]);
}
const getByEmail = (email) => {
    return executeQueryOne('SELECT * FROM usuario WHERE email = ?', [email]);
}
const deleteById = (usuarioId) => {
    return executeQuery('delete from usuario where id = ?', [usuarioId]);
}



const update = (usuarioId, { nombre, username, email, photo }) => {
    
    return executeQuery (
        'UPDATE usuario SET nombre = ?, username = ?, email = ?, photo = ? WHERE id = ?',
        [nombre, username, email,photo, usuarioId]);
}

module.exports = { create, getAll,update,getById,deleteById,getByEmail };