import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // 🔹 App Bar
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 150,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Blinkit Style"),
              background: Image.network(
                "https://picsum.photos/500/300",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🔹 Banner Section
          SliverToBoxAdapter(
            child: Container(
              height: 120,
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.orange,
              ),
              child: const Center(
                child: Text(
                  "Big Sale Banner",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),

          // 🔹 Horizontal Product List
          SliverToBoxAdapter(
            child: SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 160,
                    margin: const EdgeInsets.all(8),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.local_grocery_store,
                                    size: 50,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Product $index",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text("₹99"),
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 4,
                                  ),
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text("ADD"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // 🔹 Vertical Category List
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                elevation: 2,
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.food_bank, color: Colors.white),
                  ),
                  title: Text("Category Item $index"),
                  subtitle: const Text("Description goes here"),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
