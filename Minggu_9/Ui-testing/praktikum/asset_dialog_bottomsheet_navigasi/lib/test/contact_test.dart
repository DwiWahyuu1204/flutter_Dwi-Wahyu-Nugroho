import 'package:asset_dialog_bottomsheet_navigasi/provider/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('UI Test for PageProvider', (WidgetTester tester) async {
    // Bangun widget halaman
    await tester.pumpWidget(const MaterialApp(home: PageProvider()));
    expect(find.text('Provider'), findsOneWidget);
    // Pengecekan apakah widget nama dan nomor ada
    expect(find.byKey(const Key('namaTextField')), findsOneWidget);
    expect(find.byKey(const Key('nomorTextField')), findsOneWidget);

    // Masukkan teks ke dalam text fields
    await tester.enterText(find.byKey(const Key('namaTextField')), 'Johnoe');
    await tester.enterText(find.byKey(Key('nomorTextField')), '0234567890');

    // Pengecekan tombol submit
    expect(find.byKey(const Key('submitButton')), findsOneWidget);

    // Tekan tombol submit
    await tester.tap(find.byKey(const Key('submitButton')));
    await tester.pump();

    // Pengecekan apakah data kontak ditambahkan ke list
    expect(find.text('Johnoe'), findsOneWidget);
    expect(find.text('0234567890'), findsOneWidget);
  });
}
