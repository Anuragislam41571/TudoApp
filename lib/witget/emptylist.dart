import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class emptylist extends StatelessWidget {
  const emptylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset('assets/lottie/lotties.json',height: 300,width: 300,
              fit: BoxFit.scaleDown),
          
          Text('Tudo is empty!',style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w300

          ),)
        ],
      )
    );
  }
}
