import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC5AE9D),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 80),
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage( 
                  image: AssetImage('assets/Logo.png',),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: ListView(
                      children:<Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text('電子郵件',style: TextStyle(fontSize: 25,color: Color(0xFF613F26)),),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFFEFEBE9),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: ('請輸入電子郵件'),
                                hintStyle: TextStyle(color: Color.fromARGB(255, 128, 111, 111)),
                                border: InputBorder.none
                              ),
                            ),
                          ) 
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text( '密碼',style: TextStyle(fontSize: 25,color: Color(0xFF613F26)),),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFFEFEBE9),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: ('請輸入密碼'),
                                hintStyle: TextStyle( color: Color.fromARGB(255, 128, 111, 111)),
                                border: InputBorder.none
                              ),
                            ),
                          )
                        ),
                        const SizedBox(height: 10,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: (){Navigator.pushNamed(context, '/forgetpw');},
                            child: const Text('忘記密碼?',style: TextStyle(color: Color(0xFF613F26)),),
                          ), 
                        ),
                        const SizedBox(height:10),
                        Align(
                          child: SizedBox(
                            width: 150,
                            height: 60,
                            child: TextButton(
                              onPressed: () {Navigator.pushNamed(context, '/register');},
                              style: TextButton.styleFrom(backgroundColor: const Color(0xFFECD8C9)),
                              child: const Text('登入',style: TextStyle(fontSize: 26,color: Colors.black),),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: (){Navigator.pushNamed(context, '/register');},
                            child: const Text('還沒有帳號嗎?這裡註冊',style: TextStyle(fontSize: 15,color: Color(0xFF613F26)),),
                          ),
                        )
                      ],
                    ),
                  ),
                  )
                  
                  
              ),
            
          ],
        ),
      ),
    );
  }
}