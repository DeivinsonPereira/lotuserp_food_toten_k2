import 'package:flutter/material.dart';

abstract class CustomLogo {
  static Widget logoBranca() {
    return SizedBox(
        child: Image.asset(
      'assets/images/logoVistaBranco.png',
      scale: 2,
    ));
  }

  static Widget logoAzul() {
    return SizedBox(
      child: Image.asset(
        'assets/images/Logo_Nova_Transparente.png',
        scale: 2,
      ),
    );
  }

  static Widget logoBrancaSemEspaco() {
    return SizedBox(
      child: Image.asset(
        'assets/images/Logo Nova Branco Vertical.png',
        scale: 2,
      ),
    );
  }
}
