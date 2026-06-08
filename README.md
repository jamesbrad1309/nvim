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

## ⌨️ Keymaps
The leader key is set to `space`.

### General
| Keymap | Action |
| --- | --- |
| `<leader>w` | Save file |
| `<leader>q` | Close buffer |
| `<leader>uw` | Toggle Line Wrap |
| `j` / `k` | Better navigation for wrapped lines |
| `<C-j>` / `<C-k>` | Move current line up/down (Normal mode) |
| `<C-j>` / `<C-k>` | Move selection up/down (Visual mode) |
| `ff` | Format buffer |

### Navigation
| Keymap | Action |
| --- | --- |
| `[b` / `]b` | Previous / Next Buffer |
| `<S-h>` / `<S-l>` | Previous / Next Buffer (Bufferline) |
| `[d` / `]d` | Previous / Next Diagnostic |
| `[q` / `]q` | Previous / Next Quickfix |
| `<leader>cd` | Open Diagnostic List |
| `<leader>7` | Toggle Outline (Lspsaga) |

### LSP & Symbols
| Keymap | Action |
| --- | --- |
| `K` | Hover Documentation |
| `gh` | LSP Finder |
| `gd` | Goto Definition |
| `gD` | Goto Declaration |
| `gI` | Goto Implementation |
| `gy` | Goto Type Definition |
| `pd` | Peek Definition |
| `pt` | Peek Type Definition |
| `pr` | Peek LSP References |
| `pi` | Peek Incoming Calls |
| `po` | Peek Outgoing Calls |
| `pe` | Jump to Next Diagnostic Error |
| `<leader>rn` | Rename Symbol |
| `<leader>.` | Code Action |
| `<leader>fsb` | Search LSP Symbols |
| `<leader>fSb` | Search Workspace Symbols |

### Search & Files
| Keymap | Action |
| --- | --- |
| `<leader>e` | Toggle File Explorer (Snacks) |
| `<leader>fF` | Find Files (Fast) |
| `<leader>fg` | Live Grep |
| `<leader>fsm` | Smart Find Files |
| `<leader>ff` | File Browser (Current File path) |
| `<leader>fb` | List Open Buffers |
| `<leader>fr` | List Recent Files |
| `<leader>fp` | Search & Switch Projects |
| `<leader>sb` | Telescope File Browser (Root) |
| `<leader>sB` | Telescope File Browser (Current Dir) |
| `<leader>fch` | Command History |
| `<leader>n` | Notification History |

### Git
| Keymap | Action |
| --- | --- |
| `<leader>lg` | Open Lazygit (Snacks) |
| `;c` | Open Lazygit (Plugin) |
| `<leader>gs` | Git Status |
| `<leader>gb` | Git Branches |

### Tools & Productivity
| Keymap | Action |
| --- | --- |
| `<leader>t` | Toggle Terminal |
| `<leader>cs` | Snapshot Code (Codesnap) |
| `<leader>Rs` | Send HTTP Request (Kulala) |
| `<leader>Ra` | Send All HTTP Requests |
| `<leader>Rb` | Open HTTP Scratchpad |
| `<leader>d` | Database UI (Dadbod) |
| `<leader><leader>f` | Hop to Word |

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
