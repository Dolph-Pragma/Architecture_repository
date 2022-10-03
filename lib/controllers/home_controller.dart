import 'package:repo_counter_example/db/database_virtual.dart';
import 'package:repo_counter_example/repositories/counter_repository.dart';
import '../models/counter.dart';

class HomeController {
  final CounterRepository _counterRepo = CounterRepository(DataBaseVirtual());

  Future<Counter> getNumber() {
    return _counterRepo.getNumber();
  }

  Future<void> addCounter() {
    return _counterRepo.add();
  }

  Future<void> clearCounter() {
    return _counterRepo.clear();
  }
}
