class User {
  String name;
  String? correo;
  String? password;
  String? image;

  User({required this.name, this.correo, this.password, this.image});
}

List<User> users = [
  User(
      name: 'Anderson Macias',
      correo: 'anderk222@yavirac.edu.ec',
      password: 'chicharo123',
      image:
          'https://wikidat.com/img/calamardo-95733efcaf9ef5b03806babe3b2a21d4.jpg'),
  User(
      name: 'Jhoan Macias',
      correo: 'anderk233@yavirac.edu.ec',
      password: 'sd123',
      image:
          'https://thumbs.dreamstime.com/b/fondo-del-coraz%C3%B3n-del-amor-del-arco-iris-60045149.jpg'),
  User(
      name: 'Carlos Arboleda',
      correo: 'cark222@yavirac.edu.ec',
      password: 'carlison123',
      image:
          'https://thumbs.dreamstime.com/b/fondo-del-coraz%C3%B3n-del-amor-del-arco-iris-60045149.jpg'),
  User(
      name: 'Jhon Valverde',
      correo: 'jhonsinho@yavirac.edu.ec',
      password: 'zuka123',
      image:
          'https://thumbs.dreamstime.com/b/fondo-del-coraz%C3%B3n-del-amor-del-arco-iris-60045149.jpg'),
  User(
      name: 'Rosa Cenepa',
      correo: 'rosscpd@yavirac.edu.ec',
      password: 'cpd123',
      image:
          'https://thumbs.dreamstime.com/b/fondo-del-coraz%C3%B3n-del-amor-del-arco-iris-60045149.jpg'),
  User(
      name: 'Richardlison De Andrade',
      correo: 'richlsn@sport.br',
      password: 'everton123',
      image:
          'https://thumbs.dreamstime.com/b/fondo-del-coraz%C3%B3n-del-amor-del-arco-iris-60045149.jpg'),
  User(
      name: 'Skrillex Lol',
      correo: 'lolol222@yavirac.edu.ec',
      password: 'lololol123',
      image:
          'https://thumbs.dreamstime.com/b/fondo-del-coraz%C3%B3n-del-amor-del-arco-iris-60045149.jpg'),
  User(
      name: 'Anderson Macias2',
      correo: 'anderk222#2@yavirac.edu.ec',
      password: 'qnmder2123',
      image:
          'https://thumbs.dreamstime.com/b/fondo-del-coraz%C3%B3n-del-amor-del-arco-iris-60045149.jpg'),
];

class Params {
  Params({this.user});

  String? user;
}
