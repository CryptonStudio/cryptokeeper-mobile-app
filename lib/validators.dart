class Validators{
  String baseValidator(String value) {
    if (value.length == 0) return "*This field is required";
    if (value.contains(" ")) return "Spaces are not allowed";

    return null;
  }

  String emailValidator(String value) {
    var _emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    var errorMsg = baseValidator(value);
    if (errorMsg != null) {
      return errorMsg;
    }

    if (!_emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    }
    return null;
  }
}