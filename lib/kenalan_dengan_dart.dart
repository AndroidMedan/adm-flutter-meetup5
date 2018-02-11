import 'dart:async';

main() {
  //Variabel dynamic
  var nama = 'asdasd';
  var nama2 = "asdadads";
  var angka = 100;

  //Variabel static
  String namaStatis = "ini string statis";
  int angkaStatis = 1000;
  double doubleStatis = 100.90;

  testInnerFunction() {
    print("Halo Dart");
  }

  var john = new User('john@doe.com', password: '12345', fullName: 'John Doe');

  //tidak array -> list
  List<String> users = [];

  Map<String, dynamic> json = {
    'username': 'putraxor',
    'email': 'putraxor@gmail.com'
  };

  for (int i = 0; i < 100; i++) {
    print("i = $i");
  }


  //async

  Future<String> loadServerData() async {
    return "Simulate load data";
  }

  callSynchronous() {
    loadServerData().then((data) {
      print("Hasil dari loadServerData = $data");
    });
  }

  callAsync() async {
    String data = await loadServerData();
    print("Hasil dari loadServerData (await) $data");
  }
}


class User {
  String _thisIsPrivate;
  String email, password, fullName;

  User(this.email, {this.password = '12345', this.fullName = 'John Doe'});


  validate() => email.isNotEmpty && password.isEmpty;

}
