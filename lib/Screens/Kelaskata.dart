import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kamus_indonesia_sahu/Components/CustomAppbar.dart';
import 'package:kamus_indonesia_sahu/Components/CustomFloatingbutton.dart';
import 'package:kamus_indonesia_sahu/Components/Drawer.dart';
import 'package:kamus_indonesia_sahu/Components/Search.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:kamus_indonesia_sahu/Screens/AdjektivaScreen.dart';
import 'package:kamus_indonesia_sahu/Screens/AdverbiaScreen.dart';
import 'package:kamus_indonesia_sahu/Screens/NominaScreen.dart';
import 'package:kamus_indonesia_sahu/Screens/NumeraliaScreen.dart';
import 'package:kamus_indonesia_sahu/Screens/PronominaScreen.dart';
import 'package:kamus_indonesia_sahu/Screens/VerbaScreen.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';
import 'package:sqlite_viewer/sqlite_viewer.dart';

class KelasKata extends StatefulWidget {
  const KelasKata({super.key});

  @override
  State<KelasKata> createState() => _KelasKataState();
}

class _KelasKataState extends State<KelasKata> {
  final dbHelper = DatabaseHelper.instance;

  List<Kata> kataList = [];

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
          padding: const EdgeInsets.all(16),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            children: [
              buildListTile(context, 'Nomina', 'n'),
              const Gap(8),
              buildListTile(context, 'Verba', 'v'),
              const Gap(8),
              buildListTile(context, 'Pronomina', 'P'),
              const Gap(8),
              buildListTile(context, 'Adjektiva', 'a'),
              const Gap(8), // Updated label
              buildListTile(context, 'Adverbia', 'adv'),
              const Gap(8), // Updated label
              buildListTile(context, 'Numeralia', 'num'),
            ],
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

Widget buildListTile(BuildContext context, String label, String desiredLabel) {
  return ListTile(
    leading: const Icon(Icons.menu_book_rounded),
    selectedTileColor: Colors
        .pink, // You can use `selectedTileColor` to set the background color when selected
    shape: RoundedRectangleBorder(
      borderRadius:
          BorderRadius.circular(10), // Adjust the border radius as needed
      side: const BorderSide(
          color: Colors.grey,
          width: 1), // Add a border with a custom color and width
    ),
    minLeadingWidth: 40,
    title: Text(
      label,
      style: interTextNormal.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.black // Set the font color for light theme
            : Colors.white,
      ),
    ),

    onTap: () {
      switch (desiredLabel) {
        case 'n':
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const NominaPage(),
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
          break;
        case 'v':
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const VerbaPage(),
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
          break;
        case 'P':
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const PronominaPage(),
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
          break;
        case 'a':
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const AdjektivaPage(),
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
          break;
        case 'adv':
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const AdverbiaPage(),
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
          break;
        case 'num':
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const NumeraliaPage(),
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
          break;
        default:
          // Handle other cases or do nothing for unknown labels
          break;
      }
    },
  );
}
