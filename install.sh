echo "[*] customizing terminal..."
sleep 2


cat <<'EOF' >> ~/.bashrc
clear
printf '\e]11;#2e2e2e\a'
echo "[Plugin, MkDt Form]"
echo
echo "[————————————————————————]"
echo "[                        ]"
echo "[ termux (Mkdt Edition)  ]"
echo "[                        ]"
echo "[————————————————————————]"
sleep 0.15
echo
sleep 0.15
sleep 0.15
sleep 0.15
clear
PS1="\[\e[1;37m\]Terminal@MkDt \[\e[0m\]"
EOF
clear
echo "Turning off the Termux section..."
sleep 2
exit
