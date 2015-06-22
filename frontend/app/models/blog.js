import DS from 'ember-data';

export default DS.Model.extend({
  // user: DS.belongsTo('user'),
  user_id: DS.attr('number'),
  
  name: DS.attr('string'),
  url: DS.attr('string')
});