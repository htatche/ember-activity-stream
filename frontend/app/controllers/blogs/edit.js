import FormController from './form';

export default FormController.extend({
  actions: {
    submit: function() {
      var self = this;
      var blog = self.model; 

      blog.set('name', self.get('name'));
      blog.set('url',  self.get('url'));

      self.model.save()
      .then(self.onSuccess.bind(self), self.onFail.bind(self));       
    },

    delete: function() {
      this._super();
    }    
  }  
});