class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  var house1 = House(1, 'Lake View', 2500000);
  var house2 = House(2, 'Hill Top', 3200000);
  var house3 = House(3, 'City Villa', 2800000);

  var houses = [house1, house2, house3];

  for (var house in houses) {
    print('House id=${house.id}, name=${house.name}, price=${house.price}');
  }
}
