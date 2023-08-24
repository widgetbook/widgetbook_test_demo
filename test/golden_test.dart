import 'package:alchemist/alchemist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_test_demo/foo_widget.dart';

import 'widgetbook.scenarios.g.dart';
import 'widgetbook_test_scenario.dart';

void main() {
  group(
    '$FooWidget Golden Tests',
    () {
      goldenTest(
        'renders correctly',
        fileName: '$FooWidget',
        builder: () => GoldenTestGroup(
          children: [
            // The [FooScenario] is used with different combination of addons
            // and knobs to generate different scenarios.
            FooScenario(
              knobs: {'Title': 'Hello'},
              addons: [],
            ).scenario,
            FooScenario(
              knobs: {'Title': 'Very LongLongLongLong Title'},
              addons: [
                TextScaleAddon(scales: [3]),
              ],
            ).scenario,
          ],
        ),
      );
    },
  );
}

/// An extension that converts [WidgetbookTestScenario] to [GoldenTestScenario].
/// Will be replaced by more scalable solution in the future.
extension AlchemistConverter on WidgetbookTestScenario {
  GoldenTestScenario get scenario => GoldenTestScenario.builder(
        name: name,
        builder: build,
      );
}
