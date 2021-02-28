import 'package:flutter_dotenv/flutter_dotenv.dart';

class LogUtil {
  final debugEnabled = env['LOG_LVL'] == "DEBUG";

  void info(String message) => print("[INFO] $message");

  void debug(String message) {
    if (debugEnabled) print("[DEBUG] $message");
  }

  void error(String message, {err}) {
    print("[ERROR] $message");
    if (err != null) print("[TRACE] $message");
  }

  void warn(String message) => print("[WARN] $message");
}
