import 'package:flutter/material.dart';

// google cloud platform
//log rocket

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _inits();
}

class _inits extends State<Login> {
  final _tec = TextEditingController();
  String email = '';
  String password = '';
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Login'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.alarm),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'username',
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (val) => val != null && val.isEmpty
                        ? 'please enter email '
                        : null,
                    onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'password',
                      prefixIcon: Icon(Icons.password),
                    ),
                    validator: (val) => val != null && val.isEmpty
                        ? 'please enter password '
                        : null,
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      // if (email == "yasser") {
                      //   Navigator.pushNamed(context, '/register');
                      // }
                      Navigator.pushNamed(context, '/map');
                    }

                    // showDialog(
                    //     context: context,
                    //     builder: (cn) {
                    //       return const AlertDialog(
                    //         content: Text("wdjk"),
                    //       );
                    //     });
                  },
                  child: const Text("login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
