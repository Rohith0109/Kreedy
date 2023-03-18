import 'package:flutter/material.dart';
import 'package:kreedy_assignment/constants/colors.dart';

class IconsField extends StatefulWidget {
  const IconsField({super.key});

  @override
  State<IconsField> createState() => _IconsFieldState();
}

class _IconsFieldState extends State<IconsField> {
  List<Icon> icons = [
    const Icon(Icons.sports_cricket_outlined, size: 30, color: iconColor,),
    const Icon(Icons.sports_basketball, size: 30, color: Colors.white,),
    const Icon(Icons.sports_tennis, size: 30, color: iconColor,),
    const Icon(Icons.sports_soccer, size: 30, color: orangeColor,),
    const Icon(Icons.sports_tennis_sharp, size: 30, color: iconColor,),
    const Icon(Icons.water, size: 30, color: iconColor,),
    const Icon(Icons.batch_prediction_sharp, size: 30, color: iconColor,),
    const Icon(Icons.text_rotation_angledown, size: 30, color: iconColor,)
  ];
  List<String> names = [
    "Cricket",
    "Basketball",
    "Tennis",
    "Soccer",
    "Snookers",
    "Swimming",
    "Table tennis",
    "Badminton"
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        spacing: size.width*0.06,
        runSpacing: 50,
        children: List.generate(icons.length, (index) {
          return Column(
            children: [
              IconButton(onPressed: (){}, icon: icons[index],),
              Text(names[index], style: TextStyle(fontSize: 15, color: index==3? redColor: iconLabel),)
            ],
          );
        })
      ),
    );
  }

  Widget _buildIcon(Icon ic){
    return Container(
      padding: const EdgeInsets.all(8),
      child: ic,
    );
  }
}