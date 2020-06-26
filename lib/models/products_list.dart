//import 'compras_widget.dart';
import 'product.dart';

final Produto casaqueto = Produto(
    id: 0,
    nome: 'Casaqueto Preto',
    imagePath: 'assets/images/casaqueto_preto.png',
    descricao: 'Um lindo casaco preto da ultima coleção da Blu K...',
    preco: 165.99);

final Produto blusaCrepe = Produto(
    id: 1,
    nome: 'Blusa em Crepe',
    imagePath: 'assets/images/blusa_em_crepe.png',
    descricao: 'Blusa casual, para todas as ocasiões',
    preco: 120.00);

final Produto macacao = Produto(
    id: 1,
    nome: 'Macacão Preto',
    imagePath: 'assets/images/macacao_preto.png',
    descricao: 'Macacão no estilo...',
    preco: 200.00);

List<Produto> categorias = [casaqueto, blusaCrepe, macacao];
