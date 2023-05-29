import 'package:flutter/material.dart';
import '../main.dart';
import './in.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
      primarySwatch: Colors.blue,
    ));
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: const Text(
                'sign up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 300,
              height: 55,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: '이름을 입력해주세요.',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.black26, width: 1.0))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 300,
              height: 55,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: '비밀번호를 입력해주세요.',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.black26, width: 1.0))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              width: 300,
              height: 55,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: '비밀번호를 다시 입력해주세요.',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.black26, width: 1.0))),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    child: const Text(
                      '회원가입',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  child: const Text(
                    '로그인 하러가기',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
