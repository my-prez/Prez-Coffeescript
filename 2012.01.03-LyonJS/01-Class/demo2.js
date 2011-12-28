var Human, bob, john;
Human = (function() {
  function Human(firstName, lastName) {
    this.firstName = firstName != null ? firstName : "John";
    this.lastName = lastName != null ? lastName : "Doe";
  }
  Human.prototype.hello = function() {
    return console.log("Hello " + this.firstName + " " + this.lastName);
  };
  return Human;
})();