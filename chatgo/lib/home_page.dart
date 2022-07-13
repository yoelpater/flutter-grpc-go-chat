import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

import 'api/v1/chat.pb.dart';
import 'api/v1/chat.pbgrpc.dart' as chatv1;
import 'api/v1/google/protobuf/empty.pb.dart';
import 'api/v1/google/protobuf/wrappers.pb.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  late final ClientChannel channel;

  @override
  void initState() {
    super.initState();
    channel = ClientChannel(
      '10.0.2.2', // Your IP here or localhost
      port: 3000,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        idleTimeout: Duration(seconds: 1),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    var request = StringValue.create();
    request.value = _counter.toString();
    chatv1.ChatServiceClient(channel).send(request);
  }

  @override
  Widget build(BuildContext context) {
    final stream = chatv1.ChatServiceClient(channel).subscribe(Empty.create());
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder(
          stream: stream,
          builder: (BuildContext context, AsyncSnapshot<Message> snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(snapshot.data?.text ?? 'none')],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
