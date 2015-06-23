import Ember from 'ember';

export default Ember.Route.extend({  
  model: function() {
    return this.store.find('blog');
  },
  setupController: function(controller) {
    this.store.find('activity').then(function(activities) {
      controller.set('activities', activities); 
    });
  }      
});