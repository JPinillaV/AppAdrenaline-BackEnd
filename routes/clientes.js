const router = require('express').Router();

router.get('/', (req, res) => {
    res.send('pinta la lista de clientes');
})
router.get('/new', (req, res) => {
    res.send('pinta un formulario');
})
router.post('/create', (req, res) => {
    res.send('Recibe un cliente y lo inserta');
})
router.post('/edit', (req, res) => {
    res.send('Formulario para editar');
})
router.post('/update', (req, res) => {
    res.send('Recibe los datos y edita el cliente');
})
router.get('/delete', (req, res) => {
    res.send('Borra los datos del cliente')
})




module.exports = router;