import 'package:crypto_coins/models/moeda.dart';
import 'package:crypto_coins/repositories/moeda__repositores.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CoinsController {
  final tabela = CoinRepository.table;
  List<Moeda> selectedItem = [];
  List<Moeda> favorites = [];
  int selectedQtd = 0;
  NumberFormat real = NumberFormat.currency(locale: 'pt-BR', name: 'R\$');

  Widget iconSelectedVerify(index) {
    if (selectedItem.contains(tabela[index])) {
      return CircleAvatar(
        child: Image.asset("assets/images/accept.png"),
      );
    } else {
      return SizedBox(
        width: 40,
        child: Image.asset(tabela[index].icone),
      );
    }
  }

  selectItem(index) {
    if (selectedItem.contains(tabela[index])) {
      selectedItem.remove(tabela[index]);
    } else {
      selectedItem.add(tabela[index]);
      selectedQtd++;
    }
  }

  myAppBar() {
    if (selectedItem.isEmpty) {
      return AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Center(
          child: Text(
            "Criptomoedas",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    } else {
      return AppBar(
        leading: IconButton(
          onPressed: () {
            selectedItem = []; // Chamar setState
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white54,
        title: Text(
          "${selectedItem.length} selecionados",
          style: const TextStyle(color: Colors.black),
        ),
      );
    }
  }
}
