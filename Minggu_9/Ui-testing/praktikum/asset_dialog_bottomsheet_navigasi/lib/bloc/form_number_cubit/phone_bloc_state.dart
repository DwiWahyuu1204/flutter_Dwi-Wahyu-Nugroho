part of 'phone_bloc_cubit.dart';

sealed class FormNumberState extends Equatable {
  const FormNumberState();
}

final class FormNumberMessageState extends FormNumberState {
  final String? message;
  final String? numberValue;

  const FormNumberMessageState({
    required this.message,
    required this.numberValue,
  });
  @override
  List<Object> get props => [
        message ?? "",
        numberValue ?? "",
      ];
}
