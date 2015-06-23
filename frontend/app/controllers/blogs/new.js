import FormController from '../form';

export default FormController.extend({

  actions: {
    submit: function() {
      var self = this;
      var blog = self.store.createRecord('blog', {
          user:    self.get('current_user'),
          name:    self.get('name'),
          url:     self.get('url'),
      });

      blog.save()
      .then(
        self.onSuccess.bind(self, blog, 'create'),
        self.onFail.bind(self)
      );

    }
  }  
});