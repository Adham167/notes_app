import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 35,
            ),
          )
        :  CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int currenIndex = 0;
  List<Color> colorlist = const [
    Color(0xff89B6A5),
    Color(0xff4C3B4D),
    Color(0xffC9EDDC),
    Color(0xff82968C),
    Color(0xff6A706E),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorlist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () {
                  currenIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colorlist[index],
                  isActive: currenIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
