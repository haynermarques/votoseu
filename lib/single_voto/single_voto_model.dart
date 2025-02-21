import '/backend/supabase/supabase.dart';
import '/components/barra_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'single_voto_widget.dart' show SingleVotoWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SingleVotoModel extends FlutterFlowModel<SingleVotoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barra component.
  late BarraModel barraModel;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  VotesRow? votSim;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  VotesRow? votNao;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  VotesRow? votAbst;

  @override
  void initState(BuildContext context) {
    barraModel = createModel(context, () => BarraModel());
  }

  @override
  void dispose() {
    barraModel.dispose();
  }
}
