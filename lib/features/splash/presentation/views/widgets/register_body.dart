import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';
import 'package:test1/features/splash/data/cubits/user_state.dart';
import 'package:test1/features/splash/presentation/views/verfication_view.dart';
import 'package:test1/features/splash/presentation/views/widgets/image_picker.dart';
import 'package:test1/features/splash/presentation/views/widgets/text_field.dart';
import 'package:test1/features/splash/data/cubits/user_cubit.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (_) => UserCubit(),
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          if (state is UserDataValidated && state.isValid) {
            final cubit = context.read<UserCubit>();

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VerificationView(
                  phoneNumber: cubit.phoneController.text.trim(),
                ),
              ),
            );
          } else if (state is UserDataValidated && !state.isValid) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Please fill all fields")),
            );
          }
        },
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            final cubit = context.read<UserCubit>();

            return ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withAlpha(200),
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: screenHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.35,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'FAY',
                                      style: Styles.White20.copyWith(
                                        fontSize: 40,
                                      ),
                                    ),
                                    Text(
                                      'ez',
                                      style: Styles.gray16.copyWith(
                                        fontSize: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Create new account ',
                                      style: Styles.White20,
                                    ),
                                    const SizedBox(height: 40),

                                    Align(
                                      alignment: Alignment.center,
                                      child: ImagePickerWidget(
                                        imageFile: cubit.pickedImage,
                                        onPick: () async {
                                          await cubit.pickImage();
                                        },
                                      ),
                                    ),

                                    const SizedBox(height: 40),

                                    InputField(
                                      controller: cubit.phoneController,
                                      hint: 'Enter your phone number',
                                      image: 'assets/icons/phone.svg',
                                      inputType: TextInputType.phone,
                                    ),
                                    const SizedBox(height: 15),

                                    InputField(
                                      controller: cubit.nameController,
                                      hint: 'Enter your name here',
                                      image: 'assets/icons/profile.svg',
                                      inputType: TextInputType.text,
                                    ),

                                    const Spacer(),

                                    DoneBotton(
                                      title: 'Create new account',
                                      actoin: () {
                                        /// هنا بس بنادي الفاليديشن
                                        context
                                            .read<UserCubit>()
                                            .validateUser();
                                      },
                                      isActive: true,
                                    ),
                                    const SizedBox(height: 50),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
