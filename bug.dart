```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final List<dynamic> jsonData = jsonDecode(response.body);

      // Incorrect way to convert to List<int>
      final List<int> data = jsonData.cast<int>(); // This will throw an error if jsonData contains non-integer values

      //Correct way to convert to List<int>
      final List<int> correctData = jsonData.map((e) => e as int).toList();
      // process data
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```