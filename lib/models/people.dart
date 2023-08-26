class People {
  String _name = '';
  double _weight = 0;
  double _height = 0;

  People(this._name, this._weight, this._height) {}

  String getName() {
    return _name;
  }

  void setName(String name) {
    _name = name;
  }

  double getWeight() {
    return _weight;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getHeight() {
    return _height;
  }

  void setHeight(double height) {
    _height = height;
  }
}
