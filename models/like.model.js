const{executeQuery,executeQueryOne}= require('../utils')
const getAll = () => {
    return executeQuery('SELECT * FROM likes');
}

const create = ({ idlike,idPost,date,usuario_id }) => {
    
    return executeQuery('INSERT INTO likes (idlike,idPost,date,usuario_id) VALUES (?, ?, ?, ?)', [idlike, idPost, date, usuario_id]);
}
const getById = (idlike) => {
    return executeQueryOne('SELECT * FROM LIKES WHERE idlike = ?', [idlike]);
}

const deleteById = (idlike) => {
    return executeQuery('delete from LIKES where idlike = ?', [idlike]);
}







module.exports = { create, getAll,getById,deleteById };