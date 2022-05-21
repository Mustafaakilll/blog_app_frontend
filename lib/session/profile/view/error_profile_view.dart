part of 'profile_view.dart';

class _FailureBody extends StatelessWidget {
  const _FailureBody({Key? key, required this.exception}) : super(key: key);

  final String exception;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(exception),
    );
  }
}
