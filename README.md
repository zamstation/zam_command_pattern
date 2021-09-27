# Command Pattern

Provides utilities to implement the command pattern.

## What's inside the package

- [Command](https://pub.dev/documentation/zam_command_pattern/latest/zam_command_pattern/Command-class.html)
- [CommandFactory](https://pub.dev/documentation/zam_command_pattern/latest/zam_command_pattern/CommandFactory-class.html)
- [CommandExecutor](https://pub.dev/documentation/zam_command_pattern/latest/zam_command_pattern/CommandExecutor-class.html)

Check out all the components in detail [here](https://pub.dev/documentation/zam_command_pattern/latest/zam_command_pattern/zam_command_pattern-library.html)

## How to use

```dart
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
  // Executing a command is simple.
  final command = StartEngineCommand();
  command.execute(); // prints 'Engine Started'.

  // For complex systems you can use the executor.
  // Build the command executor.
  // Register StartEngineCommand.
  final executor = CommandExecutor.fromBuilders({
    StartEngineCommand: () => StartEngineCommand(),
  });

  // Registered command runs.
  executor.execute(StartEngineCommand); // prints 'Engine Started'.

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
```

To learn more, move on to the [example section](https://pub.dev/packages/zam_command_pattern/example) or check out these dedicated [examples in github](https://github.com/zamstation/zam_command_pattern/blob/main/example/lib).

## Status
[![Build](https://github.com/zamstation/zam_command_pattern/actions/workflows/build_workflow.yaml/badge.svg)](https://github.com/zamstation/zam_command_pattern/actions/workflows/build_workflow.yaml)

## Contributors
- [Amsakanna](https://github.com/amsakanna)

## License
[BSD 3-Clause License](https://github.com/zamstation/zam_command_pattern/blob/main/LICENSE)
