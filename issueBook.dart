

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepage/homelogin.dart';
import 'package:homepage/homepage.dart';

class IssueBook extends StatefulWidget{

  @override
  Issuebook createState() => Issuebook();
}

class Issuebook extends State<IssueBook>{
  bool isIssueBook = false;
  bool isIssuedBook = false;
  bool isLogs = false;
  bool isCustomer = false;
  bool isAddCostumer = false;
  @override
  Widget build(BuildContext context){
    return Material(
      color: black,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          leading: IconButton(icon: Icon(Icons.home,color: white,),
          onPressed: (){
            Navigator.of(context).pop();
          },
          ),
          centerTitle: true,
          title: Text('Book Issue',style: TextStyle(color: white),),
          
        ),
        body: Container(
          color: black,
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Material(
            color: Colors.transparent,
            elevation: 14,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 14,
              color: black,
              child: Row(
                
                children: [
                  Container(height: 1000,width: 250,color:
                   Colors.transparent,
                   child:leftContainer(),
                   ),
                  Container(height: 1000,width: 740,color: Colors.transparent,
                  child: mainContainer(),),
                  Container(height: 1000,width: 250,color: Colors.transparent,
                  child: rightContainer(),),
                ],
              ),
            ),
          ),),
      ),
    );
  }

  Widget leftContainer(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
            child: RaisedButton(
            elevation: 14,
            onPressed: (){setState(() {
              isIssueBook = false;
                isIssuedBook = !isIssuedBook;
                isLogs = false;
                isCustomer = false;
                isAddCostumer = false;
            });},
            color: black,
            child: Text('Issued',style: TextStyle(color: white),),
          ),
        ),
        SizedBox(
          width: 150,
            child: RaisedButton(
            elevation: 14,
            onPressed: (){
              setState(() {
                isIssueBook = !isIssueBook;
                isIssuedBook = false;
                isLogs = false;
                isCustomer = false;
                isAddCostumer = false;
              });
            },
            color: black,
            child: Text('Issue',style: TextStyle(color: white),),
          ),
        ),
        SizedBox(
          width: 150,
            child: RaisedButton(
            elevation: 14,
            onPressed: (){setState(() {
              isIssueBook = false;
                isIssuedBook = false;
                isLogs = false;
                isCustomer = !isCustomer;
                isAddCostumer = false;
            });},
            color: black,
            child: Text('Customers',style: TextStyle(color: white),),
          ),
        ),
        SizedBox(
          width: 150,
            child: RaisedButton(
            elevation: 14,
            onPressed: (){setState(() {
              isIssueBook = false;
                isIssuedBook = false;
                isLogs = !isLogs;
                isCustomer = false;
                isAddCostumer = false;
            });},
            color: black,
            child: Text('Logs',style: TextStyle(color: white),),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 150,
            child: RaisedButton(
            elevation: 14,
            onPressed: (){setState(() {
              isIssueBook = false;
                isIssuedBook = false;
                isLogs = false;
                isCustomer = false;
                isAddCostumer = !isAddCostumer;
            });},
            color: black,
            child: Text('Add Customer',style: TextStyle(color: white),),
          ),
        )
      ],);
  }
  Widget mainContainer(){
    return Stack(children: [
      bottomDesignRight(),
      bottomDesignLeft(),
      issuedBookLayer(),
      issueBookLayer(),
       logsLayer(),
      customersLayer(),
      addCosumrLayer(),

    ],);
  }
  Widget rightContainer(){}

  Widget issuedBookLayer(){
    return AnimatedPositioned(
      top: isIssuedBook ? 40 : -540,
      bottom: isIssuedBook ? 40 : 580,
      left: 40,
      right: 40,
      duration: Duration(milliseconds: 800),
      child: Material(
        color: black,
        borderRadius: BorderRadius.circular(10),
        elevation: 14,
      ),
    );
  }
  StatefulWidget issueBookLayer(){
     return AnimatedPositioned(
      top: isIssueBook ? 40: 580,
      bottom: isIssueBook ? 40:-540,
      left: 40,
      right: 40,
      duration: Duration(milliseconds: 800),
      child: Material(
        color: black,
        borderRadius: BorderRadius.circular(10),
        elevation: 14,
      ),
    );
  }
  Widget logsLayer(){
     return AnimatedPositioned(
      top: 40,
      bottom: 40,
      left: isLogs ? 40 :800,
      right: isLogs ? 40 : -720,
      duration: Duration(milliseconds: 800),
      child: Material(
        color: black,
        borderRadius: BorderRadius.circular(10),
        elevation: 14,
      ),
    );
  }
  Widget customersLayer(){
     return AnimatedPositioned(
      top: 40,
      bottom: 40,
      left: isCustomer ? 40: -720,
      right: isCustomer ? 40: 800,
      duration: Duration(milliseconds: 800),
      child: Material(
        color: black,
        borderRadius: BorderRadius.circular(10),
        elevation: 14,
      ),
    );
  }
  Widget addCosumrLayer(){
     return AnimatedPositioned(
      top: isAddCostumer ? 40 : -540,
      bottom: isAddCostumer ? 40: 580,
      left: isAddCostumer ?40 :-720,
      right: isAddCostumer ?40 : 800,
      duration: Duration(milliseconds: 800),
      child: Material(
        color: black,
        borderRadius: BorderRadius.circular(10),
        elevation: 14,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(160,60,160,60),
          child: Material(
            color: black,
            elevation: 14,
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40,10,40,10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Theme( data: ThemeData(primaryColor: white,primaryColorDark: white),
                     child: TextField(
                      cursorColor: white,
                      style: TextStyle(color: white),
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(color: white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Theme( data: ThemeData(primaryColor: white,primaryColorDark: white),
                     child: TextField(
                      cursorColor: white,
                      style: TextStyle(color: white),
                      decoration: InputDecoration(
                        labelText: 'Roll Number',
                        labelStyle: TextStyle(color: white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Theme( data: ThemeData(primaryColor: white,primaryColorDark: white),
                     child: TextField(
                      cursorColor: white,
                      style: TextStyle(color: white),
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                      height: 50,
                      width: 160,
                      child: RaisedButton(
                      color: black,
                      elevation: 14,
                      child: Text('Register',style: TextStyle(color: white),),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomDesignRight(){
    return AnimatedPositioned(
      top: 40,
      bottom: 40,
      left: 40,
      right: 40,
      duration: Duration(milliseconds: 300),
      child: Transform.rotate(
        angle: 0.05,
        child: Material(
          color: black,
          borderRadius: BorderRadius.circular(10),
          elevation: 14,
        ),
      ),
    );
  }
  Widget bottomDesignLeft(){
    return AnimatedPositioned(
      top: 40,
      bottom: 40,
      left: 40,
      right: 40,
      duration: Duration(milliseconds: 300),
      child: Transform.rotate(
          angle: -0.05,
          child: Material(
          color: black,
          borderRadius: BorderRadius.circular(10),
          elevation: 14,
        ),
      ),
    );
  }
}