import 'package:experiences/sing_up_ui/auth_text_field.dart';
import 'package:experiences/sing_up_ui/one_piece_ui/one_piece_sign_up_ui.dart';
import 'package:flutter/material.dart';

class NarutoSignUpUi extends StatefulWidget {
  const NarutoSignUpUi({Key? key}) : super(key: key);

  @override
  State<NarutoSignUpUi> createState() => _NarutoSignUpUiState();
}

class _NarutoSignUpUiState extends State<NarutoSignUpUi> {
  bool isNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/naruto.jpg",
          ),
          fit: BoxFit.fill,
        )),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: Center(
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    "assets/naruto-name.png",
                    width: 200,
                    height: 100,
                  ),
                ),
              ),
            ),
            authTextFormField(hint: "User name", isPassworld: false),
            authTextFormField(hint: "Email", isPassworld: false),
            authTextFormField(hint: "Passworld", isPassworld: true),
            authTextFormField(hint: "Confirm Passowrld", isPassworld: true),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign Up"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/naruto-icon.png',
                        color: Colors.white,
                        height: 30,
                        width: 30,
                      ),
                      Text(
                        "Or",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Image.asset(
                        'assets/naruto-icon.png',
                        color: Colors.white,
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/google-plus.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/facebook.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OnePieceSignUpUi()));
                },
                child: Text("Have an account?"))
          ],
        ),
      ),
    );
  }

  authTextFormField({required String hint, required bool isPassworld}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black.withOpacity(0.5),
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: isPassworld ? isNotVisible : false,
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: TextStyle(color: Colors.blueGrey),
          //  hoverColor: Colors.black.withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 2,
              color: Colors.blueGrey,
            ),
          ),
          suffixIcon: isPassworld
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isNotVisible = !isNotVisible;
                    });
                  },
                  icon: Icon(
                    isNotVisible ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blueGrey,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
