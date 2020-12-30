import 'package:bloc/bloc.dart';
import 'package:ck_login/constants.dart';
import 'package:ck_login/services/secure_storage_service/i_secure_storage_service.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'pin_code_creation_state.dart';

class PinCodeCreationCubit extends Cubit<PinCodeCreationState> {
  final ISecureStorageService _iSecureStorageService;

  PinCodeCreationCubit(this._iSecureStorageService)
      : super(PinCodeCreationState(
          pinCode: [],
          confirmedPinCode: [],
        ));

  void enterCode(String code) {
    if (state.pinCode.length != PIN_CODE_LENGTH) {
      emit(state.copyWith(pinCode: state.pinCode..add(code)));
      if (state.pinCode.length == PIN_CODE_LENGTH) {
        emit(state.copyWith(pinCodeStep: PinCodeCreationStep.first));
      }
      print(
          "button pressed $code\n ${state.pinCode}\ ${state.confirmedPinCode} ");
      return;
    }

    if (state.confirmedPinCode.length != PIN_CODE_LENGTH) {
      emit(state.copyWith(confirmedPinCode: state.confirmedPinCode..add(code)));
      if (state.confirmedPinCode.length == PIN_CODE_LENGTH) {
        _checkPinCodes();
      }
      print(
          "button pressed $code\n ${state.pinCode}\ ${state.confirmedPinCode} ");
      return;
    }
  }

  void removeCode() {
    if (state.confirmedPinCode.isNotEmpty &&
        state.confirmedPinCode.length != PIN_CODE_LENGTH) {
      emit(
        state.copyWith(confirmedPinCode: state.confirmedPinCode..removeLast()),
      );
      print(
          "remove button pressed \n ${state.pinCode}\ ${state.confirmedPinCode} ");
      return;
    }

    if (state.pinCode.isNotEmpty && state.pinCode.length != PIN_CODE_LENGTH) {
      emit(state.copyWith(pinCode: state.pinCode..removeLast()));
      print(
          "remove button pressed \n ${state.pinCode}\ ${state.confirmedPinCode} ");
      return;
    }
    print("nothing to delete");
  }

  void _checkPinCodes() async {
    if (state.isEquals) {
      print("pin codes are equals");
      String pinCodeAsString = state.pinCode.join();
      await _iSecureStorageService.savePinCode(pinCodeAsString);
      print("pin code saved");
      emit(state.copyWith(isSuccess: true));
    } else {
      print("pin codes aren't equals");
      emit(state.copyWith(
        pinCode: state.pinCode..clear(),
        confirmedPinCode: state.confirmedPinCode..clear(),
        pinCodeStep: PinCodeCreationStep.second,
        errorMessage: LangKeys.pincodes_did_not_match,
      ));
    }
  }
}
