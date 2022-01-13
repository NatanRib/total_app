import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

import '../../data/datasources/get_all_financials_data_source.dart';
import '../../domain/entities/financial_entity.dart';

class AllFinancialController{
  GetAllFinancialsDataSource datasource= Modular.get<GetAllFinancialsDataSource>();
  
  AllFinancialController({required this.datasource});

  List<FinancialEntity> _financials = [];

  List get financials => _financials;

  final StreamController<List<FinancialEntity>> _stream = StreamController();
  Stream<List<FinancialEntity>> get stream => _stream.stream; 

  getAllFinancials()async{
    await datasource().then((value){
      _financials = value;
      _financials.sort((a, b)=> a.value.compareTo(b.value));
      _stream.sink.add(_financials);
    }); 
  }

  void close(){
    _stream.close();
  }
}