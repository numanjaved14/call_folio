import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import './providers/user_credentials.dart' as user;

import './screens/screen1.dart';
import './screens/screen2.dart';
import './screens/screen3.dart';
import './screens/screen4.dart';
import './screens/home_screen.dart';
import './screens/tabs_screen.dart';
import './screens/wallet_screen.dart';
import './screens/notif_settings_screen.dart';
import './screens/privacy_settings_screen.dart';
import './screens/transaction_history_screen.dart';
import './screens/profile_details.dart';
import './screens/edit_profile_screen_.dart';
import './screens/calls_screen_.dart';
import './screens/wallet_info_screen_.dart';
import './screens/test_screen.dart';
import './screens/call_settings_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => user.User(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: 'Poppins',
        ),
        initialRoute: '/',
        routes: {
          // Testing route
          '/': (ctx) => LoginScreen(),
          // '/': (ctx) => screen1(),
          screen2.routeName: (ctx) => screen2(),
          screen3.routeName: (ctx) => screen3(),
          screen4.routeName: (ctx) => screen4(),
          home_screen.routeName: (ctx) => home_screen(),
          TabsScreen.routeName: (ctx) => TabsScreen(),
          Wallet.routeName: (ctx) => Wallet(),
          NotifSettings.routeName: (ctx) => NotifSettings(),
          PrivacySettings.routeName: (ctx) => PrivacySettings(),
          TransactionHistory.routeName: (ctx) => TransactionHistory(),
          profileDetails.routeName: (ctx) => profileDetails(),
          EditProfileScreen.routeName: (ctx) => EditProfileScreen(),
          CallsScreen.routeName: (ctx) => CallsScreen(),
          WalletInfoScreen.routeName: (ctx) => WalletInfoScreen(),
          CallSettings.routeName: (ctx) => CallSettings(),
        },
      ),
    );
  }
}
