import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _scale = 10.0;
  var _animationOpacityLogo = 0.0;

  double get _logoAnimationWidth => 100 * _scale;
  double get _logoAnimationHeight => 120 * _scale;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _animationOpacityLogo = 1.0;
        _scale = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background_image_chair.jpg",
            ),
            opacity: 0.2,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/imgLogo.png"),
                          const SizedBox(
                            height: 24,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text("email"),
                              hintText: 'Email',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text("senha"),
                              hintText: 'Senha',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Esquece a senha?',
                              style: TextStyle(
                                  color: ColorsConstants.brown, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(56)),
                              onPressed: () {},
                              child: const Text("ACESSAR"))
                        ],
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Criar Conta",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
