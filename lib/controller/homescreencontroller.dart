import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  int numb = 0;

  RxInt myNumber = 0.obs;

  incrementnumb() {
    numb++;
    update();
  }

  decrementnumb() {
    numb--;
    update();
  }

  incrementMyNumber() {
    numb = myNumber.value;
    myNumber.value++;
    print(myNumber.value);
  }

  decrementMyNumber() {
    numb = myNumber.value;
    myNumber.value--;
    print(myNumber.value);
  }
}
