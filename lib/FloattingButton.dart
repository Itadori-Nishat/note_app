import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {

  const FloatingButton({Key? key}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade50,
        elevation: 1,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
            icon:Icon(Icons.arrow_back_ios_rounded,),color: Colors.black,),
        actions: [
          IconButton(onPressed:
              (){
          },
              icon: Icon(Icons.menu_book_sharp)),
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
