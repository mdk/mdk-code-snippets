var Parrot = new Class ({
  Extends: Animal,
  Implements: [Singer, Log],
  initialize: function() {
    this.parent();
    this.initializeSinger();
  },
  feed: function() {
    this.log("Am am... nice birdy food!");
  }
});
