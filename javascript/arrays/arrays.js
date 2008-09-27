// Normal arrays

var person = [];
person["name"] = "Michael";  // Same as person.name = "Michael";
person["age"] = "25";        // Same as person.age = "25";
console.log("Name: %s Age: %s", person.name, person.age);

// Classes are arrays too...

Car.prototype.brand = "Opel";
Car.prototype.model = "Corsa";

function Car()
{
}

var car = new Car();
console.log("Brand: %s Model: %s", car["brand"], car["model"]);

// Enumerating...

for (var key in car) {
  console.log("Key: %s Value: %s", key, car[key]);
}
