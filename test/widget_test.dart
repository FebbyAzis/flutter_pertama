// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:flutter_pertama/main.dart';

// void main() {
//  //tipe data dan variable
//  //var
//  var mahasiswa = "Jejen";
//  var umur = "20";
//  print(mahasiswa + " Umur = " + umur.toString());

//  //string
//  String mahasiswaString;
//  mahasiswaString = "Jissbaee";

//  print (mahasiswaString);

//  //int
//  int semester; 
// semester = 5;

//  print (semester);

//  //double
//  double ipk;
//  ipk = 3;

//  print (ipk);

//  //boolean
//  bool benar = true;
//  bool salah = false;
//  bool tidakbenar = !true;
//  bool tidaksalah = !false;

//  //List
//  List<String> jurusan = [
//   "Teknik Informatika", 
//   "Sistem Informasi", 
//   "DKV", 
//   semester.toString(), 
//   ipk.toString()
//   ];

//  print (jurusan);

//  //Map
//  Map<String, dynamic> kelas = {
//   "nama": "beben", "kelas": "TI 2"
//   };

//  print (kelas);
//  print (kelas['nama']);
//  print (kelas['kelas']);


// //OPERATOR
// int a, b;
// a = 9;
// b = 7;

// print ("a = " + a.toString());
// print ("b = " + b.toString());

// print (a + b);
// print (a - b);
// print (a / b);
// print (a * b);
// print (a > b);
// print (a < b);
// print (a >= b);
// print (a <= b);

// print("Conditional");
//  var nilai;
//   nilai = 80;
  
//   if(nilai >= 80){
//     print("A");
//   }else if(nilai <= 80 && nilai >= 50){
//     print("B");
//   }else{
//     print("Tidak Lulus");
//   }

//   print("---------");
//   nilai >= 80 ? print("A"):print("Tidak A");

//   //Function
//   print("Function");
  
//   hitungNilai();
//   hitungNilai1(75,90);
//   var p = hitungNilai1(2, 50);
//   print(p);
//   var n = hitungNilai2(mapel1: 50, mapel2: 2);
//   print(n);
//   var o = hitungNilai3(79,100);

//   // final keyword => imutable / tidak bisa dirubah
//  //const final
//  //const
//  //final
//   final String mahasiswafk;
  
//   mahasiswafk = "beben";
  
//   print(mahasiswafk);

//   //null safety
//   // ? ! late
//   // ? digunakan dia boleh nul
//   // String? jurusan;
//   // untuk di isi nanti
//   late String jurusanns;
  
//   jurusanns = "Teknik Informatika";
//   // jurusan = "TI";
//   //  memaksa untuk di jalankan / yakin ada datanya
//   print(jurusanns.length);

//   //perulangan looping
//   // for plus
//   for(int no = 1; no <= 5; no++){
//     print(no);
//   }
//   // for minus
//   for(int no = 5; no >= 1; no--){
//     print(no);
//   }
//   // while
//   int no1 = 1;
//   int no2 = 5;
//   while(no1 <= no2){
//     print(no1);
//     no1++;
//   }
//   // do while
//   int no3 = 1;
//   int no4 = 5;
//   do{
//     print(no3);
//     no3++;
//   }while(no3 <= no4);
// }
// //Function
//   hitungNilai(){
//     print("hitung nilai");
//   }

// //positional argument
//  hitungNilai1(mapel1,mapel2, [mapel3]){
//    var nilaiAkhir;
//    if(mapel3 != null){
//      nilaiAkhir = mapel1 / mapel2 + mapel3;
//    }else{
//      nilaiAkhir = mapel1 / mapel2;
//    }
  
//    return nilaiAkhir;
//   }

// //name argument
//   hitungNilai2({mapel1,mapel2}){
//     var nilaiAkhir;
//    if(mapel2 != null){
//      nilaiAkhir = mapel1 / mapel2;
//    }else{
//      nilaiAkhir = mapel1;
//    }
  
//    return nilaiAkhir;
//   }

//   //void
// void hitungNilai3(mapel1, mapel2){
//   var nilaiAkhir = mapel1 + mapel2;
//    print(nilaiAkhir);
// }

// oop
// class

class Kendaraan {
 String? merk;
 String? nama;
 int? kecepatan;
  
  // construktor
  Kendaraan({this.merk, this.nama, this.kecepatan});
  
  //method
  maju(int tambahKecepatan){
    kecepatan = kecepatan! + tambahKecepatan;
    // print(kecepatan.toString() + " KM/Jam");
  }
}

//inheritance / pewarisan
class Sedan extends Kendaraan{
  int? jumlahPintu;
  int? kecepatanMaksimal;
  
  Sedan({String? merk, this.jumlahPintu, this.kecepatanMaksimal}):super(merk: merk);
}

void main() {
  //instansiasi
  var k1 = Kendaraan(merk: "BMW", nama: "Civic", kecepatan: 20);
  
  k1.merk = "Toyota";
  // print(k1.maju(40));
  print(k1.merk);
  print(k1.nama);
  print(k1.kecepatan);
  
  var k2 = Kendaraan(merk: "Mitsubshi", nama: "Colt", kecepatan: 40);
  k2.maju(80);
  // print(kecepatan);
  print(k2.merk);
  print(k2.nama);
  print(k2.kecepatan);
  
  var s1 = Sedan(jumlahPintu: 4, kecepatanMaksimal: 120, merk: "Honda");
  print("------------");
  print(s1.jumlahPintu);
  print(s1.kecepatanMaksimal);
  print(s1.merk);
}

