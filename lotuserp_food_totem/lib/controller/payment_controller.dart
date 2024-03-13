import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/collections/pagamento_forma.dart';
import 'package:lotus_food_totem/shared/isar_local_db/isar_service.dart';

class PaymentController extends GetxController {
  IsarService service = IsarService();

  var paymentForm = [].obs;

  var paymentForms = [].obs;

  @override
  void onInit() async {
    super.onInit();
    await setPaymentForm(Get.context!);
  }

  // Adiciona forma de pagamento à variável paymentForm
  Future<void> setPaymentForm(BuildContext context) async {
    List<pagamento_forma> form = await service.getPaymentForm(context);
    if (form.isNotEmpty) {
      if (paymentForms.isEmpty) {
        if (form[0].id_tprecebe_dinheiro > 0) {
          paymentForms
              .add({'id': form[0].id_tprecebe_dinheiro, 'forma': 'Dinheiro'});
        }
        if (form[0].id_tprecebe_tef_credito > 0) {
          paymentForms
              .add({'id': form[0].id_tprecebe_tef_credito, 'forma': 'Crédito'});
        }
        if (form[0].id_tprecebe_tef_debito > 0) {
          paymentForms
              .add({'id': form[0].id_tprecebe_tef_debito, 'forma': 'Débito'});
        }
        if (form[0].id_tprecebe_tef_pix > 0) {
          paymentForms.add({'id': form[0].id_tprecebe_tef_pix, 'forma': 'PIX'});
        }
        if (form[0].id_tprecebe_tef_voucher > 0) {
          paymentForms
              .add({'id': form[0].id_tprecebe_tef_voucher, 'forma': 'Voucher'});
        }
      }
    }
  }

  /*// Adiciona forma de pagamento à variável paymentForms
  void setListPaymentForms(pagamento_forma pagamento) async {
    if (paymentForm.isNotEmpty) {
      if (pagamento.id_tprecebe_dinheiro > 0) {
        paymentForms.add(pagamento.id_tprecebe_dinheiro);
      }
      if (pagamento.id_tprecebe_tef_credito > 0) {
        paymentForms.add(pagamento.id_tprecebe_tef_credito);
      }
      if (pagamento.id_tprecebe_tef_debito > 0) {
        paymentForms.add(pagamento.id_tprecebe_tef_debito);
      }
      if (pagamento.id_tprecebe_tef_pix > 0) {
        paymentForms.add(pagamento.id_tprecebe_tef_pix);
      }
      if (pagamento.id_tprecebe_tef_voucher > 0) {
        paymentForms.add(pagamento.id_tprecebe_tef_voucher);
      }
    }
  }*/
}
