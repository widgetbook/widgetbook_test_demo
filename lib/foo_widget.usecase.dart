import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'foo_widget.dart';

@UseCase(name: 'Default', type: FooWidget)
Widget fooUseCase(BuildContext context) {
  return FooWidget(
    title: context.knobs.string(label: 'Title'),
  );
}
