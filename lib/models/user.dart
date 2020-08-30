class User {
  int id;
  String name;
  String userAvatar;
  String bloodType;
  bool loggedIn = false;
  int userLevel = 0;
  List<String> subscription = [''];

  User(
      {this.id,
      this.name,
      this.userAvatar,
      this.userLevel,
      this.bloodType,
      this.subscription});

  changeName(value) {
    name = value;
  }

  changeAvatar(value) {
    userAvatar = value;
  }

  changeBloodType(value) {
    bloodType = value;
  }

  changeUserLevel(value) {
    userLevel = value;
  }

  addSubscription(value) {
    subscription.add(value);
    print(subscription);
  }
}

User user = User(
  id: 0001,
  name: 'Thales C. Azevedo',
  bloodType: 'B+',
  userAvatar:
      'https://www.pinclipart.com/picdir/middle/148-1486972_mystery-man-avatar-circle-clipart.png',
  subscription: [''],
  userLevel: 1,
);
