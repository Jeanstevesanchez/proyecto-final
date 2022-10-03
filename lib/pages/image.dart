import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  final String image;

  const ImagePage({super.key, required this.image});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  void initState() {
    super.initState();
    print(widget.image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Hero(tag: widget.image, child: Image.asset(widget.image)),
      ),
    );

    
  }
}
