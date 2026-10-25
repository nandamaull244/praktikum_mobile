import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tugas_praktikum1/article_model.dart';

class ApiService{
  final String baseUrl = 'https://newsapi.org/v2';
  static const _apiKey = '6b2f1b472ee94757bf09b9bb2e4f3460';
  
  Future<List<Article>> getArticles() async {
    final response = await http.get(Uri.parse('$baseUrl/top-headlines?country=us&category=business&apiKey=$_apiKey'));
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        List<Article> articles = [];
        for (var item in data['articles']) {
          articles.add(Article.fromJSON(item));
        }
        return articles;
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

}