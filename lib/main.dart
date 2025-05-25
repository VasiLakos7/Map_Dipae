import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

void main() {
  runApp(const Xartis());
}

class Xartis extends StatelessWidget {
  const Xartis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Map_Page(),
          ),
        ),
      ),
    );
  }
}

class Map_Page extends StatefulWidget {
  const Map_Page({super.key});

  @override
  State<Map_Page> createState() => _Map_PageState();
}

class _Map_PageState extends State<Map_Page> {
  String? selectedDestination;
  String? selectedBuilding;

  final List<String> destinations = [
    "Κτίριο Διοίκησης",
    "Κεντρική Βιβλιοθήκη",
    "Κεντρικό Αμφιθέατρο",
    "Κεντρικό κυλικείο",
    "Εστιατόριο",
    "Ιατρείο",
  ];

  final List<String> departments = [
    "Τμήμα Νοσηλευτικής",
    "Τμήμα Φυσικοθεραπείας",
    "Τμήμα Μηχανικών Πληροφορικής",
    "Τμήμα Βιοϊατρικών Επιστημών",
    "Τμήμα Νοσηλευτικής",
    "Τμήμα Φυσικοθεραπείας",
    "Τμήμα Μηχανικών Πληροφορικής",
    "Τμήμα Βιοϊατρικών Επιστημών",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // ΚΑΘΕΤΟ ΚΕΝΤΡΟ
          crossAxisAlignment: CrossAxisAlignment.center, // ΟΡΙΖΟΝΤΙΟ ΚΕΝΤΡΟ
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Γενικός Προορισμός:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            const SizedBox(height: 10),
            DropdownSearch<String>(
              items: destinations,
              // ... όλα ίδια όπως πριν ...
              selectedItem: selectedDestination,
              onChanged: (value) {
                setState(() {
                  selectedDestination = value;
                });
              },
            ),
            const SizedBox(height: 30),
            Text(
              "Ακαδημαϊκό Τμήμα:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            const SizedBox(height: 10),
            DropdownSearch<String>(
              items: departments,
              // ... όλα ίδια όπως πριν ...
              selectedItem: selectedBuilding,
              onChanged: (value) {
                setState(() {
                  selectedBuilding = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
