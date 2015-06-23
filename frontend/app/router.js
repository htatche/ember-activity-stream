import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('stream');
  this.route('login');
  this.route('blogs', { path: '/blogs' }, function() {
    this.route('new');
    this.route('edit', { path: '/:id/edit' });
  });
});

export default Router;