```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final data = jsonDecode(response.body);
      // Process the data
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error
    print('Error: $e');
    //In this catch block, if you don't rethrow the exception, it will silently fail and you may not realize there's an issue.
  }
}
```