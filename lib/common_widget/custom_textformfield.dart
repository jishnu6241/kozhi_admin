import 'package:flutter/material.dart';

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
          if (title != null)
            Text(title!, style: Theme.of(context).textTheme.bodyMedium),
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
