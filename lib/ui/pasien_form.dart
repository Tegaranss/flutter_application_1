import 'package:flutter/material.dart';

class FormPasien extends StatefulWidget {
  const FormPasien({Key? key}) : super(key: key);
  _FormPasienState createState() => _FormPasienState();
}

class _FormPasienState extends State<FormPasien> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
          child: Form(
              key: _formkey,
              child: Column(children: [
                TextField(
                    decoration:
                        const InputDecoration(labelText: "Nama Pasien")),
                TextField(
                    decoration:
                        const InputDecoration(labelText: "No Rekam Medis")),
                TextField(
                    decoration:
                        const InputDecoration(labelText: "Tanggal Lahir")),
                TextField(
                    decoration:
                        const InputDecoration(labelText: "Nomor Telepon")),
                TextField(
                    decoration: const InputDecoration(labelText: "Alamat")),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
              ]))),
    );
  }
}
