String emailvalidation(String value) {
  if (value.isEmpty) {
    return 'Email is Required';
  }
  RegExp regExp = RegExp(
      (r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'));
  if (regExp.hasMatch(value)) {
    return '';
  }
  return 'Please enter a valid Email';
}

Map<String, dynamic> is_date_valid(int day, int month, int year) {
  Map<String, dynamic> map = {};
  if (day > 31 || day == 0) {
    map['day'] = 'Please enter a valid day';
  }
  if (month > 12 || month == 0) {
    map['month'] = 'Please enter a valid month';
  }
  if (year > DateTime.now().year || year == 0 || year < 1910) {
    map['year'] = 'Please enter a valid year';
  }
  return map;
}

String password_validation(String pass) {
  if (pass.isEmpty) {
    return 'Password is Required';
  }
  RegExp regExp = RegExp((r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$'));
  if (regExp.hasMatch(pass)) {
    return '';
  }
  return 'Please enter a valid Password';
}
