import 'package:flutter/material.dart';
import 'package:kamus_indonesia_sahu/Components/Drawer.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';

class PanduanPage extends StatefulWidget {
  final String pdfPath; // Path to the PDF file

  const PanduanPage({Key? key, required this.pdfPath}) : super(key: key);

  @override
  _PanduanPageState createState() => _PanduanPageState();
}

class _PanduanPageState extends State<PanduanPage> {
  late PDFDocument document;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  void loadDocument() async {
    document = await PDFDocument.fromAsset(widget.pdfPath);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the color of the drawer icon
        ),
        title: const Text(
          "Panduan",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : PDFViewer(document: document),
      ),
    );
  }
}
