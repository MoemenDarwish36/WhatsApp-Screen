import 'package:flutter/material.dart';
class ChatBubble extends StatelessWidget{
  String message ;
  String image ;
  bool isSender ;
  ChatBubble({super.key,
    required this.image,
    required this.isSender,
    required this.message});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      ///to controls a location
      textDirection: isSender ? TextDirection.ltr :TextDirection.rtl,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              ///to makes container take all width
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                message,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ) ;
  }
}