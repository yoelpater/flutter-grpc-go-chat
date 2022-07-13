echo "Compiling protos..."
protoc --go_out=server/pkg/api/v1 --go_opt=paths=source_relative \
    --go-grpc_out=server/pkg/api/v1 --go-grpc_opt=paths=source_relative \
    --dart_out=chatgo/lib/api/v1\
    --proto_path=api/proto/v1\
    --proto_path=.\
    chat.proto

protoc --dart_out=grpc:chatgo/lib/api/v1/google/protobuf\
    --proto_path=third_party/google/protobuf\
    --proto_path=.\
    empty.proto timestamp.proto wrappers.proto

protoc --dart_out=grpc:chatgo/lib/api/v1\
    --proto_path=api/proto/v1\
    --proto_path=.\
    chat.proto

echo "Protos compiled..."