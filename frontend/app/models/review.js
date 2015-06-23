import DS from 'ember-data';

export default DS.Model.extend({
  user: DS.belongsTo('user'),
  activities: DS.hasMany('activities'),
  
  text: DS.attr('string'),

  deleted: DS.attr('boolean'),
});