sbaig@DESKTOP-972I2OR:~/programming/Utilities$ grep "sbaig" /etc/passwd
sbaig:x:1000:1000:,,,:/home/sbaig:/bin/bash
sbaig@DESKTOP-972I2OR:~/programming/Utilities$ ifconfig | grep "inet"
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0xfe<compat,link,site,host>
        inet 192.168.31.66  netmask 255.255.255.0  broadcast 192.168.31.255
        inet6 2409:40f2:1168:60ca:b499:e7e1:35da:15d8  prefixlen 64  scopeid 0x0<global>
        inet6 2409:40f2:1168:60ca:adca:7843:a25:6b8b  prefixlen 128  scopeid 0x0<global>
        inet6 fe80::12ba:eac:a895:70a3  prefixlen 64  scopeid 0xfd<compat,link,site,host>

baig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ ls
grep_cmd.txt  regular_expressions_building_blocks.txt
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "sign" *
regular_expressions_building_blocks.txt:    A plus sign (+) means one or more of the previous element is required
regular_expressions_building_blocks.txt:    A hat sign (^) will match the begining of a string
regular_expressions_building_blocks.txt:    A dollar sign ($) will match at the end of the string
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "sign" * | wc -l
3
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "sign" regular_expressions_building_blocks.txt
    A plus sign (+) means one or more of the previous element is required
    A hat sign (^) will match the begining of a string
    A dollar sign ($) will match at the end of the string
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "sign" regular_expressions_building_blocks.txt | wc -l
3

Use advance grep feature like recursively finding mactiching files and ignoring case sensitivity

sbaig@DESKTOP-972I2OR:~/programming/Utilities$ grep "sign" *
grep: Using_grep: Is a directory
grep: bash_scripts: Is a directory
linux_cmd_line:To bring a network connection up and assign a static address, you can do:sudo /sbin/ifconfig eth0 up 192.168.1.100
linux_cmd_line:To bring it up and get it an assigned address from a DHCP server, you can do:
sbaig@DESKTOP-972I2OR:~/programming/Utilities$ grep "sign" * -R
Using_grep/grep_cmd.txt:sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "sign" *
Using_grep/grep_cmd.txt:regular_expressions_building_blocks.txt:    A plus sign (+) means one or more of the previous element is required
Using_grep/grep_cmd.txt:regular_expressions_building_blocks.txt:    A hat sign (^) will match the begining of a string
Using_grep/grep_cmd.txt:regular_expressions_building_blocks.txt:    A dollar sign ($) will match at the end of the string
Using_grep/grep_cmd.txt:sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "sign" * | wc -l
Using_grep/grep_cmd.txt:sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "sign" regular_expressions_building_blocks.txt
Using_grep/grep_cmd.txt:    A plus sign (+) means one or more of the previous element is required
Using_grep/grep_cmd.txt:    A hat sign (^) will match the begining of a string
Using_grep/grep_cmd.txt:    A dollar sign ($) will match at the end of the string
Using_grep/grep_cmd.txt:sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "sign" regular_expressions_building_blocks.txt | wc -l
Using_grep/regular_expressions_building_blocks.txt:    A plus sign (+) means one or more of the previous element is required
Using_grep/regular_expressions_building_blocks.txt:    A hat sign (^) will match the begining of a string
Using_grep/regular_expressions_building_blocks.txt:    A dollar sign ($) will match at the end of the string
linux_cmd_line:To bring a network connection up and assign a static address, you can do:sudo /sbin/ifconfig eth0 up 192.168.1.100
linux_cmd_line:To bring it up and get it an assigned address from a DHCP server, you can do:
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "SIGN" regular_expressions_building_blocks.txt
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep -i "SIGN" regular_expressions_building_blocks.txt
    A plus sign (+) means one or more of the previous element is required
    A hat sign (^) will match the begining of a string
    A dollar sign ($) will match at the end of the string
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep -i "SIGN" regular_expressions_building_blocks.txt > sign_data.txt
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ cat sign_data.txt
    A plus sign (+) means one or more of the previous element is required
    A hat sign (^) will match the begining of a string
    A dollar sign ($) will match at the end of the string

use grep with i/o redirection and pipes to create lists:

sort by alphabetical order
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep -i "SIGN" regular_expressions_building_blocks.txt | sort -k 2
    A dollar sign ($) will match at the end of the string
    A hat sign (^) will match the begining of a string
    A plus sign (+) means one or more of the previous element is required

sort by numerical decending order
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep -i "SIGN" regular_expressions_building_blocks.txt | sort -rk 4
    A hat sign (^) will match the begining of a string
    A plus sign (+) means one or more of the previous element is required
    A dollar sign ($) will match at the end of the string
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ ifconfig wifi0 | grep "inet"
        inet 192.168.31.66  netmask 255.255.255.0  broadcast 192.168.31.255
        inet6 2409:40f2:143:6a1d:5c6c:56d6:821a:f6ce  prefixlen 64  scopeid 0x0<global>
        inet6 2409:40f2:143:6a1d:257e:8a4a:d99c:5d12  prefixlen 128  scopeid 0x0<global>
        inet6 fe80::12ba:eac:a895:70a3  prefixlen 64  scopeid 0xfd<compat,link,site,host>
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ ifconfig wifi0 | grep "inet" | grep "inet6" | tr -s " " ":"
:inet6:2409:40f2:143:6a1d:5c6c:56d6:821a:f6ce:prefixlen:64:scopeid:0x0<global>
:inet6:2409:40f2:143:6a1d:257e:8a4a:d99c:5d12:prefixlen:128:scopeid:0x0<global>
:inet6:fe80:12ba:eac:a895:70a3:prefixlen:64:scopeid:0xfd<compat,link,site,host>
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ ifconfig wifi0 | grep "inet" | grep "inet6" | tr -s " " ":" | cut -f 3 -d ":"
2409
2409
fe80
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ ifconfig wifi0 | grep "inet" | tr -s " " ":" | cut -f 3 -d ":"
192.168.31.66
2409
2409
fe80

Use Grep to clocate content within a text files
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep -i "^north" 2014Sales.txt
North Codey Blackwell 1 $46552
North Marcia Lin      1 $16578
North Julio Chavez    1 $28763
North Codey Blackwell 2 $46521
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep -i "north$" 2014Sales.txt

sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ cat 2014Sales.txt
North Codey Blackwell 1 $46552
South Jim Crowley     1 $745
North Marcia Lin      1 $16578
East  Max Bishop      1 $26901
South Jhoney Dep      1 $568430
North Julio Chavez    1 $28763
North Codey Blackwell 2 $46521
South Marcus Carlous  1 $7810
West  Jonathan Gold   1 $65889
West  Gina Ortiz      1 $67901
East  Dana Powell     2 $9321
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep "\$....$" 2014Sales.txt
South Marcus Carlous  1 $7810
East  Dana Powell     2 $9321
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep -i "[We]st" 2014Sales.txt
West  Jonathan Gold   1 $65889
West  Gina Ortiz      1 $67901
sbaig@DESKTOP-972I2OR:~/programming/Utilities/Using_grep$ grep -i "[We].st" 2014Sales.txt
East  Max Bishop      1 $26901
West  Jonathan Gold   1 $65889
West  Gina Ortiz      1 $67901
East  Dana Powell     2 $9321


