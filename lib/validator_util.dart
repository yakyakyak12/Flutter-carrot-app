import 'package:validators/validators.dart';

Function validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return "패스워드 공백이 들어갈 수 없습니다.";
    } else if (value.length > 12) {
      return "패스워드의 길이를 초과하였습니다.";
    } else if (value.length < 4) {
      return "패스워드의 최소 길이는 4자입니다.";
    } else {
      return null;
    }
  };
}

Function validateEmail() {
  return (String? value) {
    if (value!.isEmpty) {
      return "이메일은 공백이 들어갈 수 없습니다.";
    } else if (!isEmail(value)) {
      return "이메일 형식에 맞지 않습니다.";
    } else {
      return null;
    }
  };
}

Function validateUserName() {
  return (String? value) {
    if (value!.isEmpty) {
      return "유저네임은 공백이 들어갈 수 없습니다.";
    } else if (value.length > 10) {
      return "유저네임 최대 길이는 10자입니다.";
    } else {
      return null;
    }
  };
}
