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

BloodCenter bloodCenter = BloodCenter(
    name: 'HemoNúcleo Teresópolis',
    address: 'R. Francisco Sá, 299 - Vila Muqui',
    city: 'Teresópolis/RJ',
    attendance: [
      'Segunda a Sexta - 08:00 ás 12:00'
    ],
    bloodstock: {
      "A+": 1,
      "B+": 2,
      'O+': 3,
      'AB+': 2,
      "A-": 3,
      "B-": 2,
      'O-': 1,
      'AB-': 3,
    });
