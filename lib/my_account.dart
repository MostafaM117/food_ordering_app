import 'package:flutter/material.dart';
class DeleteAccBtn extends StatelessWidget {
  const DeleteAccBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        // ignore: avoid_print
        print('Delete Account Button Pressed');
      },
      style: TextButton.styleFrom( 
        backgroundColor: Colors.white
      ),
      child: const Text('Delete Account', style: TextStyle(fontSize: 16, color: Color(0xffF0543C)),),
    );
  }
}
class MyAccount extends StatelessWidget{
  
  const MyAccount({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Your',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(text: ' ',),
                TextSpan(text: 'Account',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.white,))
              ]
            )),
        backgroundColor: const Color(0xffF0543C),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back),),
        ),
      
      body: Center(
      child: Column(
      children:[
        Container(
        width: 400,
        height: 20,
        color: const Color(0xffF0543C),
        ),
        const SizedBox(
        width: 400,
        height: 30,
        ),
        Container(
        height: 644 ,
        width: 350,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2))]),
        child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(radius: 40,
          backgroundImage: AssetImage('assets/myphoto.jpg'),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Mostafa Mohamed',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          SizedBox(
            height: 20,
          ),
          
          SizedBox(
            width: 250,
            height: 40,
            child: Text('PERSONAL', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),textAlign: TextAlign.left,),
          ),
          SizedBox(
            width: 250,
            height: 25,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'First Name',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '        ',),
                TextSpan(text: 'Mostafa',style: TextStyle(fontSize: 14, color: Colors.black,))
              ]
            )),
          ),
          SizedBox(
            width: 250,
            height: 25,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Last Name',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '        '),
                TextSpan(text: 'Mohamed',style: TextStyle(fontSize: 14, color: Colors.black,))
              ]
            )),
          ),
          SizedBox(
            width: 250,
            height: 25,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Email',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '       '),
                TextSpan(text: 'mostafa.hamed1173@gmail.com',style: TextStyle(fontSize: 12, color: Colors.black,))
              ]
            )),
          ),
          SizedBox(
            width: 250,
            height: 25,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Phone',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '                '),
                TextSpan(text: '01007098944',style: TextStyle(fontSize: 14, color: Colors.black,))
              ]
            )),
          ),
          SizedBox(
            width: 250,
            height: 30,
          ),
          SizedBox(
            width: 250,
            height: 30,
            child: Text('SUBSCRIPTION', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          ),
          SizedBox(
            width: 250,
            height: 25,
            child: Text('You are using free trial.', style: TextStyle(fontSize: 14),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          DeleteAccBtn(),
        ]
        )
        ],
        )
      )
        ])),
        );
  }
}