import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DataModel.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'Display.dart';


class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {



List<DataModel> dataList = [];
 

Future<List<DataModel>> readJsonData() async {
    final jsondata =
    await rootBundle.rootBundle.loadString('assets/data.json');
    //data from json file has been read and stored in the list
    final data = json.decode(jsondata) as List<dynamic>;
    //now return the list
    return dataList = data.map((e) => DataModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" "),
          backgroundColor: Colors.white,
        ),
        body: FutureBuilder<List<DataModel>>(
            future: readJsonData(),
            builder: (context, list) {
              if (list.hasError) {
                return const Center(
                  child: Text('Error!'),
                );
              } else if (list.hasData) {
                return Display(models: list.data!);
              } else {
                return Display(models: list.data!);
              }
            }
            
            ));
  }


  
}
