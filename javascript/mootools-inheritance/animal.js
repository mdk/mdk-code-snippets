var Animal = new Class({
  Implements: Log,
  initialize: function() {
    this.name = null;
  },
  feed: function() {
    throw 'Feed method should be overriden!';
  }
});
