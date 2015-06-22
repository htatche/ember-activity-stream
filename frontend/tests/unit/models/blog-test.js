import DS from 'ember-data';
import Ember from 'ember';
import { test, moduleForModel } from 'ember-qunit';
 
moduleForModel('blog', 'Blog Model', {
  needs: ['model:user', 'model:recipe', 'model:review']
});
  
test('Blog is a valid ember-data Model', function (assert) {
  var parent = this;

  Ember.run(function(){
    var user = parent.store().createRecord('user', {
      name: 'Herve'
    });

    var blog = parent.subject({name: 'This time is for good', url: 'http://blog.thistimeisforgood.com', user: user});
    assert.ok(blog);
    assert.ok(blog instanceof DS.Model);
  });
  
});