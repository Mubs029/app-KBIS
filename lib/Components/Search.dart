import 'package:algorithmic/string.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:kamus_indonesia_sahu/Screens/DetailPage.dart';
import 'package:path/path.dart';

class WordSearchDelegate extends SearchDelegate {
  static const debounceDuration = Duration(milliseconds: 100);
  static const similarityThreshold = 0.7;

  final dbHelper = DatabaseHelper.instance;
  late List<Kata> searchResults;
  late List<Kata> kataList;
  bool searchInIndonesia = true;

  WordSearchDelegate(this.kataList) {
    EasyDebounce.debounce(
      'searchDebounce',
      debounceDuration,
      () {
        if (query.isNotEmpty) {
          performSearch(query);
          showSuggestions(context as BuildContext);
        }
      },
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.delete_outline),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
      GestureDetector(
        onTap: () => _showSwitchSnackBar(context),
        child: Container(
          padding: EdgeInsets.all(8),
          child: const Icon(Icons.change_circle_outlined),
        ),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  void performSearch(String query) {
    // Filter out any non-alphabetic characters from the query
    final filteredQuery = query.replaceAll(RegExp(r'\d+'), '');

    // Update the query to display the filteredQuery in the search bar
    this.query = filteredQuery;

    searchResults = kataList.where((kata) {
      final fieldToSearch = searchInIndonesia
          ? kata.kataIndonesia.toLowerCase()
          : kata.kataSahu.toLowerCase();
      final similarity = jaroWinklerSimilarityOf(
          filteredQuery.toLowerCase(), fieldToSearch,
          threshold: similarityThreshold);
      return similarity >= similarityThreshold;
    }).toList();
  }

  @override
  Widget buildResults(BuildContext context) {
    performSearch(query);

    if (searchResults.isEmpty) {
      return const Center(
        child: Text("Kata yang anda cari belum tersedia"),
      );
    }

    searchResults.sort((kata1, kata2) {
      final fieldToSearch1 = searchInIndonesia
          ? kata1.kataIndonesia.toLowerCase()
          : kata1.kataSahu.toLowerCase();

      final fieldToSearch2 = searchInIndonesia
          ? kata2.kataIndonesia.toLowerCase()
          : kata2.kataSahu.toLowerCase();

      final similarity1 =
          jaroWinklerSimilarityOf(query.toLowerCase(), fieldToSearch1);
      final similarity2 =
          jaroWinklerSimilarityOf(query.toLowerCase(), fieldToSearch2);

      return similarity2.compareTo(similarity1);
    });

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final kata = searchResults[index];
        final fieldToSearch = searchInIndonesia
            ? kata.kataIndonesia.toLowerCase()
            : kata.kataSahu.toLowerCase();

        final similarity =
            jaroWinklerSimilarityOf(query.toLowerCase(), fieldToSearch);
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    DetailPage(
                  kata: kata,
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;
                  const curve = Curves.easeInOut;

                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));

                  var offsetAnimation = animation.drive(tween);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
              ),
            );
          },
          child: ListTile(
            title: Text(searchInIndonesia ? kata.kataIndonesia : kata.kataSahu),
            subtitle: Text('Similarity: ${similarity.toStringAsFixed(2)}'),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final userInput = query.toLowerCase();
    final filteredQuery = userInput.replaceAll(RegExp(r'\d+'), '');

    // Update the query to display the filteredQuery in the search bar
    this.query = filteredQuery;

    final sortedSuggestions = kataList.where((kata) {
      final fieldToSearch = searchInIndonesia
          ? kata.kataIndonesia.toLowerCase()
          : kata.kataSahu.toLowerCase();
      final similarity = jaroWinklerSimilarityOf(filteredQuery, fieldToSearch);
      return similarity >= similarityThreshold;
    }).toList();

    return ListView.builder(
      itemCount: sortedSuggestions.length,
      itemBuilder: (context, index) {
        final kata = sortedSuggestions[index];
        return ListTile(
          title: Text(searchInIndonesia ? kata.kataIndonesia : kata.kataSahu),
          onTap: () {
            query = searchInIndonesia ? kata.kataIndonesia : kata.kataSahu;
            showResults(context);
          },
        );
      },
    );
  }

  void _showSwitchSnackBar(BuildContext context) {
    searchInIndonesia = !searchInIndonesia;

    performSearch(query);
    showSuggestions(context);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
            'Pencarian: ${searchInIndonesia ? 'Bahasa Indonesia' : 'Bahasa Sahu'}'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
