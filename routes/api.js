const res = require('express/lib/response');

const router = require('express').Router();




const apiClientesRouter = require('./api/clientes');

router.use('/clientes', apiClientesRouter);



module.exports = router;