import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String readString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String readStringWithText(String text) {
    print(text);
    return readString();
  }

  static double? readDouble() {
    var value = readString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? readDoubleWithTextAndExitValue(String text, String exitValue) {
    do {
      try {
        var value = readStringWithText(text);
        if (value == exitValue) {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(text);
      }
    } while (true);
  }

  static double? readDoubleWithText(String text) {
    print(text);
    return readDouble();
  }
}
