
class Activo {

  String? area;
  String? codigo;
  String? descripcion;
  double? valor;
  double? valorReposicion;

  Activo({
    this.area,
    this.codigo,
    this.descripcion,
    this.valor,
    this.valorReposicion,
  });

  factory Activo.fromJson(Map<String, dynamic> json) => Activo(
    area: json["area"],
    codigo: json["codigo"],
    descripcion: json["descripcion"],
    valor: json["valor"].toDouble(),
    valorReposicion: json["valorReposicion"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "area": area,
    "codigo": codigo,
    "descripcion": descripcion,
    "valor": valor,
    "valorReposicion": valorReposicion,
  };
}
