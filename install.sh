echo [*] Alert: This function is experimental and may contain errors.
sleep 2
echo [*] installing bluesky-tools...
cat <<EOF>> $PREFIX/bin/install
read -p "what install package?: " package
pkg install \$package || apt install \$package || echo We searched everywhere, but unfortunately we couldn't find the package we were looking for...
sleep 2
EOF
echo "alias bst-install='install'" >> ~/.bashrc
