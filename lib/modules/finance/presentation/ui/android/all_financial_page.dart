import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/entities/financial_entity.dart';
import '../../../presentation/controllers/all_financials_controller.dart';
import './financial_detail_page.dart';

class AllFinancialPage extends StatefulWidget {
  
  const AllFinancialPage({Key? key})
      : super(key: key);

  @override
  _AllFinancialPageState createState() => _AllFinancialPageState();
}

class _AllFinancialPageState extends State<AllFinancialPage> {
    final AllFinancialController controller = Modular.get<AllFinancialController>();
  
  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  void initState() {
    controller.getAllFinancials();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Finanças'),
        ),
        body: StreamBuilder<List<FinancialEntity>>(
            stream: controller.stream,
            initialData: const <FinancialEntity>[],
            builder: (context, snapshot) {
              return snapshot.data!.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : snapshot.hasError
                      ? Center(child: Text('${snapshot.error}'))
                      : Column(children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2 -30,
                            child: const Card(
                              color: Colors.white,
                              child: Text('Insights here!'),
                            )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /2 -30,
                            child: ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  var items = snapshot.data;
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8.0, top: 5.0),
                                    child: ListTile(
                                      tileColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10))),
                                      title: Text(items![index].description),
                                      trailing: Text(
                                          '${items[index].totalValue.toStringAsFixed(2)} em ${items[index].installments} X'),
                                      onTap: () => Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const FinancialDetailPage()),
                                          (route) => false),
                                    ),
                                  );
                                }),
                          ),
                        ]);
            }));
  }
}
