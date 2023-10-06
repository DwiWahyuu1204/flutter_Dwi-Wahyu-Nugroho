part of 'name_bloc_bloc.dart';

sealed class FormUsernameEvent extends Equatable {
  const FormUsernameEvent();
}

class FormInputUsernameEvent extends FormUsernameEvent {
  final String? value;

  const FormInputUsernameEvent({
    required this.value,
  });

  @override
  List<Object> get props => [value ?? ""];
}
