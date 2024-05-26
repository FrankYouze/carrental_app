import 'package:carrental_app/pages/company_page.dart';
import 'package:carrental_app/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:carrental_app/components/my_button.dart';
import 'package:carrental_app/components/my_textfield.dart';

class SignUpPage2 extends StatelessWidget {
  SignUpPage2({super.key});
  final FirebaseAuth auth = FirebaseAuth.instance;
  final DatabaseReference databaseRef =
      FirebaseDatabase.instance.ref().child("RegCompanies");
  final CompEmailcon = TextEditingController();
  final passcon = TextEditingController();
  final CompNamecon = TextEditingController();
  final CompRegcon = TextEditingController();
  final CompPhonecon = TextEditingController();


    Future<void> signUpWithEmailPassword(String email, String password) async {
  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    // User signed up successfully
    User? user = userCredential.user;
  } catch (e) {
    print('Failed to sign up with email and password: $e');
  }
}

void addItemToDatabase(String phone,String Name,String Reg)async {
  await  databaseRef.child(Name)
                         .set({
                            "PhoneNumber": phone,
                           "Registration": Reg,
                          
                          });
                  
          
                          

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // const SizedBox(
                //   height: 30,
                // ),
                const Text(
                  "Sign Up As Service Provider",
                  style: TextStyle(
                      color: Color.fromARGB(255, 44, 43, 43),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.work,
                    color: Colors.white70,
                    size: 130,
                  ),
                ),
                const Text(
                  "Company Profile",
                  style: TextStyle(
                      color: Color.fromARGB(255, 44, 43, 43),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  myText: "enter company name",
                  obscu: false,
                  controller: CompNamecon,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  myText: "enter company registration number",
                  obscu: false,
                  controller: CompRegcon,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  myText: "enter company email address",
                  obscu: false,
                  controller: CompEmailcon,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  myText: "phone number",
                  obscu: false,
                  controller: CompPhonecon,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  myText: "enter password",
                  obscu: true,
                  controller: passcon,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  text: "Sign Up",
                  onTap: () async {
                     Navigator.push(
                       context,
                     MaterialPageRoute(
                         builder: (context) => CompanyHome(),
                      ),
                     );
          
          
                    //signUpWithEmailPassword(CompEmailcon.text, passcon.text);
                    //addItemToDatabase(CompPhonecon.text, CompNamecon.text, CompRegcon.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CompanyHome()));
                  
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
