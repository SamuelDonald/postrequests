
// import 'package:flutter/cupertino.dart';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:postrequest/addproduct.dart';

class DashBoard extends StatefulWidget{
  _DashBoard createState() =>  _DashBoard();
}

class _DashBoard extends State<DashBoard>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 80),
            child: ListView(
              children: [
                Text("MALKO FLAW",style: TextStyle(color: Colors.green,
                    fontSize: 15,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                Text("Dashboard",style: TextStyle(color: Colors.black,
                    fontSize: 25,fontWeight: FontWeight.w500),),
                SizedBox(height:50),
                Container(
                  height: 150,
                  width: 300,
                 padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                     border: Border.all(color: Colors.green)
                 ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TOTAL SALES",
                            style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child:Center(child:Text("TODAY",style: TextStyle(color: Colors.green,fontSize: 10),),)
                          ),

                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("#200,000,000.00",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.only(top: 14,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.greenAccent),
                        
                      ),
                      child: Column(
                        children: [
                          Text("TOTAL ORDERS", style: TextStyle(color: Colors.grey,fontSize: 8),),
                          SizedBox(height: 15,),
                          Text("33", style: TextStyle(color: Colors.black,fontSize: 30),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.only(top: 14,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.greenAccent),

                      ),
                      child: Column(
                        children: [
                          Text("TOTAL PRODUCTS", style: TextStyle(color: Colors.grey,fontSize: 8),),
                          SizedBox(height: 15,),
                          Text("60", style: TextStyle(color: Colors.black,fontSize: 30),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.only(top: 14,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.greenAccent),

                      ),
                      child: Column(
                        children: [
                          Text("TOTAL CUSTOMERS", style: TextStyle(color: Colors.grey,fontSize: 8),),
                          SizedBox(height: 15,),
                          Text("21", style: TextStyle(color: Colors.black,fontSize: 30),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New Orders",style: TextStyle(color: Colors.black,
                        fontSize: 25,fontWeight:FontWeight.w500),),
                    FlatButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddProduct()));
                    },
                        child: Text("See All",style: TextStyle(color: Colors.green),)),


                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 300,
                  width:  MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.2),
                                offset: Offset(0,3),
                              ),
                            ],
                            color: Colors.white
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.2),
                                offset: Offset(0,3),
                              ),
                            ],
                            color: Colors.white
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.2),
                                offset: Offset(0,3),
                              ),
                            ],
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

        ));
  }
}