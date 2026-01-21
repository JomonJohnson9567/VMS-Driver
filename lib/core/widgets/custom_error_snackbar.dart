// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/app/bloc/snackbar/snackbar_bloc.dart';
import '../../core/theme/colors/colors.dart';

class CustomErrorSnackBar extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onDismiss;

  const CustomErrorSnackBar({
    super.key,
    required this.title,
    required this.message,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primaryOrange,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 2),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(2),
                child: const Icon(
                  Icons.close,
                  color: AppColors.primaryOrange,
                  size: 16,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      message,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onDismiss,
                child: const Icon(
                  Icons.close,
                  color: AppColors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Animated wrapper for the snackbar that handles slide animations
class AnimatedSnackbar extends StatefulWidget {
  final Widget child;
  final SnackbarStatus status;
  final VoidCallback onAnimationComplete;

  const AnimatedSnackbar({
    super.key,
    required this.child,
    required this.status,
    required this.onAnimationComplete,
  });

  @override
  State<AnimatedSnackbar> createState() => _AnimatedSnackbarState();
}

class _AnimatedSnackbarState extends State<AnimatedSnackbar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    if (widget.status == SnackbarStatus.showing) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(AnimatedSnackbar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.status != oldWidget.status) {
      if (widget.status == SnackbarStatus.showing) {
        _controller.forward();
      } else if (widget.status == SnackbarStatus.hiding) {
        _controller.reverse().then((_) => widget.onAnimationComplete());
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _offsetAnimation, child: widget.child);
  }
}

/// Global snackbar overlay widget that listens to SnackbarBloc
class SnackbarOverlay extends StatelessWidget {
  const SnackbarOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SnackbarBloc, SnackbarState>(
      builder: (context, state) {
        if (state.status == SnackbarStatus.hidden) {
          return const SizedBox.shrink();
        }

        return Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AnimatedSnackbar(
            status: state.status,
            onAnimationComplete: () {
              context.read<SnackbarBloc>().add(AnimationCompleted());
            },
            child: CustomErrorSnackBar(
              title: state.title,
              message: state.message,
              onDismiss: () {
                context.read<SnackbarBloc>().add(HideSnackbar());
              },
            ),
          ),
        );
      },
    );
  }
}

/// Helper function to show error snackbar using BLoC
void showCustomErrorSnackBar(
  BuildContext context, {
  required String title,
  required String message,
}) {
  context.read<SnackbarBloc>().add(
    ShowSnackbar(title: title, message: message),
  );
}
