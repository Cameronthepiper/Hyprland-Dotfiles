# Hyprland Dotfiles

Personal dotfiles for **Manjaro + Hyprland** on a ThinkPad E14 Gen 5.

> **i7-1355U · 40GB DDR4 · 512GB M.2 (Windows) · 256GB M.2 (Manjaro)**

---

## Gruvbox Grove

A green-shifted Gruvbox colour scheme. Dark grey-green backgrounds with moss, lime and forest green accents replacing the classic Gruvbox yellows. Reds and ambers are kept but muted.

### Screenshots

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/6a90c39b-6b4a-4a18-a1fd-d3608a9e3e15" />

---

### Palette

#### Backgrounds

| Name      | Hex       | Usage                  |
|-----------|-----------|------------------------|
| `bg-hard` | `#1d2117` | Hardcoded dark          |
| `bg`      | `#22261e` | Main background         |
| `bg-soft` | `#2a3322` | Floats, sidebars        |
| `bg1`     | `#303529` | Selection               |
| `bg2`     | `#393e31` | Cursor line             |
| `bg3`     | `#42473a` | Splits, columns         |
| `bg4`     | `#4c5143` | Inactive statusline     |

#### Foregrounds

| Name      | Hex       | Usage                  |
|-----------|-----------|------------------------|
| `fg-hard` | `#f5f0d8` | Brightest text          |
| `fg`      | `#dde0c0` | Main text               |
| `fg-soft` | `#c8ceaa` | Dimmed text             |
| `fg1`     | `#a8b490` | Muted                   |
| `fg2`     | `#8a9878` | More muted              |
| `fg3`     | `#6d7d60` | Subtle                  |
| `fg4`     | `#5a6b4e` | Very subtle             |

#### Accents

| Name      | Hex       | Usage                        |
|-----------|-----------|------------------------------|
| `green`   | `#7fbf5f` | Keywords, active workspace   |
| `lime`    | `#a3c96b` | Functions, prompt accent     |
| `moss`    | `#b5c47a` | Strings                      |
| `forest`  | `#6daa6d` | Numbers, booleans            |
| `sage`    | `#8bbf70` | Types, namespaces            |
| `fern`    | `#5a9948` | Delimiters, brackets         |
| `red`     | `#cc6655` | Errors, deletions            |
| `amber`   | `#a8943a` | Warnings                     |
| `aqua`    | `#55aaaa` | Builtins, tray               |
| `blue`    | `#6699cc` | Special, bluetooth           |
| `purple`  | `#cc99aa` | Parameters, pulseaudio       |
| `comment` | `#5a6b48` | Comments                     |

---

### Themed Components

| Component     | File                                              |
|---------------|---------------------------------------------------|
| Neovim        | `~/.config/nvim/colors/gruvbox-grove.lua`         |
| Alacritty     | `~/.config/alacritty/alacritty.toml`              |
| Waybar        | `~/.config/waybar/style.css`                      |
| Rofi          | `~/.config/rofi/gruvbox-grove.rasi`               |
| Doom Emacs    | `~/.config/doom/themes/doom-gruvbox-grove-theme.el` |

---

### Install

Each component is a standalone file — drop them into the paths above and restart the relevant application.

**Neovim** — add to `lazy.lua` or equivalent:
```lua
vim.cmd("colorscheme gruvbox-grove")
```

**Doom Emacs** — add to `config.el`:
```elisp
(add-to-list 'custom-theme-load-path "~/.config/doom/themes")
(setq doom-theme 'doom-gruvbox-grove)
```
Then run `doom sync` and restart Emacs.

**Waybar / Alacritty / Rofi** — hot-reload on save, or restart the application.

---

### Stack

| Role          | Tool                              |
|---------------|-----------------------------------|
| WM            | Hyprland 0.53.3                   |
| Bar           | Waybar                            |
| Terminal      | Alacritty 0.16.1                  |
| Shell         | Bash 5.3.9                        |
| Editor        | Neovim + LazyVim                  |
| Emacs         | Doom Emacs                        |
| Launcher      | Rofi                              |
| Music         | ncspot                            |
| Font          | JetBrainsMono Nerd Font Mono      |
| Fetch         | neofetch                          |
