import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final _formKey =GlobalKey<FormState>();

  var name="";
  var email="";
  var password="";

  
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  
  
  
  @override
  void dispose(){
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  clearText(){
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    
  }
  CollectionReference students=FirebaseFirestore.instance.collection("students");
  Future<void>addUser(){
    return students.add({'name':name,"email":email,"password":password})
    .then((value) => print("user added"))
    .catchError((error)=>print("failed to add"));
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text("Add New Student")
    
    ),
     body: Form(
      key: _formKey,
      child:Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child:ListView(
          children: [
            Container(
              margin:EdgeInsets.all(20),
              child:TextFormField(
                autofocus: false,
                decoration:InputDecoration(
                  labelText:'Name:',
                  labelStyle: TextStyle(fontSize: 15.0),
                  border:OutlineInputBorder(),
                  errorStyle: TextStyle(color:Colors.red,fontSize: 15)  
                ),
                controller:nameController,
                validator: (value) {
                    if(value==null || value.isEmpty){
                      return 'Please enter name';

                    }
                    return null;
                }
              )
              
            ),

             Container(
              margin:EdgeInsets.all(20),
              child:TextFormField(
                autofocus: false,
                decoration:InputDecoration(
                  labelText:'Email:',
                  labelStyle: TextStyle(fontSize: 15.0),
                  border:OutlineInputBorder(),
                  errorStyle: TextStyle(color:Colors.red,fontSize: 15)  
                ),
                controller:emailController,
                validator: (value) {
                    if(value==null || value.isEmpty){
                      return 'Please enter email';

                    }
                    else if(!value.contains('@')){
                      return 'Please enter Valid Email';
                    }
                    return null;
                }
              )
              
            ),
            Container(
              margin:EdgeInsets.all(20.0),
              child:TextFormField(
                autofocus:false,
                obscureText:true,
                decoration:InputDecoration(
                  labelText:"Password: ",
                  labelStyle: TextStyle(fontSize:20.0),
                  border: OutlineInputBorder(),
                  errorStyle:TextStyle(color:Colors.redAccent,fontSize:15.0),
                  
                ),
                controller: passwordController,
                 validator: (value) {
                    if(value==null || value.isEmpty){
                      return 'Please Enter Password';

                    }
                    return null;
                }
              )
            ),
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed:(){
                    if(_formKey.currentState!.validate()){
                      setState((){
                        name=nameController.text;
                        email=emailController.text;
                        password=passwordController.text;
                        addUser();
                        clearText();
                      },);


                    }


                  }, child: Text(
                    'Register',
                    style:TextStyle(fontSize:18.0),

                  ),),
                  ElevatedButton(
                    onPressed: ()=>{clearText()},
                    style:ElevatedButton.styleFrom(primary:Colors.blueGrey),
                    child:Text(
                      'Reset',
                      
                    )
                  
                  )
                ],
              )
            )
          ],
          )
        )
     ), 
    );
  }
}
