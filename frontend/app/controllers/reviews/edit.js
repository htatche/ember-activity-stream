import FormController from '../form';

export default FormController.extend({
  actions: {
    submit: function() {
      var self = this;
      var review = self.model; 

      review.set('text',  self.get('text'));

      self.model.save()
      .then(
        self.onSuccess.bind(self, review, 'update'),
        self.onFail.bind(self)
      );

    },

    delete: function() {
      this._super();
    }    
  }  
});