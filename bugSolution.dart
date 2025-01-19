```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);

      //Correct way to convert to List<int>
      final List<int> correctData = jsonData.map((e) => e as int).toList();

      //Process data
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```