// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:movie_app/constants/constants.dart';
// import 'package:movie_app/model/cast_model.dart';

// class CastCard extends StatelessWidget {
//   const CastCard({super.key, required this.cast});
//   final List<CastModel> cast;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 130,
//       width: double.infinity,
//       child: ListView.builder(
//           itemCount: cast.length,
//           scrollDirection: Axis.horizontal,
//           physics: const BouncingScrollPhysics(),
//           itemBuilder: (context, index) {
//             CastModel casts = cast[index];
//             return Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 12),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50)),
//                       child: Padding(
//                         padding: EdgeInsets.all(2),
//                         child: CircleAvatar(
//                           backgroundColor: Colors.purple,
//                           radius: 45,
//                           foregroundImage: NetworkImage(
//                               '${ApiConstants.imagePath}${casts.profilePath!}'
//                               // '${ApiConstants().imagePath}${casts.profilePath}'
//                               ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     casts.name!,
//                     style: GoogleFonts.abel(color: Colors.white),
//                   )
//                 ],
//               ),
//             );
//           }),
//     );
//   }
// }
