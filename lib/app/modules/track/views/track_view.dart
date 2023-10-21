import 'package:cryptonance/app/style/colors.dart';
import 'package:cryptonance/app/style/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../controllers/track_controller.dart';

class TrackView extends GetView<TrackController> {
  const TrackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: raisinBlack,
      appBar: AppBar(
        backgroundColor: raisinBlack,
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            MaterialCommunityIcons.weather_sunny,
            color: white,
          ),
        ),
        title: Text('Track Coins', style: textTheme.bodyLarge),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {},
              child: const Stack(
                children: [
                  Icon(
                    MaterialIcons.check_box_outline_blank,
                    color: white,
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: maximumYellowRed,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                MaterialCommunityIcons.bell_outline,
                color: white,
              ),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            SizedBox(height: 26),
            FavouriteSection(),
            SizedBox(height: 26),
            RecommendSection(),
            SizedBox(height: 26),
            AllCoinSection(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: TextField(
        textAlign: TextAlign.center,
        controller: searchController,
        style: textTheme.bodySmall,
        scrollPadding: EdgeInsets.zero,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: transparent),
          ),
          hintText: 'Search coins',
          contentPadding: const EdgeInsets.fromLTRB(0, 11, 45, 0),
          hintStyle: textTheme.bodySmall?.copyWith(
            color: heliotropeGray,
          ),
          filled: true,
          fillColor: darkCharcoal,
          isDense: true,
          prefixIcon: const Icon(
            Icons.search,
            color: white,
          ),
        ),
      ),
    );
  }
}

class FavouriteSection extends StatelessWidget {
  const FavouriteSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
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
                child: Row(
                  children: [
                    Text(
                      'Large Cap ',
                      style: textTheme.labelLarge?.copyWith(
                        color: deepMauve,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: deepMauve,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 7),
        ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${index + 1}".toString(),
                        style: textTheme.bodyMedium,
                      ),
                      const SizedBox(width: 10),
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
    );
  }
}

class AllCoinSection extends StatelessWidget {
  const AllCoinSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Text(
            'ALL COINS',
            style: textTheme.bodySmall,
          ),
        ),
        const SizedBox(height: 7),
        ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${index + 1}".toString(),
                        style: textTheme.bodyMedium,
                      ),
                      const SizedBox(width: 10),
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
    );
  }
}

class RecommendSection extends StatelessWidget {
  const RecommendSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: darkCharcoal,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How do feel about the crypto market today?',
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 5),
                Text(
                  'Vote ro see results',
                  style: textTheme.bodySmall?.copyWith(
                    color: antiFlashWhite.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    color: darkLiver,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.thumb_down_rounded,
                    color: maximumYellowRed,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    color: darkLiver,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.thumb_up_rounded,
                    color: maximumYellowRed,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
