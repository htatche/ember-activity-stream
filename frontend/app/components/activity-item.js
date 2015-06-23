import Ember from 'ember';

export default Ember.Component.extend({
  actionIcon: function() {
    switch (this.get('activity.action')) {
        case 'create':
          return 'add';
        case 'update':
          return 'mode edit';
        case 'destroy':
          return 'delete';                    
    }
  }.property(),

  item: function() {
    return this.get('activity').item();
  }.property(),

});
