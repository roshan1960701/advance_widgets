import 'package:advance_tools/Provider/myData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class myState extends StatefulWidget {
  const myState({Key? key}) : super(key: key);

  @override
  _myStateState createState() => _myStateState();
}

class _myStateState extends State<myState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Provider'),
      ),
      body: Center(
        child: Column(children: [
          
          Consumer<myData>(builder: (context,myData,child){
            return MaterialButton(onPressed: (){
              myData.changeData();
            },
            child: Center(child: Text('Increament'),),
            );
          }),
          Consumer<myData>(builder: (context,myData,child){
            return Text('${myData.num}');
          }),
          Consumer<myData>(builder: (context,myData,child){
            return RawMaterialButton(onPressed: (){
              myData.getString('Roshan');
            },
            child: Text('Click'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)
              ),
            );
          }),
          Consumer<myData>(builder: (context,myData,child){
            return Text('${myData.userName}');
          })
        ],),
      ),
    );
  }
}
