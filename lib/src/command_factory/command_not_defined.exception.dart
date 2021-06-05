import 'package:zam_factory_pattern/exceptions.dart';

///
/// Exception when command is not found in the factory.
///
class CommandNotDefinedException extends BuilderNotFoundInFactoryException {
  @override
  String get problem => '$builderKey is not registered in the factory.';

  @override
  String get solution => 'Please add $builderKey to the factory.';

  const CommandNotDefinedException(String commandKey) : super(commandKey);
}
