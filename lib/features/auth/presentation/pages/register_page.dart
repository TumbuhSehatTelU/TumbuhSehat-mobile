// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/parent_role.dart';
// import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';
// import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_bloc.dart';
// import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_event.dart';

// class RegisterPage extends StatefulWidget {
//   final String? existingFamilyPhone;

//   const RegisterPage({Key? key, this.existingFamilyPhone}) : super(key: key);

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();
//   ParentRole? _selectedRole;

//   bool get _isJoinFamilyFlow => widget.existingFamilyPhone != null;

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _phoneController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   void _submitRegistration() {
//     if (_formKey.currentState?.validate() ?? false) {
//       final parentData = Parent(
//         id: '', 
//         name: _nameController.text,
//         role: _selectedRole!,
//         dateOfBirth: DateTime.now(),
//       );

//       if (_isJoinFamilyFlow) {
//         context.read<AuthBloc>().add(
//           JoinFamilySubmitted(
//             familyPhone: widget.existingFamilyPhone!,
//             password: _passwordController.text,
//             newParentData: parentData,
//           ),
//         );
//       } else {
//         // Jika ini alur registrasi baru, kirim event NewFamilySubmitted
//         // Di sini kita asumsikan data anak akan diisi di halaman selanjutnya
//         context.read<AuthBloc>().add(
//           NewFamilySubmitted(
//             phone: _phoneController.text,
//             password: _passwordController.text,
//             newParentData: parentData,
//             childrenData: [], // Placeholder
//           ),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
