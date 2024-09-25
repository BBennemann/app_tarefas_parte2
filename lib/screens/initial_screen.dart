import 'package:app_tarefas_parte2/components/task.dart';
import 'package:app_tarefas_parte2/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.blue,
        title: const Text(
          'Tarefas',
        ),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: ListView(
        //scrollDirection: Axis.horizontal,
        children: const [
          Task('Aprender Flutter', 'assets/images/flutter.png', 4),
          Task('Andar de Bike', 'assets/images/bike.webp', 2),
          Task('Meditar', 'assets/images/meditar.jpeg', 5),
          Task('Jogar', 'assets/images/jogar.jpg', 1),
          Task('Ler', 'assets/images/ler.jpg', 3),
          SizedBox(height: 80,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FormScreen(),),);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}