import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'phone_bloc_state.dart';

class FormNumberCubit extends Cubit<FormNumberState> {
  FormNumberCubit()
      : super(
          const FormNumberMessageState(
            message: null,
            numberValue: null,
          ),
        );

  String? phoneValue;
  String? messageErrorPhone;

  void validationPhone(String value) {
    phoneValue = value;
    if (phoneValue?.isEmpty == true) {
      messageErrorPhone = "Nomor Telepon Tidak Boleh Kosng!";
    } else if (!phoneValue!.startsWith('0')) {
      messageErrorPhone = 'nomor telepon harus dimulai dengan angka 0';
    } else if (phoneValue!.length < 8 || phoneValue!.length > 15) {
      messageErrorPhone = 'Panjang nomor telepon harus antara 8 dan 15 digit';
    } else {
      messageErrorPhone = null;
    }

    emit(
      FormNumberMessageState(
        message: messageErrorPhone,
        numberValue: phoneValue,
      ),
    );
  }
}
