import 'package:flutter/foundation.dart' show kIsWeb;

// A method to check path of image
String checkImage(String path) {
  if (kIsWeb) return path;
  return 'assets/$path';
}
