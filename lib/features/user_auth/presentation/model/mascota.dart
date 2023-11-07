
import 'package:flutter/material.dart';

@immutable
class Mascota {
  const Mascota({
    required this.nombremascota,
    required this.raza,
    required this.genero,
    required this.edad,
    required this.color,
    required this.especie,
    required this.vacuna,
    required this.esterilizado,
    required this.description,
    required this.imagen,
  });

  Mascota.fromJson(Map<String, Object?> json)
      : this(
    nombremascota: (json['nombremascota']! as List).cast<String>(),
    raza: json['raza']! as String,
    genero: json['genero']! as String,
    edad: json['edad']! as String,
    color: json['color']! as String,
    especie: json['especie']! as String,
    vacuna: json['vacuna']! as String,
    esterilizado: json['esterilizado']! as String,
    description: json['description']! as String,
    imagen: json['imagen']! as String,
  );

  final String imagen;
  final String description;
  final String vacuna;
  final String esterilizado;
  final String especie;
  final String color;
  final String edad;
  final String genero;
  final String raza;
  final List<String> nombremascota;

  Map<String, Object?> toJson() {
    return {
      'nombremascota': nombremascota,
      'raza': raza,
      'genero': genero,
      'edad': edad,
      'especie': especie,
      'esterilizado': esterilizado,
      'vacuna': vacuna,
      'description': description,
      'imagen': imagen,
    };
  }
}
