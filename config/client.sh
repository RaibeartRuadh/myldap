mkdir -p ~root/.ssh
cp ~vagrant/.ssh/auth* ~root/.ssh
hostnamectl set-hostname ipaclient.raibeart.loc
#yum -y update
echo "192.168.56.10 ipaserver.raibeart.loc ipaserver" >> /etc/hosts
echo "192.168.56.20 ipaclient.raibeart.loc ipaclient" >> /etc/hosts
