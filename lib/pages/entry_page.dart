import 'package:flutter/material.dart';
import 'package:kreedy_assignment/constants/colors.dart';
import 'package:kreedy_assignment/constants/gradients.dart';
import 'package:kreedy_assignment/pages/home_page.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {

  TextStyle btnText(List<Color> colors){
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: colors[0]
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: GradientDec([gradientBegin, gradientEnd])
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 100,),
                const Icon(Icons.account_circle, size: 180, color: Color.fromARGB(255, 86, 86, 86),),
                const SizedBox(height: 150,),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const HomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        padding: const EdgeInsets.all(0)
                      ),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: GradientDec([orangeColor, redColor])
                        ),
                        child: Center(child: Text("Login", style: btnText([Colors.white]))),
                      )
                    ),
                    const SizedBox(height: 15,),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          
                        ),
                        side: const BorderSide(
                          color: Colors.orange
                        ),
                        padding: const EdgeInsets.all(0)
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const HomePage()));
                      }, 
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(child: Text("Signup", style: btnText([Colors.orange]),)),
                      )
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}