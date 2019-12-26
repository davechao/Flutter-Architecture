import 'package:flutter_architecture/model/api/api_provider.dart';
import 'package:flutter_architecture/model/api/vo/bike_list_item.dart';
import 'package:scoped_model/scoped_model.dart';

class YouBikeScopedModel extends Model {
  ApiProvider _apiProvider = ApiProvider('http://demo3779801.mockable.io/');

  BikeListItem _bikeListItem;
  bool _isLoading = false;

  Future<Null> fetchBikes() async {
    _isLoading = true;
    notifyListeners();
    _bikeListItem = await _apiProvider.fetchBikes();
    _isLoading = false;
    notifyListeners();
  }

  bool get isLoading {
    return _isLoading;
  }

  BikeListItem get bikeListItem {
    return _bikeListItem;
  }
}
