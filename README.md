# Hyprland Dotfiles

Personal dotfiles for **Manjaro + Hyprland** on a ThinkPad E14 Gen 5.

> **i7-1355U · 40GB DDR4 · 512GB M.2 (Windows) · 256GB M.2 (Manjaro)**

---

# Gruvbox Material Warm

A medium-dark Gruvbox variant built on a warm grey background inspired by Material Design's dark tone. Classic Gruvbox cream foregrounds and yellow/orange/red accents on a `#32302f` base — lighter and warmer than stock Gruvbox dark.

### Screenshots

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/d5e31c0c-0eaa-42da-a660-48672c80dfe7" />

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/62cf6c0c-1a57-46d0-bf57-230d137b19cd" />

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/12c2a541-8875-4837-80bf-bc45e4104363" />

---

### Palette

#### Backgrounds

| Name      | Hex       | Usage                   |
|-----------|-----------|-------------------------|
| `bg-hard` | `#28262a` | Hardcoded dark           |
| `bg`      | `#32302f` | Main background          |
| `bg-soft` | `#3a3735` | Floats, sidebars         |
| `bg1`     | `#45403d` | Selection                |
| `bg2`     | `#504945` | Cursor line              |
| `bg3`     | `#5a5248` | Splits, columns          |
| `bg4`     | `#665c54` | Inactive statusline      |

#### Foregrounds

| Name      | Hex       | Usage                   |
|-----------|-----------|-------------------------|
| `fg-hard` | `#fbf1c7` | Brightest text           |
| `fg`      | `#ebdbb2` | Main text                |
| `fg-soft` | `#d5c4a1` | Dimmed text              |
| `fg1`     | `#bdae93` | Muted                    |
| `fg2`     | `#a89984` | More muted               |
| `fg3`     | `#928374` | Subtle                   |
| `fg4`     | `#7c6f64` | Very subtle              |

#### Accents

| Name        | Hex       | Usage                        |
|-------------|-----------|------------------------------|
| `yellow`    | `#d79921` | Keywords, active workspace   |
| `yellow-br` | `#fabd2f` | Search, bright highlights    |
| `orange`    | `#fe8019` | Functions, operators         |
| `orange-dk` | `#d65d0e` | Numbers                      |
| `red`       | `#cc241d` | Errors (dark)                |
| `red-br`    | `#fb4934` | Errors (bright)              |
| `green`     | `#98971a` | Strings (dark)               |
| `green-br`  | `#b8bb26` | Strings (bright)             |
| `blue`      | `#458588` | Special, macro               |
| `blue-br`   | `#83a598` | Types, builtins              |
| `purple`    | `#b16286` | Parameters, tags             |
| `purple-br` | `#d3869b` | Bright purple                |
| `aqua`      | `#689d6a` | Builtins (dark)              |
| `aqua-br`   | `#8ec07c` | Builtins (bright)            |
| `comment`   | `#665c54` | Comments                     |

---

### Themed Components

| Component  | File                                                  |
|------------|-------------------------------------------------------|
| Neovim     | `~/.config/nvim/colors/gruvbox-material-warm.lua`     |

---

### Install

```bash
cp gruvbox-material-warm.lua ~/.config/nvim/colors/
```

Then in your LazyVim config:

```lua
vim.cmd("colorscheme gruvbox-material-warm")
```

---

### vs Gruvbox Grove

| | Gruvbox Material Warm | Gruvbox Grove |
|---|---|---|
| Background | Warm grey-brown `#32302f` | Green-grey `#22261e` |
| Accents | Classic yellows, oranges, reds | Moss, lime, forest greens |
| Feel | Familiar Gruvbox, more breathing room | Green-shifted, earthy |

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
