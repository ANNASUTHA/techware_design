import 'package:flutter/material.dart';

import '../theme/colors.dart';

class StoryItem extends StatelessWidget {
  final String? img;
  final String? name;
  const StoryItem({
    Key? key, this.img, this.name,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,bottom: 10),
      child: Column(
      children: <Widget>[
        Container(
      width: 68,
      height: 68,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
              child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.green,
              width: 2
            ),
            shape: BoxShape.circle,
            image: DecorationImage(image:
            AssetImage(img!,),fit: BoxFit.cover)
          ),
        ),
      ),
          ),
        const SizedBox(height: 8,),
          SizedBox(
      width: 70,
      child:
      Text(name!,
      overflow: TextOverflow.ellipsis,
      style:const TextStyle(
          color: Colors.black
      ),),
          )
      ],
          ),
    );
  }
}