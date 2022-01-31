import 'package:flutter/material.dart';
import 'package:qr_aft/models/Activo.dart';
import 'package:qr_aft/providers/db_provider.dart';
import 'package:get/get.dart';
import 'package:qr_aft/src/pages/list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_center_focus),
        onPressed: _scanQR,
      ),
    );
  }

  _scanQR() {

    String area = '0058x8488';
    String codigo = 'MB002589';
    String descripcion = 'adsdadasda';
    double valor = 250;
    double valorReposicion = 50;

    final activo = Activo( area: area, codigo: codigo, descripcion: descripcion, valor: valor, valorReposicion: valorReposicion);
    DBProvider.db.nuevoActivo(activo);
    Get.to(List());

  }

}
