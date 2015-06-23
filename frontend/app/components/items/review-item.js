import Ember from 'ember';

export default Ember.Component.extend({
  overview: function() {
    // Records load async so it could be empty first
    var text = this.get('item.text') || '';
    return text.substring(0, 10) + '...';
  }.property('item.text')
});
