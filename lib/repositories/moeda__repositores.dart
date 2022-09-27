import '../models/moeda.dart';

//Classe responsável por se conectar com API futuramente e disponiblizar os dados que serão usados no app
class CoinRepository {
  
  static List<Moeda> table = [
    Moeda(
      icone: 'assets/images/bitcoin.png',
      name: 'Bitcoin',
      price: 100829500,
      sigla: 'BTC',
    ),
    Moeda(
      icone: 'assets/images/dogecoin.png',
      name: 'Dogecoin',
      price: 0.34,
      sigla: 'DOGE',
    ),
    Moeda(
        icone: 'assets/images/ethereum.png',
        name: 'Ethereum',
        price: 699790,
        sigla: 'ETH'),
    Moeda(
        icone: 'assets/images/tether.png',
        name: 'Thether',
        price: 5.29,
        sigla: 'USDT'),
    Moeda(
        icone: 'assets/images/solana.png',
        name: 'Solana',
        price: 174.52,
        sigla: 'SOL')
  ];
}
