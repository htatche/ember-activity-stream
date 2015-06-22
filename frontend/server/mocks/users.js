module.exports = function(app) {
  var express = require('express');
  var bodyParser = require('body-parser');
  var blogsRouter = express.Router();

  // Log in with a static token and request email
  app.use(bodyParser.urlencoded());

  blogsRouter.post('/sign_in', function(req, res) {
    res.send({"token":"RLAkTLcuy7pJZh5ds21-","email":req.body.user.email});
    res.status(201).end();
  });  

  app.use('/users', blogsRouter);
};