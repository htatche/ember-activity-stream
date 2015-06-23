import DS from 'ember-data';

export default DS.Model.extend({
  user: DS.belongsTo('user', { async: true }),
  blog: DS.belongsTo('blog',  { async: true }),
  recipe: DS.belongsTo('recipe', { async: true }),
  review: DS.belongsTo('review', { async: true }),
  
  action: DS.attr('string'),
  created_at: DS.attr('date')
});
