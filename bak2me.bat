echo off
echo ###################################################
echo 	使用 rsync 将指定文件夹备份到云端
echo	参数说明：
echo	-b, --backup 创建备份，对已存在文件重命名以备份
echo 	--suffix=SUFFIX 定义备份文件前缀
echo	--backup-dir 将备份文件存放在在目录下。
echo	--port指定服务器端口
echo	--password-file指定密码文件
echo	-vzaP 压缩并显示进程
echo	--delete 保持客户端和服务器端一致
echo ###################################################
echo.
set dt=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set "dt=%dt: =0%"

echo "开始备份" >> e:\bak2me.log
rsync.exe --port=8873 -vzaP /cygdrive/e/bat root@yourIP::server/ --password-file=/cygdrive/e/cwRsync_5.5.0_x86_Free/rsync.pass -b --backup-dir='historyfile/%dt%/' --delete >> e:\bak2me.log
rsync.exe --port=8873 -vzaP /cygdrive/e/frogchou root@yourIP::server/ --password-file=/cygdrive/e/cwRsync_5.5.0_x86_Free/rsync.pass -b --backup-dir='historyfile/%dt%/' --delete >> e:\bak2me.log
echo "备份结束" >> e:\bak2me.log
