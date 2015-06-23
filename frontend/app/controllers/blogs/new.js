import FormController from './form';

export default FormController.extend({

  actions: {
    submit: function() {
      // var self = this;
      // alert(self.get('current_user'));
      // var blog = self.store.createRecord('blog', {
      //     user:    self.get('current_user'),
      //     name:    self.get('name'),
      //     url:     self.get('url'),
      // });

      // blog.save()
      // .then(
      //   self.onSuccess.bind(self, blog, 'create'),
      //   self.onFail.bind(self)
      // );

      var self = this;
      var user_id = self.get('session.secure.id');
      
      self.store.find('user', user_id).then(function(user) {
        var blog = self.store.createRecord('blog', {
            user:    user,
            name:    self.get('name'),
            url:     self.get('url'),
        });

        blog.save()
        .then(
          self.onSuccess.bind(self, blog, 'create'),
          self.onFail.bind(self)
        );
      });

    }
  }  
});