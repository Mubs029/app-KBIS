import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamus_indonesia_sahu/Components/CustomAppbar.dart';
import 'package:kamus_indonesia_sahu/Components/CustomFloatingbutton.dart';
import 'package:kamus_indonesia_sahu/Components/Drawer.dart';
import 'package:kamus_indonesia_sahu/Components/Search.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:sqlite_viewer/sqlite_viewer.dart';

class DetailPage extends StatefulWidget {
  final Kata kata;

  const DetailPage({super.key, required this.kata});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final dbHelper = DatabaseHelper.instance;

  List<Kata> kataList = [];
  List<Kata> bookmarkedKataList = [];

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch all words when the widget is initialized
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
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        toggleBookmark(widget.kata);
                      },
                      icon: Icon(
                        widget.kata.isBookmarked == 1
                            ? Icons.bookmark_add
                            : Icons.bookmark_added_outlined,
                        color: widget.kata.isBookmarked == 1
                            ? Colors.blue.shade800
                            : null,
                        size: 18,
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "${widget.kata.kataEjaan} ",
                        style: GoogleFonts.notoSerif(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).brightness ==
                                  Brightness.light
                              ? Colors
                                  .black // Set the font color for light theme
                              : Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "${widget.kata.labelKata} ",
                        style: GoogleFonts.notoSerif(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).brightness ==
                                    Brightness.light
                                ? Colors
                                    .black // Set the font color for light theme
                                : Colors.white,
                            fontStyle: FontStyle.italic),
                      ),
                      TextSpan(
                        text: "${widget.kata.kataSahu}: ",
                        style: GoogleFonts.notoSerif(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).brightness ==
                                  Brightness.light
                              ? Colors
                                  .black // Set the font color for light theme
                              : Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "${widget.kata.contohPenggunaan}",
                        style: GoogleFonts.notoSerif(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).brightness ==
                                    Brightness.light
                                ? Colors
                                    .black // Set the font color for light theme
                                : Colors.white),
                      ),
                    ],
                  ),
                ),
                if (widget.kata.kataTurunan.isNotEmpty &&
                    widget.kata.terjemahanTurunan.isNotEmpty)
                  RichText(
                    text: TextSpan(
                      children: widget.kata.kataTurunan
                          .asMap()
                          .entries
                          .map((entry) {
                            final index = entry.key;
                            final kataTurunan = entry.value;
                            final terjemahanTurunan =
                                widget.kata.terjemahanTurunan.length > index
                                    ? widget.kata.terjemahanTurunan[index]
                                    : '';

                            final textSpans = <TextSpan>[];

                            if (kataTurunan.isNotEmpty) {
                              textSpans.add(
                                TextSpan(
                                  text: "-- $kataTurunan",
                                  style: GoogleFonts.notoSerif(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Colors
                                              .black // Set the font color for light theme
                                          : Colors.white),
                                ),
                              );
                            }

                            if (kataTurunan.isNotEmpty &&
                                terjemahanTurunan.isNotEmpty) {
                              textSpans.add(
                                TextSpan(
                                  text: " $terjemahanTurunan\n",
                                  style: GoogleFonts.notoSerif(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors
                                            .black // Set the font color for light theme
                                        : Colors.white,
                                  ),
                                ),
                              );
                            }

                            return textSpans;
                          })
                          .expand((element) => element)
                          .toList(),
                    ),
                  ),
                if (widget.kata.kataImbuhan.isNotEmpty &&
                    widget.kata.labelKataImbuhan.isNotEmpty &&
                    widget.kata.kataImbuhan.isNotEmpty &&
                    widget.kata.contohPenggunaanImbuhan.isNotEmpty)
                  RichText(
                    text: TextSpan(
                      children: widget.kata.kataImbuhan
                          .asMap()
                          .entries
                          .map((entry) {
                            final index = entry.key;
                            final kataImbuhan = entry.value;
                            final labelKataImbuhan =
                                widget.kata.labelKataImbuhan.length > index
                                    ? widget.kata.labelKataImbuhan[index]
                                    : '';
                            final kataSahuImbuhan =
                                widget.kata.kataSahuImbuhan.length > index
                                    ? widget.kata.kataSahuImbuhan[index]
                                    : '';
                            final contohPenggunaanImbuhan =
                                widget.kata.contohPenggunaanImbuhan.length >
                                        index
                                    ? widget.kata.contohPenggunaanImbuhan[index]
                                    : '';

                            final textSpans = <TextSpan>[];

                            if (kataImbuhan.isNotEmpty) {
                              textSpans.add(
                                TextSpan(
                                  text: "$kataImbuhan",
                                  style: GoogleFonts.notoSerif(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors
                                            .black // Set the font color for light theme
                                        : Colors.white,
                                  ),
                                ),
                              );
                            }

                            if (labelKataImbuhan.isNotEmpty) {
                              textSpans.add(
                                TextSpan(
                                  text: " $labelKataImbuhan ",
                                  style: GoogleFonts.notoSerif(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors
                                            .black // Set the font color for light theme
                                        : Colors.white,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              );
                            }

                            if (kataSahuImbuhan.isNotEmpty) {
                              textSpans.add(
                                TextSpan(
                                  text: "$kataSahuImbuhan: ",
                                  style: GoogleFonts.notoSerif(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors
                                            .black // Set the font color for light theme
                                        : Colors.white,
                                  ),
                                ),
                              );
                            }

                            if (contohPenggunaanImbuhan.isNotEmpty) {
                              textSpans.add(
                                TextSpan(
                                  text: "$contohPenggunaanImbuhan\n",
                                  style: GoogleFonts.notoSerif(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors
                                            .black // Set the font color for light theme
                                        : Colors.white,
                                  ),
                                ),
                              );
                            }

                            return textSpans;
                          })
                          .expand((element) => element)
                          .toList(),
                    ),
                  ),
              ],
            ),
          ),
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
