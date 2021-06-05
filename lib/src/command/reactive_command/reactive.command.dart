import '../command.dart';

///
/// A command that responds with a stream.
///
abstract class ReactiveCommand<RESPONSE extends Object?>
    implements Command<Stream<RESPONSE>> {}
