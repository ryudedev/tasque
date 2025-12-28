include configs/.env_{ENV}

# 環境変数の確認を行うコマンド（全コマンドに必ず含める）
confirm_env:
	@echo "=============================="
	@echo "ENV: $(ENV)"
	@echo "=============================="
	@echo "Are you sure you want to continue? (y/n)"
	@read answer; \
	if [ "$$answer" != "y" ]; then \
		echo "Aborting..."; \
		exit 1; \
	fi
