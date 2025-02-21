import '/backend/supabase/supabase.dart';
import '/components/barra_widget.dart';
import '/components/lista_sessao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'abre_widget.dart' show AbreWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AbreModel extends FlutterFlowModel<AbreWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barra component.
  late BarraModel barraModel;
  // Models for listaSessao dynamic component.
  late FlutterFlowDynamicModels<ListaSessaoModel> listaSessaoModels;

  @override
  void initState(BuildContext context) {
    barraModel = createModel(context, () => BarraModel());
    listaSessaoModels = FlutterFlowDynamicModels(() => ListaSessaoModel());
  }

  @override
  void dispose() {
    barraModel.dispose();
    listaSessaoModels.dispose();
  }
}
