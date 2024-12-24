import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class JsonDatabase {
  static Future<String> _getFilePath() async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/data.json';
  }

  static Future<Map<String, dynamic>> loadData() async {
    final path = await _getFilePath();
    final file = File(path);

    if (!file.existsSync()) {
      file.writeAsStringSync(jsonEncode({
        'orders': [],
        'services': [],
        'users': [],
      }));
    }
    return jsonDecode(file.readAsStringSync());
  }

  static Future<void> saveData(Map<String, dynamic> data) async {
    final path = await _getFilePath();
    final file = File(path);
    file.writeAsStringSync(jsonEncode(data));
  }

  static Future<void> addUser(Map<String, dynamic> user) async {
    final data = await loadData();
    data['users'].add(user);
    await saveData(data);
  }

  static Future<Map<String, dynamic>?> getUserByEmail(String email) async {
    final data = await loadData();
    return data['users'].firstWhere(
      (user) => user['email'] == email,
      orElse: () => null,
    );
  }
}
