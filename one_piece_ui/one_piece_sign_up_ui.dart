import 'package:experiences/sing_up_ui/dragon_ball_ui/dragon_ball_signup_ui.dart';
import 'package:flutter/material.dart';

class OnePieceSignUpUi extends StatefulWidget {
  const OnePieceSignUpUi({Key? key}) : super(key: key);

  @override
  _OnePieceSignUpUiState createState() => _OnePieceSignUpUiState();
}

class _OnePieceSignUpUiState extends State<OnePieceSignUpUi> {
  bool isNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/one-piece.jpg",
          ),
          fit: BoxFit.fill,
        )),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: Center(
                child: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "assets/one_piece_name.png",
                    width: 200,
                    height: 100,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/google_icon.png",
                    height: 40,
                    width: 50,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/facebook_icon.png",
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.flag_outlined,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Or",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.flag_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            authTextFormField(
              hint: "Your name",
              isPassworld: false,
              icon: Icons.person,
            ),
            authTextFormField(
              hint: "Your Email",
              isPassworld: false,
              icon: Icons.alternate_email,
            ),
            authTextFormField(
              hint: "Passworld",
              isPassworld: true,
              icon: Icons.security,
            ),
            authTextFormField(
              hint: "Confirm Passowrld",
              isPassworld: true,
              icon: Icons.security,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            autheButton(buttonName: "Sign Up", color: Colors.teal),
            autheButton(buttonName: "Have an account?", color: Colors.blueGrey),
          ],
        ),
      ),
    );
  }

  authTextFormField(
      {required String hint,
      required bool isPassworld,
      required IconData icon}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black.withOpacity(0.5),
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: isPassworld ? isNotVisible : false,
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: TextStyle(color: Colors.blue),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 2,
              color: Colors.blue,
            ),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.blue,
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
                    color: Colors.blue,
                  ),
                )
              : null,
        ),
      ),
    );
  }

  autheButton({required Color color, required String buttonName}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DragonBallSignUpUi()));
          },
          child: Text(buttonName)),
    );
  }
}
