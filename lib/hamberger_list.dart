import 'package:flutter/material.dart';
import 'burger_page.dart';

class HamburgerList extends StatefulWidget {
  //const HamburgerList({Key? key}) : super(key: key);
  final int? row;
  const HamburgerList({this.row});

  @override
  State<HamburgerList> createState() => _HamburgerListState();
}

class _HamburgerListState extends State<HamburgerList> {

  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget baconImage = Container(
      height: 120,
      child: Image.asset('image/ham3-removebg-preview.png'),
    );
    Widget chickenImage = Container(
      height: 150,
      child: Image.asset('image/ham2-removebg-preview.png'),
    );
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: widget.row == 2? 330 : 240,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: items == index ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                        child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Text(
                            reverse ? 'Chicken Burger': 'Bacon Burger',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Spacer(),
                              const Text(
                                '15,95 \$ CAN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 50,
                                height: 50,
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(10),
                                    ),
                                    child: const Icon(Icons.add)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                      elevation: 3,
                      margin: const EdgeInsets.all(10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        )
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 55 : 60,
                    left: reverse? -5 : -20,
                    child: GestureDetector(
                      onTap: (){
                        //todo
                        Navigator.of(context).pushNamed(BurgerPage.tag);
                      },
                      child: reverse ? chickenImage : baconImage,
                    ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
