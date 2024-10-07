import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/Home/presentation/views/widgets/customAppBar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featuredListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
                left: 30.0, right: 10.0, bottom: 20.0, top: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
