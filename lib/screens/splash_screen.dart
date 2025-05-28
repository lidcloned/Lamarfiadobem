import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navegar para a tela de login após 2 segundos
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo ou imagem do app
            const Icon(
              Icons.group,
              size: 100,
              color: Color(0xFF9147FF),
            ),
            const SizedBox(height: 24),
            // Nome do app
            const Text(
              'LAMAFIA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Gothic',
              ),
            ),
            const SizedBox(height: 16),
            // Subtítulo ou slogan
            const Text(
              'Comunicação e organização para o clã',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontFamily: 'Gothic',
              ),
            ),
            const SizedBox(height: 48),
            // Indicador de carregamento
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9147FF)),
            ),
          ],
        ),
      ),
    );
  }
}
