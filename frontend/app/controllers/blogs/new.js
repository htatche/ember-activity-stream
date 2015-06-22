import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submit: function() {

      var self = this;

      var blog = self.store.createRecord('blog', {
          user_id: self.get('session.secure.email'),
          title:   self.get('name'),
          url:     self.get('url'),
      });

      var onSuccess = function() {
        self.transitionToRoute('/');
      };

      var onFail = function(err) {
        alert(JSON.stringify(err));
      };

      blog.save().then(onSuccess, onFail);
    }
  }  
});