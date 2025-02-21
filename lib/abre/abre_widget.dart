import '/backend/supabase/supabase.dart';
import '/components/barra_widget.dart';
import '/components/lista_sessao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'abre_model.dart';
export 'abre_model.dart';

class AbreWidget extends StatefulWidget {
  const AbreWidget({super.key});

  static String routeName = 'abre';
  static String routePath = '/abre';

  @override
  State<AbreWidget> createState() => _AbreWidgetState();
}

class _AbreWidgetState extends State<AbreWidget> {
  late AbreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AbreModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'abre',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      wrapWithModel(
                        model: _model.barraModel,
                        updateCallback: () => safeSetState(() {}),
                        child: BarraWidget(),
                      ),
                      Container(
                        width: double.infinity,
                        height: 55.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 22.0, 0.0, 0.0),
                                    child: Text(
                                      'Selecione a Sessão Plenária para votar',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            fontSize: valueOrDefault<double>(
                                              () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 22.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 15.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 11.0;
                                                } else {
                                                  return 22.0;
                                                }
                                              }(),
                                              22.0,
                                            ),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        constraints: BoxConstraints(
                          minWidth: 500.0,
                          maxWidth: 1000.0,
                        ),
                        decoration: BoxDecoration(),
                        child: FutureBuilder<List<CompleteVotesSummaryRow>>(
                          future: CompleteVotesSummaryTable().queryRows(
                            queryFn: (q) => q,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: LinearProgressIndicator(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              );
                            }
                            List<CompleteVotesSummaryRow>
                                listViewCompleteVotesSummaryRowList =
                                snapshot.data!;

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount:
                                  listViewCompleteVotesSummaryRowList.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 22.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewCompleteVotesSummaryRow =
                                    listViewCompleteVotesSummaryRowList[
                                        listViewIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      SingleVotoWidget.routeName,
                                      queryParameters: {
                                        'id': serializeParam(
                                          listViewCompleteVotesSummaryRow.id,
                                          ParamType.int,
                                        ),
                                        'numSessao': serializeParam(
                                          listViewCompleteVotesSummaryRow
                                              .numeroSessao,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.listaSessaoModels.getModel(
                                      listViewCompleteVotesSummaryRow.id!
                                          .toString(),
                                      listViewIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: ListaSessaoWidget(
                                      key: Key(
                                        'Keyn0o_${listViewCompleteVotesSummaryRow.id!.toString()}',
                                      ),
                                      titulo: listViewCompleteVotesSummaryRow
                                          .txttituloreuniao!,
                                      dtabertura:
                                          listViewCompleteVotesSummaryRow
                                              .abertura!,
                                      legislatura:
                                          listViewCompleteVotesSummaryRow
                                              .sessaoLegislativa!,
                                      sessao: listViewCompleteVotesSummaryRow
                                          .numeroSessao!
                                          .toString(),
                                      tipo: listViewCompleteVotesSummaryRow
                                          .tipoSessao!,
                                      ttsim: listViewCompleteVotesSummaryRow
                                          .totalSim!,
                                      ttnao: listViewCompleteVotesSummaryRow
                                          .totalNao!,
                                      ttabt: listViewCompleteVotesSummaryRow
                                          .totalAbstencao!,
                                      ttvoto: listViewCompleteVotesSummaryRow
                                          .totalVotes!,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
