
class Activo {
  int? id;
  String? codigo;
  String? area_local;
  String? descripcion;
  double? valor;
  double? valorReposicion;

  Activo({
    this.id,
    this.area_local,
    this.codigo,
    this.descripcion,
    this.valor,
    this.valorReposicion,
  });

  factory Activo.fromJson(Map<String, dynamic> json) => Activo(
    id: json["id"],
    area_local: json["area_local"],
    codigo: json["codigo"],
    descripcion: json["descripcion"],
    valor: json["valor"].toDouble(),
    valorReposicion: json["valorReposicion"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "area_local": area_local,
    "codigo": codigo,
    "descripcion": descripcion,
    "valor": valor,
    "valorReposicion": valorReposicion,
  };
}
