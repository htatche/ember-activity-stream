import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

var application;

module('Acceptance | Create a new Blog', {
  beforeEach: function() {
    application = startApp();
  },

  afterEach: function() {
    Ember.run(application, 'destroy');
  }
});

test('a visitor cannot acces /blogs/new', function(assert) {
  invalidateSession();

  visit('/blogs/new');

  andThen(function() {
    assert.equal(currentURL(), '/login');
  });
});

test('a user can submit the form', function(assert) {
  authenticateSession();
  // this.set('session.secure.id', 1);
  // alert(currentSession().get('secure.id'));

  // currentSession().authenticate('authenticator:custom');
  // currentSession().set('secure.id', 1);

  visit('/blogs/new')
  .fillIn('#name', 'This time is for good')
  .fillIn('#url', 'http://blog.thistimeisforgood.com')
  .click('button[type="submit"]')
  .then(function() {
    assert.equal(currentURL(), '/');
  });

});