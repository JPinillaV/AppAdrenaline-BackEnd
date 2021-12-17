
const{executeQuery,executeQueryOne}= require('../utils')
const getAll = () => {
    return executeQuery('select post.*,usuario.* from usuario,post where usuario.id = post.usuario_id order by date');
}


const create = ({ date, idTypePost, text, usuario_id }) => {
    
    return executeQuery('INSERT INTO post (date, idTypePost, text, usuario_id) VALUES (?, ?, ?, ?)', [date, idTypePost, text,usuario_id]);
}
const getById = (postId) => {
    return executeQuery('SELECT * FROM post WHERE id = ?', [postId]);
}

const deleteById = (postId) => {
    return executeQuery('delete from post where id = ?', [postId]);
}


const getByUserId = (userId) => {
    return executeQuery('SELECT * FROM post WHERE usuario_id = ?', [userId]);
}







module.exports = { create, getAll,getById,deleteById, getByUserId};



