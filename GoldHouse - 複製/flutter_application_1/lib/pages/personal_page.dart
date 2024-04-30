import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(10),
                // child: Text(
                //   "個人資料",
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 25),
                // ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/Logo.png'),
                  backgroundColor: Colors.brown,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                  child: Text(
                    "黃金屋",
                    style: TextStyle(
                        color: Color(0xFF613F26),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 241, 240, 237),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 30,
                        color: Color(0xFF613F26),
                      ),
                      title: Text("個人資料",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(color:Color(0xFF613F26)),
                    ListTile(
                      leading: Icon(
                        Icons.favorite_rounded,
                        size: 30,
                        color: Color(0xFF613F26),
                      ),
                      title: Text("收藏",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(color:Color(0xFF613F26)),
                    ListTile(
                      leading: Icon(
                        Icons.loyalty,
                        size: 30,
                        color: Color(0xFF613F26),
                      ),
                      title: Text("瀏覽紀錄",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(color:Color(0xFF613F26)),
                    ListTile(
                      leading: Icon(
                        Icons.group,
                        size: 30,
                        color: Color(0xFF613F26),
                      ),
                      title: Text("個人資料",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(color:Color(0xFF613F26)),
                    ListTile(
                      leading: Icon(
                        Icons.question_answer,
                        size: 30,
                        color: Color(0xFF613F26),
                      ),
                      title: Text("個人資料",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
                      trailing: Icon(Icons.question_mark),
                    ),
                    Divider(color:Color(0xFF613F26)),
                  ],
                ),
                )
                
              ),
            ),
            // Align(
            //   alignment: Alignment.topCenter,
            //   child: Padding(
            //     padding: EdgeInsets.all(15),
            //     child: ElevatedButton(
            //       style: ButtonStyle(
            //           backgroundColor:
            //               MaterialStateProperty.all<Color>(Colors.redAccent)),
            //       onPressed: () {},
            //       child: Text(
            //         "Log Out",
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // )
          ],
    ));
  }
}