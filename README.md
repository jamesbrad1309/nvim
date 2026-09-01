# Neovim Configuration

A personal, high-performance Neovim configuration built with Lua, focused on aesthetics, responsive navigation, and an integrated modern development workflow.

---

## 📁 Directory Structure

```text
~/.config/nvim/
├── init.lua                   # Entry point: loads generic options, keymaps, and lazy.nvim
├── lazy-lock.json             # Pinned lockfile for all lazy-loaded plugins
├── colors/
│   └── xeno.lua               # Custom theme profile
├── lua/
│   ├── config/
│   │   ├── generic.lua        # Editor options, custom filetypes, and autocommands
│   │   ├── keymaps.lua        # Global and leader keybindings
│   │   └── lazy.lua           # lazy.nvim bootstrapper and theme loader
│   └── plugins/               # Modular plugin specification files
│       ├── bufferline.lua
│       ├── codesnap.lua
│       ├── color-scheme.lua
│       ├── comment.lua
│       ├── gitsigns.lua
│       ├── glow.lua
│       ├── go.lua
│       ├── hop.lua
│       ├── icons.lua
│       ├── incline.lua
│       ├── kulala.lua
│       ├── lazydev.lua
│       ├── lazygit.lua
│       ├── lspsaga.lua
│       ├── mason-lspconfig.lua
│       ├── mason.lua
│       ├── neoconf.lua
│       ├── neoscroll.lua
│       ├── noice.lua
│       ├── nvim-lspconfig.lua
│       ├── nvim-notify.lua
│       ├── nvim-surround.lua
│       ├── nvim-tmux-navigation.lua
│       ├── nvim-treesitter.lua
│       ├── rest.lua
│       ├── smear-cursor.lua
│       ├── snacks-config.lua
│       ├── status-line.lua
│       ├── telescope-file-browser.lua
│       ├── telescope.lua
│       ├── vim-dabod-ui.lua
│       ├── wakatime.lua
│       ├── which-key.lua
│       └── wilder.lua
└── README.md
```

---

## ⚙️ Core Settings & Options (`lua/config/generic.lua`)

| Setting | Value | Description |
| :--- | :--- | :--- |
| `termguicolors` | `true` | Enables 24-bit TrueColor support |
| `number` & `relativenumber` | `true` | Hybrid line numbering for quick jumping |
| `encoding` & `fileencoding` | `utf-8` | Full UTF-8 character encoding support |
| `tabstop` & `shiftwidth` | `2` | 2-space indentation width |
| `expandtab` & `smarttab` | `true` | Convert tabs to spaces with smart tab stops |
| `autoindent` & `smartindent` | `true` | Automatic code block indentation |
| `wrap` & `linebreak` | `true` | Soft line wrapping breaking at words without line alteration |
| `scrolloff` | `10` | Keeps 10 lines of context above and below the cursor |
| `splitbelow` & `splitright` | `true` | New splits open below or to the right naturally |
| `splitkeep` | `"cursor"` | Stabilizes scroll/cursor position when opening/closing splits |
| `hlsearch` & `ignorecase` | `true` | Highlighted searches with case-insensitive matching |
| `inccommand` | `"split"` | Shows incremental live substitution preview in a split window |
| `cmdheight` | `1` | Minimal command-line screen height |
| `showmode` | `false` | Disables default `-- INSERT --` mode text (handled by statusline) |
| `mouse` | `""` | Mouse disabled to prioritize keyboard-driven workflow |
| `guifont` | `JetBrainsMono Nerd Font:h12` | Default GUI / terminal nerd font specification |

### Custom Filetypes & Autocommands
- **Custom Filetype Detection:**
  - `.http` / `.rest` &rarr; `http` (associated with Kulala HTTP client)
  - `.tsx` &rarr; `typescriptreact`
- **Format on Save (`BufWritePre`):** Automatically triggers `vim.lsp.buf.format()` asynchronously prior to writing buffers.
- **Directory Hijack (`VimEnter`):** Automatically invokes `Telescope file_browser` when opening directories directly (e.g. `nvim .`).

---

## 📦 Plugin Ecosystem

All plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim) with lazy-loading enabled across events, filetypes, and commands.

