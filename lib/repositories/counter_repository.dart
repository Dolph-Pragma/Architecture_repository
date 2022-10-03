import 'package:repo_counter_example/db/virtual_db.dart';
import 'package:repo_counter_example/models/counter.dart';
import 'package:repo_counter_example/repositories/counter_interface.dart';

class CounterRepository implements ICounterRepository {
  final DataBaseVirtual _db;

  CounterRepository(this._db);

  @override
  Future<void> add() async {
    await _db.add();
  }

  @override
  Future<void> clear() async {
    await _db.clear();
  }

  @override
  Future<Counter> getNumber() async {
    var counter = await _db.getNumb();
    return Counter(counter);
  }
}
