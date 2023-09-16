import 'package:app_ims/utils.dart' as app;
import 'package:test/test.dart';

void main() {
  test('calcula o indice de imc', () {
    expect(app.testResultadoImc(95, 1.80), 29.320987654320987);
  });
}
