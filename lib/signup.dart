import 'package:alfamind/barang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:alfamind/main.dart';
import 'package:alfamind/signin.dart';
import 'package:flutter/widgets.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});
 
    @override
    Widget build(BuildContext context) {
      return  Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient : LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromRGBO(243, 72, 97, 1),Color.fromRGBO(250, 31, 53, 1),Color.fromRGBO(132, 6, 23, 1)]
                  ),
                ),
                // child: Text('Sign In'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  ),
                  color: Colors.white,  
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Container(
                            child: Text('Sign Up', style: 
                              TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              )                        
                            ),
                          ),
                      ),
                      SizedBox(height: 50),
                      TextField(
                        decoration: InputDecoration(
                          // suffixIcon: Icon(Icons., color: Colors.grey),
                          label: Text('Nama', style: 
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black
                            ),)
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.phone, color: Colors.grey),
                          label: Text('Nomor Telepon', style: 
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black
                            ),)
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email, color: Colors.grey),
                          label: Text('E-mail', style: 
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black
                            ),)
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                          label: Text('Password', style: 
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black
                            ),)
                        ),
                      ),
                      SizedBox(height: 100),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade500,
                          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                            )
                        ),
                        child: Center(child: Text('Daftar', style:
                          TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const Barang();
                          }));
                        }
                      ),
                      SizedBox(height: 200),
                      Text('Sudah punya akun?', style: 
                        TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        )                        
                      ),
                      TextButton(
                        child: Text('Sign In', style: 
                        TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900
                        ),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const SignIn();
                          }));
                        }
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      );
    }
  }

