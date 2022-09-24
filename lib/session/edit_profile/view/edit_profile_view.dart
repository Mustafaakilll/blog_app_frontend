import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di.dart';
import '../../../utils/utils.dart';
import '../../profile/model/user_model.dart';
import '../bloc/edit_profile_bloc.dart';
import '../model/edit_profile_model.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key, required this.user}) : super(key: key);

  final UserModel user;

  static Route route(UserModel user) {
    return MaterialPageRoute(builder: (_) => EditProfileView(user: user));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) => locator<EditProfileBloc>(),
      child: BlocConsumer<EditProfileBloc, EditProfileState>(
        listener: (BuildContext context, Object? state) {
          if (state is SubmissionSuccess) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(backgroundColor: Colors.transparent),
            body: Padding(
              padding: EdgeInsets.all(context.dynamicWidth(0.2)),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: GestureDetector(
                        child: state.imagePath == null ? _networkImage(user.image) : _fileImage(state.imagePath!),
                        onTap: () => context.read<EditProfileBloc>().add(const EditProfileEvent.openImagePicker()),
                      ),
                    ),
                    context.emptySizedHeightBoxLow3x,
                    TextFormField(
                      initialValue: user.username,
                      onChanged: (username) {
                        context.read<EditProfileBloc>().add(EditProfileEvent.usernameChanged(username));
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), labelText: 'Username'),
                    ),
                    context.emptySizedHeightBoxLow,
                    TextFormField(
                      initialValue: user.bio,
                      onChanged: (bio) {
                        context.read<EditProfileBloc>().add(EditProfileEvent.bioChanged(bio));
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        labelText: 'Bio',
                      ),
                    ),
                    context.emptySizedHeightBoxLow,
                    TextFormField(
                      initialValue: user.email,
                      onChanged: (email) {
                        context.read<EditProfileBloc>().add(EditProfileEvent.emailChanged(email));
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        labelText: 'Email',
                      ),
                    ),
                    context.emptySizedHeightBoxLow,
                    state.formStatus == const FormSubmitting()
                        ? const CircularProgressIndicator()
                        : TextButton(
                            onPressed: () {
                              final oldUser = EditProfileModel(email: user.email, bio: user.bio, image: user.image);
                              context.read<EditProfileBloc>().add(EditProfileEvent.saveUser(oldUser));
                            },
                            child: const Text('Save'),
                          )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _fileImage(String imagePath) {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
      builder: (context, state) {
        return CircleAvatar(
          radius: 50,
          foregroundImage: FileImage(File(imagePath)),
          // foregroundImage: Image.file(File(imagePath)),
        );
      },
    );
  }

  Widget _networkImage(String image) {
    return Image.network(user.image);
  }
}
