import { moduleForModel, test } from 'ember-qunit';

moduleForModel('activity', 'Unit | Model | activity', {
  // Specify the other units that are required for this test.
  needs: ['model:user', 'model:blog', 'model:recipe', 'model:review']
});

test('it exists', function(assert) {
  var model = this.subject();
  // var store = this.store();
  assert.ok(!!model);
});
