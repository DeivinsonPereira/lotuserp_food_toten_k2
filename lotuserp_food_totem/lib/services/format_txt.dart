// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter/services.dart';

//transforma os textos em minusculo
class LowerCaseTxt extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue txtOld, TextEditingValue txtNew) {
    return txtNew.copyWith(text: txtNew.text.toLowerCase());
  }
}

//transforma os textos em maiusculo
class UpperCaseTxt extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue txtOld, TextEditingValue txtNew) {
    return txtNew.copyWith(text: txtNew.text.toUpperCase());
  }
}

//limita o número de caracteres um texto pode ter
class LimitTxt {
  String limitarTexto(String txt, int maxLength) {
    String txtFormatted =
        txt.length <= maxLength ? txt : '${txt.substring(0, maxLength)}...';
    return txtFormatted;
  }
}
