part of 'name_bloc_bloc.dart';

sealed class FormUsernameState extends Equatable {
  const FormUsernameState();
}

class FormUsernameMessageState extends FormUsernameState {
  final String? message;
  final String? nameValue;

  const FormUsernameMessageState({
    required this.message,
    required this.nameValue,
  });

  @override
  List<Object?> get props => [message, nameValue];
}
