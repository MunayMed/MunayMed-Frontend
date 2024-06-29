import 'package:flutter/material.dart';
import 'package:munaymed_frontend/widgets/button_primary.dart';

class ScreenRegisterStepTwo extends StatefulWidget {
  const ScreenRegisterStepTwo({super.key});

  @override
  State<ScreenRegisterStepTwo> createState() => _ScreenRegisterStepTwoState();
}

class _ScreenRegisterStepTwoState extends State<ScreenRegisterStepTwo> {
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
              top: 50,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStepCircle(1),
                        _buildStepDivider(),
                        _buildStepCircle(2),
                        _buildStepDivider(),
                        _buildStepCircle(3), 
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                            'Verifica los datos',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              child: Container(
                width: screenWidth,
                height: containerHeight + 20,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Registro del Usuario',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Color(0xFF296093),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Nombres y Apellidos:',
                        style: TextStyle(
                          fontSize: 14,
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
                      SizedBox(height: 10),
                      Text(
                        'Sexo:',
                        style: TextStyle(
                          fontSize: 14,
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
                      
                      SizedBox(height: 130),
                      Column(
                        children: [
                          Center(child: ButtonPrimary(text: 'Continuar', width: 245, onPressed: () {})),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCircle(int stepNumber) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        //color #034078
        border: Border.all(color: Color(0xFF034078), width: 4)
      ),
      child: Center(
        child: Text(
          stepNumber.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildStepDivider() {
    return Expanded(
      child: Container(
        height: 3,
        color: Color(0xFF034078),
      ),
    );
  }
}

