import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';
import 'package:test1/features/splash/data/cubits/user_cubit.dart';
import 'package:test1/features/splash/data/cubits/user_state.dart';
import 'package:test1/features/splash/presentation/views/widgets/text_field.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (_) => UserCubit(),
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          if (state is UserLoginSuccess) {
            Navigator.pushNamed(context, AppRoutes.home);
          } else if (state is UserLoginFailed) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
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
                                      'Welcome Back! ',
                                      style: Styles.White20,
                                    ),
                                    const SizedBox(height: 20),

                                    InputField(
                                      controller: cubit.nameController,
                                      hint: 'Enter your name here',
                                      image: 'assets/icons/profile.svg',
                                      inputType: TextInputType.text,
                                    ),

                                    const Spacer(),

                                    DoneBotton(
                                      title: 'Login',
                                      actoin: () {
                                        context.read<UserCubit>().loginUser();
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
