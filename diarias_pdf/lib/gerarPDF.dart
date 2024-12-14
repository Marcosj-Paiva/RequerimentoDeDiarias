import 'dart:io';
import 'package:diarias_pdf/componentes/gerarcabecalho.dart';
import 'package:diarias_pdf/componentes/gerarlinhanome.dart';
import 'package:pdf/widgets.dart' as pw;

Future<void> gerarPDF() async {
  final pdf = pw.Document();


  pdf.addPage(
    pw.Page(
        build: (pw.Context context) => pw.Table(
                border: pw.TableBorder(
                  horizontalInside: pw.BorderSide(width: 2),
                    verticalInside: pw.BorderSide(width: 2)),
                children: <pw.TableRow>[
                  gerarcabecalho(),
                  gerarlinhanome()
                  ])),
  );

  final file = File('./example.pdf');
  await file.writeAsBytes(await pdf.save());
}