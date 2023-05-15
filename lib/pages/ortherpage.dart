import 'package:flutter/material.dart';

import '../data/datamanager.dart';

class OrtherPage extends StatelessWidget {
  final DataManager dataManager;
  const OrtherPage({super.key, required this.dataManager});

  @override
  Widget build(BuildContext context) {
    return const Text("Other page");
  }
}