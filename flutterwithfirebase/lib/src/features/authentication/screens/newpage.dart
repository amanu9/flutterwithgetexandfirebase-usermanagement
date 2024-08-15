


import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
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
      'title': 'Song',
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
      'title': 'Song',
      'description': 'This is a description of the third item.',
      'date': '2024-08-09'
    },
    // Add more items as needed
  ];

  NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: ListView.builder(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.red
                  ),
                ),
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
                   fontStyle: FontStyle.italic
                  ),
                ),
              
              ],
            ),
          );
        },
      ),
    );
  }
}











