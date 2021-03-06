import 'package:args/command_runner.dart';

import 'package:vscout/src/views/cli/view.dart';

class ExitCommand extends Command {
  @override
  String get name => 'exit';
  CliView cliView;
  @override
  String get description => 'Exit Vscout CLI';

  ExitCommand() {
    this.cliView = CliView();
  }
  @override
  run() async {
    ///TODO: Put this in VM not V
    // exit(200);
    await this.cliView.close(0);
  }
}
