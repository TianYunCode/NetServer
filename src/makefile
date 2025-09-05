# src/Makefile - 构建静态库和动态库

# 编译器设置
CXX := g++
CXXFLAGS := -g -Wall -Wextra -O2 -std=c++11 -fPIC
AR := ar
ARFLAGS := rcs

# 库名称
LIB_NAME := netlite
STATIC_LIB := lib$(LIB_NAME).a
SHARED_LIB := lib$(LIB_NAME).so

# 源文件和目标文件
SRCS := InetAddress.cpp Socket.cpp Epoll.cpp Channel.cpp EventLoop.cpp \
        TcpServer.cpp Acceptor.cpp Connection.cpp Buffer.cpp ThreadPool.cpp \
        Timestamp.cpp
OBJS := $(SRCS:.cpp=.o)

# 输出目录
LIB_DIR := ../lib
INCLUDE_DIR := ../include
PUBLIC_HEADERS := $(wildcard *.h)

# 默认目标
.PHONY: all
all: static shared

# 创建输出目录
$(LIB_DIR) $(INCLUDE_DIR):
	mkdir -p $@

# 静态库
static: $(LIB_DIR)/$(STATIC_LIB)

# 动态库
shared: $(LIB_DIR)/$(SHARED_LIB)

# 构建静态库
$(LIB_DIR)/$(STATIC_LIB): $(OBJS) | $(LIB_DIR)
	$(AR) $(ARFLAGS) $@ $^

# 构建动态库
$(LIB_DIR)/$(SHARED_LIB): $(OBJS) | $(LIB_DIR)
	$(CXX) -shared $^ -o $@

# 编译源文件
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 安装头文件到include目录
.PHONY: install-headers
install-headers: $(PUBLIC_HEADERS) | $(INCLUDE_DIR)
	cp $(PUBLIC_HEADERS) $(INCLUDE_DIR)/

# 清理
.PHONY: clean
clean:
	rm -f *.o
	rm -f $(LIB_DIR)/$(STATIC_LIB) $(LIB_DIR)/$(SHARED_LIB)
