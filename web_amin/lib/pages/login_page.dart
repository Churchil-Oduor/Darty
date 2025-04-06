import 'package:flutter/material.dart';
import 'package:web_amin/components/utils/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 400, left: 400),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/JKUATCU LOGO.png"),
                width: 100,
                height: 100,
              ),

              SizedBox(height: 30),

              //Welcome Admin Text
              Text(
                "Welcome Admin",
                style: TextStyle(
                  color: const Color.fromARGB(255, 48, 76, 99),
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),

              SizedBox(height: 30),
              //this is the Username Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter UserName",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: const Color.fromARGB(255, 90, 89, 89),
                  ),
                ),
              ),

              //This is the Password Field
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: const Color.fromARGB(255, 90, 89, 89),
                  ),
                ),
              ),

              SizedBox(height: 50),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: CustomButton(
                  button_label: "Login",
                  color_grad_1: const Color.fromARGB(255, 3, 131, 236),
                  color_grad_2: const Color.fromARGB(255, 3, 131, 236),
                  border_radius: 8,
                  onClick: () {
                    Navigator.pushNamed(context, "/admin_panel");
                    
                  },
                ),
              ),

              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () => {},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),

              SizedBox(height: 70),
              Text("Copy Right JKUATCU 2025"),
            ],
          ),
        ),
      ),
    );
  }
}
