function Controller(type) {
  this.rootElement = document.createElement(type);
  this.controllers = {};
}

Controller.prototype.className = function(cls) {
  this.rootElement.className = cls;
  return this;
}

Controller.prototype.content = function(c) {
  this.rootElement.innerHTML = c;
  return this;
}

Controller.prototype.children = function() {
  var l = arguments.length;
  var argument;
  var i, key;
  
  for (i = 0; i < l; i++) {
    argument = arguments[i];
    this.rootElement.appendChild(argument.rootElement);
    for (key in argument.controllers) {
      this.controllers[key] = argument.controllers[key];
    }
  }
  
  return this;
}

Controller.prototype.name = function(name) {
  this.controllers[name] = this;
  return this;
}

document.addEventListener('DOMContentLoaded', function() {
  
  var ctrl = new Controller('ul').children(
    new Controller('li').content('First item').name('first'), 
    new Controller('li').content('Second item')
  ).className('lista');
  
  ctrl.controllers['first'].rootElement.innerHTML = "Modified";

  document.body.appendChild(ctrl.rootElement);
    
}, false);

