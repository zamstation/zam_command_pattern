import '../command.dart';

///
/// A command that responds with a future.
///
abstract class AsyncCommand<RESPONSE extends Object?>
    implements Command<Future<RESPONSE>> {}
