import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

dynamic covertListToString(dynamic listados) {
  // retornar item de jeson en string separados por coma
  String result = '';
  int itemsitos = 0;
  for (var item in listados) {
    result += jsonEncode(item) + ',';
    itemsitos++;
  }

  if (itemsitos > 0) {
    String process =
        result.isNotEmpty ? result.substring(0, result.length - 1) : '';

    return (process.replaceAll('"', "")).substring(1);
  } else {
    return result;
  }
}

int isActive(
  List<String> listDefault,
  String validar,
) {
  int retorno = 0;

  void printEvenOdd(String item) {
    if (item == validar) {
      retorno = 1;
    }
  }

  listDefault.forEach((item) => printEvenOdd(item));

  return retorno;
}

String extracTextFiles(
  List<String> testList,
  List<String> testCompleted,
) {
  String response = '';

  testList.forEach((item) {
    response = item;

    ///FOR EACH TEST COMPLETE
    testCompleted.forEach((testOk) {
      response = testOk;
    });
  });
  return response;
}

dynamic idFilesApi(
  List<dynamic> allFile,
  String testActive,
) {
  for (var element in allFile) {
    if (element["title"].toString().toUpperCase() == testActive.toUpperCase()) {
      return element["file"];
    }
  }
  return 0;
}

List<dynamic> listResultTestPatienst(dynamic data) {
  List response = [];
  for (var element in data) {
    response.add([element]);
  }

  return response;
}

String nextTest(
  dynamic questionFiles,
  dynamic questionCompleted,
) {
  String firstTest = "";
  String itemProcces = "";
  int cant = 0;
  List response = [];
  for (var item in questionFiles) {
    if (firstTest == "") {
      firstTest = item;
    }
    cant = 0;
    for (var element in questionCompleted) {
      if (element["fileName"].toString().toUpperCase() == "ACL") {
        itemProcces = "ACL RSI";
      } else if (element["fileName"].toString().toUpperCase() == "PSI") {
        itemProcces = "HAD";
      } else if (element["fileName"].toString().toUpperCase() == "SAT") {
        itemProcces = "SATISFACCIÓN";
      } else {
        itemProcces = element["fileName"].toString().toUpperCase();
      }
      if (itemProcces == item.toUpperCase()) {
        cant++;
      }
    }
    if (cant == 0) {
      return item;
    }
  }

  return firstTest;
}

dynamic idFiles(
  List<dynamic> allFile,
  String testActive,
) {
  for (var element in allFile) {
    if (element["title"].toString().toUpperCase() == testActive.toUpperCase()) {
      if (element["title"].toString().toUpperCase() == "KUJALA") {
        return "KUJALA";
      }
      return element["title"];
    }
    if (testActive == "ESCALA TEGNER DE ACTIVIDAD") {
      return "Tegner";
    }
    if (testActive == "Test HAD") {
      return "HAD";
    }
  }
  return 0;
}

int itemsCount(dynamic data) {
  int cant = 0;
  for (var element in data) {
    cant++;
  }
  return cant;
}

dynamic proceesListToSendApi(List<String> list) {
  int i = 0;
  String responses = '';
  for (String item in list) {
    if (i > 0) {
      responses += ',';
    }
    responses += "'" + item + "'";
    i++;
  }

  return responses;
}

List<String> explode(String texto) {
  String proccess = texto.replaceAll("[", "");
  proccess = proccess.replaceAll("]", "");

  return proccess.split(',');
}

String dateFormat(String newDate) {
  return newDate.substring(0, 10); // you can set your formet
}

String? newDeleteKEy(String text) {
  for (var i = 0; i < 100; i++) {
    text = text.replaceAll("(" + i.toString() + ")", " ");
    text = text.replaceAll("(-" + i.toString() + ")", " ");
  }
  return text;
}

String changeKeyHad(String text) {
  text = text.replaceAll("(A)", " ");
  text = text.replaceAll("(D)", " ");
  text = text.replaceAll("1(D)", " ");
  text = text.replaceAll("2 (D)", " ");
  text = text.replaceAll("1(A)", " ");

  return text;
}

String diagnosticTratamentProcced(List<String> texto) {
  String response = "";
  int contador = 0;

  for (var item in texto) {
    if (contador > 0) {
      response = response + ",";
    }

    response = response + item;
    contador++;
  }
  return response;
}

String deleteKeysFormat(String texto) {
  String procesado;

  procesado = texto.replaceAll("[", " ");
  procesado = procesado.replaceAll("]", " ");

  return procesado;
}