### 1. LSP, Completion & Development Tools
| Plugin | Repository | Description / Highlights |
| :--- | :--- | :--- |
| **nvim-lspconfig** | [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Native LSP client configuration with automatic inlay hints activation on attach |
| **mason.nvim** | [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) | Portable package manager for LSP servers, DAP servers, linters, and formatters |
| **mason-lspconfig.nvim** | [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Automatically manages and bridges Mason servers with `lspconfig` |
| **lspsaga.nvim** | [nvimdev/lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) | Enhanced LSP UI (breadcrumbs winbar, floating hover docs, code action indicators, outline tree) |
| **lazydev.nvim** | [folke/lazydev.nvim](https://github.com/folke/lazydev.nvim) | Configures LuaLS for Neovim config, plugins, and `vim.uv` runtime types |
| **neoconf.nvim** | [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim) | Manages global and project-local LSP/settings configurations via JSON/YAML files |
| **go.nvim** | [ray-x/go.nvim](https://github.com/ray-x/go.nvim) | Comprehensive Go language development plugin |
| **guihua.lua** | [ray-x/guihua.lua](https://github.com/ray-x/guihua.lua) | Floating UI component library required by `go.nvim` |

### 2. Syntax, Treesitter & Editing
| Plugin | Repository | Description / Highlights |
| :--- | :--- | :--- |
| **nvim-treesitter** | [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | High-speed AST syntax highlighting and code parsing across 22+ languages |
| **Comment.nvim** | [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) | Smart, powerful comment toggle operator |
| **nvim-surround** | [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround) | Add, change, and delete surrounding delimiter pairs (`ys`, `cs`, `ds`) |

### 3. UI, Aesthetics & Status
| Plugin | Repository | Description / Highlights |
| :--- | :--- | :--- |
| **tokyonight.nvim** | [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Active color scheme (`storm` variant) with custom Go semantic token highlight styling |
| **noice.nvim** | [folke/noice.nvim](https://github.com/folke/noice.nvim) | Replaces cmdline, popupmenu, and messages with floating UI views |
| **nvim-notify** | [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify) | Animated, minimalist notification popups |
| **lualine.nvim** | [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Custom statusline with file path, line count, diff, search count, LSP diagnostics & git branch |
| **bufferline.nvim** | [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Tab/buffer line with LSP diagnostic indicators and Snacks Explorer offsets |
| **incline.nvim** | [b0o/incline.nvim](https://github.com/b0o/incline.nvim) | Floating window filename badge in the top-right corner with devicons and contrast coloring |
| **smear-cursor.nvim** | [sphamba/smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim) | Smooth fluid animation trails for cursor motions |
| **neoscroll.nvim** | [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) | Smooth scrolling physics for `<C-u>`, `<C-d>`, `<C-b>`, `<C-f>` |
| **wilder.nvim** | [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim) | Interactive modal suggestion menu for command-line and search |
| **which-key.nvim** | [folke/which-key.nvim](https://github.com/folke/which-key.nvim) | Popup panel displaying available keybindings and structured groups |
| **nvim-web-devicons** | [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icon glyphs for UI elements |
| **termicons.nvim** | [mskelton/termicons.nvim](https://github.com/mskelton/termicons.nvim) | Terminal and filetype color icon support |

### 4. Search, Navigation & Terminal
| Plugin | Repository | Description / Highlights |
| :--- | :--- | :--- |
| **snacks.nvim** | [folke/snacks.nvim](https://github.com/folke/snacks.nvim) | High-performance QoL suite: Fast Picker, File Explorer, Lazygit wrapper, Floating Terminal, Dashboard, Indent guides, and Notifier |
| **telescope.nvim** | [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Highly extensible fuzzy finder for files, buffers, symbols, and diagnostics |
| **telescope-file-browser.nvim** | [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) | File manager extension with grouped folders, hidden files, and vim-like navigation |
| **hop.nvim** | [smoka7/hop.nvim](https://github.com/smoka7/hop.nvim) | EasyMotion-like jump navigation across words and lines |
| **nvim-tmux-navigation** | [alexghergh/nvim-tmux-navigation](https://github.com/alexghergh/nvim-tmux-navigation) | Seamless navigation between Neovim splits and tmux panes |

### 5. Git, Database & Productivity
| Plugin | Repository | Description / Highlights |
| :--- | :--- | :--- |
| **gitsigns.nvim** | [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git gutter indicators, staged/unstaged status, and inline git blame |
| **lazygit.nvim** | [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) | Floating window integration for the `lazygit` TUI |
| **kulala.nvim** | [mistweaverco/kulala.nvim](https://github.com/mistweaverco/kulala.nvim) | Feature-rich REST and HTTP client with scratchpad and multi-request runners |
| **vim-dadbod** | [tpope/vim-dadbod](https://github.com/tpope/vim-dadbod) | Database controller engine |
| **vim-dadbod-ui** | [kristijanhusak/vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui) | Interactive UI drawer for managing connections, tables, and queries |
| **vim-dadbod-completion** | [kristijanhusak/vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion) | SQL autocomplete provider for Dadbod buffers |
| **codesnap.nvim** | [mistricky/codesnap.nvim](https://github.com/mistricky/codesnap.nvim) | Generates beautiful code snapshot images |
| **glow.nvim** | [ellisonleao/glow.nvim](https://github.com/ellisonleao/glow.nvim) | Markdown live preview directly inside a Neovim floating window |
| **vim-wakatime** | [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime) | Automatic metric and time tracking via WakaTime |

---

## 🛠️ Language Servers & Parsers

### Mason Auto-Installed Language Servers
Configured in `lua/plugins/mason-lspconfig.lua`:
- **Web & Frontend:** `html`, `cssls`, `tailwindcss`, `graphql`, `ts_ls` (TypeScript/JavaScript), `eslint`, `biome`
- **Backend & Systems:** `gopls` (Go), `pyright` (Python), `lua_ls` (Lua), `bashls` (Bash/Shell), `vimls` (VimScript)
- **DevOps & Formats:** `dockerls`, `docker_compose_language_service`, `nginx_language_server`, `yamlls`
- **Writing:** `grammarly`

> **Note on `gopls`:** Configured with advanced analyzers enabled (`shadow`, `nilness`, `unusedparams`, `unusedvariable`, `unusedwrite`), full documentation hover, `gofumpt`, staticcheck, code lenses (`generate`, `test`, `tidy`), and comprehensive parameter/type inlay hints.

### Treesitter Parsers
Auto-installed and syntax-highlighted in `lua/plugins/nvim-treesitter.lua`:
`lua`, `vim`, `vimdoc`, `javascript`, `typescript`, `tsx`, `bash`, `html`, `css`, `scss`, `python`, `go`, `gomod`, `gosum`, `gowork`, `markdown`, `markdown_inline`, `query`, `regex`, `http`, `json`, `jsonc`, `xml`.

---

## ⌨️ Keybindings

Leader keys:
- **`mapleader`** = `<Space>`
- **`maplocalleader`** = `\`

### 1. General & Editing
| Keymap | Mode | Action |
| :--- | :---: | :--- |
| `<leader>w` | `n` | Save file (`:w<CR>`) |
| `<leader>q` | `n` | Close buffer (`:bd<CR>`) |
| `<leader>uw` | `n` | Toggle line wrapping |
| `j` / `k` | `n` | Move through visual lines smoothly when wrapped |
| `<C-j>` / `<C-k>` | `n` | Move current line down / up |
| `<C-j>` / `<C-k>` | `v` | Move visual selection down / up |
| `ff` | `n` | Format buffer (`vim.lsp.buf.format`) |
| `<leader>?` | `n` | Open buffer-local keymaps cheat sheet (Which-Key) |

### 2. Navigation & Buffers
| Keymap | Mode | Action |
| :--- | :---: | :--- |
| `[b` / `]b` | `n` | Previous / Next buffer |
| `<S-h>` / `<S-l>` | `n` | Previous / Next buffer (Bufferline cycle) |
| `[d` / `]d` | `n` | Jump to Previous / Next diagnostic (with float window) |
| `[q` / `]q` | `n` | Previous / Next quickfix item |
| `<leader><leader>f` | `n` | Hop word jump (`HopWord`) |

### 3. LSP & Diagnostics
| Keymap | Mode | Action |
| :--- | :---: | :--- |
| `K` | `n` | LSP Hover Documentation (Lspsaga) |
| `gh` | `n` | LSP Finder (Definitions, references, implementation) |
| `gd` | `n` | Goto Definition (Snacks Picker) |
| `gD` | `n` | Goto Declaration (Snacks Picker) |
| `gI` | `n` | Goto Implementation (Snacks Picker) |
| `gy` | `n` | Goto Type Definition (Snacks Picker) |
| `pd` | `n` | Peek Definition (Lspsaga floating preview) |
| `pt` | `n` | Peek Type Definition (Lspsaga) |
| `pr` | `n` | Peek LSP References (Snacks Picker) |
| `pi` | `n` | Peek Incoming Calls (Snacks Picker) |
| `po` | `n` | Peek Outgoing Calls (Snacks Picker) |
| `pe` | `n` | Jump to Next Diagnostic Error (Lspsaga) |
| `<leader>.` | `n` | Code Actions menu (Lspsaga) |
| `<leader>co` | `n` | Organize imports (`source.organizeImports`) |
| `<leader>rn` | `n` | Rename symbol (Lspsaga) |
| `<leader>7` | `n` | Toggle Symbols Outline sidebar (Lspsaga) |
| `<leader>cd` | `n` | Open Diagnostics location list |
| `<leader>fsb` | `n` | Search LSP Document Symbols |
| `<leader>fSb` | `n` | Search Workspace Symbols |

### 4. File Search & Pickers
| Keymap | Mode | Action |
| :--- | :---: | :--- |
| `<leader>e` | `n` | Toggle File Explorer tree (Snacks) |
| `<leader>fF` | `n` | Fast Find Files (Snacks Picker) |
| `<leader>fsm` | `n` | Smart Find Files (Snacks Picker) |
| `<leader>fg` | `n` | Live Grep search (Snacks Picker) |
| `<leader>fb` | `n` | Search open buffers |
| `<leader>fr` | `n` | Search recent files |
| `<leader>fp` | `n` | Search & Switch Projects (opens Telescope in selected dir) |
| `<leader>fch` | `n` | Command history picker |
| `<leader>fn` / `<leader>n` | `n` | Show Notification history |
| `<leader>ff` | `n` | Telescope File Browser (Current file directory) |
| `<leader>sb` | `n` | Telescope File Browser (Workspace root) |
| `<leader>sB` | `n` | Telescope File Browser (Current file path) |

### 5. Git Integration
| Keymap | Mode | Action |
| :--- | :---: | :--- |
| `<leader>lg` | `n` | Open Lazygit (via Snacks) |
| `;c` | `n` | Open Lazygit (via LazyGit plugin) |
| `<leader>gs` | `n` | Git Status picker |
| `<leader>gb` | `n` | Git Branches picker |

### 6. Tools & Productivity
| Keymap | Mode | Action |
| :--- | :---: | :--- |
| `<leader>t` | `n` | Toggle Floating Terminal (Snacks) |
| `<leader>d` | `n` | Open Database UI in new tab (`vim-dadbod-ui`) |
| `<leader>Rs` | `n` | Send current HTTP request under cursor (`kulala`) |
| `<leader>Ra` | `n` | Send all HTTP requests in buffer (`kulala`) |
| `<leader>Rb` | `n` | Open HTTP scratchpad (`kulala`) |
| `<leader>cs` | `n` | Snapshot code screenshot (`codesnap`) |
| `<leader>mp` | `n` | Toggle Glow Markdown preview window |

---

## 📋 Prerequisites

- **Neovim** (>= 0.10 recommended)
- **Nerd Font:** [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts) (configured at size 12)
- **System Tools:**
  - `git`
  - `ripgrep` (for fast live grepping)
  - `fd` (for file finding)
  - `lazygit` (optional, for git UI integration)
  - `glow` (optional, for CLI markdown rendering)

---

## 🚀 Installation & Setup

1. **Backup existing configuration:**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. **Clone the repository:**
   ```bash
   git clone <repository-url> ~/.config/nvim
   ```

3. **Launch Neovim:**
   ```bash
   nvim
   ```
   `lazy.nvim` will automatically bootstrap itself and install all required plugins, treesitter parsers, and Mason language servers.

---

## 📄 License

Distributed under the [MIT License](LICENSE).
