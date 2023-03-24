import 'package:bloc/bloc.dart';

class VideoCubit extends Cubit<double?> {
  VideoCubit() : super(null);

  void loadVideoBox(double height) => emit(height);
}
