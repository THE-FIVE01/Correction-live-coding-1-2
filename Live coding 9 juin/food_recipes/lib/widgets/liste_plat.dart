import 'package:flutter/material.dart';
import 'package:food_recipes/fournisseurs/fournissseur_plats.dart';
import 'package:food_recipes/fournisseurs/plat.dart';
import 'package:food_recipes/widgets/plat_item.dart';
import 'package:provider/provider.dart';


class ListPlats extends StatelessWidget {
  final bool choixFavoris;

  ListPlats({this.choixFavoris});

  

  @override
  Widget build(BuildContext context) {
    final plats = Provider.of<FournisseurPlats>(context);
    final platInfos = choixFavoris? plats.platFavoris : plats.items;
   

    return ListView.builder(
      //physics: NeverScrollableScrollPhysics(),
      shrinkWrap: false,
      scrollDirection: Axis.horizontal,
      itemCount: platInfos.length,
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: platInfos[i],
          child: PlatItem(
        ),
      )
    );
  }
}