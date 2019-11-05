const express = require('express');
const path = require('path');
const hbs = require('hbs');

// set the port
const port = process.env.PORT || 3000;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));

// ATTEMPTS AT 404 HANDLING

// app.use('*', require('./routes/index'));

// app.get('*', function(req, res){
//     res.send('what???', 404);
// });

// app.use(function(req, res, next) {
//     return res.status(404).send({ message: 'Route'+req.url+' Not found.' });
// });

// app.use(function(req, res) {
//     res.status(400);
//     res.render('home.hbs');
// });

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})


