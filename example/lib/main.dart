import 'package:zam_command_pattern/zam_command_pattern.dart';

// Create the base command.
abstract class CarCommand implements Command<void> {}

// Create child command StartEngineCommand.
class StartEngineCommand implements CarCommand {
  @override
  void execute() {
    print('Engine Started.');
  }
}

// Create child command ApplyBrakeCommand.
class ApplyBrakeCommand implements CarCommand {
  @override
  void execute() {
    print('Brake Applied.');
  }
}

// Now let's see the library in action.
void main() {
  // Build the command executor.
  // Register StartEngineCommand.
  final executor = CommandExecutor.fromBuilders({
    StartEngineCommand: () => StartEngineCommand(),
  });

  // Registered command runs.
  executor.execute(StartEngineCommand); // Engine Started.

  // Unregistered command throws error.
  try {
    executor.execute(ApplyBrakeCommand); // throws CommandNotDefinedException.
  } catch (e) {
    // CommandNotDefinedException has occured.
    // > Problem: ApplyBrakeCommand is not registered in the factory.
    // > Solution: Please add ApplyBrakeCommand to the factory.
    print(e);
  }
}

// Usage
class Car {
  void startEngine() {
    StartEngineCommand().execute();
  }
}
