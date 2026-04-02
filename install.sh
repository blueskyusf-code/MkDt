cat << 'END' > $PREFIX/bin/MkDt
#!/data/data/com.termux/files/usr/bin/bash
echo "[Mkdt Created by Blueskyteam]"

cat << 'EOF' >> ~/.mkdrc
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
END

#P*RRA PRA ATIVAR O MKDRC
Source ~/.mkdrc

# Essencial para A P*RRA DO COMANDO FUNCIONAR
chmod +x $PREFIX/bin/MkDt
	
