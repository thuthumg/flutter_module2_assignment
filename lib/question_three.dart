void main() {
  print("Email Validation ${emailVerificationFunc("@gmail.com")}");
  print("Email Validation ${emailVerificationFunc("ttm@gmail.com")}");

  print("Phone Validation ${phoneNoVerificationFunc("95951234567")}");
  print("Phone Validation ${phoneNoVerificationFunc("09252685565")}");
  print("Phone Validation ${phoneNoVerificationFunc("+959952819765")}");
}

bool emailVerificationFunc(String email) {
  if (email.contains("@gmail.com")) {
    var parts = email.split('@gmail.com');
    var firstCharacter = parts[0].trim();
    var secondCharacter = parts[1].trim();

    if (firstCharacter.isNotEmpty && secondCharacter.isEmpty) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

bool phoneNoVerificationFunc(String phoneNo) {
  if (phoneNo.length >= 10) {
    var subStringDataTwo = phoneNo.substring(0, 2);
    if (subStringDataTwo == "09") {
      phoneNo = phoneNo.replaceRange(0, 2, "+959");
      print(phoneNo);
      return checkPlusNineFiveNineFunc(phoneNo);
    }else{
      return checkPlusNineFiveNineFunc(phoneNo);
    }

  } else {
    return false;
  }
}

bool checkPlusNineFiveNineFunc(String phoneNo){

  var subStringData = phoneNo.substring(0, 4);
  if (subStringData == "+959") {
    return true;
  } else {
    return false;
  }
}
