import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginsignup/razor_page.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Icon(
            Icons.location_on,
            color: Colors.grey[700],
          ),
        ),
        title: Text(
          'India, Mumbai',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RazorPage();
            },
          ),
        ),
        child: const Icon(Icons.shopping_bag),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),

          // good morning bro
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Hello! Ready to shop?'),
          ),

          const SizedBox(height: 4),

          // Let's order fresh items for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),

          const SizedBox(height: 24),

          // categories -> horizontal listview
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh Items",
              style: GoogleFonts.notoSerif(
                //fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),

    const SizedBox(height: 54),

          // categories -> horizontal listview
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.network("assets/chicken.png",
                height: 84,
              ),
            ),
       
   // item name
            Text('Chicken ₹120',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
         
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.network("assets/banana.png",
                height: 84,
              ),
            ),
       
   // item name
            Text('Banana ₹10',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
         
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Image.asset("assets/avocado.png",
                height: 84,
              ),
            ),
       
   // item name
            Text('Avocado ₹80',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
         
        ],
      ),
    );
  }
}