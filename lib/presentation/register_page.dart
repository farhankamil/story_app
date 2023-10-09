import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/bloc/register/register_bloc.dart';
import 'package:storyapp_intermediate/data/models/request/request_register_model.dart';
import 'package:storyapp_intermediate/presentation/home_page.dart';
import 'package:storyapp_intermediate/presentation/login_page.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nameController!.dispose();
    emailController!.dispose();
    passwordController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Name'),
              controller: nameController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Email'),
              controller: emailController,
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
              controller: passwordController,
            ),
            const SizedBox(
              height: 16,
            ),
            BlocConsumer<RegisterBloc, RegisterState>(
              listener: (context, state) {
                // if (state is RegisterLoaded) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text(
                //         "Success register with email: ${state.model.message}",
                //       ),
                //     ),
                //   );
                //   nameController!.clear();
                //   emailController!.clear();
                //   passwordController!.clear();
                // }

                state.maybeWhen(
                  orElse: () {},
                  error: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Error Register ",
                        ),
                      ),
                    );
                  },
                  loaded: (model) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "berhasil Register ",
                        ),
                      ),
                    );
                    context.go(HomePage.routeName);
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return ElevatedButton(
                      onPressed: () {
                        final requestModel = RequestRegisterModel(
                          name: nameController!.text,
                          email: emailController!.text,
                          password: passwordController!.text,
                        );

                        context
                            .read<RegisterBloc>()
                            .add(RegisterEvent.add(requestModel));
                      },
                      child: const Text('Register'),
                    );
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),

            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text('Register'),
            // ),

            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              child: const Text(
                'Belum Punya Akun? Register',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
