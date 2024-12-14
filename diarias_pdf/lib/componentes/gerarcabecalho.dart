import 'dart:io';

import 'package:pdf/widgets.dart' as pw;

pw.TableRow gerarcabecalho() {
  final image = pw.MemoryImage(
    File('../../assets/logo.png').readAsBytesSync(),
  );

  return pw.TableRow(children: [
    pw.Column(children: [
      pw.Image(image, width: 80),
    ]),
    pw.Column(children: [
      pw.Text("""PREFEITURA MUNICIPAL DE SÃO SEBASTIÃO DO ANTA\n
CNPJ: 01.613.123/0001-60\n
ESTADO DE MINAS GERAIS\n
REQUERIMENTO DE CONCESSÃO DE DIÁRIAS""",
          textAlign: pw.TextAlign.center,
          style: pw.TextStyle(font: pw.Font.helveticaBold())),
      pw.Text('REQUERIMENTO DE CONCESSÃO DE DIÁRIAS',
          textAlign: pw.TextAlign.center)
    ]),
  ]);
}
