

class Local {
  int? id;
  String? codigo;
  String? nombre;

  Local({
    this.id,
    this.nombre,
    this.codigo,
  });

  factory Local.fromJson(Map<String, dynamic> json) => Local(
    id: json["id"],
    nombre: json["nombre"],
    codigo: json["codigo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "codigo": codigo,
  };
}