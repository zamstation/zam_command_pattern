import '../parameterized_command/parameterized.command.dart';
import '../reactive_command/reactive.command.dart';

abstract class ParameterizedReactiveCommand<REQUEST extends Object?,
        RESPONSE extends Object?>
    implements
        ParameterizedCommand<REQUEST, Stream<RESPONSE>>,
        ReactiveCommand<RESPONSE> {}
