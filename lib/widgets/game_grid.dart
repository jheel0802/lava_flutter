import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lava_flutter/providers/game_settings_provider.dart';
import 'package:lava_flutter/providers/game_state_provider.dart';
import 'package:lava_flutter/widgets/game_row.dart';

class GameGrid extends ConsumerWidget {
  const GameGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final gameState = ref.watch(gameStateProvider);
    final wordSize = gameSettings.wordsize;
    final List<GameRow> rows = List.empty(growable: true);
    for (int i = 0; i < gameSettings.attempts; i++) {
      rows.add(GameRow(wordsize: wordSize));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: rows,
    );
  }
}
