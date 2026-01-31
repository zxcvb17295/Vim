# Vim 環境設定 (vim-plug)

此儲存庫包含一個個人化的 `vimrc` 設定檔以及一個用於全自動化安裝與更新的 `Makefile`。它使用 [vim-plug](https://github.com/junegunn/vim-plug) 作為插件管理器，它以速度快和易於使用著稱。

---

## 📜 功能說明

`Makefile` 提供了兩個主要的指令來管理您的 Vim 環境。

### `make init`
此指令用於**首次安裝**或**重置**您的 Vim 環境。它會執行以下步驟：
1.  **安裝 vim-plug**：檢查 `~/.vim/autoload/plug.vim` 是否存在。如果不存在，它會自動從 GitHub 下載 `plug.vim` 檔案，這是 `vim-plug` 的核心。
2.  **連結 `vimrc`**：將此目錄下的 `vimrc` 檔案透過符號連結的方式連結到您的家目錄 `~/.vimrc`。
3.  **安裝插件**：啟動 Vim 並自動執行 `:PlugInstall` 指令來並行安裝 `vimrc` 中定義的所有插件。

### `make update`
此指令用於**更新**您的環境。它會執行以下步驟：
1.  **更新設定檔**：執行 `git pull` 來獲取此儲存庫的最新變更。
2.  **更新插件**：啟動 Vim 並自動執行 `:PlugUpdate` 和 `:PlugClean` 來更新所有現有插件並移除 `vimrc` 中不再使用的插件。

---

## 🚀 使用教學

### 1. 安裝
只需在終端機中此目錄下執行：
```bash
make init
```

### 2. 如何新增一個插件

若要新增插件，請遵循 `vim-plug` 的簡單語法：

1.  **編輯 `vimrc`**：打開此目錄下的 `vimrc` 檔案。
2.  **宣告插件**：在 `call plug#begin()` 和 `call plug#end()` 之間，加入您想要的插件。例如，若要新增 `lightline.vim`：
    ```vim
    call plug#begin('~/.vim/plugged')
    " ...其他插件
    Plug 'itchyny/lightline.vim'  " 在此處加入您的新插件
    call plug#end()
    ```
3.  **安裝插件**：有兩種方式可以安裝：
    *   **方法A (透過 Makefile)**：回到終端機並執行 `make update`。
    *   **方法B (在 Vim 中)**：儲存 `vimrc` 檔案後，在 Vim 中執行指令 `:PlugInstall`。

---

## ✨ vim-plug 基本指令

*   `:PlugInstall` - 安裝 `vimrc` 中宣告的新插件。
*   `:PlugUpdate` - 更新所有插件。
*   `:PlugClean` - 移除 `vimrc` 中已刪除的插件（會提示確認）。
*   `:PlugStatus` - 查看插件的狀態。
