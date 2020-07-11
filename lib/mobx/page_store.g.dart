// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageStore on PageStoreBase, Store {
  final _$currentPageAtom = Atom(name: 'PageStoreBase.currentPage');

  @override
  PageElement get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(PageElement value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$counterAtom = Atom(name: 'PageStoreBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$isLoadedAtom = Atom(name: 'PageStoreBase.isLoaded');

  @override
  bool get isLoaded {
    _$isLoadedAtom.reportRead();
    return super.isLoaded;
  }

  @override
  set isLoaded(bool value) {
    _$isLoadedAtom.reportWrite(value, super.isLoaded, () {
      super.isLoaded = value;
    });
  }

  final _$changePageAsyncAction = AsyncAction('PageStoreBase.changePage');

  @override
  Future<dynamic> changePage() {
    return _$changePageAsyncAction.run(() => super.changePage());
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
counter: ${counter},
isLoaded: ${isLoaded}
    ''';
  }
}
