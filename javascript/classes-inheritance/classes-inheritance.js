Pet.prototype.name = null;
Pet.prototype.age = "1";
Pet.prototype.presentSelf = function () { console.log("My name is %s and I'm %s years old.", this.name, this.age); }
Pet.prototype.giveFood = function () { console.log("Mhhhmm, that was tasty."); }

function Pet()
{
}

Parrot.prototype = Pet.prototype;
Parrot.prototype.sing = function () { console.log("Khhraaa, khraaa..."); }
Parrot.prototype.giveFood = function () { console.log("Khhraaa, khraaa... tasty!"); }

function Parrot()
{
  Pet ();
}

var p = new Parrot();

p.name = "Arara"
p.presentSelf();
p.giveFood();
p.sing();