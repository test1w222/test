import 'package:flutter/material.dart';

class CreateHousePage extends StatefulWidget {
  @override
  _CreateHousePageState createState() => _CreateHousePageState();
}

class _CreateHousePageState extends State<CreateHousePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFECD8C9),
        title: Image.asset(
          "assets/logo_words.png",
          fit: BoxFit.contain,
          height: 70,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          
        ],
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
        heroTag: "uniqueTag1",
        onPressed: () {Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => AddPage()),
      );},
        child: Icon(Icons.add,size: 45,),  
        backgroundColor: const Color.fromARGB(255, 209, 213, 215),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)), 
          side: BorderSide(color: Colors.white, width: 2),)  ,
      ) 
      ),
    );
  }
}
// class HouseList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     if (houses.isEmpty) {
//       return Center(
//         child: Text(
//           '您尚未刊登任何物件',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       );
//     } else {
//       return Column(
//         children: List.generate(houses.length, (index) {
//           return Container(
//             width: MediaQuery.of(context).size.width,
//             height: 160,
//             margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 1,
//                   blurRadius: 4,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: GestureDetector(
//               onTap: () {},  
//               child: Stack(
//                 children: [
//                   Card(
//                     elevation: 0,
//                     margin: EdgeInsets.zero,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(8),
//                             bottomLeft: Radius.circular(8),
//                           ),
//                           child: Image.network(
//                             houses[index].imageUrl,
//                             fit: BoxFit.cover,
//                             width: 140,
//                             height: double.infinity,
//                           ),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: EdgeInsets.all(10),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   '${houses[index].type} | ${houses[index].name}',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                   maxLines: 2,
//                                   overflow: TextOverflow.clip,
//                                 ),
//                                 SizedBox(height: 8),
//                                 Text(
//                                   '${houses[index].size}坪 ${houses[index].city}${houses[index].district}',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                   ),
//                                   maxLines: 1,
//                                   overflow: TextOverflow.clip,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 6,
//                     right: 8,
//                     child: Row(
//                       children: [
//                         Text(
//                           '${houses[index].price}',
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 249, 58, 58),
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           ' 元/月',
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 249, 58, 58),
//                             fontSize: 15
//                           ),
//                         ), 
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),  
//           );
//         }),
//       );
//     }
//   }
// }

class AddPage extends StatefulWidget {
  
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xFFECD8C9),
      title: Image.asset("assets/logo_words.png",
      fit: BoxFit.contain,
      height: 70,
      ),
      centerTitle: true,  
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
      body: Padding(padding: EdgeInsets.only(right: 10,left: 10,bottom: 10),
        child: ListView(
        children: [
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3, 
                  offset: Offset(0, 3)
                ),
              ],
            ),
            child: ListTile(
            title: Text("縣市",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
          
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3,                   
                  offset: Offset(0, 3)
                ),
              ],
            ),
            child: ListTile(
            title: Text("房屋類型",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
          
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3,
                  offset: Offset(0, 3)
                ),
              ],
            ),            
            child: ListTile(
            title: Text("出租人",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3,                   
                  offset: Offset(0, 3)
                ),
              ],
            ),
            child: ListTile(
            title: Text("房屋類型",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5),
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 9)),
                    Expanded(
                      flex: 1, 
                      child: Text(
                        "刊登標題",
                        style: TextStyle(color: Color(0xFF613F26), fontSize: 20),
                      ),
                    ),
                    Expanded(
                      flex: 2, 
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '請輸入刊登標題',
                          labelStyle: TextStyle(color: Color(0xFF613F26)),
                          contentPadding: EdgeInsets.symmetric(vertical: 0),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5),
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 9)),
                    Expanded(
                      flex: 1, 
                      child: Text(
                        "地址",
                        style: TextStyle(color: Color(0xFF613F26), fontSize: 20),
                      ),
                    ),
                    Expanded(
                      flex: 2, 
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '請填寫完整街道',
                          labelStyle: TextStyle(color: Color(0xFF613F26)),
                          contentPadding: EdgeInsets.symmetric(vertical: 0),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
                   
          SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5),
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 9)),
                    Expanded(
                      flex: 1, 
                      child: Text(
                        "租金",
                        style: TextStyle(color: Color(0xFF613F26), fontSize: 20),
                      ),
                    ),
                    Expanded(
                      flex: 2, 
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '請輸入租金',
                          labelStyle: TextStyle(color: Color(0xFF613F26)),
                          contentPadding: EdgeInsets.symmetric(vertical: 0),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                     Text('元/月')
                    
                  ],
                ),
              ),
            ),
          ),
          
          
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3,
                  offset: Offset(0, 3)
                ),
              ],
            ),            
            child: ListTile(
            title: Text("租金包含",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          )
          ,
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3,
                  offset: Offset(0, 3)
                ),
              ],
            ),            
            child: ListTile(
            title: Text("家俱",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3,
                  offset: Offset(0, 3)
                ),
              ],
            ),            
            child: ListTile(
            title: Text("型態",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3,
                  offset: Offset(0, 3)
                ),
              ],
            ),            
            child: ListTile(
            title: Text("樓層",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 113, 94, 94).withOpacity(0.5), 
                  blurRadius: 3,
                  offset: Offset(0, 3)
                ),
              ],
            ),            
            child: ListTile(
            title: Text("其他",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
        ],
      ),) 
    );
  }
}
    