import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kamus_indonesia_sahu/Components/Card.dart';
import 'package:kamus_indonesia_sahu/Components/CustomAppbar.dart';
import 'package:kamus_indonesia_sahu/Components/CustomFloatingbutton.dart';
import 'package:kamus_indonesia_sahu/Components/Drawer.dart';
import 'package:kamus_indonesia_sahu/Components/EditDistanceSearch.dart';
import 'package:kamus_indonesia_sahu/Components/Search.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:kamus_indonesia_sahu/Screens/Bidangkata.dart';
import 'package:kamus_indonesia_sahu/Screens/Listkatapage.dart';
import 'package:kamus_indonesia_sahu/Screens/Kelaskata.dart';
import 'package:kamus_indonesia_sahu/Screens/Ragamkata.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';
import 'package:sqlite_viewer/sqlite_viewer.dart';

import '../Components/SearchEditDistance.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dbHelper = DatabaseHelper.instance;
  List<Kata> kataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
// Fetch all words when the widget is initialized
  }

  void fetchData() async {
    final data = await dbHelper.getAllKata();
    setState(() {
      kataList = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SafeArea(child: DrawerPage()),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo_header.png",
                    height: 80,
                    width: 80,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'KAMUS BAHASA\n',
                          style: poppinsTextTitle.copyWith(
                            fontSize: 24,
                            color: Theme.of(context).brightness ==
                                    Brightness.light
                                ? Colors
                                    .black // Set the font color for light theme
                                : Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'INDONESIA-SAHU',
                          style: poppinsTextMedium.copyWith(
                            fontSize: 20,
                            color: Theme.of(context).brightness ==
                                    Brightness.light
                                ? Colors
                                    .black // Set the font color for light theme
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          'Aplikasi Luring Resmi Kantor Bahasa Provinsi Maluku Utara',
                      style: interTextNormal.copyWith(
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                  ),
                  const Gap(15),
                  const Divider(
                    thickness: 1.2,
                  ),
                  const Gap(15),
                  SizedBox(
                    width: 400, // Adjust the width as needed
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Silahkan tekan ',
                        style: interTextNormal.copyWith(
                          fontSize: 14,
                          color: Theme.of(context).brightness ==
                                  Brightness.light
                              ? Colors
                                  .black // Set the font color for light theme
                              : Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: 'ikon cari',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showSearch(
                                  context: context,
                                  delegate: WordSearchDelegateEditDistance(kataList),
                                );
                              },
                            style: interTextNormal.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade800),
                          ),
                          TextSpan(
                            text:
                                " dan ketik kata yang ingin Anda temukan, atau gunakan tautan-tautan di bawah ini untuk menelusuri isi kamus",
                            style: interTextNormal.copyWith(
                              fontSize: 14,
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors
                                      .black // Set the font color for light theme
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                  const KelasKata(), // Replace with your main page
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin =
                                    Offset(1.0, 0.0); // Starting position
                                const end = Offset.zero; // Ending position
                                const curve =
                                    Curves.easeInOut; // Animation curve

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
                        child: const LongCourseCard(
                          background: Colors.white,
                          title: "Kelas Kata",
                          subtitle: "Nomina, Verba, Pronomina, Adjektiva, Adverbia",
                        ),
                      ),
                      const Gap(20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                  const RagamKata(), // Replace with your main page
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin =
                                    Offset(1.0, 0.0); // Starting position
                                const end = Offset.zero; // Ending position
                                const curve =
                                    Curves.easeInOut; // Animation curve

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
                        child: const LongCourseCard(
                          background: Colors.white,
                          title: "Ragam",
                          subtitle: "Hormat, Cakapan, Istilah, Slang",
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                  const BidangKata(), // Replace with your main page
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin =
                                    Offset(1.0, 0.0); // Starting position
                                const end = Offset.zero; // Ending position
                                const curve =
                                    Curves.easeInOut; // Animation curve

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
                        child: const LongCourseCard(
                          background: Colors.white,
                          title: "Bidang",
                          subtitle: "komputer, olahraga, Seni",
                        ),
                      ),
                      const Gap(20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                  const ListKataPage(), // Replace with your main page
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin =
                                    Offset(1.0, 0.0); // Starting position
                                const end = Offset.zero; // Ending position
                                const curve =
                                    Curves.easeInOut; // Animation curve

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
                        child: const LongCourseCard(
                          background: Colors.white,
                          title: "Kata",
                          subtitle: "Kata berdasarkan abjad",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: CustomFloatingActionButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: WordSearchDelegateSearch(kataList),
            );
          },
        ));
  }
}
