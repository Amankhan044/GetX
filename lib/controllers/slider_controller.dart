import 'package:get/get.dart';

class SliderController extends GetxController{

RxDouble opacity= .4.obs;

void setOpacity(double value){
    opacity.value=value;
}

}