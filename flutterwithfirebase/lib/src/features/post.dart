

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> items = [
    {
      'image': 'https://media.istockphoto.com/id/1288095515/photo/african-woman-wearing-mask-in-supermarket-buying-food-in-store.webp?s=1024x1024&w=is&k=20&c=cIpkOwzXglxwX16-MHJPDd0DZhfqnsfQr-Qzm7GSXfQ=',
      'title': 'Sports',
      'description': 'This is a description of the first item.',
      'date': '2024-08-07'
    },
    {
      'image': 'https://media.istockphoto.com/id/1962966363/photo/smiling-woman-shopping-for-household-products-at-supermarket-with-tablet-and-cart.webp?s=1024x1024&w=is&k=20&c=PIU18WvprCEMTN0RidxkdHOVfiAAM9UMEaQRIF6yrDU=',
      'title': 'Educations',
      'description': 'This is a description of the second item.',
      'date': '2024-08-08'
    },
    {
      'image': 'https://media.istockphoto.com/id/1694195918/photo/a-serious-beautiful-cuban-woman-shopping-at-the-supermarket.webp?s=1024x1024&w=is&k=20&c=JE8kPTaSoLR3R_AMPkQseAAe8lSWDFiMS75Igj67Rdw=',
      'description': 'This is a description of the third item.',
      'date': '2024-08-09'
    },
     {
      'image': 'https://media.istockphoto.com/id/1288095515/photo/african-woman-wearing-mask-in-supermarket-buying-food-in-store.webp?s=1024x1024&w=is&k=20&c=cIpkOwzXglxwX16-MHJPDd0DZhfqnsfQr-Qzm7GSXfQ=',
      'title': 'Sports',
      'description': 'This is a description of the first item.',
      'date': '2024-08-07'
    },
    {
      'image': 'https://media.istockphoto.com/id/1962966363/photo/smiling-woman-shopping-for-household-products-at-supermarket-with-tablet-and-cart.webp?s=1024x1024&w=is&k=20&c=PIU18WvprCEMTN0RidxkdHOVfiAAM9UMEaQRIF6yrDU=',
      'title': 'Educations',
      'description': 'This is a description of the second item.',
      'date': '2024-08-08'
    },
    {
      'image': 'https://media.istockphoto.com/id/1694195918/photo/a-serious-beautiful-cuban-woman-shopping-at-the-supermarket.webp?s=1024x1024&w=is&k=20&c=JE8kPTaSoLR3R_AMPkQseAAe8lSWDFiMS75Igj67Rdw=',
      'description': 'This is a description of the third item.',
      'date': '2024-08-09'
    },
     {
      'image': 'https://media.istockphoto.com/id/1288095515/photo/african-woman-wearing-mask-in-supermarket-buying-food-in-store.webp?s=1024x1024&w=is&k=20&c=cIpkOwzXglxwX16-MHJPDd0DZhfqnsfQr-Qzm7GSXfQ=',
      'title': 'Sports',
      'description': 'This is a description of the first item.',
      'date': '2024-08-07'
    },
    {
      'image': 'https://media.istockphoto.com/id/1962966363/photo/smiling-woman-shopping-for-household-products-at-supermarket-with-tablet-and-cart.webp?s=1024x1024&w=is&k=20&c=PIU18WvprCEMTN0RidxkdHOVfiAAM9UMEaQRIF6yrDU=',
      'title': 'Educations',
      'description': 'This is a description of the second item.',
      'date': '2024-08-08'
    },
    {
      'image': 'https://media.istockphoto.com/id/1694195918/photo/a-serious-beautiful-cuban-woman-shopping-at-the-supermarket.webp?s=1024x1024&w=is&k=20&c=JE8kPTaSoLR3R_AMPkQseAAe8lSWDFiMS75Igj67Rdw=',
      'description': 'This is a description of the third item.',
      'date': '2024-08-09'
    },
     {
      'image': 'https://media.istockphoto.com/id/1288095515/photo/african-woman-wearing-mask-in-supermarket-buying-food-in-store.webp?s=1024x1024&w=is&k=20&c=cIpkOwzXglxwX16-MHJPDd0DZhfqnsfQr-Qzm7GSXfQ=',
      'title': 'Sports',
      'description': 'This is a description of the first item.',
      'date': '2024-08-07'
    },
    {
      'image': 'https://media.istockphoto.com/id/1962966363/photo/smiling-woman-shopping-for-household-products-at-supermarket-with-tablet-and-cart.webp?s=1024x1024&w=is&k=20&c=PIU18WvprCEMTN0RidxkdHOVfiAAM9UMEaQRIF6yrDU=',
      'title': 'Educations',
      'description': 'This is a description of the second item.',
      'date': '2024-08-08'
    },
    {
      'image': 'https://media.istockphoto.com/id/1694195918/photo/a-serious-beautiful-cuban-woman-shopping-at-the-supermarket.webp?s=1024x1024&w=is&k=20&c=JE8kPTaSoLR3R_AMPkQseAAe8lSWDFiMS75Igj67Rdw=',
      'description': 'This is a description of the third item.',
      'date': '2024-08-09'
    },
   
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true, 
              builder: (BuildContext context) {
                return DraggableScrollableSheet(
                  expand: false, 
                  builder: (context, scrollController) {
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                            child: Image.network(
                              'https://media.istockphoto.com/id/1694195918/photo/a-serious-beautiful-cuban-woman-shopping-at-the-supermarket.webp?s=1024x1024&w=is&k=20&c=JE8kPTaSoLR3R_AMPkQseAAe8lSWDFiMS75Igj67Rdw=',
                              fit: BoxFit.cover,
                              height: 150,
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            children: [
                              Icon(
                                Icons.gps_fixed_outlined,
                                size: 50,
                                color: Colors.black,
                              ),
                              Text(
                                "Who likes and gives comments on this post",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              "Who likes and gives comments on this post and others like it.",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.share,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text("100"),
                                Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text("10"),
                                Icon(
                                  Icons.safety_check,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text("50"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          ListView.builder(
                            controller: scrollController, 
                            shrinkWrap: true, 
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(10),
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              final item = items[index];
                              return ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    item['image']!,
                                    width: 80,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 4),
                                    Text(
                                      item['description']!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      item['date']!,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
          child: const Text('Open Bottom Sheet'),
        ),
      ),
    );
  }
}


