
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:cloudinary_url_gen/transformation/effect/effect.dart';
import 'package:cloudinary_url_gen/transformation/resize/resize.dart';
import 'package:cloudinary_url_gen/transformation/transformation.dart';
import 'package:cloudinary_flutter/image/cld_image.dart';
import 'package:cloudinary_flutter/cloudinary_context.dart';
import 'package:flutter/material.dart';


void main() {
  CloudinaryContext.cloudinary =
      Cloudinary.fromCloudName(cloudName: "demo");
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 200,
            height: 140,
            child: CldImageWidget(
              publicId: "cld-sample",
              transformation: Transformation()
                ..resize(Resize.fill()
                  ..width(250)
                  ..height(250))
                ..effect(Effect.sepia())
              )
            ),
          ),
        ),
    );
  }
}