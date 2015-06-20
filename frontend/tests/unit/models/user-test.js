import DS from 'ember-data';
import Ember from 'ember';
import { test, moduleForModel } from 'ember-qunit';
 
moduleForModel('user', 'User Model', {
  needs: ['model:blog', 'model:recipe', 'model:review']
});
  
test('User is a valid ember-data Model', function (assert) {
  var store = this.store();

  var user = this.subject({name: 'Herve'});
  assert.ok(user);
  assert.ok(user instanceof DS.Model);
});

test('User can fetch records', function (assert) {
  var store = this.store();

  var users = store.find('user'); 
  assert.ok(users);
});