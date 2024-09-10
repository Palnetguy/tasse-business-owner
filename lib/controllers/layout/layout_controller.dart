import 'package:get/get.dart';

class LayOutController extends GetxController {
  int _openSection = 1;

  get openSection => _openSection;

  updateOpenSection({openIndex}) {
    _openSection = openIndex;
    update();
  }
}
