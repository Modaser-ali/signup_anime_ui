import 'package:experiences/sing_up_ui/naruto_ui/naruto_sign_up_ui.dart';
import 'package:flutter/material.dart';

class DragonBallSignUpUi extends StatefulWidget {
  const DragonBallSignUpUi({Key? key}) : super(key: key);

  @override
  _DragonBallSignUpUiState createState() => _DragonBallSignUpUiState();
}

class _DragonBallSignUpUiState extends State<DragonBallSignUpUi> {
  bool isNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/dragon-ball.jpg",
          ),
          fit: BoxFit.fill,
        )),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_a_photo,
                          size: 50,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      authTextFormField(hint: "User name", isPassworld: false),
                      authTextFormField(hint: "User Email", isPassworld: false),
                      authTextFormField(hint: "Passworld", isPassworld: true),
                      authTextFormField(
                          hint: "Confirm Passowrld", isPassworld: true),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                              ),
                              onPressed: () {},
                              child: Text("Sign Up")),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => NarutoSignUpUi()));
                              },
                              child: Text("Have an account?"))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 25.0),
              child: Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Image.asset(
                    'assets/google.png',
                    height: 30,
                    width: 50,
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      primary: Colors.purple,
                      elevation: 10.0),
                ),
                ElevatedButton(
                  child: Image.asset(
                    'assets/facebook_icon2.png',
                    height: 30,
                    width: 50,
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      primary: Colors.purple,
                      elevation: 10.0),
                ),
              ],
            )
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
          labelStyle: TextStyle(color: Colors.purple),
          //  hoverColor: Colors.black.withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 2,
              color: Colors.purple,
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
                    color: Colors.purple,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
