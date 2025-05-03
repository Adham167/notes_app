import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_1/constants.dart';
import 'package:note_app_1/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_1/model/note_model.dart';
import 'package:note_app_1/widgets/color_list_view.dart';
import 'package:note_app_1/widgets/custom_app_bar.dart';
import 'package:note_app_1/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppBar(
              onpressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subtitle =
                    content ?? widget.noteModel.subtitle;
                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: "Edit Note",
              icon: Icon(Icons.check)),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChange: (value) {
                title = value;
              },
              hint: widget.noteModel.title),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
              onChange: (value) {
                content = value;
              },
              hint: widget.noteModel.subtitle,
              Maxline: 5),
          const SizedBox(
            height: 30,
          ),
          EditNoteColorsList(
            note: widget.noteModel,
          )
        ],
      ),
    );
  }
}

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
