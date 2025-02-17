import '../database.dart';

class VotesTable extends SupabaseTable<VotesRow> {
  @override
  String get tableName => 'votes';

  @override
  VotesRow createRow(Map<String, dynamic> data) => VotesRow(data);
}

class VotesRow extends SupabaseDataRow {
  VotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get sessionId => getField<int>('session_id');
  set sessionId(int? value) => setField<int>('session_id', value);

  String get voteType => getField<String>('vote_type')!;
  set voteType(String value) => setField<String>('vote_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
