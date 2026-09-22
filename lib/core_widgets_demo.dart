import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Core Widgets Demo'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //1. Text
            const Text(
              'Welcome to Flutter Core Widgets',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

            const SizedBox(height:20),

            // 2. Icon
            const Icon(
              Icons.face_2,
              size: 50,
              color: Colors.red,

            ),

            const SizedBox(height: 20),


            // 3. Image
            Image.network(
              'https://tse1.explicit.bing.net/th/id/OIP.jl9Zi3JiX77zuyA6qbD2bAHaEo?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            // 4. Card
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                title: const Text(
                  'Lê Thanh Bình',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Flutter Developer',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}