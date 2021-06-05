import '../command/command.dart';

typedef CommandBuilder<COMMAND extends Command> = COMMAND Function();
