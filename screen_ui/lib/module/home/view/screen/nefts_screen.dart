import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeftsScreen extends StatefulWidget {
  const NeftsScreen({Key? key}) : super(key: key);

  @override
  State<NeftsScreen> createState() => _NeftsScreenState();
}

class _NeftsScreenState extends State<NeftsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 30,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 20),
              child: Row(
                children: const [
                  Text(
                    "Populer",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF Pro Display'),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    "Market",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    "Primary/IGO",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 2),
                child: Text(
                  "Recent Activity",
                  style: TextStyle(fontSize: 14, fontFamily: 'SF Pro Display'),
                ),
              ),
              const Icon(
                Icons.arrow_drop_down,
                size: 29,
              ),
              const SizedBox(
                width: 114,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[350]),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.sort,
                      ),
                      Text(
                        "Filter ",
                        style: TextStyle(
                            fontSize: 14, fontFamily: 'SF Pro Display'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Padding(
                padding: EdgeInsets.only(top: 11, bottom: 5),
                child: Icon(Icons.auto_awesome_mosaic_outlined),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(3),
                                      topLeft: Radius.circular(3)),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1543739970-9f00688c2285?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1633&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Neon District...One item',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Display'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Icon(
                                        Icons.verified,
                                        size: 15,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0, top: 2),
                                child: Text(
                                  "#56382",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 14),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15, left: 8),
                                child: Text(
                                  "Last price",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontFamily: 'SF Pro Display'),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, bottom: 5),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.keyboard_double_arrow_up_outlined,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "10.01",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'SF Pro Display'),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Icon(
                                      Icons.favorite_outline_outlined,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily: 'SF Pro Display'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 17,
                  mainAxisExtent: 245),
            ),
          ),
        ],
      ),
    );
  }
}
