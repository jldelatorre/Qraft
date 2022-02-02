import 'package:flutter/material.dart';
import 'package:qr_aft/models/Activo.dart';
import 'package:qr_aft/providers/db_provider.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FutureBuilder(
              future: DBProvider.db.getTodosAtivos(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if( !snapshot.hasData ){
                  return Center( child: CircularProgressIndicator(),);
                }
                final activos = snapshot.data;
                if( activos!.length == 0 ){
                  return Center(
                    child: Text('No hay informacion'),
                  );
                }
                return ListView.builder(
                    itemCount: activos.length,
                    itemBuilder: (context, i) => ListTile(
                      leading: Icon(Icons.cloud_queue),
                      title: Text( activos[i].area_local.toString() ),
                    )
                );
              }
          ),
        ),
      ),
    );
  }
}

