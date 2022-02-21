import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SamLogin extends StatefulWidget {
  _SamLogin createState() => _SamLogin();
}

class _SamLogin extends State<SamLogin> {

  bool loading = false;
  final scafoldKey = GlobalKey<ScaffoldState>();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {

    //loading = false;
    return SafeArea(
        child: Scaffold(
            key: scafoldKey,
            backgroundColor: Colors.red,
            body: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                children: [

                  Center(child: Icon(
                    Icons.account_circle, color: Colors.black,size: 90,),),
                  Center(child: Text("Login",style: TextStyle(color: Colors.black,
                      fontSize: 35,fontWeight: FontWeight.w600),),),
                  SizedBox(height: 40,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Email", style: TextStyle(color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),),
                      Container(
                        height: 60,
                        width: 250,
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),

                        child: TextField(
                          controller: emailC,
                          onChanged: (String text) {

                          },
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                          ),

                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 60,
                        width: 250,
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: TextField(
                          controller: passwordC,
                          onChanged: (String text) {

                          },
                          style: TextStyle(color: Colors.black,),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 80,),
                          FlatButton(onPressed: (){
                            print("clicked");
                          }, child:  Text("FORGOT YOUR PASSWORD?",style: TextStyle(color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),),)
                        ],
                      ),

                      SizedBox(height: 20,),
                      FlatButton(onPressed: (){
                        print("clicked");
                        if (validate() == true){
                          setState(() {
                            loading = true;
                          });
                          makePostRequest();
                        }

                      }, child:
                      loading == true ? CircularProgressIndicator(color: Colors.blueGrey,strokeWidth: 20,) :

                      Container(
                        height: 50,
                        width: 250,
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black
                        ),
                        child: Center( child:
                        Icon(Icons.login_sharp,size: 40,color: Colors.white,),),
                      ),),
                      SizedBox(height: 100,),
                      Text("-----------------------------OR-----------------------------",
                        style: TextStyle(color: Colors.black),),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Container(
                              height: 70,
                              width: 70,
                              padding: EdgeInsets.only(left: 0,top: 0),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),
                                color: Colors.deepPurple,),
                              child :Icon(Icons.facebook,size: 70,color: Colors.black,)
                          ),
                          SizedBox(width: 30,),
                          Container(
                            height: 70,
                            width: 70,
                            padding: EdgeInsets.only(left: 0,top: 0),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),
                              color: Colors.blue,),
                            child: Icon(Icons.facebook,size: 70,color: Colors.black,),
                          ),
                          SizedBox(width: 30,),
                          Container(
                              height: 70,
                              width: 70,
                              padding: EdgeInsets.only(left: 0,top: 0),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),
                                color: Colors.black,),
                              child :Icon(Icons.facebook,size: 70,color: Colors.white,)
                          ),

                        ],
                      ),
                    ],
                  ),

                ],
              ),
            )
        )
    );


  }
  bool validate(){

    if(emailC.text.isEmpty){
      scafoldKey.currentState!.showSnackBar(
          new SnackBar(content: Text("ENTER EMAIL"))
      );
      return false;
    }
    else if (!emailC.text.contains("@")) {
      scafoldKey.currentState!.showSnackBar(
          new SnackBar(content: Text("ENTER A VALID EMAIL"))
      );
      return false;
    }
    else if (passwordC.text.isEmpty) {
      scafoldKey.currentState!.showSnackBar(
          new SnackBar(content: Text("ENTER PASSWORD"))
      );
      return false;
    }
    else if (passwordC.text.length < 6) {
      scafoldKey.currentState!.showSnackBar(
          new SnackBar(content: Text("Password is weak"))
      );
      return false;
    }
    return true;

  }



  void makePostRequest() async{
    try {
      var url = Uri.parse("https://marketshare.iflsc.com/user/login");

      var headers = {
        HttpHeaders.authorizationHeader: 'Bearer ',
        'Content-Type': 'application/json'
      };

      var body = {
        "Email": emailC.text.trim(),
        "Password": passwordC.text.trim()
      };


      var response = await http.post(url,body: body, );
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      var dataDecoded = jsonDecode(response.body);
      if(response.statusCode == 200){

        String msg = dataDecoded["message"];
        scafoldKey.currentState!.showSnackBar(
            new SnackBar(content: Text(msg))
        );

        setState(() {
          loading = false;
          //if(passwordC.text.contains("chealsea"));

        });

      } else{

        String msg = dataDecoded["message"];
        scafoldKey.currentState!.showSnackBar(
            new SnackBar(content: Text(msg))
        );

        setState(() {
          loading = false;
        });
      }
    } on SocketException catch (e){
      print(e.message);
      scafoldKey.currentState!.showSnackBar(
          new SnackBar(content: Text("No internet!"))
      );

      setState(() {
        loading = false;
      });
    }
  }
}