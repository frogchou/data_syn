echo off
echo ###################################################
echo 	ʹ�� rsync ��ָ���ļ��б��ݵ��ƶ�
echo	����˵����
echo	-b, --backup �������ݣ����Ѵ����ļ��������Ա���
echo 	--suffix=SUFFIX ���屸���ļ�ǰ׺
echo	--backup-dir �������ļ��������Ŀ¼�¡�
echo	--portָ���������˿�
echo	--password-fileָ�������ļ�
echo	-vzaP ѹ������ʾ����
echo	--delete ���ֿͻ��˺ͷ�������һ��
echo ###################################################
echo.
set dt=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set "dt=%dt: =0%"

echo "��ʼ����" >> e:\bak2me.log
rsync.exe --port=8873 -vzaP /cygdrive/e/bat root@i.frogchou.com::server/ --password-file=/cygdrive/e/cwRsync_5.5.0_x86_Free/rsync.pass -b --backup-dir='historyfile/%dt%/' --delete >> e:\bak2me.log
rsync.exe --port=8873 -vzaP /cygdrive/e/frogchou root@i.frogchou.com::server/ --password-file=/cygdrive/e/cwRsync_5.5.0_x86_Free/rsync.pass -b --backup-dir='historyfile/%dt%/' --delete >> e:\bak2me.log
echo "���ݽ���" >> e:\bak2me.log
