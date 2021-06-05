import '../command/command.dart';
import '../command_builder/command.builder.dart';
import '../command_factory/command.factory.dart';

///
/// Contains a list of commands in a factory and
/// executes them on demand.
///
class CommandExecutor<COMMAND extends Command<RESPONSE>,
    RESPONSE extends Object?> {
  final CommandFactory<COMMAND, RESPONSE> factory;

  const CommandExecutor(this.factory);

  CommandExecutor.fromBuilders(Map<Type, CommandBuilder<COMMAND>> builders)
      : this(CommandFactory(builders));

  RESPONSE execute(Type key) {
    final command = factory.createInstance(key);
    final response = command.execute();
    return response;
  }
}
