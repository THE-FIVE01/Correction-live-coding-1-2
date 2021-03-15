import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Widgets interactifs'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String change;
  String submitted;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
        child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (String string) {
                  setState(() {
                    change = string;
                  });
                },
                onSubmitted: (String string) {
                  setState(() {
                    submitted = string;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Entrer votre nom',
                  labelStyle: TextStyle(
                    fontSize: 33,
                    fontFamily:  'Comic sans-ms',
                  )
                  
                ),
              ),
              Text(change ?? ''),
              Text(submitted ?? '')
            ],
          ),
        ),
      ),
    );
    
  }
}
