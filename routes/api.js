const res = require('express/lib/response');

const router = require('express').Router();

const apiClientesRouter = require('./api/clientes');
const apiUsersRouter = require('./api/users');
const apiPostsRouter = require('./api/posts');




const { checkToken } = require('./middlewares');

router.use('/clientes', checkToken, apiClientesRouter);
router.use('/users', apiUsersRouter);
router.use('/posts',checkToken, apiPostsRouter);




module.exports = router;