import Ember from 'ember';
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin';

export default Ember.Route.extend(AuthenticatedRouteMixin, {  
  setupController: function(controller) {
    var user_id = this.get('session.secure.id');
    
    controller.set('text', null);

    this.store.find('user', user_id).then(function(user) {
      controller.set('current_user', user);
    });
  }
});