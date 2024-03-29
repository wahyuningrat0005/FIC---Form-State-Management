import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_rotate_animation_view.dart';

class LtsmRotateAnimationController extends State<LtsmRotateAnimationView>
    implements MvcController {
  static late LtsmRotateAnimationController instance;
  late LtsmRotateAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  bool rotate = false;
}
