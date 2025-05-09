import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaRecuperarContrasena extends StatefulWidget {
  @override
  _PantallaRecuperarContrasenaState createState() => _PantallaRecuperarContrasenaState();
}

class _PantallaRecuperarContrasenaState extends State<PantallaRecuperarContrasena> {
  final TextEditingController _correoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF182B3A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', height: 120),
                SizedBox(height: 24),
                Text(
                  'Recuperar Contraseña',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                TextField(
                  controller: _correoController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Correo de usuario',
                    hintStyle: TextStyle(color: Color(0xFF919191)),
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                    filled: true,
                    fillColor: Color(0xFF244058),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // TODO: lógica de recuperación
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF127C6C),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'ACEPTAR',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
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
