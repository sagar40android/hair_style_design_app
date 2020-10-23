
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AnimatedListDemo extends StatefulWidget {
  @override
  _AnimatedListDemoState createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo> {
  GlobalKey<AnimatedListState>_key=GlobalKey();

    List _items=[
      "Items  1",
      "Items  2",
      "Items  3",
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
      ),
      body: AnimatedList(
        key: _key,
          initialItemCount: _items.length,
          itemBuilder: (context,index,animation){
           return _buildItem(_items[index], animation, index);
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "Add Item",
        onPressed: (){
          _addItem();
        },
      ),
    );
  }

  Widget _buildItem(String  item,Animation animation,int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(item,style: TextStyle(fontWeight: FontWeight.w600),),
          leading: CircleAvatar(backgroundColor: Colors.blueAccent,child: Center(child: Text(item[0],style: TextStyle(fontWeight: FontWeight.bold),),),),
          trailing: IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
                    _removeItem(index);
            },),
        ),
      ),
    );
  }

  void  _removeItem(int index){
    String  removedItem=_items.removeAt(index);
    AnimatedListRemovedItemBuilder  builder=  ((context,animation){
        return  _buildItem(removedItem, animation, index);
    });
    _key.currentState.removeItem(index, builder);
  }

  void  _addItem(){
    int i=_items.length > 0?_items.length:0;
    _items.insert(i, "Items ${i}");
    _key.currentState.insertItem(i);
  }
}

