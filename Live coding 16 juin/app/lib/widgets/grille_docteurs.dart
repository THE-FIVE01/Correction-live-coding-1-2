import 'package:app/fournisseurs/fournisseur_docteurs.dart';
import 'package:app/widgets/item_docteur.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class GrilleDocteur extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final docteurData = Provider.of<FournisseurDocteur>(context).docteur;

    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: docteurData.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: docteurData[i],
        child: DocteurItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
    
    );
  }
}