import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoricPageThree extends StatefulWidget {
  const HistoricPageThree({Key? key}) : super(key: key);

  @override
  _HistoricPageThreeState createState() => _HistoricPageThreeState();
}

class _HistoricPageThreeState extends State<HistoricPageThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          titleTextStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.purpleAccent,
          ),
          leading: IconButton(
              splashRadius: 20,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/icons/arrow_back.svg')),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Column(
                  children: <Widget>[
                    //Cross Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/icons/cross_icon.svg',
                              height: 20,
                              width: 20,
                            ),
                            iconSize: 30,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Produto Individual',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    const Text(
                      'Preencha os dados abaixo',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.black26),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.black26,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Dados do destinatário',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black26),
                              ),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFF1F2F7)),
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'Nome e Número do Destinatário',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Data de envio da encomenda',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black26),
                              ),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFF1F2F7)),
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const Expanded(
                                          flex: 4,
                                          child: Text(
                                            '2022-01-20',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16,
                                                color: Colors.black),
                                          )),
                                      const Expanded(
                                          flex: 2,
                                          child: Text(
                                            '09:38',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16,
                                                color: Colors.black),
                                          )),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                            'assets/icons/calendar_icon.svg'),
                                        iconSize: 30,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Observações',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black26),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xFFF1F2F7)),
                                height: 100,
                                child: Center(
                                  child: TextFormField(
                                    minLines: 1,
                                    maxLines: 5,
                                    keyboardType: TextInputType.multiline,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,

                                      //contentPadding:  EdgeInsets.symmetric(vertical: 30.0),
                                      //border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),),),
                                      hintText: 'Instruções para o executivo',
                                      hintStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Informe os serviços adicionais',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black26),
                              ),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFF1F2F7)),
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        'assets/icons/truck_icon.svg',
                                        color: Colors.purpleAccent,
                                        width: 30,
                                        height: 30,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Expanded(
                                        flex: 4,
                                        child: Text(
                                          'Serviços adicionais',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.add_box,
                                          color: Colors.purpleAccent,
                                        ),
                                        iconSize: 30,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Nenhum serviço adicional',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.purpleAccent),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Próximo',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      height: 60.0,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: const Color(0xFF6B34BE),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
