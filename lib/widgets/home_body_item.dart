import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/home_first_body_item.dart';
import 'package:invoicing_dashboard/widgets/home_second_body_item.dart';

class HomeBodyItem extends StatelessWidget {
  const HomeBodyItem({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            height: height * 1,
            child: HomeFirstBodyItem(),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
          flex: 2,
          child: HomeSecondBodyItem(),
        )
      ],
    );
  }
}
