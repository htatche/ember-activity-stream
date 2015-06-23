import FormController from '../form';

export default FormController.extend({

  actions: {
    submit: function() {
      var self = this;
      var review = self.store.createRecord('review', {
          user:     self.get('current_user'),
          text:     self.get('text'),
      });

      review.save()
      .then(
        self.onSuccess.bind(self, review, 'create'),
        self.onFail.bind(self)
      );

    }
  }  
});