import 'package:e_commerce/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/common/widgets/brands/brand_card.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/store_primary_header.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 340,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// Store Primary Header
                      UStorePrimaryHeader(),
                      SizedBox(height: USizes.spaceBtwItems),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: USizes.defaultSpace),
                        child: Column(
                          children: [
                            /// Brand Heading
                            USectionHeading(title: 'Brands', onPressed: () {}),

                            /// Brands Card
                            SizedBox(
                              height: USizes.brandCardHeight,
                              child: ListView.separated(
                                itemCount: 10,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => SizedBox(
                                    width: USizes.brandCardWidth,
                                    child: UBrandCard()),
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: USizes.spaceBtwItems),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                bottom: UTabBar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ]),
              ),
            ];
          },
          body: TabBarView(children: [
            UCategoryTab(),
            UCategoryTab(),
            UCategoryTab(),
            UCategoryTab(),
            UCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
