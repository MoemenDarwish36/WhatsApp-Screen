import 'package:flutter/material.dart';

import 'chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/background.png"),
        fit:BoxFit.cover),

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: (const IconButton(
            onPressed: null,
            icon: Icon(Icons.arrow_back,color: Colors.white,),)),
          title: const Padding(
            padding: EdgeInsetsDirectional.only(bottom: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/person.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Person",style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          actions: [
            const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.videocam,
                  color: Colors.white,
                )),
            const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                )),
            const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Column(
            children: [
              ChatBubble(
                  image: "assets/person.jpg",
                  isSender: true,
                  message: "This is a first message"),
              const SizedBox(
                height: 30,
              ),
              ChatBubble(
                  image: "assets/person2.jpg",
                  isSender: false,
                  message: "This is a second message"),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            ///the next 3parameter to design a text field
                              border: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              prefixIcon: const IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.emoji_emotions_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              suffixIcon: const IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.attach_file,
                                  color: Colors.white,
                                ),
                              ),
                              hintText: 'Type a message',
                              hintStyle:
                              const TextStyle(color: Colors.white, fontSize: 20)),
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
