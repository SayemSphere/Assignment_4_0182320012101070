class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);
}

void main() {
  var laptop1 = Laptop(1, 'HP', 8);
  var laptop2 = Laptop(2, 'Dell', 16);
  var laptop3 = Laptop(3, 'Asus', 12);

  print('Laptop 1: id=${laptop1.id}, name=${laptop1.name}, ram=${laptop1.ram}GB');
  print('Laptop 2: id=${laptop2.id}, name=${laptop2.name}, ram=${laptop2.ram}GB');
  print('Laptop 3: id=${laptop3.id}, name=${laptop3.name}, ram=${laptop3.ram}GB');
}
