import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/core/di/injection_config.dart';
import 'package:flutter_training/domain/blocs/yard/yard_bloc.dart';
import 'package:flutter_training/domain/blocs/yard/yard_bloc_event.dart';
import 'package:flutter_training/domain/blocs/yard/yard_bloc_state.dart';
import 'package:flutter_training/ui/screens/snapp_first_page/entity/entity_home_screen_grid_item.dart';
import 'package:flutter_training/ui/screens/snapp_first_page/widgets/widget_appbar_action.dart';
import 'package:flutter_training/ui/screens/snapp_first_page/widgets/widget_home_screen_grid_item.dart';

class ScreenSnappFirstPage extends StatefulWidget {
  const ScreenSnappFirstPage({super.key});

  @override
  State<ScreenSnappFirstPage> createState() => _ScreenSnappFirstPageState();
}

class _ScreenSnappFirstPageState extends State<ScreenSnappFirstPage> {
  late List<EntityHomeScreenItem> gridItems = getGridItems();
  final GlobalKey<AnimatedListState> key = GlobalKey<AnimatedListState>();
  List<String> texts = [];
  String lastText = "";
  YardBloc bloc = getIt<YardBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<YardBloc>(
      create: (_) => bloc,
      child: BlocConsumer<YardBloc, YardBlocState>(
          builder: blocBuilder, listener: blocListener),
    );
  }

  @override
  void initState() {
    super.initState();
    bloc.add(YardBlocEventInit());
  }

  Widget blocBuilder(BuildContext context, YardBlocState state) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 8,
        title: Text("Snapp!",
            style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic)),
        actions: const [
          WidgetAppBarAction(icon: Icons.person_outline),
          WidgetAppBarAction(icon: Icons.wallet),
          SizedBox(width: 4)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: GridView.builder(
                padding: const EdgeInsets.all(8),

                itemCount: gridItems.length,
                  itemBuilder: gridItemBuilder,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 4)),
            ),
          )
        ],
      ),
    );
  }

  void blocListener(BuildContext context, YardBlocState state) {}

  List<EntityHomeScreenItem> getGridItems() {
    return [
      EntityHomeScreenItem(Icons.fire_truck, Colors.green, "وانت و کامیون"),
      EntityHomeScreenItem(Icons.wallet, Colors.blue, "سرویس اعتباری"),
      EntityHomeScreenItem(Icons.shopping_bag, Colors.purple, "فروشگاه"),
      EntityHomeScreenItem(
          Icons.airplanemode_active_rounded, Colors.red, "بلیط سفر"),
      EntityHomeScreenItem(Icons.person, Colors.green, "ثبت نام رانندگان"),
      EntityHomeScreenItem(Icons.person, Colors.blue.shade200, "پزشک مشاور"),
      EntityHomeScreenItem(
          Icons.medical_information, Colors.blue.shade200, "داروخانه"),
      EntityHomeScreenItem(Icons.hotel, Colors.red, "هتل"),
      EntityHomeScreenItem(Icons.school, Colors.green, "پنل سازمانی"),
      EntityHomeScreenItem(Icons.umbrella_rounded, Colors.blue, "بیمه"),
      EntityHomeScreenItem(Icons.car_repair, Colors.green, "بین شهری"),
    ];
  }

  Widget gridItemBuilder(BuildContext context, int index) {
    return WidgetHomeScreenGridItem(gridItems[index]);
  }
}
