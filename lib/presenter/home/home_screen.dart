import 'package:codca/domain/auth/auth_repository.dart';
import 'package:codca/domain/auth/auth_state.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/presenter/card/card_draft_edit_screen.dart';
import 'package:codca/presenter/home/home_model.dart';
import 'package:codca/presenter/home/home_sign_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CardDraftRepository draftRepository = Provider.of(context);
    final AuthRepository authRepository = Provider.of(context);
    return ChangeNotifierProvider(
      create: (_) => HomeModel(
        draftRepository: draftRepository,
        authRepository: authRepository,
      )..fetch(),
      child: Consumer<HomeModel>(
        builder: (context, model, _) => _buildScaffold(context, model),
      ),
    );
  }

  Widget _buildScaffold(BuildContext context, HomeModel model) {
    return model.status.authState.fold(
      () => _buildUninitialized(context),
      (info) => _buildAuthenticated(context, info, model),
      () => _buildUnauthenticated(context, model),
    );
  }

  Widget _buildUninitialized(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  Widget _buildAuthenticated(
      BuildContext context, AuthInfo authInfo, HomeModel model) {
    return Scaffold(
      body: _body(context, model),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.account_box),
                        title: Text("Create my card"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(
                            context,
                            "/cards/create",
                          );
                        },
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.signOutAlt),
                        title: Text("Sing Out"),
                        onTap: () {
                          Navigator.pop(context);
                          model.signOut();
                        },
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_enhance),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Widget _buildUnauthenticated(BuildContext context, HomeModel model) {
    return Scaffold(
      body: HomeSignPage(
        () {
          model.signInAnonymously();
        },
        () {
          Navigator.pushNamed(
            context,
            "/signup",
          );
        },
      ),
    );
  }

  Widget _body(BuildContext context, HomeModel model) => CustomScrollView(
        slivers: [_buildCardDraftList(context, model)],
      );

  SliverList _buildCardDraftList(BuildContext context, HomeModel model) {
    if (model.status.drafts.isEmpty) {
      return SliverList(
        delegate: SliverChildListDelegate([]),
      );
    }
    return SliverList(
      delegate: SliverChildListDelegate(_buildListTitle("Card Drafts") +
          _buildCardDraftItems(context, model.status.drafts)),
    );
  }

  List<Widget> _buildListTitle(String title) => List.of([
        Padding(
          padding: EdgeInsets.only(left: 8, top: 8, bottom: 4),
          child: Text(title),
        )
      ]);

  List<Widget> _buildCardDraftItems(
    BuildContext context,
    List<CardDraft> drafts,
  ) =>
      drafts.map((draft) => _buildCardDraftItem(context, draft)).toList();

  Widget _buildCardDraftItem(
    BuildContext context,
    CardDraft draft,
  ) =>
      Card(
        child: InkWell(
          child: Image.network(draft.image),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/drafts/update",
              arguments: CardDraftEditScreenArguments(draft.uid),
            );
          },
        ),
      );
}
