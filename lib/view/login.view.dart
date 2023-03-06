import 'package:falle/common/theme_helper.dart';
import 'package:falle/utils/global.colors.dart';
import 'package:falle/view/home.view.dart';
import 'package:falle/view/signup.view.dart';
import 'package:falle/view/widgets/button.global.dart';
import 'package:falle/view/widgets/text.form.global.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
   LoginView({Key? key}) : super(key:key);
final TextEditingController phoneController= TextEditingController();
final TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Log In to your account',
                style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
                const SizedBox(height: 15),
                ////Email input
                TextFormGlobal(
                  controller: phoneController,
                  text: 'Phone',
                  obscure: false,
                  textInputType: TextInputType.phone,
                  ),
                

                  const SizedBox(height: 10),

                  ////Password Input
                  TextFormGlobal(controller: passwordController, 
                  text: 'Password', 
                  textInputType: TextInputType.text,
                   obscure: true,
                   ),
                   const SizedBox(height: 30),
                   //const ButtonGlobal(),
                   Container(
                    alignment: Alignment.center,
          decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Log In'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView()));
                                },
                              ),
        ),
            ],
          ),
        ),
        
      ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?'
            ),
            GestureDetector(
              onTap: (){

                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> SignUpView())
                );
              },
            
            
            child: const Text(
                ' Sign In',
                style: TextStyle(
                  color: Color.fromARGB(255, 67, 30, 230),
                ),
               ),
            ),
    
            
            
          ],
        ),
      ),
    );

  }
}