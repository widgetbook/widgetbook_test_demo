import 'package:flutter/widgets.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook/src/state/widgetbook_scope.dart';
import 'package:widgetbook/src/workbench/workbench.dart';

/// This is a utility class that will be provided by the new `widgetbook_test`
/// package. It's an abstract representation for test scenarios.
class WidgetbookTestScenario {
  WidgetbookTestScenario({
    required this.name,
    required this.builder,
    required this.knobs,
    required this.addons,
  });

  final String name;
  final WidgetBuilder builder;
  final Map<String, String> knobs;
  final List<WidgetbookAddon> addons;

  Widget build(BuildContext context) {
    return WidgetbookScope(
      state: WidgetbookState(
        path: name,
        appBuilder: materialAppBuilder,
        addons: addons,
        queryParams: {
          if (knobs.isNotEmpty) 'knobs': FieldCodec.encodeQueryGroup(knobs),
        },
        root: WidgetbookRoot(
          children: [
            WidgetbookUseCase(
              name: name,
              builder: builder,
            ),
          ],
        ),
      ),
      child: const Workbench(),
    );
  }
}
