class StringFunctions {
  void toFirstCapital(String name) {
    String newn = name.substring(0, 1).toUpperCase() + name.substring(1);
    print(newn);
  }

  void checkPalindrom(String string) {
    String newn = string;
    List<String> spitString = newn.split("");
    int i = 0;
    int j = spitString.length - 1;
    while (i <= j) {
      if (spitString[i] == spitString[j]) {
        i++;
        j--;
      } else {
        return print('Not Palindrome');
      }
    }
    print('Its palindrome');
  }

  void checkWordCount(String data) {
    int len = data.split("").length;
    print(len);
  }

  void replaceString(String data) {
    String newS = data.replaceAll('is', 'was');
    print(newS);
  }

  // void removeDuplicate(String a) {
  //   String b = a.split("").toSet().join();
  //   print(b);
  // }

  void removeDuplicate(String userString) {
    // int i = 0;
    List<String> uniqueString = [];
    List<String> splitString = userString.split('');
    // while (i < splitString.length) {

    // }
    for (var i = 0; i < splitString.length; i++) {
      bool isDuplicate = false;
      for (var j = i + 1; j < splitString.length; j++) {
        if (splitString[i] == splitString[j]) {
          isDuplicate = true;
          break;
        }
      }
      if (!isDuplicate) {
        uniqueString.add(splitString[i]);
      }
    }
    print(uniqueString.join());
  }

  void changeString(String data, int key) {
    int i = 0;
    List<String> newString = [];
    while (i < data.length) {
      int ascii = data.codeUnitAt(i);
      int newAscii = ascii + key;
      if (newAscii > 122) {
        newAscii = 96 + (newAscii - 122);
        String newLetter = String.fromCharCode(newAscii);
        newString.add(newLetter);
      } else {
        String newLetter = String.fromCharCode(newAscii);
        newString.add(newLetter);
      }
      i++;
    }
    print(newString.join());
  }

  void changeStringAscii(String data, int key) {
    int i = 0;
    List<String> newString = [];
    while (i < data.length) {
      int ascii = data.codeUnitAt(i);
      int newAscii = ascii + key;
      if (newAscii > 122) {
        newAscii = 96 + (newAscii - 122);
        String newLetter = String.fromCharCode(newAscii);
        newString.add(newLetter);
      } else {
        String newLetter = String.fromCharCode(newAscii);
        newString.add(newLetter);
      }
      i++;
    }
    print(newString.join());
  }
}

void main(List<String> args) {
  StringFunctions string = StringFunctions();

  string.changeStringAscii('malayalam', 3);
}
