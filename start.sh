if [[ -n $CONFIG_URL ]]; then
	wget -q $CONFIG_URL -O /app/config.env
fi

if [[ -n $TOKEN_PICKLE_URL ]]; then
	wget -q $TOKEN_PICKLE_URL -O /app/token.pickle
fi

if [[ -n $ACCOUNTS_ZIP_URL ]]; then
	wget -q $ACCOUNTS_ZIP_URL -O /app/accounts.zip
	unzip accounts.zip -d /app/accounts
	rm accounts.zip
fi

MirrorX
