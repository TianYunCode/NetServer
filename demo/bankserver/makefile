# demo/bankserver/Makefile - 构建bank服务器和客户端

# 编译器设置
CXX := g++
CXXFLAGS := -g -Wall -Wextra -O2 -std=c++11
LDFLAGS := -L../../lib -lnetlite -lpthread

# 源文件
CLIENT_SRC := bankclient.cpp
SERVER_SRCS := bankserver.cpp BankServer.cpp

# 目标文件
CLIENT_TARGET := bankclient
SERVER_TARGET := bankserver

# 默认目标
.PHONY: all
all: $(CLIENT_TARGET) $(SERVER_TARGET)

# 构建客户端
$(CLIENT_TARGET): $(CLIENT_SRC)
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

# 构建服务器
$(SERVER_TARGET): $(SERVER_SRCS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

# 设置运行时库搜索路径（用于动态库）
.PHONY: run
run: $(SERVER_TARGET)
	LD_LIBRARY_PATH=../../lib ./$(SERVER_TARGET)

# 清理
.PHONY: clean
clean:
	rm -f $(CLIENT_TARGET) $(SERVER_TARGET)
