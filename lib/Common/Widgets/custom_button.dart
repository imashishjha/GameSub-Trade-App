import 'package:flutter/material.dart ';
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const CustomButton({Key? key, required this.text, required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(text,),
        onPressed: ontap ,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
        ),
    );
  }
}
