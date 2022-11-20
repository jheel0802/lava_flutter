import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lava_flutter/providers/game_settings_provider.dart';

class LavaTitleBar extends StatelessWidget {
  const LavaTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(238, 209, 172, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "LAVA",
            style: TextStyle(fontSize: 48),
          ),
          WordSizeToggle()
        ],
      ),
    );
  }
}

class WordSizeToggle extends ConsumerWidget {
  const WordSizeToggle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final gameSettingsNotifier = ref.read(gameSettingsProvider.notifier);

    void _updateWordSize() {
      var newWordSize = 5;
      if (gameSettings.wordsize == 4) newWordSize = 5;
      if (gameSettings.wordsize == 5) newWordSize = 6;
      if (gameSettings.wordsize == 6) newWordSize = 4;
      gameSettingsNotifier.updateWordsize(newWordSize);
    }

    return Container(
      child: OutlinedButton(
        child: Text(gameSettings.wordsize.toString()),
        onPressed: _updateWordSize,
      ),
      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
    );
  }
}
