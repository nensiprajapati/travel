import 'package:flutter/material.dart';

class ListaCittaScreen extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      body: new PageView
      (
        children: <Widget>
        [
          new CopertinaCitta("New York", "res/citta/new-york.jpg"),
          new CopertinaCitta("Paris", "res/citta/paris.jpg"),
          new CopertinaCitta("Tokyo", "res/citta/tokyo.jpg"),
          new CopertinaCitta("Kyoto", "res/citta/kyoto.jpg"),
          new CopertinaCitta("St Petersburg", "res/citta/st-petersburg.jpg"),
        ],
      )
    );
  }
}

class CopertinaCitta extends StatelessWidget
{
  String _nomeCitta;
  String _img;
  CopertinaCitta(this._nomeCitta, this._img);

  Widget build(BuildContext context)
  {
    return new Container
    (
      decoration: new BoxDecoration
      (
        image: new DecorationImage
        (
          image: new AssetImage(_img),
          fit: BoxFit.cover
        )
      ),
      child: new Align
      (
        alignment: FractionalOffset.topLeft,
        child: new Container
        (
          margin: new EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
          child: new Text(_nomeCitta.toUpperCase(), style: new TextStyle(color: Colors.white, fontSize: 90.0, fontWeight: FontWeight.w700)),
        )
      ),
    );
  }
}