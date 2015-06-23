import Ember from 'ember';

export default Ember.Component.extend({

  item: function() {
    return this.get('activity').item();
  }.property(),

  isAdded: function() {
    return this.get('activity.action') === 'create';
  }.property(),

  isEdited: function() {
    return this.get('activity.action') === 'update';
  }.property(),

  isDeleted: function() {
    return this.get('activity.action') === 'destroy';
  }.property()    

});
