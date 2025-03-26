import 'package:flutter/material.dart';

Widget conversationItem({
  required String imageUrl,
  required String name,
  required String lastMessage,
  required String time,
  required int unreadCount,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: Row(
      children: [
        // Image de l'utilisateur
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(width: 10),

        // Nom, dernier message et date
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                lastMessage,
                style: TextStyle(
                    color: const Color.fromARGB(179, 75, 73, 73), fontSize: 14),
                overflow: TextOverflow.ellipsis, // Coupe le texte trop long
              ),
            ],
          ),
        ),

        // Date et nombre de messages non lus
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              time,
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
            SizedBox(height: 5),

            // Affichage du nombre de messages non lus
            unreadCount > 0
                ? Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "$unreadCount",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                : SizedBox(), // Ne rien afficher si unreadCount == 0
          ],
        ),
      ],
    ),
  );
}
