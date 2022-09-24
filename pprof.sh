#!/bin/bash

# 分析データのリセット
rm -rf /home/isucon/pprof/

# 分析データの収集
go tool pprof -http=0.0.0.0:8080 /home/isucon/webapp/go/isucondition http://localhost:6060/debug/pprof/profile
