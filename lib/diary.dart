import 'package:flutter/material.dart';
import 'add_diary.dart';

class MemoList extends StatefulWidget {
  @override
  State<MemoList> createState() => _MemoListState();
}

// _MyMemoAppState 클래스: _MyMemoApp의 상태를 관리하는 State 클래스
class _MemoListState extends State<MemoList> {
  List<String> items = []; // 메모 아이템 목록

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Memo', style: TextStyle(color: Colors.black)),
        toolbarHeight: 80.0,
        backgroundColor: Colors.yellow,
        actions: [
          // 메모 추가 버튼
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MemoInputPage()),
              ).then((value) {
                if (value != null) {
                  setState(() {
                    items.add(value); // Add the new item
                  });
                }
              });
            },
            style: IconButton.styleFrom(foregroundColor: Colors.black),
            icon: Icon(Icons.create),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // 각 메모 아이템을 나타내는 ListTile
          return ListTile(
            title: Text(items[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  items.removeAt(index); // 아이템 삭제
                });
              },
            ),
          );
        },
      ),
    );
  }
}
