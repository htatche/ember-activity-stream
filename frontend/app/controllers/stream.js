import Ember from 'ember';

export default Ember.Controller.extend({
  sortedDescList: function() {
    var array = Ember.ArrayProxy.createWithMixins(Ember.SortableMixin, {
      sortProperties: ['created_at'],
      sortAscending: false,
      content: this.get('model')
    });

    return array;
  }.property('model'),

  newRecord: function(item, user, action) {
    var self = this;

    var activity = self.store.createRecord('activity', {
        user:        user,
        blog:        item.constructor.typeKey === 'blog' ? item : null,
        recipe:      item.constructor.typeKey === 'recipe' ? item : null,
        review:      item.constructor.typeKey === 'review' ? item : null,
        action:      action,
        created_at:  new Date()
    });    

    activity.save();
  },

  actions: {
    closeAlert: function() {
      $('#signin-alert').fadeOut( 1000, function() {
        $( this ).remove();
      });      
    }
  }
});