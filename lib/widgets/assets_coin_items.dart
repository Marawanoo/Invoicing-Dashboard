import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/assets_coin_model.dart';
import 'assets_colume_items.dart';

class AssetsCoinItems extends StatelessWidget {
  const AssetsCoinItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AssetsCoinModel> coin = [
      AssetsCoinModel(title: 'USDT', img: 'assets/usdt.svg'),
      AssetsCoinModel(title: 'BNB', img: 'assets/bnb.svg'),
      AssetsCoinModel(title: 'LTC', img: 'assets/ltc.svg'),
      AssetsCoinModel(title: 'USDC', img: 'assets/usdc.svg')
    ];
    return AssetsColumnItems(
      title: 'Coin',
      children: coin
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    fit: BoxFit.contain,
                    e.value.img,
                    width: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    e.value.title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
