import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codca/domain/auth/auth_repository.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/card/create_card_draft_usecase.dart';
import 'package:codca/domain/card/get_card_draft_usecase.dart';
import 'package:codca/infra/auth/firebase_auth_repository.dart';
import 'package:codca/infra/card/firestore_card_draft_repository.dart';
import 'package:codca/presenter/card/card_draft_edit_screen.dart';
import 'package:codca/presenter/card/card_edit_screen.dart';
import 'package:codca/presenter/card/card_screen.dart';
import 'package:codca/presenter/home/home_screen.dart';
import 'package:codca/presenter/sign/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Repositories
      providers: [
        Provider<CardDraftRepository>(
          create: (context) => FirestoreCardDraftRepository(
            firestore: Firestore.instance,
            storage: FirebaseStorage.instance,
          ),
        ),
        Provider<AuthRepository>(
          create: (context) => FirebaseAuthRepository(FirebaseAuth.instance),
        ),
        // UseCases
        ProxyProvider2<AuthRepository, CardDraftRepository,
            CreateCardDraftUseCase>(
          update: (_, auth, draft, __) => CreateCardDraftUseCase(auth, draft),
        ),
        ProxyProvider2<AuthRepository, CardDraftRepository,
            GetCardDraftUseCase>(
          update: (_, auth, draft, __) => GetCardDraftUseCase(auth, draft),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => HomeScreen(),
          "/signin": (context) => SignUpScreen(),
          "/signup": (context) => SignUpScreen(),
          "/cards/create": (context) => CardDraftEditScreen(null),
          "/cards/detail": (context) => CardScreen(),
          "/cards/update": (context) => CardEditScreen(),
          "/drafts/create": (context) => CardDraftEditScreen(null),
          "/drafts/update": (context) {
            final CardDraftEditScreenArguments arguments =
                ModalRoute.of(context).settings.arguments;
            return CardDraftEditScreen(arguments.uid);
          },
        },
      ),
    );
  }
}
