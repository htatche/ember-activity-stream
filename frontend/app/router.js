import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('login');
  this.route('stream');

  this.route('blogs', { path: '/blogs' }, function() {
    this.route('new');
    this.route('edit', { path: '/:id/edit' });
  });

  this.route('recipes', { path: '/recipes' }, function() {
    this.route('new');
    this.route('edit', { path: '/:id/edit' });
  });

  this.route('reviews', { path: '/reviews' }, function() {
    this.route('new');
    this.route('edit', { path: '/:id/edit' });
  });
});

export default Router;