import 'package:flutter/material.dart';
import 'package:quizet/services/sondeo.service.dart';
import 'package:quizet/models/sondeo.model.dart';

class SondeoPage extends StatefulWidget {
  const SondeoPage({super.key});
  @override
  State<SondeoPage> createState() => _SondeoPageState();
}

class _SondeoPageState extends State<SondeoPage> {
  late SondeoService connector = SondeoService();
  late Future<Resp> sondeo;
  late Preguntas preguntas;

  late List options;
  late String question;
  @override
  void initState(){
    super.initState();
    _start();
  }
  _start() async {
    sondeo = connector.fetch();
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:Scaffold(appBar: AppBar(
        title: const Text('Sondeo'),
        elevation: 0,
      ),)
    );
  }
}
