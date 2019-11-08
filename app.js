const express = require('express');
const path = require('path');
const hbs = require('hbs');

// set the port - where the application gets served from
const port = process.env.PORT || 3000;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));

app.use((req, res, next) => {
    // this is an object
    var err = new Error('Ah! You Found Me.');
    err.status = 404;
    // notice how this does NOT end in a semicolon
    err.customMessage = "But I couldn't find the page you were looking for. Sorry about that!"

    // pass the error onto the next function
    next(err);
})

app.use((err, req, res, next) => {
    res.render('error', { data: err, layout: 'error_page' })
})

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


