import 'package:flutter/material.dart';

class MemoInputPage extends StatelessWidget {
  // 텍스트 필드의 상태를 관리하는 컨트롤러
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 페이지 상단의 앱 바 설정
      appBar: AppBar(
        title: Text('Add Memo'), // 앱 바 제목 설정
      ),
      // 페이지 본문 설정
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 텍스트를 입력받는 텍스트 필드 설정
            TextField(
              controller: _textController, // 컨트롤러 연결
              decoration: InputDecoration(labelText: 'Enter Memo'), // 힌트 텍스트 추가
            ),
            SizedBox(height: 16.0), // 텍스트 필드와 버튼 사이에 여백 추가
            // 메모를 추가하는 버튼 설정
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _textController.text);
              },
              child: Text('Add Memo'), // 버튼에 표시될 텍스트
            ),
          ],
        ),
      ),
    );
  }
}
