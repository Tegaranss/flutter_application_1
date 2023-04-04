class Pasien {
  late int id;
  late String NomorRm;
  late String Nama;
  late String tanggal_lhr;
  late String nomor_tlp;
  late String alamat;

  Pasien(Map pasien) {
    id = pasien['id'];
    NomorRm = pasien['NomorRm'];
    Nama = pasien['Nama'];
    tanggal_lhr = pasien['tanggal_lhr'];
    nomor_tlp = pasien['nomor_tlp'];
    alamat = pasien['alamat'];
  }
}
