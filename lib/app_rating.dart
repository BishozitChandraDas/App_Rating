import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Apprating extends StatefulWidget {
  const Apprating({super.key});

  @override
  State<Apprating> createState() => _AppratingState();
}

class _AppratingState extends State<Apprating> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Rating"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Rate the app",
                style: TextStyle(fontSize: 30),
              ),
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                // onRatingUpdate: (rating) {
                //   print(rating);
                // }

                onRatingUpdate: (rating) => setState(() {
                  this.rating = rating;
                }),
              ),
              const SizedBox(height: 10),
              Text(
                'Rating: $rating',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ));
  }
}
