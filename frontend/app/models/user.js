import DS from 'ember-data';

export default DS.Model.extend({
  blogs: DS.hasMany('blog'),
  // recipes: DS.hasMany('recipe'),
  // reviews: DS.hasMany('review'),

  name: DS.attr('string')
});
