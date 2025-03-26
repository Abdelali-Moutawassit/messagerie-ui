import 'package:best_ui/App5/bare_search.dart';
import 'package:best_ui/App5/conversation_item.dart';
import 'package:best_ui/App5/story_avatar.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 26, 50),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 17, 26, 50),
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 30,
          )),
      drawer: Drawer(
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Messager",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StoryAvatar(
                    imageUrl:
                        "https://static.thenounproject.com/png/65474-200.png",
                    radius: 35,
                    progress: 0,
                  ),
                  SizedBox(width: 15),
                  StoryAvatar(
                      imageUrl:
                          "https://media.istockphoto.com/id/1682296067/fr/photo/heureux-portrait-de-studio-ou-homme-professionnel-agent-immobilier-ou-homme-daffaires.jpg?s=612x612&w=0&k=20&c=QdFtF5TWuxMNmB7Gui2ZQa4u2uNe9nbNr6oONd60Xbc=",
                      radius: 35,
                      progress: 1),
                  SizedBox(width: 15),
                  StoryAvatar(
                      imageUrl:
                          "https://media.istockphoto.com/id/1155175948/photo/confidence-and-charisma-handsome-young-man-adjusting-his-sleeve-while-standing-against-grey.jpg?s=612x612&w=0&k=20&c=1wrpQ7gcQLIHImkLdgHSf1W3jFOrLrQNft325DLhGLw=",
                      radius: 35,
                      progress: 1),
                  SizedBox(width: 15),
                  StoryAvatar(
                      imageUrl:
                          "https://media.istockphoto.com/id/1416037924/photo/bearded-man-standing-showing-his-smart-watch-and-looking-at-camera-with-toothy-smile.jpg?s=612x612&w=0&k=20&c=IOiqa1N8UR4CMIdfYJJ76qBoH5DyjGxudI9Beegiw5w=",
                      radius: 35,
                      progress: 1),
                  SizedBox(width: 15),
                  StoryAvatar(
                      imageUrl:
                          "https://media.istockphoto.com/id/942610874/photo/portrait-of-elegant-young-man-in-suit.jpg?s=612x612&w=0&k=20&c=O4GPMgiJPJ8ytjRByAFpLs7DHjumoYyMbJCInKL2F5w=",
                      radius: 35,
                      progress: 1),
                  SizedBox(width: 15),
                  StoryAvatar(
                      imageUrl:
                          "https://media.istockphoto.com/id/941202004/photo/suit-guy.jpg?s=612x612&w=0&k=20&c=vteiWogro_GZOsRyKxLpuPg7enBsAuviFsnVHaDhNhs=",
                      radius: 35,
                      progress: 1),
                  SizedBox(width: 15),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  BareSearch(),
                  Expanded(
                    child: ListView(
                      children: [
                        conversationItem(
                          imageUrl:
                              "https://media.istockphoto.com/id/1682296067/fr/photo/heureux-portrait-de-studio-ou-homme-professionnel-agent-immobilier-ou-homme-daffaires.jpg?s=612x612&w=0&k=20&c=QdFtF5TWuxMNmB7Gui2ZQa4u2uNe9nbNr6oONd60Xbc=",
                          name: "Alice Dupont",
                          lastMessage: "Salut, comment ça va ?",
                          time: "3 min ago",
                          unreadCount: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        conversationItem(
                          imageUrl:
                              "https://media.istockphoto.com/id/1155175948/photo/confidence-and-charisma-handsome-young-man-adjusting-his-sleeve-while-standing-against-grey.jpg?s=612x612&w=0&k=20&c=1wrpQ7gcQLIHImkLdgHSf1W3jFOrLrQNft325DLhGLw=",
                          name: "Jean Pierre",
                          lastMessage: "Tu as reçu mon email ?",
                          time: "10 min ago",
                          unreadCount: 0,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        conversationItem(
                          imageUrl:
                              "https://media.istockphoto.com/id/1416037924/photo/bearded-man-standing-showing-his-smart-watch-and-looking-at-camera-with-toothy-smile.jpg?s=612x612&w=0&k=20&c=IOiqa1N8UR4CMIdfYJJ76qBoH5DyjGxudI9Beegiw5w=",
                          name: "Sophie Martin",
                          lastMessage: "Ok, à plus tard !",
                          time: "1 h ago",
                          unreadCount: 5,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        conversationItem(
                          imageUrl:
                              "https://theportrait.company/wp-content/uploads/2022/06/Corporate-Headshot-for-a-LinkedIn-Profile.jpg",
                          name: "Amir Sado",
                          lastMessage: "Ok, Ca marche",
                          time: "2 h ago",
                          unreadCount: 3,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        conversationItem(
                          imageUrl:
                              "https://media.licdn.com/dms/image/v2/D4D12AQGsWiQQo-hEew/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1705940048112?e=2147483647&v=beta&t=sLhAjsrcMFywuGD8D0_5t6SuboPthNoVKHVbV87PmPo",
                          name: "Adham Kassido",
                          lastMessage: "Non ,C'est pas Ca ",
                          time: "3 h ago",
                          unreadCount: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        conversationItem(
                          imageUrl:
                              "https://imgv3.fotor.com/images/ai-headshot-generator/AI-generated-headshot-of-a-female-in-dark-grey-attire-standing-her-back-to-a-builing-view-window-by-Fotor-AI-LinkedIn-photo-generator.jpg",
                          name: "Manal Soso",
                          lastMessage: "Ca va ,Ali !",
                          time: "4 h ago",
                          unreadCount: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        conversationItem(
                          imageUrl:
                              "https://goodmenproject.com/wp-content/uploads/2022/01/iStock-1300512215-e1642434909829.jpg",
                          name: "Samir Oghozil",
                          lastMessage: "Oui , Chef ",
                          time: "5 h ago",
                          unreadCount: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
