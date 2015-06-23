import Ember from 'ember';

export default Ember.Controller.extend({
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
  }
});