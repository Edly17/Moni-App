
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaLogin extends StatefulWidget {
  @override
  _PantallaLoginState createState() => _PantallaLoginState();
}

class _PantallaLoginState extends State<PantallaLogin> {
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();

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
                  'Iniciar Sesión',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                TextField(
                  controller: _usuarioController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Nombre De Usuario',
                    hintStyle: TextStyle(color: Color(0xFF919191)),
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    filled: true,
                    fillColor: Color(0xFF244058),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _contrasenaController,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    hintStyle: TextStyle(color: Color(0xFF919191)),
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
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
                    // TODO: lógica de inicio de sesión
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF127C6C),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'INGRESAR',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/recuperar');
                  },
                  child: Text(
                    '¿Se te olvidó la contraseña?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registro');
                  },
                  child: Text(
                    '¿No tienes cuenta? Crea una.',
                    style: TextStyle(color: Color(0xFF127C6C)),
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
