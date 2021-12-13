
const{executeQuery,executeQueryOne}= require('../utils')
const getAll = () => {
    return executeQuery('SELECT * FROM post ORDER BY date');
}

const create = ({ date, idTypePost, text, usuario_id }) => {
    
    return executeQuery('INSERT INTO post (date, idTypePost, text, usuario_id) VALUES (?, ?, ?, ?)', [date, idTypePost, text,usuario_id]);
}
const getById = (postId) => {
    return executeQueryOne('SELECT * FROM post WHERE id = ?', [postId]);
}

const deleteById = (postId) => {
    return executeQuery('delete from post where id = ?', [postId]);
}







module.exports = { create, getAll,getById,deleteById };



