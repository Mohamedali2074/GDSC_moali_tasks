import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2_register_page/constant.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: kPrimaryColor,
        ),
        title: const Text('Flutter Map'),
        centerTitle: true,
      ),
      body: const AnimatedListView(),
    );
  }
}

class AnimatedListView extends StatefulWidget {
  const AnimatedListView({
    super.key,
  });

  @override
  State<AnimatedListView> createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView> {
  final List<String> items = [];
  final _key = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: kPrimaryColor,
            ),
            child: IconButton(
              onPressed: insertItem,
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: AnimatedList(
            key: _key,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    color: kPrimaryColor,
                    child: ListTile(
                      leading: Text(
                        items[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          deleteItem(index);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void insertItem() {
    var index = items.length;
    items.add('item ${index + 1}');
    _key.currentState!.insertItem(
      index,
      duration: const Duration(milliseconds: 500),
    );
  }

  void deleteItem(int index) {
    items.removeAt(index);

    _key.currentState!.removeItem(
      index,
      (context, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              color: Colors.red,
              child: ListTile(
                leading: Text(
                  'deleted',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 500),
    );
  }
}




// const Color(0xff0F6292)
// const Color(0xffF0A04B)