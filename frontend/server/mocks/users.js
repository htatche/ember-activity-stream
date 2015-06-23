module.exports = function(app) {
  var express = require('express');
  var bodyParser = require('body-parser');
  var blogsRouter = express.Router();

  // Log in with a static token and request email
  app.use(bodyParser.urlencoded());

  blogsRouter.post('/users/signs_in', function(req, res) {
    res.send({'id': 1, 'token':'RLAkTLcuy7pJZh5ds21-','email':req.body.user.email});
    res.status(201).end();
  });  

  blogsRouter.get('/api/users/:id', function(req, res) {
    res.send({
      'user': {
        'id': 1,
        'name': 'Allene',
        'blog_ids': [],
        'activity_ids': []
      },
      'blogs': [],
      'activities': []
    });
  });

  app.use('/', blogsRouter);
};