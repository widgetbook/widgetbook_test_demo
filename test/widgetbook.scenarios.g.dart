import 'package:widgetbook_test_demo/foo_widget.usecase.dart';

import 'widgetbook_test_scenario.dart';

/// A Generated class for each function annotated with [UseCase].
/// Extends [WidgetbookTestScenario] for that specific use_case
class FooScenario extends WidgetbookTestScenario {
  FooScenario({
    required super.knobs,
    required super.addons,
  }) : super(
          name: 'Default',
          builder: fooUseCase,
        );
}
