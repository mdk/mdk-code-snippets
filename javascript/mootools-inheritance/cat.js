var Cat = new Class ({
  Implements: Log,
  Extends: Animal,
  initialize: function() {
    this.parent();
  },
  feed: function() {
    this.log("Am am... tasty!");
  }
});
