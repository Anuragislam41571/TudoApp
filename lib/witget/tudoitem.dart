import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../entities/class.dart';

class tudoitem extends StatelessWidget {
  const tudoitem({
    super.key, required this.tudo, required this.onicontap,
  });
  final Tudo tudo;
  final VoidCallback onicontap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: getcolor(tudo.isDone),
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child: ListTile(
        title: Text(tudo.tittle,style: TextStyle(
            decoration: _gettextdecorate(tudo.isDone)
        ),),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tudo.description),
            Text(DateFormat.yMEd().add_jms().format(tudo.time))

          ],

        ),
        trailing:_buildicon(tudo.isDone) ,
      ),
    );
  }
  Widget _buildicon(bool isDone){
    return GestureDetector(
      onTap: onicontap,
      child: CircleAvatar(
        child:Icon(_geticon(tudo.isDone)) ,
      ),
    );
  }
  IconData _geticon(bool isDone){

    return isDone? Icons.check:Icons.clear;
  }

  TextDecoration? _gettextdecorate(bool isDone){

    return isDone? TextDecoration.lineThrough:null;
  }
Color? getcolor(bool isDone){
    
    return isDone? Colors.lightBlue:null;
}


}
