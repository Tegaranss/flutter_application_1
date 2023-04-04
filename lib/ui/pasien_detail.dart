import 'package:flutter/material.dart';
import '../model/database.dart';
import '../model/pasien.dart';

class DetailPasien extends StatefulWidget {
  final Pasien pasien;

  const DetailPasien({super.key, required this.pasien});

  @override
  State<DetailPasien> createState() => _DetailPasienState();
}

class _DetailPasienState extends State<DetailPasien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Pasien")),
        body: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(textAlign: TextAlign.left, 'Nama'),
                      Text(textAlign: TextAlign.left, 'No Rekam Medis'),
                      Text(textAlign: TextAlign.left, 'Tanggal lahir'),
                      Text(textAlign: TextAlign.left, 'Nomor Telepon'),
                      Text(textAlign: TextAlign.left, 'alamat')
                    ]),
                Column(children: const [
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.pasien.Nama}"),
                    Text("${widget.pasien.NomorRm}"),
                    Text("${widget.pasien.tanggal_lhr}"),
                    Text("${widget.pasien.nomor_tlp}"),
                    Text("${widget.pasien.alamat}"),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("Ubah")),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text("Hapus")),
              ],
            )
          ],
        ));
  }
}
