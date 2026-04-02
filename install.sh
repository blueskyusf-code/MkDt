echo "[*] customizing terminal..."
sleep 2

# Usamos aspas simples 'EOF' para evitar que o shell tente processar 
# os símbolos antes de escrever no arquivo.
cat <<'EOF' >> ~/.bashrc
clear
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
echo 1=0/5
sleep 0.15
echo perm
sleep 0.15
clear
printf '\e]11;#2e2e2e\a'
PS1="\[\e[1;37m\]Terminal@MkDt \[\e[0m\]"
EOF
clear
echo "Turning off the Termux section..."
sleep 2
exit
