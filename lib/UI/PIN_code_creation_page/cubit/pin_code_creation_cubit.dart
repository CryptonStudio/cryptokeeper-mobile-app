import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pin_code_creation_state.dart';

class PinCodeCreationCubit extends Cubit<PinCodeCreationState> {
  PinCodeCreationCubit() : super(PinCodeCreationState());
}
