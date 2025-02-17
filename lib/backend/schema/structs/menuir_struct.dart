// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuirStruct extends BaseStruct {
  MenuirStruct({
    List<String>? munitem,
  }) : _munitem = munitem;

  // "munitem" field.
  List<String>? _munitem;
  List<String> get munitem => _munitem ?? const [];
  set munitem(List<String>? val) => _munitem = val;

  void updateMunitem(Function(List<String>) updateFn) {
    updateFn(_munitem ??= []);
  }

  bool hasMunitem() => _munitem != null;

  static MenuirStruct fromMap(Map<String, dynamic> data) => MenuirStruct(
        munitem: getDataList(data['munitem']),
      );

  static MenuirStruct? maybeFromMap(dynamic data) =>
      data is Map ? MenuirStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'munitem': _munitem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'munitem': serializeParam(
          _munitem,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static MenuirStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuirStruct(
        munitem: deserializeParam<String>(
          data['munitem'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'MenuirStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MenuirStruct && listEquality.equals(munitem, other.munitem);
  }

  @override
  int get hashCode => const ListEquality().hash([munitem]);
}

MenuirStruct createMenuirStruct() => MenuirStruct();
