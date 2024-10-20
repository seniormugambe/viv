import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPwdPage extends StatefulWidget {
  const ForgotPwdPage({super.key});

  @override
  State<ForgotPwdPage> createState() => _ForgotPwdPageState();
}

class _ForgotPwdPageState extends State<ForgotPwdPage> {

  final _emailController=TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset()async{
    try{
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: _emailController.text.trim()
      );


    showDialog(
        // ignore: use_build_context_synchronously
        context: context, 
      builder: (context){
        return const AlertDialog(
          content: Text(
            "Password sent to your email"
            ),
        );
      },
    );

    }on FirebaseAuthException catch (e){
      //print(e);
      showDialog(
        // ignore: use_build_context_synchronously
        context: context, 
      builder: (context){
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Enter your email",
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize:25 
            
            ),
            
            ),
          ),
          const SizedBox(height: 10,),
          // Email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      fillColor: Colors.grey[300],
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10,),
                //button
                MaterialButton(
                  onPressed: passwordReset,
                  color:Colors.blue[400],
                  
                  child : const Text("Reset Pwd"),
                  )
        ],
      ),
    );
  }
}