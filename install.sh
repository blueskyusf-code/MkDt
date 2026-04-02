echo [*] customizing terminal...
sleep 2
cat <<EOF>> ~/.bashrc
clear
echo [Plugin, MkDt Form]
echo
echo [————————————————————————]
echo [                        ]
echo [ termux (Mkdt Edition)  ]
echo [                        ]
echo [————————————————————————]
sleep 10
clear
printf '\e]11;#2e2e2e\a'
PS1="Terminal@MkDt "
EOF
clear
echo Turning off the Termux section...
sleep 10
logout
