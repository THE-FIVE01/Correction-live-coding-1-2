import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import '../providers/product.dart';



class EditProductScreen extends StatefulWidget {
  static const routeName ='/edit-product';

  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _imageUrlController = TextEditingController();
  final _imageUrlFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  var _editedProduct = Product(id: null, title: '', description: '', price: 0, imageUrl: '');
  var _initValues = {
    'title': '',
    'description': '',
    'price': '',
    'imageUrl': ''
  };
  var _isInit = true;

  @override
  void initState() {
    _imageUrlFocusNode.addListener(_updateImageUrl);
    super.initState();
  }
  
  @override
  void didChangeDependencies() {
    if (_isInit) {
      final productId = ModalRoute.of(context).settings.arguments as String;
      if (productId != null) {
        _editedProduct = Provider.of<Products>(context).findById(productId);
        _initValues = {
          'title': _editedProduct.title,
          'description': _editedProduct.description,
          'price': _editedProduct.price.toString(),
          //'imageUrl': _editedProduct.imageUrl
          'imageUrl': ''
        };
        _imageUrlController.text = _editedProduct.imageUrl;
      }
     
    }
    _isInit = false;
    super.didChangeDependencies();
  }
  @override
  void dispose() {
    _imageUrlFocusNode.removeListener(_updateImageUrl);
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _imageUrlController.dispose();
    _imageUrlFocusNode.dispose();
    super.dispose();
  }

  void _updateImageUrl() {
    if (!_imageUrlFocusNode.hasFocus) {
      if ((_imageUrlController.text.startsWith("http://") && 
          _imageUrlController.text.startsWith("https://")) ||
          (!_imageUrlController.text.trim().endsWith(".png") && 
          !_imageUrlController.text.trim().endsWith(".jpg") && 
          !_imageUrlController.text.trim().endsWith(".jpeg"))
      )
      return;
    
      setState((){});
    }
  }

  void _saveForm() {
    final isValid =_form.currentState.validate();
    if (!isValid) {
      return;
    }
    _form.currentState.save();
    // Si l'id du produit  est différent de null on modifie
    if (_editedProduct.id != null) {
      Provider.of<Products>(context, listen: false).updateproduct(_editedProduct.id, _editedProduct); 
    } // on ajoute un nouveau produit si l'id es null
    else {
      Provider.of<Products>(context, listen: false).addProduct(_editedProduct); 
    }
    
    Navigator.of(context).pop();

  }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modifier produit"),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                _saveForm();
              },
              icon: Icon(Icons.save),
            ),
          )
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                initialValue: _initValues['title'],
                decoration: InputDecoration(
                  labelText: "Title",
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_priceFocusNode);
                },
                validator: (value) {
                  if (value.trim().isEmpty) {
                   return "Veuiller entrer un titre";
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                    id: _editedProduct.id, 
                    title: value, 
                    description: _editedProduct.description, 
                    price: _editedProduct.price, 
                    imageUrl: _editedProduct.imageUrl,
                    isFavorite: _editedProduct.isFavorite
                  );
                },
              ),
              TextFormField(
                initialValue: _initValues['price'],
                decoration: InputDecoration(
                  labelText: "Price",
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                focusNode: _priceFocusNode,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_descriptionFocusNode);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Entrer le prix SVP";
                  }
                  if (double.tryParse(value) == null) {
                    return "Entrer un nombre valide SVP";
                  }
                  if (double.parse(value) <= 0){
                    return "Entrer un prix supérieur à 0";
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                    id: _editedProduct.id, 
                    title: _editedProduct.title, 
                    description: _editedProduct.description, 
                    price: double.tryParse(value), 
                    imageUrl: _editedProduct.imageUrl,
                    isFavorite: _editedProduct.isFavorite
                  );
                },
              ),
              TextFormField(
                initialValue: _initValues['description'],
                decoration: InputDecoration(
                  labelText: "Description",
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                focusNode: _descriptionFocusNode,
                validator: (value) {
                  if(value.isEmpty) {
                    return "Entrer une description SVP";
                  }
                  if (value.length < 10) {
                    return "Entrer au moin 10 caractères pour la description SVP";
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                    id: _editedProduct.id, 
                    title: _editedProduct.title, 
                    description: value, 
                    price: _editedProduct.price, 
                    imageUrl: _editedProduct.imageUrl,
                    isFavorite: _editedProduct.isFavorite
                  );
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 8, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey
                      )
                    ),
                    child: _imageUrlController.text.isEmpty? Text("Entrer une url"): FittedBox(
                      child: Image.network(_imageUrlController.text,),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      //initialValue: _initValues['imageUrl'],
                      decoration: InputDecoration(
                        labelText: "Image url"
                      ),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: _imageUrlController,
                      focusNode: _imageUrlFocusNode,
                      onFieldSubmitted: (_) {
                        _saveForm();
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Entrer une url d'image";
                        }
                        if ((!value.trim().startsWith("http://")) && (!value.trim().startsWith("https://"))) {
                          return "Entrer une url valide SVP";
                        }
                        if ((!value.trim().endsWith(".png")) && (!value.trim().endsWith(".jpg")) && (!value.trim().endsWith(".jpeg"))) {
                          return "Entrer une image valide";
                        }
                        return null;
                      },
                       onSaved: (value) {
                        _editedProduct = Product(
                          id: _editedProduct.id, 
                          title: _editedProduct.title, 
                          description: _editedProduct.description, 
                          price: _editedProduct.price, 
                          imageUrl: value,
                          isFavorite: _editedProduct.isFavorite
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}