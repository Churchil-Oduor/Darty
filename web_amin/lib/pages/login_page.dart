import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Adds padding around the column
          child: Column(
            mainAxisSize: MainAxisSize.min, // Centers vertically
            children: [
              CircleAvatar(
                radius: 100, // Size of the circle
                backgroundColor: Colors.red, // Border color
                child: CircleAvatar(
                  radius:
                      100, // Image size (slightly smaller than outer border)
                  backgroundImage: AssetImage('assets/JKUATCU LOGO.png'),
                ),
              ),

              SizedBox(height: 20), // Spacing between logo and text fields

              SizedBox(child: Text("Welcome Admin")),
              SizedBox(height: 10),

              SizedBox(
                width: 500, // Reduces width of input field
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ), // Adjusts internal padding
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email, size: 20),
                  ),
                ),
              ),

              SizedBox(height: 10), // Spacing between fields

              SizedBox(
                width: 500, // Same reduced width as above
                child: TextField(
                  obscureText: true, // Hides password input
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock, size: 20),
                  ),
                ),
              ),

              SizedBox(height: 20),

              SizedBox(
                width: 500, // Reduces button width
                height: 40, // Adjusts button height
                child: ElevatedButton(
                  onPressed: () {
                    // Handle login action
                  },
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
