import 'package:flutter/material.dart';

class StoryAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final double progress;

  StoryAvatar({
    required this.imageUrl,
    required this.radius,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: radius * 2,
          height: radius * 2,
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 5, // Épaisseur du cercle
            valueColor: AlwaysStoppedAnimation<Color>(
                Colors.blue), // Couleur de la progression
            backgroundColor: Colors.grey.withOpacity(0.3), // Couleur de fond
          ),
        ),
        // Avatar de la personne
        CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage(imageUrl),
        ),
      ],
    );
  }
}
