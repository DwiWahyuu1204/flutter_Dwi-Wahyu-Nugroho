class Choice {
  String text;
  int index;
  dynamic logprobs;
  String finisReason;

  Choice({
    required this.text,
    required this.index,
    required this.logprobs,
    required this.finisReason,
  });

  factory Choice.fromJson(Map<String, dynamic> json) {
    return Choice(
        text: json['text'],
        index: json['index'],
        logprobs: json['logprobs'],
        finisReason: json['finish_reason']);
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'index': index,
      'logprobs': logprobs,
      'finish_reason': finisReason
    };
  }
}
