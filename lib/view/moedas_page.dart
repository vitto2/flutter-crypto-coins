import 'package:crypto_coins/models/moeda.dart';
import 'package:crypto_coins/repositories/moeda__repositores.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  final tabela = CoinRepository.table;
  List<Moeda> selectedItem = [];
  List<Moeda> favorites = [];
  int selectedQtd = 0;
  NumberFormat real = NumberFormat.currency(locale: 'pt-BR', name: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: (selectedItem.contains(tabela[index]))
                  ? CircleAvatar(
                      child: Image.asset("assets/images/accept.png"),
                    )
                  : SizedBox(
                      width: 40,
                      child: Image.asset(tabela[index].icone),
                    ),
              title: Text(
                tabela[index].name,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(real.format(tabela[index].price)),
              trailing: Text(tabela[index].sigla),
              selected: selectedItem.contains(tabela[index]),
              onLongPress: () {
                if (selectedItem.contains(tabela[index])) {
                  selectedItem.remove(tabela[index]);
                } else {
                  selectedItem.add(tabela[index]);
                  selectedQtd++;
                }
                setState(() {});
              },
            );
          },
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => const Divider(
                height: 30,
                color: Colors.black87,
              ),
          itemCount: tabela.length),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {
          if (selectedItem.isEmpty) {
            return;
          } else {
            
          }
        },
        label: const Text(
          "Favoritar",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
    );
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
            setState(() {
              selectedItem = [];
            });
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
