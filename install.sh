#!/data/data/com.termux/files/usr/bin/bash
# Install script para MkDt - Blueskyteam

echo "[MkDt Created by Blueskyteam]"
sleep 2
echo "[*] Take precautions: MkDt is experimental and may contain errors."

# Remove versão antiga do mkdrc, se existir A P*RRA DO ARQUIVO 
Rrm -f ~/.mkdrc 2>/dev/null

# Cria o arquivo ~/.mkdrc com a personalização
cat << 'MKDTRC' > ~/.mkdrc
clear
printf '\e]11;#2e2e2e\a'  # muda cor de fundo
echo "[Plugin, MkDt Form]"
echo
echo "[————————————————————————]"
echo "[                        ]"
echo "[ termux (MkDt Edition)  ]"
echo "[                        ]"
echo "[————————————————————————]"
sleep 0.15
echo
sleep 0.15
sleep 0.15
sleep 0.15
clear
PS1="\[\e[1;37m\]Terminal@MkDt \[\e[0m\]"
MKDTRC

# Cria o binário MkDt
cat << 'MKDTBIN' > $PREFIX/bin/MkDt
#!/data/data/com.termux/files/usr/bin/bash
# Executa o MkDt manualmente
if [ -f ~/.mkdrc ]; then
    source ~/.mkdrc
    echo "[MkDt Applied]"
else
    echo "[Error] ~/.mkdrc not found."
fi
MKDTBIN

# Torna o comando executável
chmod +x $PREFIX/bin/MkDt

# Adiciona source do ~/.mkdrc no ~/.bashrc, evitando duplicação DA P*RRA DO BASHRC
grep -qxF 'source ~/.mkdrc' ~/.bashrc || echo 'source ~/.mkdrc' >> ~/.bashrc

echo "[MkDt instalado com sucesso! Abra um novo Termux ou digite 'MkDt' para aplicar agora.]"
