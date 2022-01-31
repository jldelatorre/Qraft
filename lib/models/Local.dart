

class Local {

  String? nombre;
  String? codigo;

  Local({
    this.nombre,
    this.codigo,
  });

  factory Local.fromJson(Map<String, dynamic> json) => Local(
    nombre: json["nombre"],
    codigo: json["codigo"],
  );

  Map<String, dynamic> toJson() => {
    "nombre": nombre,
    "codigo": codigo,
  };
}