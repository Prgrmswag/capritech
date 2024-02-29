import 'package:capri_tech/main.dart';
import 'package:flutter/material.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({Key? key}) : super(key: key);

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text(
              'SIGN-UP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 50),
            TextFormField(
              style: const TextStyle(color: Colors.black),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              autocorrect: true,
              decoration: const InputDecoration(
                    isDense: true,
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: 'Enter your email',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter E-mail";
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              style: const TextStyle(color: Colors.black),
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                    isDense: true,
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: "Enter password",
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              style: const TextStyle(color: Colors.black),
              controller: confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                    isDense: true,
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: "Confirm password",
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  // Add your sign up logic here
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
SizedBox(height: 30,),
InkWell(
  onTap: () {
     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
  },
  child: Text(
                    'Already have an account ?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
)

          ],
        ),
      ),
    );
  }
}
