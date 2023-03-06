import 'package:falle/common/theme_helper.dart';
import 'package:falle/utils/global.colors.dart';
import 'package:falle/view/home.view.dart';
import 'package:falle/view/login.view.dart';
import 'package:falle/view/widgets/button.global.dart';
import 'package:falle/view/widgets/text.form.global.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
   SignUpView({Key? key}) : super(key:key);
final TextEditingController emailController= TextEditingController();
final TextEditingController passwordController= TextEditingController();
final TextEditingController nameController= TextEditingController();
final TextEditingController phoneController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'FALL-E',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
              const SizedBox(height: 50),
                Text(
                'Create an account',
                style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
                const SizedBox(height: 15),
                ////Name input
                TextFormGlobal(
                  controller: nameController,
                  text: 'Name',
                  obscure: false,
                  textInputType: TextInputType.name,
                  ),
                  const SizedBox(height: 15),
                ////Email input
                TextFormGlobal(
                  controller: phoneController,
                  text: 'Phone',
                  obscure: false,
                  textInputType: TextInputType.phone,
                  ),
                const SizedBox(height: 15),
                ////Email input
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 10),

                  ////Password Input
                  TextFormGlobal(controller: passwordController, 
                  text: 'Password', 
                  textInputType: TextInputType.text,
                   obscure: true,
                   ),
                   const SizedBox(height: 10),
                  //const ButtonGlobal()

                   Container(
                    alignment: Alignment.center,
          decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Sign Up'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView()));
                                },
                              ),
        ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

