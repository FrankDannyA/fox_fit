import 'package:flutter/material.dart';
import 'package:fox_fit/core/app/app_constants.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';

import 'widgets/widgets.dart';

class StatScreen extends StatefulWidget {
  const StatScreen({Key? key}) : super(key: key);

  @override
  State<StatScreen> createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  int currentMounthIndex = 0;

  final _tabTitles = [
    'Услуги',
    'История списаний',
    'История продаж',
  ];

  //MOCK
  List<String> serviceList = List.generate(6, (index) => '1ПТ 55 мин ТЗ');

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabTitles.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Статистика',
          style: AppTextStyles.h3Bold,
        ),
        actions: const [
          NotificationWidget(
            count: 22,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 40),
            ),

            ///
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    AppConstants.mounths.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: GradientButton(
                        title: AppConstants.mounths[index],
                        isSelected: currentMounthIndex == index,
                        onPressed: () {
                          currentMounthIndex = index;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 25),
            ),

            ///
            if (currentMounthIndex == 0) ...[
              const SliverToBoxAdapter(
                child: Row(
                  children: [
                    Expanded(
                      child: InfoWidget(
                        title: 'Продажи : 34 шт',
                        description: '156 000 ₽',
                        assetsPath: 'assets/icons/wallet-add.svg',
                        backgrountGradient: AppColors.watterGray,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: InfoWidget(
                        title: 'Реализация: 38 шт',
                        description: '176 000 ₽',
                        assetsPath: 'assets/icons/receipt-text.svg',
                        backgrountGradient: AppColors.fireOrange,
                      ),
                    ),
                  ],
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 29),
              ),

              ///
              const SliverToBoxAdapter(
                child: Text(
                  'Рейтинг',
                  style: AppTextStyles.h3Bold,
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 19),
              ),

              ///
              SliverToBoxAdapter(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.scaffoldWhite,
                    boxShadow: const [AppColors.mainShadow],
                  ),
                  child: const Column(
                    children: [
                      TookWidget(
                        categoty: "продажам",
                        place: "26",
                        money: "14 000",
                      ),
                      Divider(),
                      TookWidget(
                        categoty: "реализации",
                        place: "25",
                        money: "18 000",
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 11),
              ),

              ///
              SliverToBoxAdapter(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.appBarGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TabBar(
                    indicatorPadding: const EdgeInsets.all(5),
                    controller: _tabController,
                    tabs: List.generate(
                      _tabTitles.length,
                      (index) => Tab(
                        child: Text(
                          _tabTitles[index],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),

              SliverFillRemaining(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: serviceList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child:
                            ServiceTile(count: index, name: serviceList[index]),
                      ),
                    ),
                    ...List.generate(
                      2,
                      (index) => const Text(
                        'На подходе',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.graphitBold,
                      ),
                    ),
                  ],
                ),
              ),

              ///
            ] else ...[
              const SliverToBoxAdapter(
                child: Text(
                  'Данные отсутвуют',
                  style: AppTextStyles.graphitBold,
                  textAlign: TextAlign.center,
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
