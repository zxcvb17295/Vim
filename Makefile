# 宣告偽目標
.PHONY: init update help

# --- 變數 ---
PLUG_VIM     := $(HOME)/.vim/autoload/plug.vim
VIMRC        := $(HOME)/.vimrc
LOCAL_VIMRC  := $(PWD)/vimrc

# 預設目標：顯示幫助說明
help:
	@echo "Makefile 用法:"
	@echo "  make init    - 初始化 Vim 環境：安裝 vim-plug、連結 vimrc 並安裝插件。"
	@echo "  make update  - 更新此設定檔倉庫及所有 Vim 插件。"

# 初始化目標
init:
	@echo "==> 🚀 正在初始化 Vim 環境 (使用 vim-plug)..."

	@# 1. 如果 vim-plug 核心檔案不存在，則下載它。
	@if [ ! -f "$(PLUG_VIM)" ]; then \
		echo "未找到 vim-plug。正在從 GitHub 下載..."; \
		curl -fLo $(PLUG_VIM) --create-dirs \
		'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'; \ 
	else \
		echo "vim-plug 已存在。跳過下載。"; \
	fi

	@# 2. 創建 .vimrc 的符號連結。
	@echo "正在創建 .vimrc 的符號連結..."
	@ln -sf $(LOCAL_VIMRC) $(VIMRC)

	@# 3. 透過 vim-plug 安裝所有插件。
	@echo "正在安裝插件..."
	@vim +PlugInstall +qall

	@echo "==> ✅ Vim 環境初始化完成！"

# 更新目標
update:
	@echo "==> 🚀 正在更新設定檔與插件..."

	@# 1. 從 git 更新此設定檔倉庫。
	@echo "正在從 git 拉取最新設定..."
	@git pull

	@# 2. 透過 vim-plug 更新並清理插件。
	@echo "正在更新與清理插件..."
	@vim +PlugUpdate +PlugClean +qall

	@echo "==> ✅ 更新完成！"
