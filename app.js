const express = require('express');
const app = express();
const PORT =  3001;

app.get('/', (req, res) => {
  res.send('Hola Mundo desde Express!');
});

app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});
