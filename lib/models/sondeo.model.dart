import 'dart:convert';

class SondeoModel {
  int? idError;
  List<Resp>? resp;

  SondeoModel({this.idError, this.resp});

  SondeoModel.fromJson(Map<String, dynamic> json) {
    idError = json['idError'];
    if (json['resp'] != null) {
      resp = <Resp>[];
      json['resp'].forEach((v) {
        resp!.add(new Resp.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idError'] = this.idError;
    if (this.resp != null) {
      data['resp'] = this.resp!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Resp {
  String? id;
  String? sondeo;
  String? orden;
  num? capturaSKU;
  num? obligatorio;
  num? noAsistencia;
  num? puntajeTotal;
  String? tarea;
  String? linkWeb;
  num? abreLinkWebview;
  num? iterativo;
  num? iteracion;
  List<Preguntas>? preguntas;

  Resp(
      {this.id,
      this.sondeo,
      this.orden,
      this.capturaSKU,
      this.obligatorio,
      this.noAsistencia,
      this.puntajeTotal,
      this.tarea,
      this.linkWeb,
      this.abreLinkWebview,
      this.iterativo,
      this.iteracion,
      this.preguntas});

  Resp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sondeo = json['sondeo'];
    orden = json['orden'];
    capturaSKU = json['capturaSKU'];
    obligatorio = json['obligatorio'];
    noAsistencia = json['noAsistencia'];
    puntajeTotal = json['puntajeTotal'];
    tarea = json['tarea'];
    linkWeb = json['linkWeb'];
    abreLinkWebview = json['abreLinkWebview'];
    iterativo = json['iterativo'];
    iteracion = json['iteracion'];
    if (json['preguntas'] != null) {
      preguntas = <Preguntas>[];
      json['preguntas'].forEach((v) {
        preguntas!.add(new Preguntas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sondeo'] = this.sondeo;
    data['orden'] = this.orden;
    data['capturaSKU'] = this.capturaSKU;
    data['obligatorio'] = this.obligatorio;
    data['noAsistencia'] = this.noAsistencia;
    data['puntajeTotal'] = this.puntajeTotal;
    data['tarea'] = this.tarea;
    data['linkWeb'] = this.linkWeb;
    data['abreLinkWebview'] = this.abreLinkWebview;
    data['iterativo'] = this.iterativo;
    data['iteracion'] = this.iteracion;
    if (this.preguntas != null) {
      data['preguntas'] = this.preguntas!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Preguntas {
  String? id;
  String? pregunta;
  String? tipo;
  num ? puntaje;
  num? obligatorio;
  String? dependePregunta;
  String? dependeRespuesta;
  num? fotoGaleria;
  num? fotoGuardarCopia;
  String? idPreguntaRespuesta;
  String? respuesta;
  String? idTienda;
  String? idIniciativa;
  String? ordenI;
  num? valorMinimo;
  num? valorMaximo;
  List<Opciones>? opciones;
  num? capturaNTiempos;

  Preguntas(
      {this.id,
      this.pregunta,
      this.tipo,
      this.puntaje,
      this.obligatorio,
      this.dependePregunta,
      this.dependeRespuesta,
      this.fotoGaleria,
      this.fotoGuardarCopia,
      this.idPreguntaRespuesta,
      this.respuesta,
      this.idTienda,
      this.idIniciativa,
      this.ordenI,
      this.valorMinimo,
      this.valorMaximo,
      this.opciones,
      this.capturaNTiempos});

  Preguntas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pregunta = json['pregunta'];
    tipo = json['tipo'];
    puntaje = json['puntaje'];
    obligatorio = json['obligatorio'];
    dependePregunta = json['dependePregunta'];
    dependeRespuesta = json['dependeRespuesta'];
    fotoGaleria = json['fotoGaleria'];
    fotoGuardarCopia = json['fotoGuardarCopia'];
    idPreguntaRespuesta = json['idPreguntaRespuesta'];
    respuesta = json['respuesta'];
    idTienda = json['idTienda'];
    idIniciativa = json['idIniciativa'];
    ordenI = json['ordenI'];
    valorMinimo = json['valorMinimo'];
    valorMaximo = json['valorMaximo'];
    if (json['opciones'] != null) {
      opciones = <Opciones>[];
      json['opciones'].forEach((v) {
        opciones!.add(new Opciones.fromJson(v));
      });
    }
    capturaNTiempos = json['capturaNTiempos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pregunta'] = this.pregunta;
    data['tipo'] = this.tipo;
    data['puntaje'] = this.puntaje;
    data['obligatorio'] = this.obligatorio;
    data['dependePregunta'] = this.dependePregunta;
    data['dependeRespuesta'] = this.dependeRespuesta;
    data['fotoGaleria'] = this.fotoGaleria;
    data['fotoGuardarCopia'] = this.fotoGuardarCopia;
    data['idPreguntaRespuesta'] = this.idPreguntaRespuesta;
    data['respuesta'] = this.respuesta;
    data['idTienda'] = this.idTienda;
    data['idIniciativa'] = this.idIniciativa;
    data['ordenI'] = this.ordenI;
    data['valorMinimo'] = this.valorMinimo;
    data['valorMaximo'] = this.valorMaximo;
    if (this.opciones != null) {
      data['opciones'] = this.opciones!.map((v) => v.toJson()).toList();
    }
    data['capturaNTiempos'] = this.capturaNTiempos;
    return data;
  }
}

class Opciones {
  String? id;
  String? opcion;
  num? puntos;

  Opciones({this.id, this.opcion, this.puntos});

  Opciones.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    opcion = json['opcion'];
    puntos = json['puntos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['opcion'] = this.opcion;
    data['puntos'] = this.puntos;
    return data;
  }
}