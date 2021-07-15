import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0))),
            toolbarHeight: 140.0,
            backgroundColor: Colors.grey[350],
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 3.0, right: 5.0),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            bottom: TabBar(
                indicatorWeight: 5.0,
                unselectedLabelColor: Colors.deepPurple[300],
                indicatorColor: Colors.deepPurple[300],
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    
                    child: Container(
                      
                      child: Container(
                      
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            
                            'Events',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 22.0,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ),
                //  SizedBox(width: 10.0,),
                  Tab(
                    child: Container(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            'Activities',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 22.0,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Container(
                        child: Text(
                          'Growth+',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 22.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              NestedTabBar(),
              NestedTabBar(),
              NestedTabBar(),
            ],
          ),
        ));
  }
}










class NestedTabBar extends StatefulWidget {
  const NestedTabBar({Key? key}) : super(key: key);

  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        
        
        
        bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.grey[400],
            /*  indicator: BoxDecoration(
              border: Border.all(
                color: Color(0xffeeeeee),
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),*/

            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffeeeeee),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                     
                    onPressed: () {},
                    
                     child: Text(
                        'Time',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
               // SizedBox(width: 5.0,),
              
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffeeeeee),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                     
                    onPressed: () {},
                    
                     child: Text(
                        'Type',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
             
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffeeeeee),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                     
                    onPressed: () {},
                    
                     child: Text(
                        'Organization',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
             
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffeeeeee),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                     
                    onPressed: () {},
                    
                     child: Text(
                        'Location',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffeeeeee),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                     
                    onPressed: () {},
                    
                     child: Text(
                        'Date',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),

                
            ],
          ),
          




        ),
        
            
         
          
      




      ),
    );
  }
}

class NestedTab extends StatefulWidget {
  const NestedTab({Key? key}) : super(key: key);

  @override
  _NestedTabState createState() => _NestedTabState();
}

class _NestedTabState extends State<NestedTab>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              child: Container(
                child: Container(
                  child: Text(
                    'Active',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Container(
                  child: Text(
                    'Previous',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
