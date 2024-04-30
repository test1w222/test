import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/createhouse_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/forgetpw_page.dart';
import 'pages/home_page.dart';
import 'pages/test_page.dart';


void main() {
  runApp(
    MaterialApp(  
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/register':(context) => RegisterPage(),
        '/login':(context) => LoginPage(),
        '/forgetpw':(context) => ForgetpwPage(),
        '/home':(context) => HomePage(),
        '/add':(context) => AddPage(),
      },
      home: TestPage(),
    )
  );
}




// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int currentTab=0;
//   final List<Widget>screens=[
//     LoginPage(),
//     RegisterPage(),
//     ForgetpwPage()
//   ];
//   final PageStorageBucket bucket =PageStorageBucket();
//   Widget CurrentScreen=LoginPage();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageStorage(
//         child: CurrentScreen,
//         bucket: bucket,
//       ),
      
//       floatingActionButton: FloatingActionButton(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),),
//         onPressed: () {},
//         child: Icon(Icons.add,), 
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         notchMargin: 8,
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: (){
//                       setState(() {
//                         CurrentScreen=LoginPage();
//                         currentTab=0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.home,
//                           color:currentTab ==0 ? Colors.blue : Colors.grey,
//                         ),
//                         Text('首頁',style: TextStyle(color: currentTab ==0 ? Colors.blue : Colors.grey,),)
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: (){
//                       setState(() {
//                         CurrentScreen=ForgetpwPage();
//                         currentTab=0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.home,
//                           color:currentTab ==0 ? Colors.blue : Colors.grey,
//                         ),
//                         Text('首頁',style: TextStyle(color: currentTab ==0 ? Colors.blue : Colors.grey,),)
//                       ],
//                     ),
//                   ),
//                   Padding(padding: EdgeInsets.only(right: 70)),
                  
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: (){
//                       setState(() {
//                         CurrentScreen=RegisterPage();
//                         currentTab=0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.home,
//                           color:currentTab ==0 ? Colors.blue : Colors.grey,
//                         ),
//                         Text('首頁',style: TextStyle(color: currentTab ==0 ? Colors.blue : Colors.grey,),)
//                       ],
//                     ),
//                   ),
                  
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: (){
//                       setState(() {
//                         CurrentScreen=LoginPage();
//                         currentTab=0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.home,
//                           color:currentTab ==0 ? Colors.blue : Colors.grey,
//                         ),
//                         Text('首頁',style: TextStyle(color: currentTab ==0 ? Colors.blue : Colors.grey,),)
//                       ],
//                     ),
//                   ),
                  
//                 ],
//               )
            
//           ),
        
            
//     );
//   }
// }

