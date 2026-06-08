# Neovim Configuration

A personal, highly-optimized Neovim configuration focused on speed, aesthetics, and a powerful developer experience. Built with Lua and featuring a curated selection of modern plugins.

## 🎨 Aesthetics
- **Colorscheme:** [Flexoki](https://github.com/kepano/flexoki-neovim) (Dark)
- **Status Line:** Custom minimalist status line.
- **UI Components:** Powered by [Noice.nvim](https://github.com/folke/noice.nvim), [Nvim-Notify](https://github.com/rcarriga/nvim-notify), and [Incline.nvim](https://github.com/b0o/incline.nvim).
- **Bufferline:** [Bufferline.nvim](https://github.com/akinsho/bufferline.nvim) for clean tab management.
- **Cursor:** [Smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim) for smooth movement.

## 🚀 Key Features
- **Package Manager:** [lazy.nvim](https://github.com/folke/lazy.nvim) for fast, concurrent plugin loading.
- **LSP & Tools:** [Lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) for enhanced UI, [Mason.nvim](https://github.com/williamboman/mason.nvim) for easy LSP/DAP/Linter/Formatter management.
- **Navigation:** [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) and [Snacks.nvim](https://github.com/folke/snacks.nvim) (Explorer, Picker, Terminal).
- **Git Integration:** [Gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) and [Lazygit](https://github.com/kdheepak/lazygit.nvim).
- **Productivity:**
    - [Hop.nvim](https://github.com/smoka7/hop.nvim) for fast jumping.
    - [Kulala.nvim](https://github.com/mistweaverco/kulala.nvim) (HTTP client).
    - [Vim-Dadbod-UI](https://github.com/kristijanhusak/vim-dadbod-ui) (Database management).
    - [Codesnap.nvim](https://github.com/mistricky/codesnap.nvim) for beautiful code screenshots.
    - [Wakatime](https://github.com/wakatime/vim-wakatime) for coding statistics.

## ⌨️ Essential Keymaps
The leader key is set to `space`.

| Keymap | Action |
| --- | --- |
| `<leader>w` | Save file |
| `<leader>q` | Close buffer |
| `<leader>e` | Toggle File Explorer (Snacks) |
| `<leader>fF` | Find Files (Snacks) |
| `<leader>fg` | Live Grep (Snacks) |
| `<leader>ff` | File Browser (Telescope) |
| `gd` | Goto Definition |
| `K` | Hover Documentation (Lspsaga) |
| `<leader>rn` | Rename Symbol (Lspsaga) |
| `<leader>.` | Code Action (Lspsaga) |
| `<leader>lg` | Open Lazygit |
| `<leader>t` | Toggle Terminal (Snacks) |
| `<leader>cs` | Snapshot code (Codesnap) |

## 🛠️ Prerequisites
- **Neovim** (>= 0.10 recommended)
- **Nerd Font:** [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts) (configured at size 12)
- **Tools:** `git`, `ripgrep`, `fd`, `lazygit` (optional but recommended)

## 📦 Installation
1. Backup your current configuration:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```
2. Clone this repository:
   ```bash
   git clone <repository-url> ~/.config/nvim
   ```
3. Open Neovim; `lazy.nvim` will automatically bootstrap and install all plugins.

## 📄 License
MIT
