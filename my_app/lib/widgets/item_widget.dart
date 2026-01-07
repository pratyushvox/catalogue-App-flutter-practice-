import 'package:flutter/material.dart';
import 'package:my_app/models/Catalogue.dart';

class ItemWidget extends StatelessWidget {

  final Item item;

    const ItemWidget({Key? key, required this.item}) : super(key: key);   
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(  
        onTap: (){
         print("${item.name} pressed"); 
        },
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Image.network(item.image),
      title: Text(item.name,style: const TextStyle(fontSize: 16),),
      subtitle: Text("\$${item.desc}",style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)  ,
      trailing: Text("\$${item.price}",textScaleFactor:1.0 ,style: const TextStyle(color:Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.bold),
      
      ) 
       ) ,
      
    );
}
}