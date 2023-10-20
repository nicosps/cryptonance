import 'package:cryptonance/app/style/colors.dart';
import 'package:cryptonance/app/style/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: raisinBlack,
      appBar: AppBar(
        backgroundColor: raisinBlack,
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            LineIcons.cog,
            color: white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                FontAwesome5.comments,
                color: white,
              ),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 43),
            HeaderSection(),
            SizedBox(height: 34),
            FavouritesSection(),
            SizedBox(height: 34),
            TopGainerSection(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TOTAL BALANCE',
              style: textTheme.bodySmall?.copyWith(
                color: heliotropeGray,
              ),
            ),
            const SizedBox(width: 5),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.visibility_off_outlined,
                color: heliotropeGray,
              ),
            )
          ],
        ),
        const SizedBox(height: 5),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: '\$ ', style: textTheme.titleSmall),
              TextSpan(text: '2,089.96 ', style: textTheme.headlineSmall),
              TextSpan(
                text: 'GBP',
                style: textTheme.titleLarge?.copyWith(
                  color: antiFlashWhite,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '+7.50% ',
                style: textTheme.bodySmall?.copyWith(
                  color: eucalyptus,
                ),
              ),
              TextSpan(
                text: '|',
                style: textTheme.bodySmall?.copyWith(
                  color: heliotropeGray,
                ),
              ),
              TextSpan(
                text: ' +£6.05.10',
                style: textTheme.bodySmall?.copyWith(
                  color: eucalyptus,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                fixedSize: const Size(97, 35),
                backgroundColor: deepMauve,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {},
              child: Text('Trade', style: textTheme.bodyMedium),
            ),
            const SizedBox(width: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                fixedSize: const Size(97, 35),
                backgroundColor: darkCharcoal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {},
              child: Text('Transfer', style: textTheme.bodyMedium),
            )
          ],
        )
      ],
    );
  }
}

class FavouritesSection extends StatelessWidget {
  const FavouritesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'FAVOURITES',
                style: textTheme.bodySmall,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerRight,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                child: Text(
                  'See All',
                  style: textTheme.labelLarge?.copyWith(
                    color: deepMauve,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 7),
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 22,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: darkCharcoal,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Foundation.bitcoin_circle,
                          color: white,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bitcoin', style: textTheme.bodyMedium),
                            Text(
                              'BTC',
                              style: textTheme.bodySmall?.copyWith(
                                color: antiFlashWhite.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      MaterialCommunityIcons.chart_line_variant,
                      size: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('£1,939.74', style: textTheme.bodyMedium),
                        Text(
                          '-9.7%',
                          style: textTheme.bodySmall?.copyWith(
                            color: paradisePink,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TopGainerSection extends StatelessWidget {
  const TopGainerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            children: [
              Text(
                'TOP GAINERS',
                style: textTheme.bodySmall,
              ),
              const SizedBox(width: 4),
              const Icon(
                MaterialCommunityIcons.fire,
                color: tomato,
                size: 20,
              ),
            ],
          ),
        ),
        const Divider(),
        const SizedBox(height: 7),
        ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 17),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 22,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: darkCharcoal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Foundation.bitcoin_circle,
                        color: white,
                        size: 28,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bitcoin', style: textTheme.bodyMedium),
                          Text(
                            'BTC',
                            style: textTheme.bodySmall?.copyWith(
                              color: antiFlashWhite.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text('£1,939.74', style: textTheme.bodyMedium),
                  Text(
                    '+5.70%',
                    style: textTheme.bodyMedium?.copyWith(color: eucalyptus),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      MaterialCommunityIcons.bell_outline,
                      color: white,
                      size: 32,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
