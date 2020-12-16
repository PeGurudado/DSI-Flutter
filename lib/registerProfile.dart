import 'package:dsi_app/constants.dart';
import 'package:dsi_app/infra.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RegisterProfilePage extends StatefulWidget {
  final String title;

  RegisterProfilePage({Key key, this.title}) : super(key: key);

  @override
  _RegisterProfilePageState createState() => _RegisterProfilePageState();
}

class _RegisterProfilePageState extends State<RegisterProfilePage> {

  final _formKey = GlobalKey<FormState>();

  void _register() {
    if (!_formKey.currentState.validate()) return;

    dsiDialog.showInfo(
      context: context,
      message: 'Seu cadastro foi realizado com sucesso.',
      buttonPressed: () => dsiHelper..back(context)..back(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      leading: Icon(Icons.menu),
      title: Text("Register"),
      actions: <Widget>[
        Icon(Icons.more_vert),
      ],
    );
  }

  void _cancel() {
    Navigator.pop(context);
  }

  Widget _buildBody(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffefedb9), Color(0xffefedb9)],
                stops: [0.8, 1.0],
                transform: GradientRotation(pi / 2.03),
              ),
              image: DecorationImage(
                image: Images.bsiLogoWhite,
              ),
            ),

            child: Padding(
              padding: Constants.paddingMedium,
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(labelText: 'Nome*'),
                    validator: (String value) {
                      return value.isEmpty ? 'Nome inválido.' : null;
                    },
                  ),
                  Constants.spaceSmallHeight,
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(labelText: 'CPF*'),
                    validator: (String value) {
                      return value.isEmpty ? 'CPF inválido.' : null;
                    },
                  ),
                  Constants.spaceSmallHeight,
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(labelText: 'Idade*'),
                    validator: (String value) {
                      return value.isEmpty ? 'Idade inválido.' : null;
                    },
                  ),
                  Constants.spaceSmallHeight,
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(labelText: 'Cidade*'),
                    validator: (String value) {
                      return value.isEmpty ? 'Cidade inválido.' : null;
                    },
                  ),
                  Constants.spaceSmallHeight,
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(labelText: 'Pais*'),
                    validator: (String value) {
                      return value.isEmpty ? 'Pais inválido.' : null;
                    },
                  ),
                  Constants.spaceSmallHeight,
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(labelText: 'Ocupacao*'),
                    validator: (String value) {
                      return value.isEmpty ? 'Ocupacao inválido.' : null;
                    },
                  ),
                  Constants.spaceMediumHeight,
                  FlatButton(
                    child: Text('Salvar'),
                    padding: Constants.paddingSmall,
                    onPressed: _register,
                  ),
                  FlatButton(
                    child: Text('Cancelar'),
                    padding: Constants.paddingSmall,
                    onPressed: _cancel,
                  ),
                ],
              ),
            )
        )
    );
  }
}
