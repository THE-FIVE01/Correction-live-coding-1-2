

import 'package:flutter/material.dart';
import 'package:food_recipes/fournisseurs/fournissseur_plats.dart';
import 'package:food_recipes/widgets/plat_item.dart';
import 'package:provider/provider.dart';


class ListPlats extends StatelessWidget {
  final String nomPays;

  ListPlats({this.nomPays});

  @override
  Widget build(BuildContext context) {
    final plats = Provider.of<FournisseurPlats>(context).items;
    
   

    return ListView.builder(
      //physics: NeverScrollableScrollPhysics(),
      shrinkWrap: false,
      scrollDirection: Axis.horizontal,
      itemCount: plats.length,
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: plats[i],
          child: PlatItem(
        ),
      )
    );
  }
}