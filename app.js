const express = require('express');
const cors = require('cors');
const path = require('path');
const app = express();

app.use(cors());
app.use('/imagenes', express.static(path.join(__dirname, 'public/imagenes')));

//Routers:
const routerLibros= require('./Routers/RoutersLibros.js')
const routerPersonajes = require('./Routers/RoutersPersonajes');
const routerMundos = require('./Routers/RoutersMundos');
const routerBusqueda = require('./Routers/RoutersBusqueda.js');

app.use('/api/cosmere/libros', routerLibros);
app.use('/api/cosmere/personajes', routerPersonajes);
app.use('/api/cosmere/mundos', routerMundos);
app.use('/api/cosmere/buscar', routerBusqueda);


////Routing: Ruta inicio:
app.get('/', (req,res) =>{
    res.send('Escuchando servidor del cosmere...');
});

const PUERTO= process.env.PORT||3000;

// Arrancar el servidor
app.listen(PUERTO, () => {
  console.log(`Servidor Express en ${PUERTO}`);
});