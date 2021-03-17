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
      home: MyHomePage(title: 'Login page'),
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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.limeAccent[700], Colors.yellowAccent[700]],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            margin: EdgeInsets.only(top: 40, left: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150.0),
                              //color: Colors.deepOrange,
                              image: DecorationImage(
                                // image: AssetImage('assets/thefive.jpeg'),
                                image: AssetImage('assets/avatar.png'),
                                fit: BoxFit.cover,
                                //alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text(
                              "The-Five-World",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/tree.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(130),
                        topRight: Radius.circular(130),
                        // bottomLeft: Radius.circular(80),
                        // bottomRight: Radius.circular(80)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(23),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xFFE7edeb).withOpacity(0.7),
                                hintText: "E-mail",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.blue[900],
                                )),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xFFE7edeb).withOpacity(0.7),
                                hintText: "Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.blue[900],
                                )),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  print(
                                      "Vous avez appuyer sur Forget your password");
                                },
                                child: Text(
                                  "Forget your password",
                                  style: TextStyle(
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                      color: Colors.red[900],
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(),
                            child: ElevatedButton(
                              onPressed: () {
                                print("vous avez appuyez sur Login");
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.lime.withOpacity(0.9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 15.0,
                                //shadowColor: Colors.limeAccent[700]
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
