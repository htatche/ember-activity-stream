import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

var application;

module('Acceptance | user can login', {
  beforeEach: function() {
    application = startApp();

    invalidateSession();
  },

  afterEach: function() {
    Ember.run(application, 'destroy');
  }
});

test('visit /login', function(assert) {
  visit('/login');

  andThen(function() {
    assert.equal(currentURL(), '/login');
  });
});

test('there is a login form', function(assert) {
  visit('/login');

  andThen(function() {
    assert.ok(find('#email'));
    assert.ok(find('#password'));
    assert.ok(find('button[type=submit]'));
  });
});