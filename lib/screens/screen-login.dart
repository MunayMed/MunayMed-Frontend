import 'package:flutter/material.dart';
import 'package:munaymed_frontend/widgets/button_primary.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerHeight = screenHeight * 0.6;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFBED8D4),
              Color(0xFF007EA7),
              Color(0xFF007EA7),
              Color(0xFF007EA7),
            ],
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            
            Positioned(
              bottom: containerHeight - 260, // Adjust the top position of the circle
              child: Container(
                width: screenWidth,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20), // Added padding from the top edge of the circle
                    ClipOval(
                      child: Image.asset(
                        'lib/assets/img/logo_munaymed.png',
                        width: 118,
                        height: 118,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'MunayMed',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: screenWidth,
                height: containerHeight,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Center(
                        child: Text(
                          '¿No tienes cuenta? Registrate',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 30), // Adjust this value to move the inputs lower
                      Text(
                        'Correo electrónico',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFDAF0EE),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Contraseña',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFDAF0EE),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Row(
                            children: [
                              Checkbox(
                                value: false, 
                                onChanged: (bool? value) {
                                  
                                },
                              ),
                              Text(
                                'Recordar contraseña',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: ButtonPrimary(text: 'Ingresar', width: 245,onPressed: (){
                        
                        }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
  bottom: 16.0,
  right: 16.0,
  child: Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        colors: [Color(0xFFBED8D4),
              Color(0xFF007EA7),],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: FloatingActionButton(
      onPressed: () {
        // Acción al presionar el botón de emergencia
      },
      backgroundColor: Colors.transparent, // Fondo transparente para que se vea el degradado
      elevation: 0, // Sin sombra
      shape: CircleBorder(),
      child: Icon(
        Icons.phone,
        color: Colors.white,
      ),
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}