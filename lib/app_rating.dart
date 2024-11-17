import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Apprating extends StatefulWidget {
  const Apprating({super.key});

  @override
  State<Apprating> createState() => _AppratingState();
}

class _AppratingState extends State<Apprating> {
  double rating1 = 0; // Rating for Question 1
  double rating2 = 0; // Rating for Question 2
  double rating3 = 0; // Rating for Question 3

  // Method to get review text based on rating value
  String getReviewText(double rating) {
    switch (rating.toInt()) {
      case 1:
        return "Poor";
      case 2:
        return "Below Average";
      case 3:
        return "Average";
      case 4:
        return "Good";
      case 5:
        return "Excellent";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Rating"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Rating after clock out",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Question 1
            const Text(
              "How was the class?",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),

            // Rating Bar
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Color.fromARGB(255, 26, 88, 119),
              ),
              onRatingUpdate: (rating) => setState(() {
                rating1 = rating;
              }),
            ),
            const SizedBox(height: 10),

            // Rating display section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Part: Rating number
                Text(
                  'Rating Number: ${rating1.toInt()}',
                  style: const TextStyle(fontSize: 16),
                ),
                // Right Part: Review text based on rating
                Text(
                  getReviewText(rating1),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Divider(),

            // Question 2
            const Text(
              "How was the instructor?",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),

            // Rating Bar
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Color.fromARGB(255, 26, 88, 119),
              ),
              onRatingUpdate: (rating) => setState(() {
                rating2 = rating;
              }),
            ),
            const SizedBox(height: 10),

            // Rating display section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rating Number: ${rating2.toInt()}',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  getReviewText(rating2),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Divider(),

            // Question 3
            const Text(
              "Did the class finish on time?",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),

            // Rating Bar
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Color.fromARGB(255, 26, 88, 119),
              ),
              onRatingUpdate: (rating) => setState(() {
                rating3 = rating;
              }),
            ),
            const SizedBox(height: 10),

            // Rating display section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rating Number: ${rating3.toInt()}',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  getReviewText(rating3),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Divider(),

            // // Display all ratings
            // const SizedBox(height: 20),
            // Center(
            //   child: Text(
            //     'Overall Ratings: \nClass start time: $rating1\nClass experience: $rating2\nClass end time: $rating3',
            //     style: const TextStyle(fontSize: 18),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class Apprating extends StatefulWidget {
//   const Apprating({super.key});

//   @override
//   State<Apprating> createState() => _AppratingState();
// }

// class _AppratingState extends State<Apprating> {
//   double rating = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("App Rating"),
//         ),
//         body: Container(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Rate the app",
//                 style: TextStyle(fontSize: 30),
//               ),
//               RatingBar.builder(
//                 initialRating: 0,
//                 minRating: 1,
//                 direction: Axis.horizontal,
//                 allowHalfRating: false,
//                 itemCount: 5,
//                 itemPadding: EdgeInsets.symmetric(horizontal: 4),
//                 itemBuilder: (context, _) => Icon(
//                   Icons.star,
//                   color: Colors.amber,
//                 ),
//                 // onRatingUpdate: (rating) {
//                 //   print(rating);
//                 // }

//                 onRatingUpdate: (rating) => setState(() {
//                   this.rating = rating;
//                 }),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 'Rating: $rating',
//                 style: const TextStyle(fontSize: 18),
//               ),
//             ],
//           ),
//         ));
//   }
// }



