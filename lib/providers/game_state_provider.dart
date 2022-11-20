import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lava_flutter/data/word_repo.dart';
import 'package:lava_flutter/providers/game_settings_provider.dart';

class GameState {
  final GameSettings settings;
  final List<String> validWords;
  final String correctWord;

  GameState(
      {required this.validWords,
      required this.correctWord,
      required this.settings});

  GameState clone({List<String>? validWords, String? correctWord}) {
    return GameState(
        validWords: validWords ?? this.validWords,
        correctWord: this.correctWord,
        settings: this.settings);
  }
}

class GameStateNotifier extends StateNotifier<GameState> {
  final Random rng = Random();
  GameStateNotifier(GameSettings settings)
      : super(GameState(
            validWords: [], correctWord: "begin", settings: settings));

  Future<void> updateWords() async {
    final words = await loadWords(state.settings.wordsize);
    state = state.clone(
        validWords: words, correctWord: words[rng.nextInt(words.length - 1)]);
  }

  void newCorrectWord() {
    state = state.clone(
        correctWord:
            state.validWords[rng.nextInt(state.validWords.length - 1)]);
  }
}

final gameStateProvider = StateNotifierProvider((ref) {
  final settings = ref.watch(gameSettingsProvider);
  final gameStateNotifier = GameStateNotifier(settings);
  gameStateNotifier.updateWords();
  return gameStateNotifier;
});
