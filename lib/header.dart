import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15
                    ),
                    height: size.height/5 ,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(45)),
                      boxShadow: [BoxShadow(
                        //offset: Offset(0,0),
                        blurRadius: 2
                      )]
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 35,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  'image/nath.jpg'
                                ),
                                radius: 32,
                              ),
                            ),
                            const SizedBox(width: 5,),
                            Column(
                              children: [
                                const Text(
                                  'UserName',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  child: const Text(
                                    'ELITE MEMBER',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      letterSpacing: 1.2
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),// this spaces widget
                            const Text(
                              '154 \$ CAN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,)
                ],
              ),
              Positioned(
                bottom: 0,
                  child: Container(
                    height: 50,
                    width: size.width,
                    child: Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 50
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'what do you want?',
                          suffixIcon: Icon(
                            Icons.search,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 20
                          )
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
