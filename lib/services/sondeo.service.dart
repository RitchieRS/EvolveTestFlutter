import 'dart:convert';

import 'package:quizet/models/sondeo.model.dart';
import 'package:http/http.dart' as http;

class SondeoService{
  late SondeoModel sondeomdl;
  Future<Resp>fetch() async{
    var uri = "http://emetrix.com.mx/tracker/descargar_sondeos.php?idProyecto=366&idUsuario=8779&idTienda=87687";
    final response = await http
      .get(Uri.parse(uri));
    if(response.statusCode ==  200){
      sondeomdl = SondeoModel.fromJson(jsonDecode(response.body));
      return Resp.fromJson(sondeomdl.resp![0] as Map<String, dynamic>);
    }else{
      throw Exception("No fue posible recuperar la informacion");
    }
  }
}