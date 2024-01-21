// // ignore_for_file: unnecessary_brace_in_string_interps

// import 'package:flutter/material.dart';
// import 'package:movie_app/services/api.dart';
// import 'package:movie_app/constants/constants.dart';
// import 'package:movie_app/model/cast_model.dart';
// import 'package:movie_app/widgets/cast_card.dart';

// class CastBuilder extends StatelessWidget {
//   const CastBuilder({super.key, this.apiconst, this.type, this.id});

//   final ApiConstants? apiconst;
//   final String? type;
//   final int? id;

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: ApiServices.getCasts(
//             castsUrl:
//                 '${apiconst?.base}/${type}/${id}${apiconst?.castendPoint}${apiconst?.apikey}'),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Error${snapshot.error}'),
//             );
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return const Center(
//               child: Text('Data is not Available',
//                   style: TextStyle(color: Colors.white)),
//             );
//           } else {
//             List<CastModel> cast = snapshot.data!;
//             return CastCard(cast: cast);
//           }
//         });
//   }
// }
