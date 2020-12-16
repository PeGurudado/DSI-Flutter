import 'package:dsi_app/constants.dart';
import 'dart:math';
import 'package:dsi_app/registerProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu),
      title: Text("Home"),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: 16),
          icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterProfilePage()),
              );
            },
        ),
        Icon(Icons.more_vert),
      ],
    );
  }

  Widget _buildBody() {

      return Opacity(
        opacity: 0.5,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xfff7ffe8), Color(0xffc2ca94)], // Color(0xffc7ffba)
              stops: [0.8, 1.0],
              transform: GradientRotation(pi / 2.03),
            ),
            image: DecorationImage(
              image: Images.bsiLogo,
            ),
          ),
        ),
      );
    }
  }


