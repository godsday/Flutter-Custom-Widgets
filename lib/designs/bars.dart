import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  

final double barwidth;

  const LeftBar({Key? key,required this.barwidth}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 20,
          width: barwidth,
          
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius:BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10)
            )
            
          ),
        )
      ],
      
    );
  }
}


class RightBar extends StatelessWidget {

  final double barwidth;

  const RightBar({Key? key,required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Container(
          height: 20,
          width: barwidth,
          decoration: const BoxDecoration(
            color: Colors.amberAccent,
            borderRadius:BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)
            )
            
          ),
        )
      ],
      
    );
  }
}