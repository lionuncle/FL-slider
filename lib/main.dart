import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home()
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

String imageUrl = "";
int num = 0;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Hello",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Image.network(imageUrl)),
              RaisedButton.icon(
                icon: Icon(Icons.add),
                label: Text("ADD MORE"),
                onPressed: (){
                  setState(() {
                    List<String> urls = ["https://images.unsplash.com/photo-1600953559886-5d346b7f7f28?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60","https://images.unsplash.com/photo-1606250115532-25295c8b26f5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60","https://images.unsplash.com/photo-1605388862319-eaf1649edb5a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfDZzTVZqVExTa2VRfHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60"];
                    if(num == 3) num = 0;
                    imageUrl = urls.elementAt(num);
                    num++;
                  });
                },
                textColor: Colors.black,
                color: Colors.white,
              )
            ],

          )

      ),
    );
  }
}
