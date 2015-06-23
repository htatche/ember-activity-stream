import Ember from 'ember';
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin';

export default Ember.Route.extend(AuthenticatedRouteMixin, {  
  setupController: function(controller) {
    controller.set('name', null);
    controller.set('url', null);

    // var user_id = this.get('session.secure.id');
    // user_id = 1;
    // this.store.find('user', user_id).then(function(user) {
      // controller.set('current_user', user);
    // });
  }
});