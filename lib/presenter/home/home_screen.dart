import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/card/find_card_draft_usecase.dart';
import 'package:codca/presenter/card/card_draft_edit_screen.dart';
import 'package:codca/presenter/home/home_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<CardDraftRepository>(context);
    final findUseCase = FindCardDraftUseCase(repository);

    return ChangeNotifierProvider(
      create: (_) => HomeModel(findUseCase)..fetch(),
      child: Consumer<HomeModel>(
        builder: (context, model, _) => Scaffold(
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
                          )
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
        ),
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
