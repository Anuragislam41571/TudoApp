import 'package:final_tudo/screen/tudo_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tudoapp extends StatelessWidget {
  const tudoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tudolistscreen(),
      theme: ThemeData(

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white

        ),
        inputDecorationTheme: InputDecorationTheme(

      enabledBorder:OutlineInputBorder(
        borderSide: BorderSide(width: 2,color: Colors.lightBlue)

      ) ,
          focusedErrorBorder:OutlineInputBorder(
              borderSide: BorderSide(width: 2,color: Colors.lightBlue)

          ) ,
          focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: Colors.lightBlue)

        ) ,
          errorBorder:OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: Colors.lightBlue)

        ) ,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(

          style: ElevatedButton.styleFrom(

            backgroundColor: Colors.lightBlue,
            fixedSize: Size.fromWidth(double.maxFinite),
            foregroundColor: Colors.white
          )
        )
      ),
    );
  }
}
