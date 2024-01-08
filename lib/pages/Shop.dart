import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import '/Exchange.dart';
import '/pages/Menu.dart';

Future<dynamic> fetchAlbum() async {
                      //params
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json, text/json',
    'Accept-Language': 'en',
    'Authorization': 'Bearer Gu7JZpo)sYF4NyKVDxAUzZyxxueFAuxxt7Yc7YFqEOwtK0lDFkD79GsVfhC6eVndx5EYDQRvx1juOFboD2TqsgG=====2'
  };
  final url =
      Uri.parse('https://tatapi.tourismthailand.org/tatapi/v5/places/search?keyword=ร้าน%A3&location=13.6904831,100.5226014&categorycodes=SHOP');
  http.Response response = await http.get(url,headers: requestHeaders);

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
print(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

/////////////////////////////////////////////////////////////////////////////////////////

Widget _buildRow(String dataRow) {
  return ListTile(
    title: Text(
      dataRow,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}

class ShopPage extends StatefulWidget {
  ShopPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ShopPage> {
  late Future<dynamic> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shop'),
          leading:  IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () { 
          Navigator.pop(context);
          // Navigator.pushNamed(context, '/menu');
          },
  ),
        ),
        body: FutureBuilder(
          // child: FutureBuilder<dynamic>(
            future: fetchAlbum() ,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            // ดึงข้อมูลมาจาก data_api
            // ดึงข้อมูลจาก getExchangeRate() มาครบ
            if (snapshot.connectionState == ConnectionState.done) {
              var results = snapshot.data; //ทำ Json ให้เป็น data
              var data = Exchange.fromJson(results); // เปลี่ยนข้อมูลให้เป็น class ของ Exchange
              //var data2 = Location.fromJson(results);
                return ListView( 
                    //สร้าง Widget ListView
                    //padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                    children:  <Widget>[
                      Card(
                        child: ListTile(
                          //leading: Image.network('https://tatapi.tourismthailand.org/tatfs/Image/custompoi/Thumbnail/P08013991.jpg'),
                          title: Text("${data.result![0].placeName}"),
                          subtitle:
                          Text("${data.result![0].updateDate}"),
                          trailing: Icon(Icons.more_vert),
                          isThreeLine: true,
                          ),
                          ),
                          Card(
                            child: ListTile(
                              //leading: Image.network('https://tatapi.tourismthailand.org/tatfs/Image/custompoi/Thumbnail/P08013975.jpg'),
                              //leading: FlutterLogo(size: 72.0),
                              title: Text("${data.result![1].placeName}"),
                              subtitle:
                              Text("${data.result![1].updateDate}"),
                              trailing: Icon(Icons.more_vert),
                              isThreeLine: true,
                            ),
                          ),
                          Card(
                            child: ListTile(
                              //leading: Image.network('https://tatapi.tourismthailand.org/tatfs/Image/custompoi/Thumbnail/P08013871.jpg'),
                              title: Text("${data.result![2].placeName}"),
                              subtitle:
                              Text("${data.result![2].updateDate}"),
                              trailing: Icon(Icons.more_vert),
                              isThreeLine: true,
                            ),
                          ),
                          Card(
                            child: ListTile(
                              //leading: Image.network('https://tatapi.tourismthailand.org/tatfs/Image/custompoi/Thumbnail/P08013885.jpg'),
                              //leading: FlutterLogo(size: 72.0),
                              title: Text("${data.result![3].placeName}"),
                              subtitle:
                              Text("${data.result![3].updateDate}"),
                              trailing: Icon(Icons.more_vert),
                              isThreeLine: true,
                            ),
                          ),
                          Card(
                            child: ListTile(
                              //leading: Image.network('https://tatapi.tourismthailand.org/tatfs/Image/custompoi/Thumbnail/P08013888.jpg'),
                              //leading: FlutterLogo(size: 72.0),
                              title: Text("${data.result![4].placeName}"),
                              subtitle:
                              Text("${data.result![4].updateDate}"),
                              trailing: Icon(Icons.more_vert),
                              isThreeLine: true,
                            ),
                          ),
                          Card(
                            child: ListTile(
                              //leading: Image.network('https://tatapi.tourismthailand.org/tatfs/Image/CustomPOI/Thumbnail/P08003193.png'),
                              //leading: FlutterLogo(size: 72.0),
                              title: Text("${data.result![9].placeName}"),
                              subtitle:
                              Text("${data.result![9].updateDate}"),
                              trailing: Icon(Icons.more_vert),
                              isThreeLine: true,
                            ),
                          ),
                          Card(
                            child: ListTile(
                              //leading: Image.network('https://tatapi.tourismthailand.org/tatfs/Image/custompoi/Thumbnail/P08012282.jpg'),
                              //leading: FlutterLogo(size: 72.0),
                              title: Text("${data.result![6].placeName}"),
                              subtitle:
                              Text("${data.result![6].updateDate}"),
                              trailing: Icon(Icons.more_vert),
                              isThreeLine: true,
                            ),
                          ),
                          Card(
                            child: ListTile(
                              //leading: Image.network('https://tatapi.tourismthailand.org/tatfs/Image/custompoi/Thumbnail/P08012282.jpg'),
                              //leading: FlutterLogo(size: 72.0),
                              title: Text("${data.result![10].placeName}"),
                              subtitle:
                              Text("${data.result![10].updateDate}"),
                              trailing: Icon(Icons.more_vert),
                              isThreeLine: true,
                            ),
                          ),
                          ]
                          );
                          } 
                          return LinearProgressIndicator();
                          },
                          ),
                          ),
                          );
                          }
                          }

