import 'package:todo_list_flutter/gen/assets.gen.dart';

class IntroModel {
  String? image;
  String? title;
  String? subTitle;
  IntroModel();
}

List<IntroModel> listIntros = [
  IntroModel()
    ..image = Assets.images.splash1
    ..title = 'Manage your tasks'
    ..subTitle =
        'You can easily manage all of your daily tasks in DoMe for free',
  IntroModel()
    ..image = Assets.images.splash2
    ..title = 'Create daily routine'
    ..subTitle =
        'In Uptodo  you can create your personalized routine to stay productive',
  IntroModel()
    ..image = Assets.images.splash3
    ..title = 'Orgonaize your tasks'
    ..subTitle =
        'You can organize your daily tasks by adding your tasks into separate categories'
];
