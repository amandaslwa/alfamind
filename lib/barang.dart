import 'package:alfamind/profil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class Barang extends StatelessWidget {
  const Barang({super.key});
 
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
                          child: Container(
                            child: Text('Selamat datang,\nOwner', style: 
                              TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              )                        
                            ),
                          ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        // height: 100,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Text('Filter', style: 
                                    TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    )   
                                  )
                                ),
                              ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF4F4F4),
                                  ),
                                  width: 90,
                                  height: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.set_meal, size: 30, color: Colors.blue.shade900,),
                                      Text('Daging', style: 
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        )     
                                      )
                                    ],
                                  )
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF4F4F4),
                                  ),
                                  width: 90,
                                  height: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.sanitizer, size: 30,),
                                      Text('Kebersihan', style: 
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        )     
                                      )
                                    ],
                                  )
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF4F4F4),
                                  ),
                                  width: 90,
                                  height: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.fastfood_rounded, size: 30,),
                                      Text('Makanan', style: 
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        )     
                                      )
                                    ],
                                  )
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF4F4F4),
                                  ),
                                  width: 90,
                                  height: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.palette, size: 30,),
                                      Text('Hobi', style: 
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        )     
                                      )
                                    ],
                                  )
                                )
                              ],
                            )
                          ]
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        gradient : LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color.fromRGBO(255, 224, 96, 1), Color.fromRGBO(255, 153, 79, 1)]
                        ),
                      ),
                      // width: double.infinity,
                      height: 240,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Text('Terlaris Bulan Ini', style: 
                                    TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    )   
                                  )
                                ),
                              ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  width: 200,
                                  height: 170,
                                  child: Column(
                                    children: [
                                      ClipRRect(child: Image.asset('assets/images/daging.jpg', height: 100,), borderRadius: BorderRadius.circular(8.0),),
                                      Text('Daging Kambing', style: 
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text('Rp. 20.000,00 /kg', style: 
                                        TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text('Lihat detail', style: 
                                        TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  width: 200,
                                  height: 170,
                                  child: Column(
                                    children: [
                                      ClipRRect(child: Image.asset('assets/images/daging.jpg', height: 100,), borderRadius: BorderRadius.circular(8.0),),
                                      Text('Daging Sapi', style: 
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text('Rp. 20.000,00 /kg', style: 
                                        TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text('Lihat detail', style: 
                                        TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      // width: double.infinity,
                      height: 240,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Text('Barang Lainnya', style: 
                                    TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    )   
                                  )
                                ),
                              ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF4F4F4),
                                  ),
                                  width: 200,
                                  height: 170,
                                  child: Column(
                                    children: [
                                      ClipRRect(child: Image.asset('assets/images/daging.jpg', height: 100,), borderRadius: BorderRadius.circular(8.0),),
                                      Text('Daging Sapi', style: 
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text('Rp. 20.000,00 /kg', style: 
                                        TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text('Lihat detail', style: 
                                        TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF4F4F4),
                                  ),
                                  width: 200,
                                  height: 170,
                                  child: Column(
                                    children: [
                                      ClipRRect(child: Image.asset('assets/images/daging.jpg', height: 100,), borderRadius: BorderRadius.circular(8.0),),
                                      Text('Daging Sapi', style: 
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text('Rp. 20.000,00 /kg', style: 
                                        TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text('Lihat detail', style: 
                                        TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
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
                                    Icon(Icons.inventory_2_rounded, color: Colors.blue.shade900, size: 30,),
                                    Text('Barang', style: 
                                      TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                      )     
                                    )
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
                                    Icon(Icons.person_2_outlined, size: 30,),
                                    TextButton(
                                      child: Text('Profil', style: 
                                      TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                      ),),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return const Profil();
                                        }));
                                      }
                                    ),
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

