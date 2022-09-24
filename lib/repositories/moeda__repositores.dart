import '../models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: 'assets/images/bitcoin.png',
      nome: 'bitcoin',
      price: 10008295.00,
      sigla: 'btc',
    ),
    Moeda(
      icone: 'assets/images/dogecoin.png',
      nome: 'Dogecoin',
      price: 0.34,
      sigla: 'dgc',
    ),
    Moeda(
        icone: 'assets/images/ethereum.png',
        nome: 'Ethereum',
        price: 706517.00,
        sigla: 'Eth'),
    Moeda(
        icone: 'assets/images/tether.png',
        nome: 'Thether',
        price: 5.29,
        sigla: 'THT'),
  ];
}
