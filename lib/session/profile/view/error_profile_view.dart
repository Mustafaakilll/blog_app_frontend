part of 'profile_view.dart';

class _FailureBody extends StatelessWidget {
  const _FailureBody({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}
