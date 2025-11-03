class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;
}

void main() {
  var camera1 = Camera(1, 'Canon', 'Black', 55000);
  var camera2 = Camera(2, 'Nikon', 'Gray', 48000);
  var camera3 = Camera(3, 'Sony', 'Red', 62000);

  var cameras = [camera1, camera2, camera3];

  for (var c in cameras) {
    print('Id=${c.id}, Brand=${c.brand}, Color=${c.color}, Price=${c.price}');
  }
}
