import 'package:flutter/material.dart';
import 'package:postrequest/dashboard.dart';


class AddProduct extends StatefulWidget{
  _AddProduct createState() =>  _AddProduct();
}

class _AddProduct extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 40),
                child: ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              FlatButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                              },
                                  child: Icon(Icons.arrow_back_ios)),
                              SizedBox(width: 50,),
                              Text("Add Product",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),

                            ],
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 50,
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey.withOpacity(.1),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: TextField(
                              onChanged: (String text) {

                              },
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: "Product Name",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),

                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 50,
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey.withOpacity(.1),
                                border: Border.all(color: Colors.grey)
                            ),
                            child: TextField(
                              onChanged: (String text) {

                              },
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: "Product Price",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),

                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 50,
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey.withOpacity(.1),
                                border: Border.all(color: Colors.grey)
                            ),
                            child: TextField(
                              onChanged: (String text) {

                              },
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: "Product Description",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),

                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              SizedBox(width: 30,),
                              Container(
                                height: 50,
                                width: 130,
                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.grey.withOpacity(.1),
                                    border: Border.all(color: Colors.grey)
                                ),
                                child: TextField(
                                  onChanged: (String text) {

                                  },
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: "Stock Quantity",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),

                                ),
                              ),
                              SizedBox(width: 30,),
                              Container(
                                height: 50,
                                width: 130,
                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.grey.withOpacity(.1),
                                    border: Border.all(color: Colors.grey)
                                ),
                                child: TextField(
                                  onChanged: (String text) {

                                  },
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: "Stock Uniy",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),

                                ),
                              ),
                            ],
                          ),
                          
                          SizedBox(height: 30,),
                          Padding(
                            padding:EdgeInsets.only(right: 150),
                            child: Text("Product Categories",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 50,
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey.withOpacity(.1),
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Select Product Categories",style: TextStyle(color: Colors.grey),),
                                SizedBox(width: 100,),
                                Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 15,)
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),
                          Padding(
                            padding:EdgeInsets.only(right: 180),
                            child: Text("Product Images",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Padding(
                                padding:EdgeInsets.only(right: 180),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  padding: EdgeInsets.only(top: 14,left: 10,right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),

                                  ),
                                  child: Column(
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50,),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child:Center(child:Text("ADD PRODUCT",style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w600),),
                          ),),
                        ],
                      ),

                    ]
                )
            )
        )
    );
  }
}