import 'dart:io';
import 'package:pdf/widgets.dart' as pw;

Future<void> main() async {
  final pdf = pw.Document();

  final image = pw.MemoryImage(
    File('../assets/logo.png').readAsBytesSync(), // descrever o caminho da imagem
  );

  pdf.addPage(
    pw.Page(
        build: (pw.Context context) => pw.Table(
                border: pw.TableBorder(
                    right: pw.BorderSide(width: 2),
                    top: pw.BorderSide(width: 2),
                    left: pw.BorderSide(width: 2),
                    bottom: pw.BorderSide(width: 2)),
                children: <pw.TableRow>[
                  pw.TableRow(children: [
                    pw.Column(children: [
                      pw.Image(image,),
                    ]),
                    pw.Column(children: [
                      pw.Text("""PREFEITURA MUNICIPAL DE SÃO SEBASTIÃO DO ANTA\n
                        CNPJ: 01.613.123/0001-60\n
ESTADO DE MINAS GERAIS\n
REQUERIMENTO DE CONCESSÃO DE DIÁRIAS""", textAlign: pw.TextAlign.center,style: pw.TextStyle(font: pw.Font.helveticaBold())),
pw.Text('REQUERIMENTO DE CONCESSÃO DE DIÁRIAS', textAlign: pw.TextAlign.center)
                    ]),
                  ]),
                ])),
  );

  final file = File('./example.pdf');
  await file.writeAsBytes(await pdf.save());
}
