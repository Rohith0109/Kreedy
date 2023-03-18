import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class CardsScrollable extends StatefulWidget {
  const CardsScrollable({super.key});

  @override
  State<CardsScrollable> createState() => _CardsScrollableState();
}

class _CardsScrollableState extends State<CardsScrollable> {
  final _pageController = PageController();
  final _currentPage = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.only(top: 20, bottom: 5),
            child: PageView.builder(
              controller: _pageController,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 113, 113, 113),
                  ),
                );
              },
              onPageChanged: (int index) {
                _currentPage.value = index;
              },
            ),
          ),
          CirclePageIndicator(
            itemCount: 6,
            currentPageNotifier: _currentPage,
            selectedDotColor: Colors.blue,
            dotColor: Colors.white,
            size: 5,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}