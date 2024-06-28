import 'package:alfamind/barang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class Profil extends StatelessWidget {
  const Profil({super.key});
 
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
              padding: const EdgeInsets.only(top: 50.0),
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
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Text('Owner', style: 
                                      TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold
                                      )                        
                                    ),
                                  ),
                                  Container(
                                    child: Text('owner@gmail.com', style: 
                                      TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal
                                      )                        
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 150,),
                              Icon(Icons.person_2_outlined, size: 60,)
                            ],
                          ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      decoration: BoxDecoration(
                        gradient : LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color.fromRGBO(255, 224, 96, 1), Color.fromRGBO(255, 153, 79, 1)]
                        ),
                      ),
                      // width: double.infinity,
                      height: 245,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            SizedBox(height: 45,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  width: 410,
                                  height: 130,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 30,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Saldo Saya', style: 
                                            TextStyle(fontWeight: FontWeight.normal, fontSize: 16)
                                          ,),
                                          Text('Rp. 2.000.000,00', style: 
                                            TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
                                          ,)
                                        ],
                                      ),
                                      SizedBox(width: 100,),
                                      IconButton(
                                        padding: EdgeInsets.all(0.0), 
                                        icon: Icon(Icons.add_box_rounded), 
                                        color: Colors.amber.shade400,
                                        onPressed: () {
                                          showModalBottomSheet(context: context, builder: (context) {
                                            return Wrap(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('Top Up', style: 
                                                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                                                    ,),
                                                    Row(
                                                      children: [
                                                        SizedBox(width: 10,),
                                                        Image.asset('assets/images/livin.png', height: 50, width: 50,),
                                                        SizedBox(width: 10,),
                                                        Image.asset('assets/images/bca.png', height: 50,  width: 50,),
                                                        SizedBox(width: 10,),
                                                        Image.asset('assets/images/dana.png', height: 50, width: 50,),
                                                        SizedBox(width: 10,),
                                                      ]
                                                    )
                                                  ],
                                                ),
                                              ],
                                            );
                                          });
                                        },),
                                    ],
                                  )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 375,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      // width: double.infinity,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                                width: 100,
                                height: 100,
                                child: Column(
                                  children: [
                                    Icon(Icons.inventory_2_outlined, size: 30,),
                                    TextButton(
                                      child: Text('Barang', style: 
                                      TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                      ),),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return const Barang();
                                        }));
                                      }
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 100,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                                width: 100,
                                height: 100,
                                child: Column(
                                  children: [
                                    Icon(Icons.person_2_rounded, color: Colors.blue.shade900, size: 30,),
                                    Text('Profil', style: 
                                      TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                      )     
                                    )
                                  ],
                                ),
                              )
                            ]
                          ),
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        )
      );
    }
  }

