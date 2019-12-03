import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as math;
class Anim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text("Logout"),
          onPressed: (){
            showGeneralDialog(
    context: context,
    pageBuilder: (context, nda1, nda2) {},
    barrierDismissible: true,
    barrierColor: Colors.red.withOpacity(0.4),
    barrierLabel: '',
    transitionBuilder: (context, nda1, nda2, child) {
      return Transform.rotate(
        angle: math.radians(nda1.value * 360),
        child: AlertDialog(
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Yes"),

            ),
            FlatButton(
              child: Text("No"),
              onPressed: (){
                Navigator.pop(context);
              
              },
            )

          ],
          shape:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Center(child: Text('Logout')),
          content: Text('are you sure want to logout'),
        ),
      );
    },
    transitionDuration: Duration(milliseconds: 300));

          },
        )
      ),
      
    );
  }
}
