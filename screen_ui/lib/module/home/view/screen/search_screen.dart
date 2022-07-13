import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            "Search",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: 'SF Pro Display'),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 24),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 0,
                          spreadRadius: 0,
                          color: Colors.black12),
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 28,
                        ),
                        hintText: "Search",
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        "Items(847212)",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                            fontFamily: 'SF Pro Display'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Collections(1921)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'SF Pro Display'),
                      )
                    ],
                  ),
                ),
              ],
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
                width: 99,
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
                      SizedBox(
                        width: 2,
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
              const SizedBox(width: 15),
              const Padding(
                padding: EdgeInsets.only(top: 11, bottom: 5),
                child: Icon(Icons.auto_awesome_mosaic_outlined),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Card(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(3),
                                      topRight: Radius.circular(3)),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1541753236788-b0ac1fc5009d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1112&q=80",
                                    height: 120,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 27),
                                  child: Text(
                                    "8SIAN Collection",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 14),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 95, top: 2),
                                      child: Text(
                                        "created by",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontFamily: 'SF Pro Display'),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Text(
                                        "Alethea_AI",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.blue[600],
                                            fontFamily: 'SF Pro Display'),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Icon(
                                        Icons.verified,
                                        color: Colors.blue,
                                        size: 15,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 23.5,
                                      right: 16,
                                      top: 16,
                                      bottom: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            "8.9K",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                fontFamily: 'SF Pro Display'),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "Items",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontFamily: 'SF Pro Display'),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            "4.1K",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "Owners",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontFamily: 'SF Pro Display'),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: const [
                                              // Icon(Icons.arrow_drop_up_rounded),
                                              Text(
                                                "4.8K",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          const Text(
                                            "Volume",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontFamily: 'SF Pro Display'),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              width: MediaQuery.of(context).size.width,
                              left: -19,
                              top: 95,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1543117007-d94fab949135?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
