import 'package:flutter/material.dart';
import 'elements/more_info.dart';
//import 'dart:convert';
//import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //You can use this part to get data from the http.
  /*
  var temparature;
  var currently;
  var windSpeed;
  var weather;
  Future getWeather() async {
    var url = Uri.parse("Url");
    http.Response res = await http.get(url);
    var result = jsonDecode(res.body);
    setState(() {
      this.temparature = result["temparature"][data];
      this.currently = ["currently"][data];
      this.weather = ["weather"][data];
      this.windSpeed = [windSpeed][data];
    });
  }
  @override
  void initState() {
    super.initState();
    this.getWeather();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildTop(context),
          buildMoreInfo(context),
        ],
      ),
    );
  }

  buildTop(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/sun.jpg"), fit: BoxFit.cover),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(44)),
        color: Color(0xFF4AC7DD),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Text(
              "Antalya",
              style: TextStyle(fontSize: Theme.of(context).textTheme.headline6!.fontSize, color: Colors.white),
            ),
          ),

          //If you want to use database you can use this part
          /*
          Text(
            temparature != null ? temparature.toString() + "\u00B0",
            style: TextStyle(fontSize: Theme.of(context).textTheme.headline3.fontSize),
          ),
          
          */
          Text(
            "30\u00B0",
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headline3!.fontSize,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Sunny",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline6!.fontSize! - 4,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
