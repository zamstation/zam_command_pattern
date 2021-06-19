# Command Pattern

Provides utilities to implement the command pattern.  
  
[![Version](https://img.shields.io/pub/v/zam_command_pattern?color=%234287f5)](https://pub.dev/packages/zam_command_pattern)
[![Build](https://github.com/zamstation/zam_command_pattern/actions/workflows/build.yaml/badge.svg)](https://github.com/zamstation/zam_command_pattern/actions/workflows/build.yaml)
[![Stars](https://img.shields.io/github/stars/zamstation/zam_command_pattern.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/zamstation/zam_command_pattern/stargazers)
[![License](https://img.shields.io/github/license/zamstation/zam_command_pattern)](https://pub.dev/packages/zam_command_pattern/license)

## What's inside the package

  * [Command](https://pub.dev/documentation/zam_command_pattern/latest/zam_command_pattern/Command-class.html)
  * [CommandFactory](https://pub.dev/documentation/zam_command_pattern/latest/zam_command_pattern/CommandFactory-class.html)
  * [CommandExecutor](https://pub.dev/documentation/zam_command_pattern/latest/zam_command_pattern/CommandExecutor-class.html)

Check out all the components in detail [here](https://pub.dev/documentation/zam_command_pattern/latest/zam_command_pattern/zam_command_pattern-library.html)

## How to use

```dart
class StartEngineCommand implements CarCommand {
  @override
  Object execute() {
    print('Engine Started.');
    return true;
  }
}

void main() {
  final command = StartEngineCommand();
  command.execute(); // Prints 'Engine Started.'
}
```

To learn more, move on to the [example section](https://pub.dev/packages/zam_command_pattern/example) or check out this dedicated [example in github](https://github.com/zamstation/zam_command_pattern/blob/main/example/lib/main.dart).

## Contributors
  * [Amsakanna](https://github.com/amsakanna)
