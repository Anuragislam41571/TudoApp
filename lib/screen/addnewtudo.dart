import 'package:final_tudo/entities/class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addnewtudoscreen extends StatefulWidget {
  const addnewtudoscreen({super.key, required this.addtudo});
  final Function(Tudo) addtudo;

  @override
  State<addnewtudoscreen> createState() => _addnewtudoState();
}

class _addnewtudoState extends State<addnewtudoscreen> {

  TextEditingController tittlecontroll=TextEditingController();
  TextEditingController descriptioncontroll=TextEditingController();
  GlobalKey<FormState> formkey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new tudo',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),

      body: Form(
        key: formkey,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                validator: (String?value){
                  if(value==null|| value.trim().isEmpty){
                    return 'write your tittle';
                  }
                  null;
                },
                controller: tittlecontroll,
                decoration: InputDecoration(
                  hintText: 'Tittle',
                  labelText: 'Tittle',
                ),
              ),
              const SizedBox(
                height: 9,

              ),
              TextFormField(
                maxLength: 200,
                validator: (String?value){
                  if(value==null|| value.trim().isEmpty){
                    return 'write your description';
                  }
                  null;
                },
                controller: descriptioncontroll,
                decoration: InputDecoration(
                    hintText: 'Description',
                    labelText: 'Description'
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: (){
                    if(formkey.currentState!.validate()){



                    Tudo tudo=Tudo(tittlecontroll.text.trim(), descriptioncontroll.text.trim(),
                        DateTime.now());
                    widget.addtudo(tudo);

                    Navigator.pop(context);}
                  }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
