# NetServer

一、编译程序
  在程序根目录下make
  <img width="1920" height="1032" alt="image" src="https://github.com/user-attachments/assets/e08b4eda-6e25-4060-95f0-b02b33e8024c" />
二、运行demo
  1.运行demo/echoserver
    1.1 设置环境变量
      export LD_LIBRARY_PATH=./lib:$LD_LIBRARY_PATH
    1.2 运行服务器程序（IP地址写自己的）
      ./demo/echoserver/echoserver 192.168.10.128 5085
  <img width="1920" height="1032" alt="image" src="https://github.com/user-attachments/assets/0ea76225-715b-4d06-be21-7a71c50b035e" />
    1.3 运行客户端程序
      ./demo/echoserver/echoclient 192.168.10.128 5085
  <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7bce229a-b321-4489-9a87-5fdeffac8be8" />
  2.运行demo/bankserver
    2.1 运行服务器程序（IP地址写自己的）
      ./demo/bankserver/bankserver 192.168.10.128 5085
  <img width="1920" height="1032" alt="image" src="https://github.com/user-attachments/assets/a79a81cf-faaf-4024-b753-b9226ae9fc63" />
    2.2 运行客户端程序
      ./demo/echoserver/echoclient 192.168.10.128 5085 
  <img width="1920" height="1032" alt="image" src="https://github.com/user-attachments/assets/f8ae5022-fad5-4fe4-90e8-4cacab3c688c" />


