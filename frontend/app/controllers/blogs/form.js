import Ember from 'ember';

export default Ember.Controller.extend({
  needs: ['stream'],

  onSuccess: function(item, action) {
    var self = this;
    var user_id = self.get('session.secure.id');
    
    self.store.find('user', user_id).then(function(user) {    
      self.get('controllers.stream').newRecord(item, user, action);
    });

    this.transitionToRoute('/');
  },

  onFail: function(err) {
    this.rollback();
  },

  sendRequest: function(model) {
    model.save().then(onSuccess, onFail);
  },

  actions: {
    delete: function() {
      this.model.destroyRecord()
      .then(
        this.onSuccess.bind(this, this.model, 'destroy'),
        this.onFail.bind(this)
      );  
    }
  }  
});