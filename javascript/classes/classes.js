function Point()
{
  this.x = null;
  this.y = null;
  this.setX = function (x) { this.x = x; }
  this.setY = function (y) { this.y = y; }
  this.printSelf = function () { console.log("A point at {%s, %s}", this.x, this.y); }
  
  return this;
}

var p = Point();
p.setX(10);
p.setY(10);

p.printSelf();