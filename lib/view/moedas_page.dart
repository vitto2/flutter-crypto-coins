import 'package:crypto_coins/repositories/moeda__repositores.dart';
import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = CoinRepository.table;

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
              title: Text(tabela[index].name),
              subtitle: Text("R\$ ${tabela[index].price}"),
              trailing: Text(tabela[index].sigla),
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
