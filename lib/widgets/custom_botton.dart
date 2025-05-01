import 'package:flutter/material.dart';
import 'package:note_app_1/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: isloading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child:  CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(color: Colors.black),
                  )),
      ),
    );
  }
}
