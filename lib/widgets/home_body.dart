import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/home_app_bar.dart';
import 'package:invoicing_dashboard/widgets/home_body_item.dart';
import 'package:invoicing_dashboard/widgets/home_header_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: height * 0.06, child: HomeAppBar()),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 25, horizontal: width * 0.02),
              child: HomeHeaderBody()),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.01),
              child: HomeBodyItem()),
        )
      ],
    );
  }
}
