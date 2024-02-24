
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget{

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {





 List imgList =[
    'Flutter',
    'C#',
    'Python',
    'React Native',

 ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xffB49164),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                     size: 30,
                    color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                     size: 30,
                    color: Colors.white,
                    ),
                  ],
                ),
                  SizedBox(height: 20),
                  Padding(padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    " مرحبا بك في طابوري", 
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Cairo',
                       fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "...أبحث هنا",
                        hintStyle: TextStyle(
                          fontFamily: 'Cairo',
                          color: Colors.black.withOpacity(0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.search, 
                          size: 25,
                         ),
                      ),
                    ),
                  ),

                  
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(children: [
            GridView.builder(
             
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.1,

                ),
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                         
                          shape: BoxShape.circle,

                        ),
                       
                      ),
                      SizedBox(height: 20),
                     
                  
                    ],
                  );
                },
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("المزيد", style: TextStyle(
             fontSize: 16,
             fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              ),),
              Text(" الأخبار", style: TextStyle(
             fontSize: 18,
             fontFamily: 'Cairo',
              fontWeight: FontWeight.w500,
              color: Color(0xffB49164),
              ),),
            ],
            ),
            SizedBox(height: 10),
            GridView.builder(
              itemCount: imgList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
              childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4*240),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,

              ),
              itemBuilder: (context, index){
                return InkWell(
                  onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>(imgList[index]),
                 ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      color: Color(0xfff5f3ff),

                    ),
                    child: Column(children: [
                        Padding(padding: EdgeInsets.all(10),
                        child: Image.asset("images/${imgList[index]}.png", width: 100, height: 100,
                        ),
                        ),
                         SizedBox(height: 10),
                        Text(
                          imgList[index],
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.6)
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("55 فيديو", style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                    ],),

                  ),
                );
              } 
              ),
        ],
        ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xffB49164),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),

           BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications_outlined), label: 'الأشعارات'),
            BottomNavigationBarItem(
              icon: Icon(Icons.save_as_outlined), label: 'الحجوزات'),
             BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'الحساب'),
        ]
         ),
    );
  }
}