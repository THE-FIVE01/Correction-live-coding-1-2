

import 'package:flutter/material.dart';
import 'package:food_recipes/fournisseurs/fournissseur_plats.dart';
import 'package:food_recipes/widgets/plat_item.dart';
import 'package:provider/provider.dart';


class ListPlats extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final plat = Provider.of<FournisseurPlats>(context).items;
    
    print(plat);

    return ListView.builder(
      //physics: NeverScrollableScrollPhysics(),
      shrinkWrap: false,
      scrollDirection: Axis.horizontal,
      itemCount: plat.length,
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: plat[i],
          child: PlatItem(
          ),
      )
    );
  }
}