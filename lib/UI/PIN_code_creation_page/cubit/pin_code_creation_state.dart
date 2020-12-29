part of 'pin_code_creation_cubit.dart';

enum PinCodeCreationStep { first, second }

@immutable
class PinCodeCreationState {
  final List<String> pinCode;
  final List<String> confirmedPinCode;
  final PinCodeCreationStep pinCodeStep;
  final bool isSuccess;
  final String errorMessage;

  PinCodeCreationState({
    @required this.pinCode,
    @required this.confirmedPinCode,
    this.pinCodeStep,
    this.isSuccess: false,
    this.errorMessage,
  });

  PinCodeCreationState copyWith({
    bool isSuccess = false,
    List<String> pinCode,
    List<String> confirmedPinCode,
    PinCodeCreationStep pinCodeStep,
    String errorMessage,
  }) {
    return PinCodeCreationState(
      pinCode: pinCode ?? this.pinCode,
      confirmedPinCode: confirmedPinCode ?? this.confirmedPinCode,
      isSuccess: isSuccess,
      pinCodeStep: pinCodeStep,
      errorMessage: errorMessage,
    );
  }
}
