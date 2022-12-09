import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  print('Decembrie');
                },
                icon: Icon(Icons.ac_unit, color: Colors.white60, size: 40),
              ),
              Text(
                'Teme 2022',
                style: TextStyle(color: Colors.white, fontSize: 25, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              IconButton(
                onPressed: () {
                  print('7.12.2022');
                },
                icon: Icon(Icons.ac_unit, color: Colors.white60, size: 40),
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: UserAccountsDrawerHeader(
                  accountName: Text('Murgu Adrian'),
                  accountEmail: Text('murgu.adrian95@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    radius: 300,
                    backgroundColor: Colors.white,
                    child: Text(
                      "Primele Aplicatii",
                      strutStyle: StrutStyle(fontSize: 10),
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text('Aplicatii'),
                style: ListTileStyle.list,
              ),
              ListTile(
                title: Text("Convertorul"),
                leading: Icon(Icons.currency_exchange),
              ),
              ListTile(
                title: Text("Patrat sau Cub Perfect"),
                leading: Icon(Icons.square, color: Colors.greenAccent),
              ),
              ListTile(
                title: Text("Tic Tac"),
                leading: Icon(Icons.gamepad, color: Colors.red),
              ),
              ListTile(
                title: Text("Limbi Straine"),
                leading: Icon(Icons.language, color: Colors.cyanAccent),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                'Simulare Curs 1',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            TextButton(
              child: Text('Apasa aici'),
              onPressed: () {
                print('A fost apasat');
              },
            ),
            ElevatedButton(
              onPressed: () {
                print('A fost apasat Elevated Button');
              },
              child: Text('Eleveted'),
            )
          ],
        ),
        floatingActionButton: Builder(
          builder: (BuildContext context) {
            return FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog();
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
