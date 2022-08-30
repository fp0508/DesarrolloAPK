import 'package:flutter/material.dart';

class CustomCardWithImage extends StatelessWidget {
  final String routeName;
  final String image;
  final String cardText;
  final String heroTag;
  final double width;
  final double height;
  final bool isAsset;

  CustomCardWithImage({
    required this.routeName,
    required this.image,
    required this.cardText,
    required this.heroTag,
    this.width = double.infinity,
    this.height = 275,
    this.isAsset = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, this.routeName);
      },
      child: Container(
        width: this.width,
        height: this.height,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 5,
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              Hero(
                tag: this.heroTag,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: isAsset
                        ? Image.network(this.image,
                            width: double.infinity,
                            height: 225,
                            fit: BoxFit.cover)
                        : Image.asset(this.image,
                            width: double.infinity,
                            height: 225,
                            fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(this.cardText, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
