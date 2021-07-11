import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> with SingleTickerProviderStateMixin{

late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 100));
  }

  @override
  Widget build(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(

          child:Center(
            child: InkWell(
              onTap: (){
                if(_animationController.isCompleted){
                  _animationController.reverse();
                }else{
                  _animationController.forward();
                }
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.ellipsis_search,
                size: 50,
                progress: _animationController),
            ),
          ),

          )
        /*Center(
            child: Container(
              color: Colors.orange,
              height: 200,
              width: 200,
              child: FittedBox(child: Text('Hello Wolrds')),
            ),
          )*/
          /*LayoutBuilder(
              builder: (BuildContext contex, BoxConstraints constraints){
                if(constraints.maxWidth >= 600){
                  return _buildWideContainers();
                } else {
                  return _buildNormalContainer();
                }
              }),*/

    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }

}
