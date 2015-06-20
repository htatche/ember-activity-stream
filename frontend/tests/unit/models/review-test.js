import DS from 'ember-data';
import Ember from 'ember';
import { test, moduleForModel } from 'ember-qunit';
 
moduleForModel('review', 'Review Model', {
  needs: ['model:user', 'model:blog', 'model:recipe']
});
  
test('Review is a valid ember-data Model', function (assert) {
  var parent = this;

  Ember.run(function(){
    var user = parent.store().createRecord('user', {
      name: 'Herve'
    });

    var review = parent.subject({
      text: 'I did like the new Jurassic Park 3, however the 3D...',
      user: user});

    assert.ok(review);
    assert.ok(review instanceof DS.Model);
  });
  
});