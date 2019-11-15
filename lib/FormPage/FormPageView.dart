import 'package:chandi_mandir_2/main.dart';
import 'package:flutter/material.dart';

class FormPageView extends StatefulWidget {
  @override
  _FormPageViewState createState() => _FormPageViewState();
}

class _FormPageViewState extends State<FormPageView> {

  Widget createTextField(String title){
    return Padding(padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextField(
        cursorColor: primaryColor,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
          labelText: title,
          labelStyle: TextStyle(
            color: primaryAccent,
            fontWeight: FontWeight.w600,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: primaryAccent,
            ),
          )
        ),
      ),
    );
  }

  Widget createAppBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            color: Color(0xff0D6526),
            height: 75.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        "F l u t t e r".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
            ),
            Container(
              height: 500.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.zero, bottom: Radius.circular(50.0)),
                color: Color(0xff0D6526),
              ),
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    createAppBar(),
                    Padding(
                      padding: EdgeInsets.all(25),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(50.0), bottom: Radius.circular(50.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(0, 10),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    child: Text(
                                      "Add Event",
                                      style: TextStyle(
                                        fontFamily: 'Dosis',
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),),
                              createTextField("Name"),
                              Divider(
                                color: Colors.black54,
                              ),createTextField("Description"),
                              Divider(
                                color: Colors.black54,
                              ),createTextField("Timing"),
                              Divider(
                                color: Colors.black54,
                              ),
                              createTextField("Venue"),

                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 50),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
