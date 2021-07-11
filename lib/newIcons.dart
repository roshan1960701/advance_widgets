import 'package:flutter/material.dart';

class newIcons extends StatefulWidget {
  const newIcons({Key? key}) : super(key: key);

  @override
  _newIconsState createState() => _newIconsState();
}

class _newIconsState extends State<newIcons> with SingleTickerProviderStateMixin{
   late AnimationController myAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myAnimation = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            if(myAnimation.isCompleted){
              myAnimation.reverse();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Reverse"),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.green,
              ));
            }else
              {
                myAnimation.forward();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Forward"),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                ));
              }
          },
          child: AnimatedIcon(
              icon: AnimatedIcons.close_menu,
              size: 52,
            progress: myAnimation, ),
        ),
      ),
    );
  }
}
