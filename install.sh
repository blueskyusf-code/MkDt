echo [*] customizing terminal...
sleep 2
cat <<EOF>> ~/.bashrc
echo [Plugin, MkDt Form]
clear
printf '\e]11;#2e2e2e\a'
PS1="Terminal@MkDt "
