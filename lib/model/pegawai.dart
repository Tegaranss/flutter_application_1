class Pegawai {
  late int id;
  late String nip;
  late String nama;
  late String tanggal_lhr;
  late String nomor_tlp;
  late String email;
  late String password;

  Pegawai(Map pegawai) {
    id = pegawai['id'];
    nip = pegawai['nip'];
    nama = pegawai['nama'];
    tanggal_lhr = pegawai['tanggal_lhr'];
    nomor_tlp = pegawai['nomor_tlp'];
    email = pegawai['email'];
    password = pegawai['password'];
  }
}
