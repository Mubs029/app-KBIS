import 'package:flutter/material.dart';
import 'package:kamus_indonesia_sahu/Components/CustomAppbar.dart';
import 'package:kamus_indonesia_sahu/Components/CustomFloatingbutton.dart';
import 'package:kamus_indonesia_sahu/Components/Search.dart';
import 'package:kamus_indonesia_sahu/Components/Drawer.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:kamus_indonesia_sahu/Screens/DetailPage.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';
import 'package:sqlite_viewer/sqlite_viewer.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  final dbHelper = DatabaseHelper.instance;
  List<Kata> kataList = [];
  List<Kata> bookmarkedKataList = [];

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch all words and bookmarked words when the widget is initialized
  }

  Future<void> fetchData() async {
    final allWords = await dbHelper.getAllKata();
    final bookmarkedWords =
        await dbHelper.getBookmarkedKata(); // Fetch bookmarked words

    setState(() {
      kataList = allWords;
      bookmarkedKataList = bookmarkedWords; // Separate bookmarked words list
    });
  }

  Future<void> fetchBookmarkedKata() async {
    // Call your database helper method to get bookmarked Kata
    bookmarkedKataList = await dbHelper
        .getBookmarkedKata(); // Assuming dbHelper is your database helper instance
    if (mounted) {
      setState(() {}); // Update the UI with the fetched data
    }
  }

  Future<void> _refresh() async {
    await fetchBookmarkedKata();
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
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: bookmarkedKataList.isEmpty
            ? Center(
                child: Text(
                  'Tidak ada kata yang ditandai',
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black // Set the font color for light theme
                        : Colors.white,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: bookmarkedKataList.length,
                itemBuilder: (context, index) {
                  final kata = bookmarkedKataList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  DetailPage(
                            kata: kata,
                          ), // Replace with your main page
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0); // Starting position
                            const end = Offset.zero; // Ending position
                            const curve = Curves.easeInOut; // Animation curve

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            // Slide transition animation
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                                position: offsetAnimation, child: child);
                          },
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        kata.kataIndonesia,
                        style: interTextNormal.copyWith(
                          color: Theme.of(context).brightness ==
                                  Brightness.light
                              ? Colors
                                  .black // Set the font color for light theme
                              : Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          showSearch(
            context: context,
            delegate: WordSearchDelegate(kataList),
          );
        },
      ),
    );
  }
}
