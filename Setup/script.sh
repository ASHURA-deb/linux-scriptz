wget https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip
mkdir ~/.fonts
unzip Fira_Code_v6.2.zip
cd Fira_Code_v6.2
cp -r * ~/.fonts 
fc-cache -f
