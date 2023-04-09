import 'package:flutter/material.dart';
import 'package:note_app/chatgptt.dart';

class FloatingButton extends StatefulWidget {

  const FloatingButton({Key? key}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade50,
        elevation: 1,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context, _controller.text);
          },
            icon:Icon(Icons.arrow_back_ios_rounded,),color: Colors.black,),
        actions: [
          IconButton(onPressed:
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>FirstPage()));
          },
              icon: Icon(Icons.menu_book_sharp, color: Colors.black,)),
          IconButton(onPressed:
              (){
          },
              icon: Icon(Icons.menu_book_sharp)),
          IconButton(onPressed:
              (){
          },
              icon: Icon(Icons.more_vert)),
        ],
        title: TextFormField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: "Title",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            textInputAction: TextInputAction.newline,
            style: TextStyle(

              fontSize: 20
            ),
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
