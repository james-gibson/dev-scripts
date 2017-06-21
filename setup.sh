echo "Email address: "
read email

mkdir ~/src

bash installHomeBrew.sh
bash updateUnixTools.sh
bash installBinaries.sh
bash installApps.sh
bash setupSSH.sh


