import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ur_PK': {
          'greeting': 'سلام',
        },
        'ja_JP': {
          'greeting': 'こんにちは',
        },
        'en_US': {
          'greeting': 'Hello',
        },
      };
}