Install jsonnet
```
go install github.com/google/go-jsonnet/cmd/jsonnet@latest
go install github.com/google/go-jsonnet/cmd/jsonnetfmt@latest
go install github.com/google/go-jsonnet/cmd/jsonnet-lint@latest
```

Install jsonnet-bundler
```
go install -a github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@latest
```

Install grafonnet
```
cd grafonnet
jb init
jb install github.com/grafana/grafonnet/gen/grafonnet-latest@main
```

Generate dashboard
```
jsonnet -J ./grafonnet/vendor ./grafonnet/dashboards/protocols/hive.libsonnet
```
