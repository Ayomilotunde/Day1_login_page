import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.only(left: 20, top: 120, right: 20, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hello, \nWelcome back',
                style: Theme.of(context).textTheme.headline1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                          width: 50, image: AssetImage('asset/icons/ayo.png')),
                      SizedBox(
                        width: 30,
                      ),
                      Image(
                          width: 50, image: AssetImage('asset/icons/ayo.png'))
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email or Phone Number'
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.all(const Radius.circular(20)),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password'
                      ),
                    ),
                  ), 
                  const SizedBox(height: 30,),
                  Text('Forgot Password?', style: Theme.of(context).textTheme.bodyText1,)
                ],
              ),
              Column(
                children: [
                  RaisedButton(
                    onPressed: () => {},
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 1,
                    child: const Center(child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                  const SizedBox(height: 30,),
                  Text('Creat account', style: Theme.of(context).textTheme.bodyText1,)
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}
