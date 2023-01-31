import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
      child: Scaffold(
        backgroundColor: Color.fromARGB(177, 175, 245, 253),
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Sondeo Test"),
          leading: const Icon(Icons.quiz, size: 24, color: Colors.white,),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text("Sondeo Ejemplo", style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "verdana",),),

              Container(
                width: 210,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFFFFFFFF),
                  ),
                  onPressed: () async =>{
                    Navigator.pushNamed(context, "/Sondeo")
                  },
                  child: const Text("Iniciar"),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
