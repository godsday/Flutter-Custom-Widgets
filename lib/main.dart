import 'package:flutter/material.dart';
import 'package:shapedesign/designs/bars.dart';
import 'package:shapedesign/designs/curveclipper.dart';
import 'package:shapedesign/textfieldCustom/customTextField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
    final testtextController = TextEditingController();

    Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const RightBar(barwidth: 100),
              const SizedBox(height: 30,),
              const LeftBar(barwidth: 100),
              TestingDecorations(
                clipper: CurveClipper(),
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              TestingDecorations(clipper: Curve1Clipper(), color: Colors.yellow),
              const SizedBox(
                height: 20,
              ),
              TestingDecorations(clipper: SeaWaveClipper(), color: Colors.brown),
              const SizedBox(
                height: 20,
              ),
              TestingDecorations(
                  clipper: WaveClipper(), color: Colors.deepPurpleAccent),
              const SizedBox(
                height: 20,
              ),
              
              
              CustomTextField(icon: Icons.abc, type: TextInputType.none, controller:testtextController , validator: (value){})
            ],
          ),
        ),
      ),
    );
  }
}

class TestingDecorations extends StatelessWidget {
  final CustomClipper<Path>? clipper;
  final Color color;

  const TestingDecorations(
      {Key? key, required this.clipper, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                // bottomLeft: Radius.circular(70.0),
                bottomRight: Radius.circular(35.0)),
            color: color),
        height: 500,
      ),
    );
  }
}
