abstract class FormStatus {
  const FormStatus();
}

class InitialFormStatus extends FormStatus {
  const InitialFormStatus();
}

class FormSubmitting extends FormStatus {
  const FormSubmitting();
}

class SubmissionSuccess extends FormStatus {
  const SubmissionSuccess();
}

class SubmissionFailure extends FormStatus {
  const SubmissionFailure({required this.exception});

  final String exception;
}
