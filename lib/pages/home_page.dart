import 'package:flutter/material.dart';
import 'package:kreedy_assignment/constants/colors.dart';
import 'package:kreedy_assignment/constants/gradients.dart';
import 'package:kreedy_assignment/pages/entry_page.dart';
import 'package:kreedy_assignment/widgets/cards_scrollable.dart';
import 'package:kreedy_assignment/widgets/icons_field.dart';
import 'package:kreedy_assignment/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: Colors.black,
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.home_filled, color: greyColor, size: 30,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.grass, color: greyColor, size: 30,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.chat_bubble_outline_rounded, color: greyColor, size: 30,)),
              IconButton(onPressed: (){
                _signOutDialog();
              }, icon: const Icon(Icons.account_circle, color: greyColor, size: 30,))
            ],
          ),

        ),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: GradientDec([gradientBegin, gradientEnd])
            ),
            child: ListView(
              padding: const EdgeInsets.only(bottom: 60),
              children:[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.map, color: iconLabel,),
                          SizedBox(width: 5,),
                          Text("New Delhi", style: TextStyle(color: iconLabel),),
                        ],
                      ),
                      const Icon(Icons.notifications_none, color: iconLabel,)
                    ],
                  ),
                ),
                const SearchBar(),
                const IconsField(),
                const CardsScrollable(),
                const SizedBox(height: 15,),
                Text("Checkout best turfs near you", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, foreground: Paint()..shader = textGradient([redColor, orangeColor])),),
                const ListTile(
                  title: Text("Nex Arena", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 164, 164, 164)),),
                  subtitle: Text("Dummy road, New Delhi", style: TextStyle(color: Color.fromARGB(255, 177, 106, 0)),),
                  trailing: Text("0.5 Km", style: TextStyle(color: Colors.grey),),
                ),
                const CardsScrollable()
              ]
            ),
          ),
        ),
      ),
    );
  }
  void _signOutDialog(){
    showDialog(context: context, builder: (ctx){
      return AlertDialog(
        title: Text('Logout'),
        content: Text("Are you sure you want to logout"),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: const Text("Cancel")),
          SizedBox(
            width: 70,
            child: ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const EntryPage()), (route) => false);
            },style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                padding: const EdgeInsets.all(0)
              ),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: GradientDec([orangeColor, redColor])
                ),
                child: Center(child: Text("Logout", style: TextStyle(color: Colors.white))),
              )),
          )
        ],
      );
    });
  }
}