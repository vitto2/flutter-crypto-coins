import 'package:crypto_coins/controller/moedas_page_controller.dart';
import 'package:crypto_coins/view/atoms/bottom/f_action_bottom.dart';
import 'package:flutter/material.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  final CoinsController _controller = CoinsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _controller.myAppBar(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: _controller.iconSelectedVerify(index),
            title: Text(
              _controller.tabela[index].name,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              _controller.real.format(_controller.tabela[index].price),
            ),
            trailing: Text(_controller.tabela[index].sigla),
            selected:
                _controller.selectedItem.contains(_controller.tabela[index]),
            onLongPress: _controller.selectItem(index),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) =>
            const Divider(height: 30, color: Colors.black87),
        itemCount: _controller.tabela.length,
      ),
      floatingActionButton: MyFActionBottom(),
    );
  }
}
