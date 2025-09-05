# 构建所有示例程序
.PHONY: all echoserver bankserver clean

# 默认目标
all: echoserver bankserver

# 构建echo示例
echoserver:
	$(MAKE) -C echoserver

# 构建bank示例
bankserver:
	$(MAKE) -C bankserver

# 清理
clean:
	$(MAKE) -C echoserver clean
	$(MAKE) -C bankserver clean