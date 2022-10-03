import 'package:repo_counter_example/models/counter.dart';

abstract class ICounterRepository {
  Future<Counter> getNumber();
  Future<void> add();
  Future<void> clear();
}
