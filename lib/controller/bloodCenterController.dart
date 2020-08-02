import 'package:doe_mais/models/bloodCenter.dart';

class BloodCenterController {
  static const _dbURL = 'https://doe-mais-9e785.firebaseio.com/';

  var bloodCenter = BloodCenter(
    name: '',
    address: '',
    city: '',
    attendance: [],
    bloodstock: {},
  );

  getBloodCenter() {}

  addBloodCenter() {}

  deleteBloodCenter() {}

  updateBloodCenter() {}
}
