import 'package:zam_core/zam_core.dart';

///
/// An object used to encapsulate all information
/// needed to perform an action or trigger an event
/// at a later time.
///
abstract class Command<RESPONSE extends Object?>
    implements Executable<RESPONSE> {}
