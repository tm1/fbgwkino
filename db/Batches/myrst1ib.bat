echo off

rem set ib=C:\Program Files\Borland\InterBase\bin\
set ib=D:\Program Files\InterBase Corp\InterBase\bin\
set ibf=%ib%gfix
set ibb=%ib%gbak
set usr=-user sysdba
set psw=-password masterkey
echo
rem ------------------------------------------
rem 0. ���᪠�� ��
rem 1. �⪫�砥� ᡮ�� ����
rem 2. ��⠥��� 稭���
rem ------------------------------------------
echo on
echo off
  rem "%ibf%" -housekeeping 0  %usr% %psw%  %2%1
  rem "%ibf%" -validate -full  %usr% %psw%  %2%1
  rem "%ibf%" -mend -ignore  %usr% %psw%  %2%1
  rem "%ibb%" -B -limbo -ignore -garbage_collect -verbose -y %1.Backup_log %usr% %psw%  %2%1 %1.gbk
  rem "%ibb%" -R -verbose -y %1.Restore_log %usr% %psw%  %1.gbk %2%1.restore
rem "%ibf%" -housekeeping 0 %1

echo on
"%ibb%" -R -verbose -y %1.Restore_log %usr% %psw%  %1 %2%1.restore

