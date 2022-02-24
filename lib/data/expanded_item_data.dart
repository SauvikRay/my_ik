import '../model/expanded_model.dart';
import '../screens/historic_screen_five.dart';
import '../screens/historic_screen_one.dart';
import '../screens/historic_screen_six.dart';
import '../screens/servicos _adicionais_one.dart';

  List<ExpandedItem>expandedItems=[
      ExpandedItem(
        menuIcon: 'pedidos_icon.svg',
        menuText: 'Produto Individual',
        menuSubText: 'Envio de baixo custo',
        path: const HistoricPageOne(),
      ),
      ExpandedItem(
        menuIcon: 'home_two_icon.svg',
        menuText: 'Mudança de Casa',
        menuSubText: 'Garante o comforto',
        path:const HistoricPageFive(),
      ),
      ExpandedItem(
        menuIcon: 'star_icon.svg',
        menuText: 'O Meu Executivo Favorito',
        menuSubText: 'Escolha o seu executivo favorito',
        path:const ServiceAdicionaisScreenOne(),
      ),
      ExpandedItem(
        menuIcon: 'euro_box_icon.svg',
        menuText: 'Preços das Clases e Serviços',
        menuSubText: 'Consulte o preçario',
        path:const HistoricPageSix(),
      ),
    ];
