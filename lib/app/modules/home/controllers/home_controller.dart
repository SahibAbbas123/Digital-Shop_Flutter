import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  String testText = "This is a test text";
  RxInt counterValue = 0.obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passtextEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /// change the counter value ////
  mInreamentalMethod() {
    counterValue.value++;
    print(counterValue);
  }

  mDecreamentalMethod() {
    counterValue.value--;
    print(counterValue);
  }

  Future<void> mLogin() async {
    try {
      UserCredential response = await _auth.signInWithEmailAndPassword(
        email: "email@gmail.com",
        password: "123456",
      );
      // Logger().i(response.toString());
      print(response);
    } catch (e, stackTrace) {
      Logger().w(stackTrace.toString());
      Get.snackbar("Error", e.toString());
    }
  }

  Future<void> mRegister({required String email,required String pass}) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: pass);

      Get.snackbar("Success", "Account created successfully");
      // Navigate or do other stuff here
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  Future<void> mLogout() async {
    try {
      await _auth.signOut();
      Get.snackbar("Success", "Sign Out successfully");
      // Navigate or do other stuff here
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
