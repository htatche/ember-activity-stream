import DS from 'ember-data';
import Ember from 'ember';
import { test, moduleForModel } from 'ember-qunit';
 
moduleForModel('recipe', 'Recipe Model', {
  needs: ['model:user', 'model:blog', 'model:review', 'model:activity']
});
  
test('Recipe is a valid ember-data Model', function (assert) {
  var parent = this;

  Ember.run(function(){
    var user = parent.store().createRecord('user', {
      name: 'Herve'
    });

    var recipe = parent.subject({
      title: 'Chicken with curry',
      text: 'Begin by cutting the chicken into 1/4-inch slices...',
      user: user});

    assert.ok(recipe);
    assert.ok(recipe instanceof DS.Model);
  });
  
});