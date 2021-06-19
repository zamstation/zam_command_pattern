import 'package:zam_command_pattern/zam_command_pattern.dart';
import 'package:zam_test/zam_test.dart';

import '_setup.dart';

void main() {
  CommandExecutorTestGroup().execute();
}

class CommandExecutorTestGroup extends TestGroup {
  static late final CommandExecutor executor;

  @override
  final name = 'CommandExecutor';

  @override
  final tests = [
    ExceptionTest(),
    ResponseTest(),
  ];

  CommandExecutorTestGroup() : super.empty();

  @override
  initialize() {
    executor = CommandExecutor.fromBuilders({
      StartEngineCommand: () => StartEngineCommand(),
    });
  }
}

class ExceptionTest extends Test<Type, void> {
  @override
  run(input) {
    CommandExecutorTestGroup.executor.execute(input);
  }

  @override
  final cases = [
    NegativeTestCase(
      when: 'When an unregistered command is executed.',
      input: ApplyBrakeCommand,
      exception: CommandNotDefinedException,
    ),
  ];
}

class ResponseTest extends Test<Type, void> {
  @override
  run(input) {
    CommandExecutorTestGroup.executor.execute(input);
  }

  @override
  final cases = [
    ValueTestCase(
      when: 'When a registered command is executed.',
      then: 'it executes successfully.',
      input: StartEngineCommand,
      output: null,
    ),
  ];
}
