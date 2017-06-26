# zabbix_template_iis
# description: Zabbix template about IIS
# Version: 20170626
1、Place the file （LLD_Web_Service.bat） in the root directory of the C drive,

2、Open the zabbix client configuration file:zabbix_agentd.win.conf,Then add the following at the end of the file：
UserParameter=iis.site.discovery,C:\LLD_Web_Service.bat

3、Import the template file （Template IIS Web Site for Zabbix-3.0.xml） into the zabbix background.

4、The client restarts the zabbix service.
