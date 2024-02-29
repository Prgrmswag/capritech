import 'package:capri_tech/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CapriTech'.toUpperCase(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool passwordVisible = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            SizedBox(
              child: Image.asset(
                'assets/caprilogo.png',
                height: 200,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'CAPRI TECH ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
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
              obscureText: passwordVisible,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                isDense: true,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: "Enter password",
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                suffixIcon: IconButton(
                  color: Colors.black,
                  icon: Icon(passwordVisible
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MySignUpPage()),
                );
              },
              child: Container(
               
                child: Image.asset(
                  'assets/regtxt.png',
                  height: 50,
                ),
              ),
            ),
           
           Text('OR',style: TextStyle(fontWeight: FontWeight.w500),),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 60,
                    child: Image.asset(
                      'assets/g.png',
                      height: 80,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 38,
                      child: Image.asset(
                        'assets/f.png',
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
