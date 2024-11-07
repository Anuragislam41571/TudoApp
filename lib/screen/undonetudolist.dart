import 'package:final_tudo/witget/emptylist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entities/class.dart';
import '../witget/tudoitem.dart';

class undonetudolist extends StatelessWidget {
  const undonetudolist({super.key, required this.ondelete, required this.onstatuschange, required this.tudoliist});
  final Function(int) ondelete;
  final Function(int) onstatuschange;
  final List<Tudo> tudoliist;


  @override
  Widget build(BuildContext context) {
    if(tudoliist.isEmpty){
      return emptylist();
    }
    return
       Scaffold(
         body: ListView.builder(
            itemCount: tudoliist.length,
            itemBuilder: (context,index){
         
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (_){
         
                  ondelete(index);
                },
                child: tudoitem(tudo: tudoliist[index],
         
         
                  onicontap: () {
                  onstatuschange;
                  },),
              );
            }),
       );
  }
}
