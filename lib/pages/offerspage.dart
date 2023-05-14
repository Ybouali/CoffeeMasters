import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
        Offer(
          title: "Coffee taliano", description: "Buy 1, get 3 for free"
        ),
      ],
    );
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
        color: Colors.amber.shade400,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/background.png',
          ))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
