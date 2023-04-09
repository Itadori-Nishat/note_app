import 'package:flutter/material.dart';
import 'package:note_app/FloattingButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String titleName = '';

  void _handleDataFromSecondPage(String data) {
    setState(() {
      titleName = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dark mode on/off"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
          onPressed: () async{
          final data = await Navigator.push(context, MaterialPageRoute(builder: (context) => FloatingButton()));
            _handleDataFromSecondPage(data);
      }),
      body: Column(
        children: [
          Text(titleName),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Card(
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: SizedBox(
          //             width: MediaQuery.of(context).size.width*0.8,
          //             child: Text(titleName[index],style:  TextStyle(
          //               fontSize: 18,
          //
          //             ),),
          //           ),
          //         ),
          //       );
          //     },
          //
          //   ),
          // ),
        ],
      ),
    );
  }
}
