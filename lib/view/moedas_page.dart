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

  NumberFormat real = NumberFormat.currency(locale: 'pt-BR', name: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Criptomoedas",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: SizedBox(
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
                }
                setState(() {});
              },
            );
          },
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => const Divider(
                height: 40,
                color: Colors.black38,
              ),
          itemCount: tabela.length),
    );
  }
}
