protoc --go_out=server/pkg/api/v1 --go_opt=paths=source_relative \
    --go-grpc_out=server/pkg/api/v1 --go-grpc_opt=paths=source_relative \
    --proto_path=api/proto/v1\
    --proto_path=.\
    chat.proto