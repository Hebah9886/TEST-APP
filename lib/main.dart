
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/Qut.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


Qut qut=Qut();
void main() {
  runApp(ExamApp());
}


  class ExamApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.cyan[50],
            title: Text('TEST'),
          ),
          body:Padding(
            padding: const EdgeInsets.all(20.0),
            child: exampage(),
          ) ,
        ),
      );
    }
  }
class exampage extends StatefulWidget {

  @override
  State<exampage> createState() => _exampageState();
}

class _exampageState extends State<exampage> {
  List<Widget> answerquation=[];

void checkAnsr (bool UserChose){
  bool correctAns=qut.GetqutAR();
  setState(() {
    if (UserChose == correctAns) {
      answerquation.add(
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_up_alt, color: Colors.green,),
          ));
    }
    else {
      answerquation.add(
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_down_alt, color: Colors.red,),
          ));
    }
    if ( qut.Iffinsh() == true)
    {
      Alert(
        context: context,
        title: "you done ",
        desc: "start again.",
        buttons: [
          DialogButton(
            child: Text(
              "yes",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();      qut.agin();
      answerquation=[];
    }
    else {
      qut.next();
    }
  });

  }


 int Question_num=0;


      @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: answerquation,
        ),
        Expanded(
          flex: 5,
            child:Column(
              children: [

                Image.asset(qut.GetqutIM()),
                SizedBox(height: 20,),
                Text(qut.GetqutTX(),
                  textAlign: TextAlign.center,
                style:
                const TextStyle(
                  fontSize: 24,
                ),),
              ],
            )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.indigo[300],
            ),
            child: const Text('TRUE',

            style: TextStyle(
              fontSize: 24,
              color: Colors.white
            ),
            ),
            onPressed: (){
              checkAnsr(true);
            }

           ,
          )),

        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.indigo[300],
            ),
            child: const Text('FALSE',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
              ),),
            onPressed: (){
              checkAnsr(false);


            },
          )),

        )



      ],

    );
  }
}
