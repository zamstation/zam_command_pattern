import '../async_command/async.command.dart';
import '../parameterized_command/parameterized.command.dart';

abstract class ParameterizedAsyncCommand<REQUEST extends Object?,
        RESPONSE extends Object?>
    implements
        ParameterizedCommand<REQUEST, Future<RESPONSE>>,
        AsyncCommand<RESPONSE> {}
