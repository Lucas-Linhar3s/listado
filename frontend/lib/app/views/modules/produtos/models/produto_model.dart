import 'package:flutter/material.dart';

import '../views/data_table/produtos_table.dart';

class ProdutoModel {
  final int? id;
  final String nome;
  final int dt_ult_compra;
  final double ult_preco;

  const ProdutoModel({
    this.id,
    required this.nome,
    required this.dt_ult_compra,
    required this.ult_preco,
  });

  DataRow getRow(
    SelectedCallBack callback,
    List<String> selectedIds,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(id.toString())),
        DataCell(Text(nome.toString())),
        DataCell(Text(dt_ult_compra.toString())),
        DataCell(Text(ult_preco.toString())),
      ],
      onSelectChanged: (newState) {
        callback(id.toString(), newState ?? false);
      },
      selected: selectedIds.contains(id.toString()),
    );
  }

  factory ProdutoModel.fromJson(Map<String, dynamic> json) {
    return ProdutoModel(
      id: json['id'] as int,
      nome: json['nome'] as String,
      dt_ult_compra: json['dt_ult_compra'] as int,
      ult_preco: json['ult_preco'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'dt_ult_compra': dt_ult_compra,
      'ult_preco': ult_preco,
    };
  }
}
