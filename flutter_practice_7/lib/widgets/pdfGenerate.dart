import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'package:printing/printing.dart';

// ignore: camel_case_types
class controllerPDF {
  pw.Document pdf;
  Uint8List archivoPdf;

  Future<void> initPDF() async {
    archivoPdf = await generarPdf();
  }

  Future<void> createPDF() async {
    archivoPdf = await generarPdf();
    sharePDF();
  }

  Future<void> sharePDF() async {
    await Printing.sharePdf(bytes: archivoPdf, filename: 'Documento.pdf');
  }

  Future<Uint8List> generarPdf() async {
    print("Generado");
    pdf = pw.Document();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a5,
        margin: pw.EdgeInsets.zero,
        build: (context) => [
          pw.Padding(
            padding: pw.EdgeInsets.symmetric(vertical: 20),
            child: pw.Center(
              child: pw.Text(
                'NADA',
                style: pw.TextStyle(
                  fontSize: 30,
                  color: PdfColors.blue,
                ),
                textAlign: pw.TextAlign.center,
              ),
            ),
          ),
          pw.SizedBox(
            height: 20,
          ),
          pw.Padding(
            padding: pw.EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: pw.Text(
              '',
              style: pw.TextStyle(
                fontSize: 20,
              ),
              textAlign: pw.TextAlign.justify,
            ),
          ),
          pw.SizedBox(
            height: 70,
          ),
        ],
      ),
    );
    return pdf.save();
  }
}
