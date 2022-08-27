import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String image;
  final String name;
  final String status;
  const SingleProduct({
    Key? key,
    required this.image, this.name='', this.status='',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              width: 150,
              padding: const EdgeInsets.all(10),
              child: Image.network(
                image,
                fit: BoxFit.fitHeight,
                width: 180,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Type: ', style: TextStyle(color: Colors.black87, ),),
                Text(name),
              ],
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Status: ', style: TextStyle(color: Colors.black87, ),),
                Text(status,style: const TextStyle(color: Colors.green, ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}