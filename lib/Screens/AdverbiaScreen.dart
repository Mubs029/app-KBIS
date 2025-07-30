import 'package:flutter/material.dart';
import 'package:kamus_indonesia_sahu/Components/CustomAppbar.dart';
import 'package:kamus_indonesia_sahu/Components/CustomFloatingbutton.dart';
import 'package:kamus_indonesia_sahu/Components/Drawer.dart';
import 'package:kamus_indonesia_sahu/Components/Search.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Screens/DetailPage.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';
import 'package:sqlite_viewer/sqlite_viewer.dart';

class AdverbiaPage extends StatefulWidget {
  const AdverbiaPage({Key? key}) : super(key: key);

  @override
  _AdverbiaPageState createState() => _AdverbiaPageState();
}

class _AdverbiaPageState extends State<AdverbiaPage> {
  final dbHelper = DatabaseHelper.instance;
  List<Kata> nominaList = [];
  List<Kata> kataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final data =
        await dbHelper.getKataByCategory('adv'); // Fetch 'Nomina' entries
    setState(() {
      nominaList = data;
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
          itemCount: nominaList.length,
          itemBuilder: (context, index) {
            final kata = nominaList[index];
            return ListTile(
              title: Text(kata.kataIndonesia,
                  style: interTextNormal.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black // Set the font color for light theme
                        : Colors.white,
                  )),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        DetailPage(kata: kata),
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
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            );
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
