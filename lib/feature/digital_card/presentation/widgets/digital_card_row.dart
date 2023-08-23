import 'package:flutter/material.dart';

class DigitalCardRow extends StatelessWidget {
  // Pass the value to constructor
  const DigitalCardRow({super.key,
    required  this.labelName,
    required  this.labelValue,
    this.maxLines });
// Declare the variables
  final String labelName;
  final String labelValue;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Expanded(
          child: Text(
            labelName,
            style: TextStyle(
              fontSize: 25,
              color: Colors.green,
            ),
            //  textAlign: TextAlign.start,
            // overflow: TextOverflow.ellipsis,
            // maxLines: 2,
          ),
        ),

        Expanded(
          child: Text(
            labelValue,
            maxLines: maxLines,
            // textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 25,
              color: Colors.green,
            ),
          ),
        ),

      ],
    );

  }

}
