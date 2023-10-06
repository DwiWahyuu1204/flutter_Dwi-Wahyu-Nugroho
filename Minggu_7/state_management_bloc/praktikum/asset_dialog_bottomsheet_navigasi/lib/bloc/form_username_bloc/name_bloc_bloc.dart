import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'name_bloc_event.dart';
part 'name_bloc_state.dart';

class FormUsernameBloc
    extends Bloc<FormUsernameEvent, FormUsernameMessageState> {
  FormUsernameBloc()
      : super(
          const FormUsernameMessageState(
            message: null,
            nameValue: null,
          ),
        ) {
    on<FormInputUsernameEvent>(
      (event, emit) {
        String? message;
        String nameValue = event.value ?? "";
        if (event.value?.isEmpty == true) {
          message = "Name Tidak Boleh Kosong";
        } else if ((event.value?.length ?? 0) <= 2) {
          message = "Name Harus Lebih dari 2 kata";
        } else if (event.value!.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
          message = 'Nama tidak boleh mengandung karakter khusus.';
        } else {
          message = null;
        }

        emit(
          FormUsernameMessageState(message: message, nameValue: nameValue),
        );
      },
    );
  }
}
