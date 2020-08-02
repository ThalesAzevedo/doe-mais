class BloodCenter {
  String name;
  String address;
  String city;
  List<String> attendance;
  List<String> notifications;
  var bloodstock;

  BloodCenter({
    this.name,
    this.address,
    this.city,
    this.attendance,
    this.bloodstock,
  });

  changeName(String value) {
    name = value;
  }

  changeAddress(String value) {
    address = value;
  }

  changeCity(String value) {
    city = value;
  }

  updateBloodStock(String key, int value) {
    bloodstock[key] = value;
  }
}
