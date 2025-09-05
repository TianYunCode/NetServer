.PHONY: all lib demos clean install

# 默认目标
all: lib demos

# 构建库
lib:
	$(MAKE) -C src

# 构建所有demo
demos:
	$(MAKE) -C demo

# 清理
clean:
	$(MAKE) -C src clean
	$(MAKE) -C demo clean
	rm -rf lib include

# 安装头文件和库到系统目录
install: lib
	install -d /usr/local/include/netlite
	install src/*.h /usr/local/include/netlite/
	install lib/libnetlite.a /usr/local/lib/
	install lib/libnetlite.so /usr/local/lib/
	ldconfig