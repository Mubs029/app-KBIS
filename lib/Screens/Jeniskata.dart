import 'package:flutter/material.dart';
import 'package:kamus_indonesia_sahu/Components/CustomAppbar.dart';
import 'package:kamus_indonesia_sahu/Components/Drawer.dart';
import 'package:kamus_indonesia_sahu/Components/Search.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';

class JenisKata extends StatefulWidget {
  const JenisKata({super.key});

  @override
  State<JenisKata> createState() => _JenisKataState();
}

class _JenisKataState extends State<JenisKata> {
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
        onSearchPressed: () {
          // You'll need to replace 'WordSearchDelegate' and 'kataList' with your appropriate search delegate and data
          showSearch(
            context: context,
            delegate: WordSearchDelegate(kataList),
          );
        },
      ),
      body: Center(
        child: Text(
          "Jenis Kata\nData Tidak Tersedia",
          style: poppinsTextNormal.copyWith(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black // Set the font color for light theme
                : Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
