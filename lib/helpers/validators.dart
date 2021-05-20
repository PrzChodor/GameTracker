class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );

  
  //Password must be at least 8 characters long and contain at least
  //1 lower case letter, 1 capital letter and 1 number
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$',
  );

  //Username must: be 5-20 characters long, contain only alphanumeric characters
  //and special characters ._ but it can't begin or end with them and there 
  //cannot be two special characters next to each other
  static final RegExp _usernameRegExp =
      RegExp(r'^(?=.{5,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');

  ///Check validity of the given email address
  static isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  ///Check validity of the given password
  static isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  ///Check validity of the given username
  static isValidUsername(String username) {
    return _usernameRegExp.hasMatch(username);
  }
}
