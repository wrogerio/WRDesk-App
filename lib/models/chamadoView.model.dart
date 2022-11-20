class ChamadoViewModel {
  int id = 0;
  String tipo = '';
  String assunto = '';
  String descricao = '';
  int canalid = 0;
  int statusid = 0;
  int analistaid = 0;
  int empresaid = 0;
  String solicitante = '';
  String canal = '';
  String status = '';
  String dtsolicitacao = '';
  String prazo = '';
  String dtentrega = '';
  String analista = '';
  String razaosocial = '';

  ChamadoViewModel({
    required this.id,
    required this.tipo,
    required this.assunto,
    required this.descricao,
    required this.canalid,
    required this.statusid,
    required this.analistaid,
    required this.empresaid,
    required this.solicitante,
    required this.canal,
    required this.status,
    required this.dtsolicitacao,
    required this.prazo,
    required this.dtentrega,
    required this.analista,
    required this.razaosocial,
  });

  // from json
  factory ChamadoViewModel.fromJson(Map<String, dynamic> json) {
    return ChamadoViewModel(
      id: json['id'],
      tipo: json['tipo'],
      assunto: json['assunto'],
      descricao: json['descricao'],
      canalid: json['canalid'],
      statusid: json['statusid'],
      analistaid: json['analistaid'],
      empresaid: json['empresaid'],
      solicitante: json['solicitante'],
      canal: json['canal'],
      status: json['status'],
      dtsolicitacao: json['dtsolicitacao'],
      prazo: json['prazo'],
      dtentrega: json['dtentrega'],
      analista: json['analista'],
      razaosocial: json['razaosocial'],
    );
  }
}
