import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/view/widgets/search_result.dart';
import 'package:bookly/features/search/presentation/view/widgets/search_textField.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SearchTextField(),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
              SizedBox(height: 16.0),
            ]),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: SearchResult(),
          ),
        ),
      ],
    );
  }
}
