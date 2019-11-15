import 'package:flutter/material.dart';
import 'package:chandi_mandir_2/main.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  Widget createCard(
      {String url,
      String name,
      String description,
      String timing,
      String venue}) {
    if(name == null)
      name = "N A M E";
    if(url == null)
    url = "https://images8.alphacoders.com/388/thumb-350-388531.jpg";
    if(description == null)
    description = "Description";
    if(timing == null)
    timing = "Time of the Event";
    if(venue == null)
    venue = "Theatre 1";

    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                              color: primaryAccent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  url,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'Dosis',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                    child: Text(
                      description,
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Dosis',
                        fontSize: 18.0,
                      ),
                    ),
                  ),Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                    child: Text(
                      timing,
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Dosis',
                        fontSize: 18.0,
                      ),
                    ),
                  ),Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 0, 0, 20),
                    child: Text(
                      venue,
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Dosis',
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
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
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  title: IconButton(
                    icon: Icon(
                      Icons.format_align_left,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  actions: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("images/abcdef.jpg"),
                            radius: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                  pinned: true,
                  expandedHeight: 150.0,
                  backgroundColor: Color(0xff0D6526),
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      "Theatre  app",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        createCard(name: "Chhichhore", description: "Bekaar Film, Mat Dekho.",timing: "Kal",venue: "Apne apne gharo pe"),
                        createCard(),
                        createCard(),
                        createCard(),
                        createCard(),
                        createCard(),
                        createCard(),
                        createCard(),
                        createCard(),
                        createCard(),
                        createCard(),
                        createCard(),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//Row(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Expanded(
//child: Container(
//color: Color(0xff0D6526),
//height: 75.0,
//child: Row(
//children: <Widget>[
//Expanded(
//child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: <Widget>[
//IconButton(
//icon: Icon(
//Icons.arrow_back_ios,
//color: Colors.white,
//),
//onPressed: () {},
//),
//Text(
//"F l u t t e r".toUpperCase(),
//style: TextStyle(
//color: Colors.white,
//fontSize: 24.0,
//fontWeight: FontWeight.bold,
//),
//),
//IconButton(
//icon: Icon(
//Icons.search,
//color: Colors.white,
//),
//onPressed: () {},
//),
//],
//),
//)
//],
//),
//),
//),
//],
//),
