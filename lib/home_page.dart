import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZigZag List'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 400,
            alignment: Alignment.topCenter,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: 124,
              itemBuilder: (context, index) {
                var circlePosition = (index / 6).floorToDouble().toInt();

                if (circlePosition == 0) {
                  var isEven = (index / 3).floorToDouble().toInt().isEven;
                  var position = index % 3;

                  var dx = (position == 0
                          ? isEven
                              ? 0
                              : 30
                          : position * 140)
                      .toDouble();
                  var dy = (position == 0
                          ? (isEven ? 20 : 20)
                          : position == 1
                              ? position * (isEven ? -30 : 20)
                              : position * (isEven ? -20 : 0))
                      .toDouble();

                  return Transform.translate(
                    offset: Offset(isEven ? dx : -dx, dy),
                    child: Align(
                      alignment:
                          isEven ? Alignment.centerLeft : Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/ic_list_${(index % 8) + 1}.png',
                              width: 100,
                              height: 100,
                            ),
                            Text('$index'),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  var isEven = (index / 3).floorToDouble().toInt().isEven;
                  var position = index % 3;

                  var dx = (position == 0
                          ? isEven
                              ? 30
                              : 30
                          : position * 140)
                      .toDouble();
                  var dy = (position == 0
                          ? 50
                          : position == 1
                              ? position * (isEven ? 50 : 60)
                              : position * (isEven ? 10 : 0))
                      .toDouble();

                  return Transform.translate(
                    offset: Offset(isEven ? dx : -dx, dy),
                    child: Align(
                      alignment:
                          isEven ? Alignment.centerLeft : Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/ic_list_${(index % 8) + 1}.png',
                              width: 100,
                              height: 100,
                            ),
                            Text('$index'),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
