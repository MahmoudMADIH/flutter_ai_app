import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Background.jpeg"),
          fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16 ),
              height: 100,
              child: Row(
                crossAxisAlignment:  CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Generative AI",
                  style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold),),
                  IconButton(onPressed:(){}, icon: const Icon(Icons.image_search_sharp ,
                    color: Colors.white60,))
                ],
              ),

            ),
            Expanded(child: ListView()),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12 ,horizontal: 16),
              height: 160,
              // color: Colors.blue ,
              child: Row(
                children: [
                  Expanded(child: TextField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(100),),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                        color: Theme.of (context).primaryColor
                      )
                    )
                    ),
                  )),
                  const SizedBox(width: 12,),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: CircleAvatar( radius: 30,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Center(
                        child: Icon(Icons.send_outlined ,color: Colors.black,),
                      ),
                    ),
                  )
                  
                ],
              ),
            )

          ],
        ),
      ),


    );
  }
}
