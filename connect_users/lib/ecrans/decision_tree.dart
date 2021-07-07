import 'package:connect_users/ecrans/home.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DecisionTree extends StatefulWidget {
  static const routeName = '/decision-tree';

  @override
  _DecisionTreeState createState() => _DecisionTreeState();
}

class _DecisionTreeState extends State<DecisionTree> {
  User? user;
  
  @override
  void initState() {
    super.initState();
    onRefresh(FirebaseAuth.instance.currentUser);
  }

  onRefresh(userCred) {
    setState(() {
      user = userCred;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(user == null) {
      return Login(onSignInAno: (userCred) => onRefresh(userCred),);
    }
    return Home(onSignOut: (userCred) => onRefresh(userCred),);
  }
}