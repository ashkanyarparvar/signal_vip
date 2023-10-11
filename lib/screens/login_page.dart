import 'package:flutter/material.dart';
import 'package:signal_vip/screens/blog_page.dart';
import 'package:signal_vip/screens/password_recovery.dart';

class logingPage extends StatelessWidget {
  const logingPage({Key? key}) : super(key: key);

  void navigateToBlogPageScreen(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VIP ورود به حساب سیگنال',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200, 40),
                    side: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    navigateToBlogPageScreen(context, BlogPageScreen());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(200, 43),
                  ),
                  onPressed: () {},
                  child: Text('ثبت نام'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    navigateToBlogPageScreen(context, PasswordRecovery());
                  },
                  child: Text('فراموشی رمز عبور'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
