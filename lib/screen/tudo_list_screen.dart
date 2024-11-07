import 'package:final_tudo/entities/class.dart';
import 'package:final_tudo/screen/addnewtudo.dart';
import 'package:final_tudo/screen/alltuduList.dart';
import 'package:final_tudo/screen/donetudolist.dart';
import 'package:final_tudo/screen/undonetudolist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../witget/tudoitem.dart';

class tudolistscreen extends StatefulWidget {
  const tudolistscreen({super.key});

  @override
  State<tudolistscreen> createState() => _tudolistscreenState();
}

class _tudolistscreenState extends State<tudolistscreen> {

  final List<Tudo> tudolist=[];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tudo list',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          bottom: TabBar(tabs: [
            Tab(text: 'All',),
            Tab(text: 'Done',),
            Tab(text: 'Undone',),


          ]),
        ),
        body: TabBarView(children: [

          alltudolist(ondelete: (int index ) {delettudo(index);  },
            onstatuschange: (int index) { toogletudo(index); }, tudoliist: tudolist,),
          donetudolist(ondelete: (int index ) { delettudo(index); },
            onstatuschange: (int index) { toogletudo(index); },
            tudoliist: tudolist,),
          undonetudolist(ondelete: (int index ) { delettudo(index); },
            onstatuschange: (int index) { toogletudo(index); },
            tudoliist: tudolist,)

        ]),


        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.lightBlue,
          tooltip: 'Add new tudo',
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>addnewtudoscreen(addtudo:addnewtudo))
            );
            },
            icon: Icon(Icons.add,color: Colors.white,), label: Text('Add',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),)),

      ),
    );
  }
  void addnewtudo(Tudo tudo){

    tudolist.add(tudo);
    if (mounted){
      setState(() {

      });
    }

  }
  void delettudo(int index){
    tudolist.remove(index);
    if(mounted){
      setState(() {

      });
    }
  }
  void toogletudo(int index){
    tudolist[index].isDone=!tudolist[index].isDone;
    if(mounted){
      setState(() {

      });
    }
  }
}

