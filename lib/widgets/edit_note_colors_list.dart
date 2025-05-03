import 'package:flutter/material.dart';
import 'package:note_app_1/constants.dart';
import 'package:note_app_1/model/note_model.dart';
import 'package:note_app_1/widgets/color_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColorlist.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColorlist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColorlist[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColorlist[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}