import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Ensure Firebase Core is imported
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Needed for initial route logic

// Import Screens
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

// Import Providers and Utils
import 'providers/user_provider.dart';
import 'utils/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.info('App Initialization Started.');

  // Initialize Firebase
  try {
    // TODO: Add FirebaseOptions if not using google-services.json/plist properly
    await Firebase.initializeApp();
    Logger.info('Firebase Initialized Successfully.');
  } catch (e, stackTrace) {
    Logger.error('Firebase Initialization Failed', error: e, stackTrace: stackTrace);
    // Handle initialization failure if necessary (e.g., show error message or fallback mode)
  }

  // Force portrait orientation
  try {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Logger.info('Screen orientation set to portrait.');
  } catch (e, stackTrace) {
    Logger.error('Failed to set screen orientation', error: e, stackTrace: stackTrace);
  }

  // Check initial login state for routing
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('loggedIn') ?? false;
  Logger.info('Initial login state: $isLoggedIn');

  Logger.info('Running LAMAFIA App.');
  runApp(LAMAFIAApp(isLoggedIn: isLoggedIn));
}

class LAMAFIAApp extends StatelessWidget {
  final bool isLoggedIn; // Receive login state

  const LAMAFIAApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    Logger.debug('Building LAMAFIAApp Widget.');

    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        title: 'LAMAFIA', // App Title
        debugShowCheckedModeBanner: false, // Disable debug banner

        // Apply the final theme provided by the user
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF1E1E2C), // Dark background
          primaryColor: const Color(0xFF9147FF), // Purple accent
          colorScheme: ColorScheme.dark(
            primary: const Color(0xFF9147FF), // Purple
            secondary: const Color(0xFF7289DA), // Discord-like blue/purple
            background: const Color(0xFF2C2F33), // Dark grey background elements
            surface: const Color(0xFF23272A), // Slightly lighter grey for surfaces
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onBackground: Colors.white70,
            onSurface: Colors.white,
            onError: Colors.redAccent,
          ),
          cardColor: const Color(0xFF2C2F33), // Card background
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF23272A), // App bar background
            elevation: 0,
            foregroundColor: Colors.white, // Title/icon color
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gothic', // Ensure Gothic font is available
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color(0xFF23272A), // Input field background
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFF4F545C)), // Subtle border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFF9147FF), width: 2), // Purple focus border
            ),
            labelStyle: TextStyle(color: Colors.white70),
            hintStyle: TextStyle(color: Colors.white54),
            prefixIconColor: Colors.white70,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white70, fontFamily: 'Gothic', fontSize: 14),
            titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Gothic'),
            labelLarge: TextStyle(color: Color(0xFF9147FF), fontWeight: FontWeight.bold, fontFamily: 'Gothic'), // Button text
            headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Gothic'),
            titleMedium: TextStyle(color: Colors.white70, fontFamily: 'Gothic'),
          ),
          iconTheme: const IconThemeData(color: Colors.white70),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF9147FF),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Gothic'),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF7289DA), // Secondary color for text buttons
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xFF23272A),
            selectedItemColor: Color(0xFF9147FF),
            unselectedItemColor: Colors.white54,
            type: BottomNavigationBarType.fixed, // Ensure labels are always visible
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            unselectedLabelStyle: TextStyle(fontSize: 12),
          ),
        ),

        // Define initial route and other routes
        initialRoute: '/', // Start with Splash
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/home': (context) => const HomeScreen(),
          // Add other routes here as needed
        },
        // Use home property as fallback if initialRoute logic fails (optional)
        // home: isLoggedIn ? const HomeScreen() : const SplashScreen(), // Start with Splash always
      ),
    );
  }
}

