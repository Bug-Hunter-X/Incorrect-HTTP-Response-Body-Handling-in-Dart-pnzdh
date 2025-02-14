```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly parsing the response body as a JSON object
      final jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      // Access specific data fields from the JSON object
      print(jsonResponse['field1']);
      print(jsonResponse['field2']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```