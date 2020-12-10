mkdir -p ~root/.ssh
cp ~vagrant/.ssh/auth* ~root/.ssh
hostnamectl set-hostname ipaserver.raibeart.loc
#yum update -y
systemctl start firewalld
systemctl enable firewalld
firewall-cmd --permanent --add-port={80/tcp,443/tcp,389/tcp,636/tcp,88/tcp,464/tcp,53/udp,88/udp,464/udp,53/udp,123/udp}
firewall-cmd --reload
yum install epel-release -y
echo "192.168.200.10 ipaserver.raibeart.loc ipaclient" >> /etc/hosts
