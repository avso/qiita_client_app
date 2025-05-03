import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:qiita_client_app/data/model/user.dart';
import 'package:qiita_client_app/data/provider/item_list.dart';
import 'package:qiita_client_app/data/model/item.dart';
import 'package:qiita_client_app/data/model/tag.dart';
import 'package:qiita_client_app/data/provider/selected_user.dart';
import 'package:qiita_client_app/router/router_config.dart';
import 'package:qiita_client_app/ui/component/navigation/app_bar.dart';
import 'package:qiita_client_app/ui/component/parts/lgtm_box.dart';
import 'package:qiita_client_app/ui/component/parts/tag_list.dart';
import 'package:qiita_client_app/ui/component/parts/user_profile_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemPage extends HookConsumerWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Item item = ref.watch(selectedItemProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: UserProfileIcon(
                      size: 32,
                      profileImageUrl: item.user?.profileImageUrl ?? '',
                    ),
                    onTap: () {
                      ref.watch(selectedUserProvider.notifier).updateState(state: item.user ?? User());
                      context.push(RoutePath.user);
                    },
                  ),
                  SizedBox(width: 8),
                  Text('@${item.user?.id ?? ""}'),
                  SizedBox(width: 8),
                  Text(
                    DateFormat('yyyy/MM/dd hh:mm').format(item.createdAt ?? DateTime(9999, 9, 9)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 16, left: 8, right: 8),
              alignment: Alignment.centerLeft,
              child: Text(
                item.title ?? '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 16),
              child: TagList(tags: item.tags ?? [Tag()]),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 16, left: 8, right: 8),
              child: LgtmBox(likesCount: item.likesCount ?? 0),
            ),
            HtmlWidget(
              item.renderedBody ?? '',
              customStylesBuilder: (element) {
                if (element.localName == 'h2') {
                  return {'text-decoration-line': 'underline'};
                } else if (element.localName == 'code') {
                  return {
                    'color': 'white',
                    'background-color': '#1d2020',
                  };
                } else if (element.classes.contains('code-frame')) {
                  return {
                    'color': 'white',
                    'background-color': '#1d2020',
                    'padding': '16px',
                    'margin': '16px',
                  };
                } else if ((element.parent?.classes.contains('code-lang') ?? false) && element.localName == 'span') {
                  return {
                    'color': 'white',
                    'background-color': 'grey',
                  };
                } else if (element.localName == 'pre') {
                  return {'padding-top': '16px'};
                } else if (element.localName == 'p') {
                  return {'padding': '4px 16px 4px 16px'};
                }
                return null;
              },
              onErrorBuilder: (context, element, error) => Text('$element error: $error'),
              onLoadingBuilder: (context, element, loadingProgress) => CircularProgressIndicator(),
              onTapImage: (imageMetadata) {},
              onTapUrl: (url) async {
                print('tapped $url');
                if (!await launchUrl(Uri.parse(url))) {
                  throw Exception('Could not launch $url');
                }
                return true;
              },
            ),
            Divider(
              height: 64,
              color: Colors.blueGrey,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 32),
              child: ListTile(
                leading: UserProfileIcon(
                  size: 48,
                  profileImageUrl: item.user?.profileImageUrl ?? '',
                ),
                title: Text('@${item.user?.id ?? ""}'),
                subtitle: Text(item.user?.description ?? ''),
                onTap: () {
                  ref.watch(selectedUserProvider.notifier).updateState(state: item.user ?? User());
                  context.push(RoutePath.user);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
