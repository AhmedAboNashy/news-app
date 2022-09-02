import 'package:flutter/material.dart';
import 'package:news_app/home/souce_tab.dart';
import 'package:news_app/model/SourcesResponse.dart';

class SourcesTabs extends StatefulWidget {
  List<Source> sources;
  SourcesTabs(this.sources);

  @override
  State<SourcesTabs> createState() => _SourcesTabsState();
}

class _SourcesTabsState extends State<SourcesTabs> {
  int selectedTab = -0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sources.length,
        child: Column(
          children: [
            TabBar(
                onTap: (index) {
                  selectedTab = index;
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: widget.sources.map((source) {
                  return SourceTab(source, false);
                }).toList())
          ],
        ));
  }
}
