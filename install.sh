#!/data/data/com.termux/files/usr/bin/bash
# Install script para MkDt - Blueskyteam

echo "[Iniciando instalação do MkDt Edition...]"
sleep 1.5
echo "[*] Nota: O sistema está em fase experimental. Otimizando componentes..."

# Remove versão antiga do mkdrc, se existir A P*RRA DO ARQUIVO 
rm -f ~/.mkdrc 2>/dev/null

# Cria o arquivo ~/.mkdrc com a personalização
cat << 'MKDTRC' > ~/.mkdrc
clear
printf '\e]11;#2e2e2e\a'  # muda cor de fundo
echo "[MkDt Framework: Sistema Ativo]"
echo
echo "[——————————————————————————————]"
echo "[                              ]"
echo "[    TERMUX (MkDt Edition)     ]"
echo "[    Projeto OpenSP - Blue     ]"
echo "[                              ]"
echo "[——————————————————————————————]"
sleep 0.2
echo "[Carregando interface...]"
sleep 0.5
clear
PS1="\[\e[1;37m\]Terminal@MkDt \[\e[0m\]"
MKDTRC

# Cria o binário MkDt
cat << 'MKDTBIN' > $PREFIX/bin/MkDt
#!/data/data/com.termux/files/usr/bin/bash
# Executa o MkDt manualmente
if [ -f ~/.mkdrc ]; then
    source ~/.mkdrc
    echo "[Configurações MkDt aplicadas com sucesso]"
else
    echo "[Erro crítico] O arquivo ~/.mkdrc não foi localizado no sistema."
fi
MKDTBIN

# Torna o comando executável
chmod +x $PREFIX/bin/MkDt

# Adiciona source do ~/.mkdrc no ~/.bashrc, evitando duplicação DA P*RRA DO BASHRC
grep -qxF 'source ~/.mkdrc' ~/.bashrc || echo 'source ~/.mkdrc' >> ~/.bashrc

echo
echo "[MkDt instalado com sucesso!]"
echo "[Digite 'MkDt' ou reinicie o terminal para validar a nova arquitetura.]"
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
