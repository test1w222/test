import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override 
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFECD8C9),
        title: Image.asset("assets/logo_words.png",fit: BoxFit.contain,height: 70,),
        centerTitle: true,
      ),
      body:Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20,right: 60,left: 60,bottom: 10),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFFECD8C9),
                borderRadius: BorderRadius.circular(25)
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.circular(25)
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Color(0xFF613F26),
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontSize: 20),
                tabs: [
                  Tab(text: '地區',),
                  Tab(text: '捷運',),
                ],
              ),
            ),
            ),
            
            Expanded(
                child: TabBarView(
                  children: [
                    AreaPage(), 
                    MRTPage(),
                  ],
                ),
              ),
          ]  
        ),
      ),
    );    
  }
}


class AreaPage extends StatefulWidget {
  @override
  _AreaPageState createState() => _AreaPageState();
}

class _AreaPageState extends State<AreaPage> {

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(padding: EdgeInsets.only(top:20, right: 10,left: 10,bottom: 10),
        child: ListView(
        children: [
          InkWell(
            onTap: (){
            },
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
            title: Text("租金範圍",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
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
            title: Text("其他",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
        ],
      ),) 
    );
  }
}
    

class MRTPage extends StatefulWidget {
  @override
  _MRTPageState createState() => _MRTPageState();
}

class _MRTPageState extends State<MRTPage> {

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(padding: EdgeInsets.only(top:20, right: 10,left: 10,bottom: 10),
        child: ListView(
        children: [
          InkWell(
            onTap: (){
            },
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
            title: Text("捷運",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
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
            title: Text("租金範圍",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
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
            title: Text("其他",style: TextStyle(color: Color(0xFF613F26),fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),),
          ),
        ],
      ),) 
    );
  }
}
    








