import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kozhi_admin/util/value_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 350,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Theme.of(context).colorScheme.outline),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Login',
                      style: GoogleFonts.righteous(
                        textStyle: Theme.of(
                          context,
                        ).textTheme.displaySmall!.copyWith(color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    SizedBox(height: 24),
                    Text("Email", style: Theme.of(context).textTheme.bodyMedium),
                    SizedBox(height: 5),
                    CustomTextFormField(
                      hintText: 'Email',
                      controller: TextEditingController(),
                      validator: emailValidator,
                    ),
                    SizedBox(height: 15),
                    Text("Password", style: Theme.of(context).textTheme.bodyMedium),
                    SizedBox(height: 5),
                    CustomTextFormField(
                      hintText: 'Password',
                      isObscure: _obscurePassword,
                      controller: TextEditingController(),
                      validator: passwordValidator,
                      suffixIcon: IconButton(
                        icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Forgot password?', style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.w600,
                          ),
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
  }
}

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? title;
  final double width;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon, suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onChanged;
  final bool isObscure;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.width = 400,
    this.title,
    required this.controller,
    required this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding,
    this.onChanged,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) Text(title!, style: Theme.of(context).textTheme.bodyMedium),
          if (title != null) const SizedBox(height: 5),
          TextFormField(
            obscureText: isObscure,
            controller: controller,
            validator: validator,
            textInputAction: TextInputAction.next,
            onChanged: onChanged,
            decoration: InputDecoration(
              contentPadding: contentPadding,
              hintText: hintText,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
