import '../database.dart';

class CompleteVotesSummaryTable extends SupabaseTable<CompleteVotesSummaryRow> {
  @override
  String get tableName => 'complete_votes_summary';

  @override
  CompleteVotesSummaryRow createRow(Map<String, dynamic> data) =>
      CompleteVotesSummaryRow(data);
}

class CompleteVotesSummaryRow extends SupabaseDataRow {
  CompleteVotesSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CompleteVotesSummaryTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get legislatura => getField<String>('legislatura');
  set legislatura(String? value) => setField<String>('legislatura', value);

  String? get sessaoLegislativa => getField<String>('sessao_legislativa');
  set sessaoLegislativa(String? value) =>
      setField<String>('sessao_legislativa', value);

  String? get tipoSessao => getField<String>('tipo_sessao');
  set tipoSessao(String? value) => setField<String>('tipo_sessao', value);

  int? get numeroSessao => getField<int>('numero_sessao');
  set numeroSessao(int? value) => setField<int>('numero_sessao', value);

  String? get publicarPauta => getField<String>('publicar_pauta');
  set publicarPauta(String? value) => setField<String>('publicar_pauta', value);

  String? get abertura => getField<String>('abertura');
  set abertura(String? value) => setField<String>('abertura', value);

  String? get horarioAbertura => getField<String>('horario_abertura');
  set horarioAbertura(String? value) =>
      setField<String>('horario_abertura', value);

  String? get sessaoIniciada => getField<String>('sessao_iniciada');
  set sessaoIniciada(String? value) =>
      setField<String>('sessao_iniciada', value);

  String? get encerramento => getField<String>('encerramento');
  set encerramento(String? value) => setField<String>('encerramento', value);

  String? get horarioEncerramento => getField<String>('horario_encerramento');
  set horarioEncerramento(String? value) =>
      setField<String>('horario_encerramento', value);

  String? get sessaoFinalizada => getField<String>('sessao_finalizada');
  set sessaoFinalizada(String? value) =>
      setField<String>('sessao_finalizada', value);

  String? get pautaSessao => getField<String>('pauta_sessao');
  set pautaSessao(String? value) => setField<String>('pauta_sessao', value);

  String? get ataSessao => getField<String>('ata_sessao');
  set ataSessao(String? value) => setField<String>('ata_sessao', value);

  String? get anexoSessao => getField<String>('anexo_sessao');
  set anexoSessao(String? value) => setField<String>('anexo_sessao', value);

  String? get urlAudio => getField<String>('url_audio');
  set urlAudio(String? value) => setField<String>('url_audio', value);

  String? get urlVideo => getField<String>('url_video');
  set urlVideo(String? value) => setField<String>('url_video', value);

  int? get ano => getField<int>('ano');
  set ano(int? value) => setField<int>('ano', value);

  String? get txttituloreuniao => getField<String>('txttituloreuniao');
  set txttituloreuniao(String? value) =>
      setField<String>('txttituloreuniao', value);

  int? get totalSim => getField<int>('total_sim');
  set totalSim(int? value) => setField<int>('total_sim', value);

  int? get totalNao => getField<int>('total_nao');
  set totalNao(int? value) => setField<int>('total_nao', value);

  int? get totalAbstencao => getField<int>('total_abstencao');
  set totalAbstencao(int? value) => setField<int>('total_abstencao', value);

  int? get totalVotes => getField<int>('total_votes');
  set totalVotes(int? value) => setField<int>('total_votes', value);
}
