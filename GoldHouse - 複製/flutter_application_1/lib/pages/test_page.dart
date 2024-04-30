import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/createhouse_page.dart';
import 'home_page.dart';
import 'search_page.dart';
import 'personal_page.dart';
class TestPage extends StatefulWidget {
  
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage>{
  int currentTab=0;
  final List<Widget>screens=[
    HomePage(),
    SearchPage(),
    CreateHousePage(),
    HomePage(),
    PersonalPage(),
  ];
  final PageStorageBucket bucket =PageStorageBucket();
  Widget CurrentScreen=HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: CurrentScreen,
        bucket: bucket,
      ),

      floatingActionButton: Container(
        width: 80, 
        height: 80, 
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 249, 247, 247),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)), 
          side: BorderSide(color: Color(0xFFECD8C9), width: 3),
          ),
          onPressed: () {
            setState(() {
            currentTab = 0;
            CurrentScreen = HomePage();
          });
          },
          child: Image.asset('assets/Logo.png',fit: BoxFit.cover),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFECD8C9),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        CurrentScreen=SearchPage();
                        currentTab=1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 35,
                          Icons.search_outlined,
                          color:currentTab ==1 ? Color(0xFF613F26) : Colors.grey,
                        ),
                        Text('搜尋',style: TextStyle(color: currentTab ==1 ? Color(0xFF613F26) : Colors.grey,),)
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        CurrentScreen=CreateHousePage();
                        currentTab=2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 30,
                          Icons.add,
                          color:currentTab ==2 ? Color(0xFF613F26) : Colors.grey,
                        ),
                        Text('刊登',style: TextStyle(color: currentTab ==2 ? Color(0xFF613F26) : Colors.grey,),)
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 90)),
                  
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        CurrentScreen=HomePage();
                        currentTab=3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 30,
                          Icons.home,
                          color:currentTab ==3 ? Color(0xFF613F26) : Colors.grey,
                        ),
                        Text('首頁',style: TextStyle(color: currentTab ==3 ? Color(0xFF613F26) : Colors.grey,),)
                      ],
                    ),
                  ),
                  
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        CurrentScreen=PersonalPage();
                        currentTab=4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 30,
                          Icons.person,
                          color:currentTab ==4 ? Color(0xFF613F26) : Colors.grey,
                        ),
                        Text('個人',style: TextStyle(color: currentTab ==4 ? Color(0xFF613F26) : Colors.grey,),)
                      ],
                    ),
                  ),
                  
                ],
              )
            
          ),
        
            
    );
  }
}



