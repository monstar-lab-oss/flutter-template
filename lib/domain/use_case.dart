/// An UseCase orchestrates entities to fulfill a business rule.
///
/// Example:
/// ```
/// class GetUserGreetingsUseCase extends InputUseCase<User, String> {
///   @override
///   String execute(User user) {
///     return 'Hello ${user.name}!';
///   }
/// }
/// ```
abstract class InputUseCase<Input, Output> {
  Output execute(Input input);
}

/// Similar to [UseCase] but without input.
///
/// Example:
/// ```
/// class GetCurrentUserTypeUseCase extends UseCase<Future<UserType>> {
///   GetCurrentUserTypeUseCase(this.userRepository);
///
///   final UserRepository userRepository;
///
///   @override
///   Future<UserType> execute() async {
///     final user = await userRepository.getUser();
///     return UserType.of(user);
///   }
/// }
/// ```
abstract class UseCase<Output> {
  Output execute();
}
