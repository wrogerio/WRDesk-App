class ChamadoModel {
  int id = 0;
  String tipo = '';
  String assunto = '';
  String descricao = '';
  String solicitante = '';
  String dtSolicitacao = '';
  String prazo = '';
  String dtEntrega = '';
  int canalId = 0;
  int statusId = 0;
  int analistaId = 0;
  int empresaId = 0;

  ChamadoModel({
    this.id = 0,
    this.tipo = 'task',
    required this.assunto,
    required this.descricao,
    required this.solicitante,
    required this.dtSolicitacao,
    this.dtEntrega = '',
    required this.prazo,
    required this.canalId,
    required this.statusId,
    required this.analistaId,
    required this.empresaId,
  });

  // to json
  Map<String, dynamic> toJson() => {
        'id': id,
        'tipo': tipo,
        'assunto': assunto,
        'descricao': descricao,
        'solicitante': solicitante,
        'dtSolicitacao': dtSolicitacao,
        'dtEntrega': dtEntrega,
        'prazo': prazo,
        'canalId': canalId,
        'statusId': statusId,
        'analistaId': analistaId,
        'empresaId': empresaId,
      };

  factory ChamadoModel.fromJson(Map<String, dynamic> json) {
    return ChamadoModel(
        id: json['id'],
        tipo: json['tipo'],
        assunto: json['assunto'],
        descricao: json['descricao'],
        solicitante: json['solicitante'],
        dtSolicitacao: json['dtSolicitacao'],
        dtEntrega: json['dtEntrega'],
        prazo: json['prazo'],
        canalId: json['canalId'],
        statusId: json['statusId'],
        analistaId: json['analistaId'],
        empresaId: json['empresaId']);
  }
}
