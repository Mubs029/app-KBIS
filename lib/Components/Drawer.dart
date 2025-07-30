import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamus_indonesia_sahu/Components/panduan.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Screens/Bookmarkpage.dart';
import 'package:kamus_indonesia_sahu/Screens/HomeScreen.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final dbHelper = DatabaseHelper.instance;

  Widget buildDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text(
        "Kamus Bahasa Indonesia - Sahu",
        style: poppinsTextTitle.copyWith(
          fontSize: 16,
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.black // Set the font color for light theme
              : Colors.white,
        ),
      ),
      accountEmail: Text(
        "Powered by Kantor Bahasa Maluku Utara",
        style: poppinsTextTitle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.black // Set the font color for light theme
              : Colors.white,
        ),
      ),
      currentAccountPicture: Center(
        child: Container(
          child: Image.asset(
            "assets/icon/icon_v2.png",
            width: 180,
            height: 180,
            fit: BoxFit.fill,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white // Set the font color for light theme
            : Colors.black,
      ),
    );
  }

  Widget buildDrawerListItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.black // Set the font color for light theme
            : Colors.white,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          letterSpacing: 0.30,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Colors.white // Set the font color for light theme
          : Colors.black,
      elevation: 0.0,
      child: SafeArea(
        top: false,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Center(child: buildDrawerHeader()),
            buildDrawerListItem(
              Icons.home,
              "Beranda",
              () => Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HomePage(),
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
              ),
            ),
            buildDrawerListItem(
              Icons.book,
              "Panduan",
              () => Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const PanduanPage(
                    pdfPath:
                        "assets/doc/panduan.pdf", // Provide the path to your PDF file
                  ),
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
              ),
            ),
            buildDrawerListItem(
              Icons.bookmarks,
              "Bookmark",
              () async {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const BookmarkPage(),
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
            ),
            const Divider(
              thickness: 2,
              color: Color.fromARGB(255, 158, 158, 158),
              indent: 8,
              endIndent: 8,
            ),
            buildDrawerListItem(Icons.data_array_rounded, "Usulan entri",
                () async {
              launchEmail();
            }),
            buildDrawerListItem(
              Icons.info,
              "Tentang",
              () {
                showAboutDialog(
                  context: context,
                  applicationIcon: Image.asset(
                    'assets/icon/icon_v2.png',
                    scale: 8.5,
                  ),
                  applicationName: "Kamus Bahasa Indonesia-Sahu",
                  applicationVersion: '0.1.0',
                  children: [
                    Text(
                      "Penangung Jawab",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    Text(
                      "Kepala Kantor Bahasa Provinsi",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    Text(
                      "Maluku Utara",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    Text(
                      "Dr. Arie Andrasyah Isa, S.S., M.Hum",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    const Gap(10),
                    Text(
                      "Pakar",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    Text(
                      "Meity Taqdir Qodratillah, M.Hum",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    const Gap(10),
                    Text(
                      "Penyusn",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    Text(
                      "Nurhayati Fokaaya\nHusnia M. Nur\nFadhlina Kurnia Ridha\nWa Ija Abdul Malik\nSri Rejeki Manalu\nDamaz Aristy Sisvareza",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    const Gap(10),
                    Text(
                      "Pengembang Aplikasi",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                    Text(
                      "M. Rezal Karyanto otw S.Kom\nIr. Abdul Mubarak, S.Kom., M.T., IPM",
                      textAlign: TextAlign.start,
                      style: interTextNormal.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black // Set the font color for light theme
                            : Colors.white,
                      ),
                    ),
                  ],
                );
              },
            ),
            buildDrawerListItem(
              Icons.exit_to_app,
              "Keluar",
              () => exit(0),
            ),
          ],
        ),
      ),
    );
  }

  dynamic launchEmail() async {
    try {
      Uri email = Uri(
        scheme: 'mailto',
        path: "bahasamalut@kemendikbud.go.id",
        queryParameters: {'SaranKata': "Indonesia-Sahu"},
      );

      await launchUrl(email);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
