HTMLElement.prototype.$className = function(cls) {
  this.className = cls;
  return this;
}

HTMLElement.prototype.$content = function(c) {
  this.innerHTML = c;
  return this;
}

HTMLElement.prototype.$children = function() {
  var l = arguments.length;
  var argument;
  var i, key;
  
  for (i = 0; i < l; i++) {
    argument = arguments[i];
    this.appendChild(argument);
    
    if (argument.$elements && ! this.$elements) {
      this.$elements = {};
    }
    
    for (key in argument.$elements) {
      this.$elements[key] = argument.$elements[key];
    }
    
    argument.$elements = null;
  }
  
  return this;
}

HTMLElement.prototype.$name = function(name) {
  if (! this.$elements) {
    this.$elements = {};
  }
    
  this.$elements[name] = this;
  return this;
}

document.addEventListener('DOMContentLoaded', function() {
  
  var ctrl = document.createElement('ul').$children(
    document.createElement('li').$content('First item').$name('first'), 
    document.createElement('li').$content('Second item')
  ).$className('lista');
  
  ctrl.$elements['first'].innerHTML = "Modified";

  document.body.appendChild(ctrl);
    
}, false);

