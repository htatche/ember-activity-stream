import DS from 'ember-data';

export default DS.Model.extend({
  user: DS.belongsTo('user'),
  activities: DS.hasMany('activities'),
  
  name: DS.attr('string'),
  text: DS.attr('string'),

  deleted: DS.attr('boolean')
});