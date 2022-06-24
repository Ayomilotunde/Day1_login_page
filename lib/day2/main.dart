import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisible = false;
  bool isEightCharacter = false;
  bool hasOneNumber = false;

  onPasswordChanged(String password){
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      if(password.length >= 8) {
        isEightCharacter = true;
      } else {
        isEightCharacter = false;
      }
      if(numericRegex.hasMatch(password)) {
        hasOneNumber = true;
      } else {
        hasOneNumber = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        title: const Text(
          'Create your account',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Set a password',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Please create a secure password including te following criteria below.',
              style: TextStyle(
                  fontSize: 15, height: 1.5, color: Colors.grey.shade500),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged:(password) => onPasswordChanged(password),
              obscureText: !isVisible,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: isVisible
                      ? const Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black)),
                hintText: 'Password',
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                AnimatedContainer(duration: const Duration(
                  milliseconds: 500,
                ),
                width: 20,
                height: 20,
                  decoration: BoxDecoration(
                    color: isEightCharacter ? Colors.green : Colors.transparent,
                    border:  isEightCharacter ? Border.all(color: Colors.transparent) :
                    Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.check, color: Colors.white, size: 15,),
                ),
                const SizedBox(width: 20,),
                const Text('Contains at least 8 characters')
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                AnimatedContainer(duration: const Duration(
                  milliseconds: 500,
                ),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: hasOneNumber ? Colors.green : Colors.transparent,
                    border:  hasOneNumber ? Border.all(color: Colors.transparent) :
                    Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.check, color: Colors.white, size: 15,),
                ),
                const SizedBox(width: 20,),
                const Text('Contains at least 1 numeber')
              ],
            ),
            const SizedBox(height: 20,),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              onPressed: () {},
            color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            child: const Text('CREATE ACCOUNT', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
