import FormController from '../form';

export default FormController.extend({

  actions: {
    submit: function() {
      var self = this;
      var recipe = self.store.createRecord('recipe', {
          user:     self.get('current_user'),
          name:     self.get('name'),
          text:     self.get('text'),
      });

      recipe.save()
      .then(
        self.onSuccess.bind(self, recipe, 'create'),
        self.onFail.bind(self)
      );

    }
  }  
});