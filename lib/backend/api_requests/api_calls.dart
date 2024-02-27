import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BackCall {
  static Future<ApiCallResponse> call({
    String? typeUser = '',
    String? operations = '',
    String? surgeonId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BACK',
      apiUrl:
          'http://ec2-34-229-139-205.compute-1.amazonaws.com/api/$typeUser/$operations',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'surgeonId': surgeonId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? listado(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class TestQuestionsDataCall {
  static Future<ApiCallResponse> call({
    String? nameTest = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'testQuestionsData',
      apiUrl:
          'http://ec2-34-229-139-205.compute-1.amazonaws.com/api/getSurvey/$nameTest',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? listado(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  static String? subtitle(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.subtitle''',
      ));
  static List? questions(dynamic response) => getJsonField(
        response,
        r'''$.questions''',
        true,
      ) as List?;
  static dynamic type(dynamic response) => getJsonField(
        response,
        r'''$.type''',
      );
  static dynamic test(dynamic response) => getJsonField(
        response,
        r'''$.test''',
      );
}

class LoginSurgeonCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loginSurgeon',
      apiUrl:
          'http://ec2-34-229-139-205.compute-1.amazonaws.com/api/surgeon/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic surgeonID(dynamic response) => getJsonField(
        response,
        r'''$._id''',
      );
}

class LoginPatiensCall {
  static Future<ApiCallResponse> call({
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loginPatiens',
      apiUrl:
          'http://ec2-34-229-139-205.compute-1.amazonaws.com/api/patient/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._id''',
      ));
  static String? apellido(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.apellido''',
      ));
  static String? historia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.historia''',
      ));
  static String? hospital(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.hospital''',
      ));
  static List<String>? diagnosticos(dynamic response) => (getJsonField(
        response,
        r'''$.diagnostic''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tratamientos(dynamic response) => (getJsonField(
        response,
        r'''$.tratamentios''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? lado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lado''',
      ));
  static List<String>? question(dynamic response) => (getJsonField(
        response,
        r'''$.questionFiles''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? complete(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.completedSurveys[:].fileName''',
      ));
  static List? allFiles(dynamic response) => getJsonField(
        response,
        r'''$.allFiles''',
        true,
      ) as List?;
  static List? completeSurverys(dynamic response) => getJsonField(
        response,
        r'''$.completedSurveys''',
        true,
      ) as List?;
}

class AddPatientsCall {
  static Future<ApiCallResponse> call({
    String? apellido = '',
    String? diagnostics = '',
    String? fecha = '',
    String? historia = '',
    String? hospital = '',
    String? lado = '',
    String? name = '',
    List<String>? questionFilesList,
    String? surgeonId = '',
    String? tratamientos = '',
    String? oldPatientId = '',
  }) async {
    final questionFiles = _serializeList(questionFilesList);

    final ffApiRequestBody = '''
{
  "name": "$name",
  "apellido": "$apellido",
  "historia": "$historia",
  "hospital": "$hospital",
  "diagnostics": "$diagnostics",
  "tratamientos": "$tratamientos",
  "fecha": "$fecha",
  "lado": "$lado",
  "surgeonId": "$surgeonId",
  "questionFiles": $questionFiles,
  "oldPatientId": "$oldPatientId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addPatients',
      apiUrl:
          'http://ec2-34-229-139-205.compute-1.amazonaws.com/api/addPatient',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.patient._id''',
      );
  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.patient.password''',
      );
}

class FinderCall {
  static Future<ApiCallResponse> call({
    String? surgeonId = '',
    String? historia = '',
    String? apellido = '',
    String? tratamentios = '',
    String? diagnostic = '',
    String? hospital = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Finder',
      apiUrl:
          'http://ec2-34-229-139-205.compute-1.amazonaws.com/api/surgeon/searchPatients',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'surgeonId': surgeonId,
        'historia': historia,
        'apellido': apellido,
        'tratamentios': tratamentios,
        'diagnostic': diagnostic,
        'hospital': hospital,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? listado(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class AddResultCall {
  static Future<ApiCallResponse> call({
    String? patientId = '',
    List<String>? selectionsList,
    String? surveryFile = '',
    String? surveryName = '',
  }) async {
    final selections = _serializeList(selectionsList);

    final ffApiRequestBody = '''
{
  "patientId": "$patientId",
  "surveyName": "$surveryName",
  "surveyFile": "$surveryFile",
  "selections": $selections
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddResult',
      apiUrl: 'http://ec2-34-229-139-205.compute-1.amazonaws.com/api/addResult',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic response(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
