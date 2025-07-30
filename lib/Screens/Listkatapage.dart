import 'package:flutter/material.dart';
import 'package:kamus_indonesia_sahu/Components/CustomAppbar.dart';
import 'package:kamus_indonesia_sahu/Components/CustomFloatingbutton.dart';
import 'package:kamus_indonesia_sahu/Components/Drawer.dart';
import 'package:kamus_indonesia_sahu/Components/Search.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:kamus_indonesia_sahu/Screens/DetailPage.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';
import 'package:sqlite_viewer/sqlite_viewer.dart';
// Import collection package

class ListKataPage extends StatefulWidget {
  const ListKataPage({Key? key}) : super(key: key);

  @override
  _ListKataPageState createState() => _ListKataPageState();
}

class _ListKataPageState extends State<ListKataPage> {
  final dbHelper = DatabaseHelper.instance;
  List<Kata> kataList = [];
  TextEditingController searchController = TextEditingController();
  List<Kata> searchResults = [];
  List<Kata> recommendationList = [];
  List<Kata> bookmarkedKataList = [];

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data when the widget is initialized
  }

  void fetchData() async {
    final data = await dbHelper.getAllKata();
    setState(() {
      kataList = data;
    });
  }

  void toggleBookmark(Kata kata) {
    setState(() {
      // Toggle the bookmark status
      kata.isBookmarked = kata.isBookmarked == 1 ? 0 : 1;

      if (kata.isBookmarked == 1) {
        // Add the Kata to the bookmarkedKataList
        bookmarkedKataList.add(kata);
      } else {
        // Remove the Kata from the bookmarkedKataList
        bookmarkedKataList.removeWhere((item) => item.id == kata.id);
      }

      // Update the database to reflect the new bookmark status
      dbHelper.updateBookmarkStatus(kata.id, kata.isBookmarked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerPage(),
        appBar: CustomAppBar(
          title: "KBIS",
          onDatabasePressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const DatabaseList()),
            );
          },
          onSearchPressed: () {
            // You'll need to replace 'WordSearchDelegate' and 'kataList' with your appropriate search delegate and data
            showSearch(
              context: context,
              delegate: WordSearchDelegate(kataList),
            );
          },
        ),
        body: ListView.builder(
          itemCount:
              searchResults.isNotEmpty ? searchResults.length : kataList.length,
          itemBuilder: (context, index) {
            final kata = searchResults.isNotEmpty
                ? searchResults[index]
                : kataList[index];

            // Check jika kata.kataTurunan tidak kosong atau null
            if (kata.kataTurunan.isNotEmpty) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailPage(kata: kata),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Adjust the border radius as needed
                          side: const BorderSide(
                              color: Colors.grey,
                              width:
                                  1), // Add a border with a custom color and width
                        ),
                        title: Text(kata.kataIndonesia,
                            style: interTextNormal.copyWith(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors
                                      .black // Set the font color for light theme
                                  : Colors.white,
                            )),
                        // subtitle: Text(
                        //   kata.kataTurunan.join(
                        //       ", "), // Gabungkan kata-kata kembali sebagai string
                        //   style: interTextNormal.copyWith(
                        //     fontSize: 14,
                        //     color: Theme.of(context).brightness ==
                        //             Brightness.light
                        //         ? Colors
                        //             .black // Set the font color for light theme
                        //         : Colors.white,
                        //   ),
                        // ),
                        trailing: IconButton(
                          onPressed: () {
                            toggleBookmark(kata);
                          },
                          icon: Icon(
                            kata.isBookmarked == 1
                                ? Icons.bookmark
                                : Icons.bookmark_border,
                            color: kata.isBookmarked == 1
                                ? Colors.blue.shade800
                                : null,
                          ),
                        ),
                      ),
                    ),
                    // You can add more widgets to display other information as needed
                  ],
                ),
              );
            } else {
              // Jika kata.kataTurunan kosong atau null, kembalikan widget kosong
              return const SizedBox.shrink();
            }
          },
        ),
        floatingActionButton: CustomFloatingActionButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: WordSearchDelegate(kataList),
            );
          },
        ));
  }
}
