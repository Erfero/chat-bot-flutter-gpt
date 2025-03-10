import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        alignment: Alignment.center,
        height: 400,
        width: 400,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage("images/logo_enset.png")),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: loginController,
                  decoration: InputDecoration(
                    //icon: Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    //icon: Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      String username = loginController.text;
                      String password = passwordController.text;
                      if (username == "admin" && password == "1234") {
                        Navigator.of(context).pop();
                        Navigator.pushNamed(context, "/chat");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).indicatorColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
