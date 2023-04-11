import 'package:flutter/material.dart';

class FormPegawai extends StatefulWidget {
  const FormPegawai({Key? key}) : super(key: key);
  _FormPegawaiState createState() => _FormPegawaiState();
}

class _FormPegawaiState extends State<FormPegawai> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
          child: Form(
              key: _formkey,
              child: Column(children: [
                TextField(
                    decoration:
                        const InputDecoration(labelText: "Nama Pegawai")),
                TextField(decoration: const InputDecoration(labelText: "NIP")),
                TextField(
                    decoration:
                        const InputDecoration(labelText: "Tanggal Lahir")),
                TextField(
                    decoration:
                        const InputDecoration(labelText: "Nomor Telepon")),
                TextField(
                    decoration: const InputDecoration(labelText: "Email")),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
              ]))),
    );
  }
}
