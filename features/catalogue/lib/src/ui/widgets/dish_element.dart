// import 'package:domain/domain.dart';
// import 'package:flutter/material.dart';
// import 'package:core_ui/core_ui.dart';
//
// class DishElement extends StatelessWidget {
//   final DishModel dishModel;
//   const DishElement({
//     required this.dishModel,
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20.0),
//       child: Container(
//         width: Dimens.width200,
//         height: Dimens.height260,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(Dimens.radius15),
//           color: AppColors.colorWhite,
//         ),
//         child: Column(
//           children: [
//             DishImage(height: 110.0, width: 170.0, dishModel: dishModel),
//             Text(
//               dishModel.name,
//               style: const TextStyle(
//                 fontSize: 16.0,
//                 color: AppColors.colorShade01,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       dishModel.sectionEmoji,
//                       style: const TextStyle(
//                         fontSize: 15.0,
//                       ),
//                     ),
//                     Text(
//                       dishModel.section,
//                       style: const TextStyle(
//                         fontSize: 15.0,
//                       ),
//                     ),
//                   ],
//                 )
//                 //TODO addtocartbutton
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
