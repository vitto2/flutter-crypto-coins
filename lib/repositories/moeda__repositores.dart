import '../models/moeda.dart';
//Classe responsável por se conectar com API futuramente e disponiblizar os dados que serão usados no app 
class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: 'assets/images/bitcoin.png',
      nome: 'Bitcoin',
      price: 1000829500,
      sigla: 'BTC',
    ),
    Moeda(
      icone: 'assets/images/dogecoin.png',
      nome: 'Dogecoin',
      price: 0.34,
      sigla: 'DOGE',
    ),
    Moeda(
        icone: 'assets/images/ethereum.png',
        nome: 'Ethereum',
        price: 699790,
        sigla: 'ETH'),
    Moeda(
        icone: 'assets/images/tether.png',
        nome: 'Thether',
        price: 5.29,
        sigla: 'USDT'),
    Moeda(
        icone: 'assets/images/solana.png',
        nome: 'Solana',
        price: 174.52,
        sigla: 'SOL')
  ];
}
