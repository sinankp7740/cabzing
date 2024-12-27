import 'package:flutter/material.dart';

class LoginTextfields extends StatelessWidget {
  LoginTextfields({super.key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ValueNotifier<bool> _isPasswordVisible = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.blue, width: 0.5)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Username Field
          TextField(
            controller: _usernameController,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.person, color: Colors.blue),
            ),
          ),
          // const SizedBox(height: 20),
          const Divider(color: Colors.blue, thickness: 0.5),
          // Password Field
          ValueListenableBuilder(
              valueListenable: _isPasswordVisible,
              builder: (context, val, _) {
                return TextField(
                  controller: _passwordController,
                  obscureText: !val,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.vpn_key, color: Colors.blue),
                    suffixIcon: IconButton(
                      icon: Icon(
                        val ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        _isPasswordVisible.value = !_isPasswordVisible.value;
                      },
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                );
              }),
        ],
      ),
    );
  }
}
