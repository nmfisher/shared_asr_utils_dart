
@deprecated
class WordTranscription {
  final String word;
  final double start;
  final double? end;

  WordTranscription(this.word, this.start, this.end);
}

class ASRResult {
  final bool isFinal;

  @deprecated
  final List<WordTranscription> words;

  String join({String sep = "#"}) {
    return words.map((w) => w.word).join(sep);
  }

  final String text;

  ASRResult(this.isFinal, this.words, this.text);

  @override
  String toString() {
    return "ASRResult(final=$isFinal,words='${join(sep: '')}')";
  }
}
