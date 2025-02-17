import '/components/barra_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'votarsessao_widget.dart' show VotarsessaoWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VotarsessaoModel extends FlutterFlowModel<VotarsessaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barra component.
  late BarraModel barraModel;
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {
    barraModel = createModel(context, () => BarraModel());
  }

  @override
  void dispose() {
    barraModel.dispose();
  }
}
