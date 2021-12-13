

const executeQuery = (query, data = []) => {
    return new Promise((resolve, reject) => {
        db.query(query, data, (err, result) => {
            if (err) return reject(err);
            resolve(result);
        })
    });
}

const executeQueryOne = (query, data = []) => {
    return new Promise((resolve, reject) => {
        db.query(query, data, (err, result) => {
            if (err) return reject(err);
            if (result.length === 0) return resolve(null);
            resolve(result[0]);
        })
    });
}
/**
 * Función que genera un token para identificar al usuario en el API
 * @param {any} usuario Usuario para la generación del token
 * @returns Devuelve el token para identificar al usuario
 */
const createToken = (usuario) => {
    const obj = {
        usuarioId: usuario.id,
        expiredAt: dayjs().add(5, 'days').unix()
    }

    return jwt.sign(obj, process.env.SECRET_KEY);
}







module.exports = {
    executeQuery,executeQueryOne,createToken
}