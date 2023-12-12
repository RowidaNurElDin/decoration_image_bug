
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' as FlutterSvg ;
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as FlutterSvgProvider ;

void main() {
  runApp(const Appx());
}

class Appx extends StatelessWidget {
  const Appx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Using ImageProvider as Svg from flutter_svg_provider package"),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: FlutterSvgProvider.Svg('assets/images/camels.svg')
                  )
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Using image from flutter_svg package"),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 300,
              child: FlutterSvg.SvgPicture.asset('assets/images/camels.svg'),

            )
          ],
        ),
      ),
    );
  }
}