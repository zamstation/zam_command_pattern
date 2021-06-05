import 'package:zam_core/zam_core.dart';

import '../command.dart';

abstract class ParameterizedCommand<REQUEST extends Object?,
        RESPONSE extends Object?>
    with Parameterized<REQUEST>
    implements Command<RESPONSE> {}
