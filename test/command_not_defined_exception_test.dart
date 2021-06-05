import 'package:zam_core/zam_core.dart';
import 'package:zam_command_pattern/exceptions.dart';
import 'package:zam_test/zam_test.dart';

void main() {
  TestGroup('CommandNotDefinedException', [
    ProblemTest(),
    SolutionTest(),
    SeverityTest(),
  ]).execute();
}

class ProblemTest extends Test<String, String> {
  @override
  String get name => runtimeType.toString();

  @override
  run(input) {
    return CommandNotDefinedException(input).problem;
  }

  @override
  get cases => [
        ValueTestCase(
          when: 'When the exception is constructed',
          then: 'problem statement should be as specified',
          input: 'StartEngineCommand',
          output: 'StartEngineCommand is not registered in the factory.',
        ),
      ];
}

class SolutionTest extends Test<String, String> {
  @override
  String get name => runtimeType.toString();

  @override
  run(input) {
    return CommandNotDefinedException(input).solution;
  }

  @override
  get cases => [
        ValueTestCase(
          when: 'When the exception is constructed',
          then: 'solution statement should be as specified',
          input: 'StartEngineCommand',
          output: 'Please add StartEngineCommand to the factory.',
        ),
      ];
}

class SeverityTest extends Test<String, ExceptionSeverity> {
  @override
  String get name => runtimeType.toString();

  @override
  run(input) {
    return CommandNotDefinedException(input).severity;
  }

  @override
  get cases => [
        ValueTestCase(
          when: 'When the exception is constructed',
          then: 'severity should be critical.',
          input: 'StopEngineCommand',
          output: ExceptionSeverity.critical,
        ),
      ];
}
