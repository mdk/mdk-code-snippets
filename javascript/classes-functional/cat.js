function buildCat(name) {
  var spec = {};
  spec.name = name;
  spec.age = 10;
  var that = {}
  
  function privateSay(str) {
    console.log(str);
  }
  
  that.presentSelf = function() {
    privateSay(spec.name);
  }
  
  that.getAge = function() {
    return spec.age;
  }
  
  return that;
}

var cat = buildCat('Murphy');
cat.presentSelf();
console.log("Cat age is %d", cat.getAge());
