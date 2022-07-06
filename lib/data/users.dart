class User {
  String? name;
  String? correo;
  String? password;

  User({this.name, this.correo, this.password});
}

List<User> users = [
  User(
    name: 'Anderson Macias',
    correo: 'anderk222@yavirac.edu.ec',
    password: 'chicharo123',
  ),
  User(
    name: 'Jhoan Macias',
    correo: 'anderk233@yavirac.edu.ec',
    password: 'sd123',
  ),
  User(
    name: 'Carlos Arboleda',
    correo: 'cark222@yavirac.edu.ec',
    password: 'carlison123',
  ),
  User(
    name: 'Jhon Valverde',
    correo: 'jhonsinho@yavirac.edu.ec',
    password: 'zuka123',
  ),
  User(
    name: 'Rosa Cenepa',
    correo: 'rosscpd@yavirac.edu.ec',
    password: 'cpd123',
  ),
  User(
    name: 'Richardlison De Andrade',
    correo: 'richlsn@sport.br',
    password: 'everton123',
  ),
  User(
    name: 'Skrillex Lol',
    correo: 'lolol222@yavirac.edu.ec',
    password: 'lololol123',
  ),
  User(
    name: 'Anderson Macias2',
    correo: 'anderk222#2@yavirac.edu.ec',
    password: 'qnmder2123',
  ),
];

class Params {
  Params({this.user});

  String? user;
}
