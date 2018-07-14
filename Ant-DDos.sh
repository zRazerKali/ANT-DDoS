#!/bin/bash
#Coded By J0K3R00T
clear

echo
echo "           _   _ _______     _____  _____   ____   _____ ";
sleep 0.5
echo "     /\   | \ | |__   __|   |  __ \|  __ \ / __ \ / ____|";
sleep 0.5
echo "    /  \  |  \| |  | |______| |  | | |  | | |  | | (___  ";
sleep 0.5
echo "   / /\ \ |  \`  |  | |______| |  | | |  | | |  | |\___ \ ";
sleep 0.5
echo "  / ____ \| |\  |  | |      | |__| | |__| | |__| |____) |";
sleep 0.5
echo " /_/    \_\_| \_|  |_|      |_____/|_____/ \____/|_____/ ";
echo "                                                         ";
echo "Execute como Sudo"
echo -n "Deseja Continuar ? [Y/N] " && read escolha


if [ $escolha == "Y" ]
	then
	echo "Continuando ... "

elif [ $escolha == "N" ]
	then
	echo "ANT-DDOS Não Ativado..."
fi

echo "Executando Comando !!!" 

if [ $escolha == "Y" ]
	then
	echo
	echo " [#] Ant SYNFLOOD [ON]"
	echo " [#] Ant IP Spoofing [ON]"
	echo " [#] Ant ALL Problems [ON]"
	echo " [#] Ant ICMP [ON]"
	echo " [#] Ant HTTP [ON]"
	echo
	
/sbin/iptables -A FORWARD -p tcp --syn -m limit --limit 1/s -j ACCEPT
echo 1 > /proc/sys/net/ipv4/tcp_syncookies

echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all

/sbin/iptables -A FORWARD -p icmp --icmp-type echo-request -m limit --limit 1/s -j ACCEPT
/sbin/iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 1/s -j ACCEPT
/sbin/iptables -A INPUT -i eth1 -p icmp --icmp-type echo-reply -m limit --limit 1/s -j DROP
/sbin/iptables -A FORWARD -p tcp -m limit --limit 1/s -j ACCEPT
/sbin/iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT
/sbin/iptables -A FORWARD -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s -j ACCEPT
/sbin/iptables -A FORWARD --protocol tcp --tcp-flags ALL SYN,ACK -j DROP
/sbin/iptables -A INPUT -m state --state INVALID -j DROP
/sbin/iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT
/sbin/iptables -N VALID_CHECK
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL FIN,URG,PSH -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL ALL -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL FIN -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags SYN,RST SYN,RST -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags SYN,FIN SYN,FIN -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL NONE -j DROP
/sbin/iptables -I INPUT -p tcp --dport 80 -i eth1 -m state --state NEW -m recent --set
/sbin/iptables -I INPUT -p tcp --dport 80 -i eth1 -m state --state NEW -m recent --update --seconds 1 --hitcount 10 

fi 

if [ $escolha == "y" ]
	then
	echo
	echo " [#] Ant SYNFLOOD [ON]"
	echo " [#] Ant IP Spoofing [ON]"
	echo " [#] Ant ALL Problems [ON]"
	echo " [#] Ant ICMP [ON]"
	echo " [#] Ant HTTP [ON]"
	echo
	
/sbin/iptables -A FORWARD -p tcp --syn -m limit --limit 1/s -j ACCEPT
echo 1 > /proc/sys/net/ipv4/tcp_syncookies

echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all

/sbin/iptables -A FORWARD -p icmp --icmp-type echo-request -m limit --limit 1/s -j ACCEPT
/sbin/iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 1/s -j ACCEPT
/sbin/iptables -A INPUT -i eth1 -p icmp --icmp-type echo-reply -m limit --limit 1/s -j DROP
/sbin/iptables -A FORWARD -p tcp -m limit --limit 1/s -j ACCEPT
/sbin/iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT
/sbin/iptables -A FORWARD -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s -j ACCEPT
/sbin/iptables -A FORWARD --protocol tcp --tcp-flags ALL SYN,ACK -j DROP
/sbin/iptables -A INPUT -m state --state INVALID -j DROP
/sbin/iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT
/sbin/iptables -N VALID_CHECK
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL FIN,URG,PSH -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL ALL -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL FIN -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags SYN,RST SYN,RST -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags SYN,FIN SYN,FIN -j DROP
/sbin/iptables -A VALID_CHECK -p tcp --tcp-flags ALL NONE -j DROP
/sbin/iptables -I INPUT -p tcp --dport 80 -i eth1 -m state --state NEW -m recent --set
/sbin/iptables -I INPUT -p tcp --dport 80 -i eth1 -m state --state NEW -m recent --update --seconds 1 --hitcount 10
	 
fi
sleep 0.5
clear

echo
echo "           _   _ _______     _____  _____   ____   _____ ";
sleep 0.5
echo "     /\   | \ | |__   __|   |  __ \|  __ \ / __ \ / ____|";
sleep 0.5
echo "    /  \  |  \| |  | |______| |  | | |  | | |  | | (___  ";
sleep 0.5
echo "   / /\ \ |  \`  |  | |______| |  | | |  | | |  | |\___ \ ";
sleep 0.5
echo "  / ____ \| |\  |  | |      | |__| | |__| | |__| |____) |";
sleep 0.5
echo " /_/    \_\_| \_|  |_|      |_____/|_____/ \____/|_____/ ";
echo "                                                         ";
	echo
	echo " [#] Ant SYNFLOOD [ON]"
	echo " [#] Ant IP Spoofing [ON]"
	echo " [#] Ant ALL Problems [ON]"
	echo " [#] Ant ICMP [ON]"
	echo " [#] Ant HTTP [ON]"
	echo
