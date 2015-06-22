import Ember from 'ember';
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin';

export default Ember.Route.extend(AuthenticatedRouteMixin, {  
  setupController: function(controller, model) {
    controller.set('name', null);
    controller.set('url', null);
  }
});