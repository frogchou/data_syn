## 使用说明:
### 1、先安装linux服务端
#### 可以使用rsyncinstall.sh 脚本进行一键安装，安装完成后，需要配置/etc/rsyncd/rsyncd.conf 文件，添加自己moudle，默认已经添加了一个模板，只不过同步的目录制定到了/tmp 文件夹中。
### 2、在安装windows客户端
#### windows 可编辑调整bak2me.bat 文件，将该文件加入到任务计划程序定时执行备份。在此之前下载 cwRsync_5.5.0_x86_Free 并将bin目录加入到环境变量，如果不想加入到环境变量，可以在bak2me.bat脚本中写全rsync.exe的路径。

