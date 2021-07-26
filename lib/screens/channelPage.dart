import 'package:chat_app_ui/models/channelModel.dart';
import 'package:chat_app_ui/widgets/channelList.dart';
import 'package:flutter/material.dart';

class ChannelPage extends StatefulWidget {
  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  List<Channel> channels = [
    Channel(name: "DevOps", messageText: "Jane: Awesome Setup", imageURL: "https://lh3.googleusercontent.com/proxy/mYKhzhLzLJ1ls-zXCrnZCdIRu3Lp5kcO4vtwSdtjJrPH7BKXOmiF1wXoUmZKC2KVLbrbgB5ky5yPer020ikzLw-Ge9sVdXkQJuYvVBYq9P3WLvfw2Q", time: "Now"),
    Channel(name: "FrontEnd Nerds", messageText: "John: That's Great", imageURL: "https://icon-library.com/images/icon-programmer/icon-programmer-1.jpg", time: "Yesterday"),
    Channel(name: "Flutter Team", messageText: "Phillip: Hey where are you?", imageURL: "https://cdn.icon-icons.com/icons2/2107/PNG/128/file_type_flutter_icon_130599.png", time: "31 Mar"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Channels", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink[50],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.add, color: Colors.pink, size: 20,),
                            SizedBox(width: 2,),
                            Text("Add", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade600,),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.grey.shade100
                        )
                    )
                ),
              ),
            ),
            ListView.builder(
                itemCount: channels.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top:16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ChannelList(
                    name: channels[index].name,
                    messageText: channels[index].messageText,
                    imageUrl: channels[index].imageURL,
                    time: channels[index].time,
                    isMessageRead: (index == 0 || index == 3)?true:false,
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
