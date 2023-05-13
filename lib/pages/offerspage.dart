import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Offer(title: "Coffee taliano", description: "Buy 1, get 3 for free");
  }
}

class Offer extends StatelessWidget {

  final String title;
  final String description;

  const Offer({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        elevation: 7,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}