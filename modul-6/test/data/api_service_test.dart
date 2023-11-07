import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:modul6/app/data/api/api_service.dart';
import 'package:modul6/app/data/model/articles.dart';

import 'api_service_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {
  // Constants for API details
  const _apiKey = '8a9659ec17e64cef9b0a31dd2123885e';
  const _baseUrl = 'https://newsapi.org/v2/';
  const String _category = 'business';
  const String _country = 'us';

  // Initialize ApiService and MockClient
  late ApiService apiService;
  late MockClient mockClient;

  setUp(() {
    // Set up MockClient and ApiService for each test
    mockClient = MockClient();
    apiService = ApiService();
  });
  group('ApiService', () {
    test('fetchArticles returns a list of articles if response is successful',
        () async {
      // Mock the HTTP response for successful case
      when(mockClient.get(Uri.parse(
              '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey')))
          .thenAnswer((_) async =>
              http.Response('{"articles": []}', 200)); // Mock the HTTP response
      final articles = await apiService.fetchArticles();

      // Expect the fetched data to be a list of Article objects
      expect(articles, isA<List<Article>>());
    });
    test('fetchArticles returns an empty list if response fails', () async {
      // Mock the HTTP response for response failure
      when(mockClient.get(Uri.parse(
              '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey')))
          .thenAnswer((_) async =>
              http.Response('Server error', 500)); // Mock the HTTP response
      final articles = await apiService.fetchArticles();
      // Expect the fetched data to be an empty list
      expect(articles, isA<List<Article>>());
    });
    test('fetchArticles returns an empty list if an error occurs', () async {
      // Mock an error response
      when(mockClient.get(Uri.parse(
              '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey')))
          .thenThrow(Exception('Test error')); // Mock an error
      final articles = await apiService.fetchArticles();
      // Expect the fetched data to be an empty list
      expect(articles, isA<List<Article>>());
    });
  });
}
