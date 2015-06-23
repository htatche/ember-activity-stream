import Ember from 'ember';
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin';

export default Ember.Route.extend(AuthenticatedRouteMixin, {  
  model: function(params) {
    return this.store.find('review', params.id);
  },
  
  setupController: function(controller, model) {
    controller.set('model', model);

    controller.set('text', model.get('text'));
  }  
});