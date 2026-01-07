import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/utils/routes.dart';
import 'package:my_app/models/Catalogue.dart';
import 'package:my_app/widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Catalogue App"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogueModel.items.length,
          itemBuilder: (context,index){
            final item = CatalogueModel.items[index];
            return ItemWidget(item: item);
          },
        
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
