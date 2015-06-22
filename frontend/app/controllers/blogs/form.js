import Ember from 'ember';

export default Ember.Controller.extend({

  onSuccess: function() {
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
      .then(this.onSuccess.bind(this), this.onFail.bind(this));  
    }
  }  
});