import 'package:image_search_16day/data/api/pixabay_api.dart';
import 'package:image_search_16day/data/mapper/photo_mapper.dart';
import 'package:image_search_16day/data/model/photo.dart';
import 'package:image_search_16day/data/respository/photo_repository.dart';

class PixabayPhotoRepositoryImpl implements PhotoRepository {
  final _api = PixabayApi();

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final resultDto = await _api.getImages(query);
    return resultDto.hits.map((e) => e.toPhoto()).toList();
  }
}
