import 'dart:async';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> _listNumbers = List.generate(20, (index) => index);
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels + 100 >=
          _scrollController.position.maxScrollExtent) {
        // _add10();
        _fetchData();
      }
    });
  }

  void _add10() {
    for (var i = 1; i < 10; i++) {
      _listNumbers.add(_listNumbers.length + 1);
    }
    setState(() {});
  }

  Future _fetchData() async {
    if (_isLoading) return;
    _isLoading = true;
    setState(() {});
    Future.delayed(const Duration(seconds: 2), () {
      _isLoading = false;
      if (_scrollController.position.pixels + 100 <=
          _scrollController.position.maxScrollExtent) return;
      _scrollController.animateTo(
        _scrollController.position.pixels + 200,
        curve: Curves.fastOutSlowIn,
        duration: const Duration(milliseconds: 250),
      );
      _add10();
    });
  }

  Future<void> _refresh() async {
    const Duration duration = Duration(seconds: 2);
    Timer(duration, () {
      final lastId = _listNumbers.last;
      _listNumbers.clear();
      _listNumbers.add(lastId + 1);
      _add10();
    });
    return Future.delayed(duration);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeTop: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: _refresh,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _listNumbers.length,
                itemBuilder: (context, index) {
                  return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${_listNumbers[index]}'));
                },
              ),
            ),
            if (_isLoading)
              Positioned(
                bottom: 20,
                left: size.width * 0.5 - 30,
                child: _LoadingIcon(),
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(100),
      ),
      child: const CircularProgressIndicator(color: AppTheme.primary),
    );
  }
}
