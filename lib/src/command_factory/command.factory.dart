import 'package:zam_core/meta.dart';
import 'package:zam_factory_pattern/zam_factory_pattern.dart';

import '../command/command.dart';
import 'command_not_defined.exception.dart';

///
/// A factory containing a list of commands
/// saved by types as their keys.
///
class CommandFactory<COMMAND extends Command<RESPONSE>,
    RESPONSE extends Object?> extends TypedFactory<COMMAND> {
  const CommandFactory(Map<Type, Builder<COMMAND>> builders) : super(builders);

  ///
  /// CommandNotDefinedException overrides the
  /// default BuilderNotFoundInFactoryException
  ///
  @override
  @protected
  buildException(Type key) {
    return CommandNotDefinedException(key.toString());
  }
}
