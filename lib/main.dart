import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:navigation/telaSec.dart'; // Certifique-se de que esses arquivos existem e estão corretos.
import 'package:navigation/telaTer.dart';
import 'package:navigation/telaQat.dart';
import 'package:navigation/telaQui.dart';
import 'package:navigation/telaSex.dart'; // Certifique-se de que o arquivo take_picture_screen.dart está correto

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Obtenha a lista de câmeras disponíveis
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaPrincipal(camera: camera),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  final CameraDescription camera;

  const TelaPrincipal({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tela2(),
                  ),
                );
              },
              child: Text("tela2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tela3(),
                  ),
                );
              },
              child: Text("tela3"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tela4(),
                  ),
                );
              },
              child: Text("tela4"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tela5(camera: camera),
                  ),
                );
              },
              child: Text("tela5"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tela6(),
                  ),
                );
              },
              child: Text("tela6"),
            ),
          ],
        ),
      ),
    );
  }
}