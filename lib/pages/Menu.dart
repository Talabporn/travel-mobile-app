import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '/pages/Login.dart';
import '/pages/Shop.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () { 
          Navigator.pushNamed(context, '/');
          },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
),
      body: Center(
        child: SizedBox( 
              height:800, //height of button
              width:600, //width of button
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, //background color of button
                      //side: BorderSide(width:3, color:Colors.brown), //border width and color
                      //elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(20)
                      ),
                     padding: EdgeInsets.all(20) //content padding inside button
                    ),
                    onPressed: (){ 
                       Navigator.pushNamed(context, '/shop');
                    //   Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) =>  ShopPage()));
                     }, 
                    child: Text("Shop",
                    style: TextStyle(fontSize: 20),
                    ) 
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, //background color of button
                      //side: BorderSide(width:3, color:Colors.brown), //border width and color
                      //elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                    ),
                    onPressed: (){ 
                      Navigator.pushNamed(context, '/restaurant');
                    }, 
                    child: Text("Restaurant",
                    style: TextStyle(fontSize: 20),
                    ) 
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, //background color of button
                      //side: BorderSide(width:3, color:Colors.brown), //border width and color
                      //elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                    ),
                    onPressed: (){ 
                      Navigator.pushNamed(context, '/accommodation');
                    }, 
                    child: Text("Accommodation",
                    style: TextStyle(fontSize: 20),
                    ) 
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, //background color of button
                      //side: BorderSide(width:3, color:Colors.brown), //border width and color
                      //elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                    ),
                    onPressed: (){ 
                      Navigator.pushNamed(context, '/attraction');
                    }, 
                    child: Text("Attraction",
                    style: TextStyle(fontSize: 20),
                    ) 
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, //background color of button
                      //side: BorderSide(width:3, color:Colors.brown), //border width and color
                      //elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                    ),
                    onPressed: (){ 
                      Navigator.pushNamed(context, '/other');
                    }, 
                    child: Text("Other",
                    style: TextStyle(fontSize: 20),
                    ) 
                  ),
                ],
              ),
              
            )
        )
    );
  }
}
