import 'package:zam_command_pattern/zam_command_pattern.dart';

class Car {
  void startEngine() {
    StartEngineCommand().execute();
  }
}

abstract class CarCommand implements Command<void> {}

class StartEngineCommand implements CarCommand {
  @override
  void execute() {
    // print('Engine Started.');
  }
}

class ApplyBrakeCommand implements CarCommand {
  @override
  void execute() {
    // print('Brake Applied.');
  }
}
