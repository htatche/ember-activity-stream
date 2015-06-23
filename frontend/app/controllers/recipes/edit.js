import FormController from '../form';

export default FormController.extend({
  actions: {
    submit: function() {
      var self = this;
      var recipe = self.model; 

      recipe.set('name',  self.get('name'));
      recipe.set('text',  self.get('text'));

      self.model.save()
      .then(
        self.onSuccess.bind(self, recipe, 'update'),
        self.onFail.bind(self)
      );

    },

    delete: function() {
      this._super();
    }    
  }  
});