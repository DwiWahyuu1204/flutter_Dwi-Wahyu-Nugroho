import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Prioritas2No1 extends StatelessWidget {
  const Prioritas2No1({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoApp'),
      ),
      backgroundColor: CupertinoColors.black,
      child: Center(
        child: Text(
          'This Is CupertinoApp',
        ),
      ),
    );
  }
}
