How to use the single script:
Just execute ansible-playbook lab1-2.yml as per example below:



cumulus@oob-mgmt-server:~/Automate$ ansible-playbook lab1-2.yml

PLAY [Enable lab1 and lab2]
***********************************************************************************************************************************************

TASK [Gathering Facts]
****************************************************************************************************************************************************
Tuesday 10 September 2019  18:26:25 +0000 (0:00:00.062)       0:00:00.062 ***** 
ok: [leaf01]
ok: [leaf02]

TASK [add loopback interface, lab01.]
*************************************************************************************************************************************
Tuesday 10 September 2019  18:26:28 +0000 (0:00:03.073)       0:00:03.136 ***** 
changed: [leaf01]
changed: [leaf02]

TASK [add bond between switches - lab02.]
*********************************************************************************************************************************
Tuesday 10 September 2019  18:26:31 +0000 (0:00:03.561)       0:00:06.698 ***** 
changed: [leaf01] => (item={u'bondnr': u'BOND0', u'swprange': u'swp49-50'})
changed: [leaf02] => (item={u'bondnr': u'BOND0', u'swprange': u'swp49-50'})

PLAY RECAP
****************************************************************************************************************************************************************
leaf01                     : ok=3    changed=2    unreachable=0    failed=0   
leaf02                     : ok=3    changed=2    unreachable=0    failed=0   

Tuesday 10 September 2019  18:26:34 +0000 (0:00:02.565)       0:00:09.264 ***** 
=============================================================================== 
add loopback interface, lab01.
-------------------------------------------------------------------------------------------------------------------------------------
3.56s
Gathering Facts
----------------------------------------------------------------------------------------------------------------------------------------------------
3.07s
add bond between switches - lab02.
---------------------------------------------------------------------------------------------------------------------------------
2.57s
cumulus@oob-mgmt-server:~/Automate$ 
