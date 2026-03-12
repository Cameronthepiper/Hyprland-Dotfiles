;;; doom-gruvbox-grove-theme.el --- A green-shifted Gruvbox for Doom Emacs
;;
;; Drop this file into:
;;   ~/.config/doom/themes/doom-gruvbox-grove-theme.el
;;
;; Then in ~/.config/doom/config.el:
;;   (setq doom-theme 'doom-gruvbox-grove)
;;
;; Run `doom sync` after adding the file.

(require 'doom-themes)

;;; Variables
(defgroup doom-gruvbox-grove-theme nil
  "Options for the gruvbox-grove theme."
  :group 'doom-themes)

(defcustom doom-gruvbox-grove-brighter-comments nil
  "If non-nil, comments are brighter and more visible."
  :group 'doom-gruvbox-grove-theme
  :type 'boolean)

;;; Theme definition
(def-doom-theme doom-gruvbox-grove
  "A green-shifted Gruvbox theme for Doom Emacs."

  ;; ── Palette ──────────────────────────────────────────────────────────────
  ;; name         default        256            16
  ((bg           '("#22261e"     "color-235"    nil))
   (bg-alt       '("#1d2117"     "color-234"    nil))
   (base0        '("#1d2117"     "color-234"    "black"))
   (base1        '("#22261e"     "color-235"    "brightblack"))
   (base2        '("#2a3322"     "color-236"    "brightblack"))
   (base3        '("#303529"     "color-237"    "brightblack"))
   (base4        '("#393e31"     "color-238"    "brightblack"))
   (base5        '("#42473a"     "color-239"    "brightblack"))
   (base6        '("#4c5143"     "color-240"    "brightblack"))
   (base7        '("#6d7d60"     "color-243"    "brightblack"))
   (base8        '("#8a9878"     "color-245"    "white"))
   (fg           '("#dde0c0"     "color-250"    nil))
   (fg-alt       '("#c8ceaa"     "color-248"    nil))

   (grey         base7)
   (red          '("#cc6655"     "color-167"    "red"))
   (orange       '("#a8943a"     "color-136"    "brightred"))   ; amber
   (green        '("#7fbf5f"     "color-107"    "green"))
   (teal         '("#55aaaa"     "color-73"     "brightgreen")) ; aqua
   (yellow       '("#b5c47a"     "color-149"    "yellow"))      ; moss
   (blue         '("#6699cc"     "color-68"     "blue"))
   (dark-blue    '("#3d6a73"     "color-66"     "darkblue"))
   (magenta      '("#cc99aa"     "color-175"    "magenta"))
   (violet       '("#cc99aa"     "color-175"    "brightmagenta"))
   (cyan         '("#55aaaa"     "color-73"     "cyan"))
   (dark-cyan    '("#427b58"     "color-65"     "darkcyan"))

   ;; Extra grove accents (used directly below)
   (lime         '("#a3c96b"     "color-149"    "brightgreen"))
   (sage         '("#8bbf70"     "color-107"    "green"))
   (forest       '("#6daa6d"     "color-71"     "green"))
   (fern         '("#5a9948"     "color-65"     "darkgreen"))
   (moss         '("#b5c47a"     "color-149"    "yellow"))
   (comment-col  '("#5a6b48"     "color-241"    "brightblack"))

   ;; ── Required Doom face slots ──────────────────────────────────────────
   (highlight      green)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        teal)
   (comments       (if doom-gruvbox-grove-brighter-comments fern comment-col))
   (doc-comments   (if doom-gruvbox-grove-brighter-comments fern comment-col))
   (constants      forest)
   (functions      lime)
   (keywords       green)
   (methods        lime)
   (operators      green)
   (type           sage)
   (strings        moss)
   (variables      fg)
   (numbers        forest)
   (region         base3)
   (error          red)
   (warning        orange)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; Modeline
   (modeline-fg              fg)
   (modeline-fg-alt          base7)
   (modeline-bg              base2)
   (modeline-bg-alt          base1)
   (modeline-bg-inactive     base1)
   (modeline-bg-alt-inactive base0))

  ;; ── Base faces ───────────────────────────────────────────────────────────
  (((line-number &override)
    :foreground base6)
   ((line-number-current-line &override)
    :foreground green :bold t)

   (font-lock-comment-face
    :foreground comments :slant 'italic)
   (font-lock-doc-face
    :foreground doc-comments :slant 'italic)
   (font-lock-builtin-face
    :foreground teal)
   (font-lock-keyword-face
    :foreground green :weight 'bold)
   (font-lock-constant-face
    :foreground forest)
   (font-lock-function-name-face
    :foreground lime)
   (font-lock-variable-name-face
    :foreground fg)
   (font-lock-type-face
    :foreground sage)
   (font-lock-string-face
    :foreground moss)
   (font-lock-number-face
    :foreground forest)
   (font-lock-warning-face
    :foreground orange :bold t)
   (font-lock-negation-char-face
    :foreground red)
   (font-lock-preprocessor-face
    :foreground blue)
   (font-lock-regexp-grouping-construct
    :foreground teal :bold t)
   (font-lock-regexp-grouping-backslash
    :foreground teal)

   ;; ── UI ──────────────────────────────────────────────────────────────────
   (cursor
    :background green)
   (hl-line
    :background base2)
   (region
    :background base3 :extend t)
   (highlight
    :background base3 :foreground fg)
   (secondary-selection
    :background base3)

   (fringe
    :background bg)
   (vertical-border
    :foreground base3)
   (window-divider
    :foreground base3)
   (window-divider-first-pixel
    :foreground base3)
   (window-divider-last-pixel
    :foreground base3)

   (show-paren-match
    :foreground lime :background base3 :bold t)
   (show-paren-mismatch
    :foreground red :background base3 :bold t)

   ;; ── Minibuffer / search ─────────────────────────────────────────────────
   (minibuffer-prompt
    :foreground green :bold t)
   (isearch
    :foreground bg :background lime :bold t)
   (isearch-fail
    :foreground red :background base3)
   (lazy-highlight
    :foreground bg :background fern)
   (match
    :foreground bg :background green :bold t)

   ;; ── Doom modeline ───────────────────────────────────────────────────────
   (doom-modeline-bar
    :background green)
   (doom-modeline-bar-inactive
    :background base5)
   (doom-modeline-buffer-path
    :foreground lime :bold t)
   (doom-modeline-buffer-file
    :foreground fg :bold t)
   (doom-modeline-buffer-modified
    :foreground orange :bold t)
   (doom-modeline-buffer-major-mode
    :foreground green :bold t)
   (doom-modeline-project-dir
    :foreground sage)
   (doom-modeline-info
    :foreground green)
   (doom-modeline-warning
    :foreground orange)
   (doom-modeline-urgent
    :foreground red)
   (doom-modeline-lsp-success
    :foreground green)
   (doom-modeline-lsp-warning
    :foreground orange)
   (doom-modeline-lsp-error
    :foreground red)
   (doom-modeline-evil-normal-state
    :foreground green :bold t)
   (doom-modeline-evil-insert-state
    :foreground lime :bold t)
   (doom-modeline-evil-visual-state
    :foreground sage :bold t)
   (doom-modeline-evil-replace-state
    :foreground red :bold t)
   (doom-modeline-evil-operator-state
    :foreground blue :bold t)
   (doom-modeline-evil-motion-state
    :foreground teal :bold t)
   (doom-modeline-evil-emacs-state
    :foreground magenta :bold t)

   ;; ── Completion (vertico / ivy / company) ────────────────────────────────
   (vertico-current
    :background base3 :foreground fg :bold t)
   (completions-common-part
    :foreground lime :bold t)
   (completions-first-difference
    :foreground green :bold t)

   (ivy-current-match
    :background base3 :foreground fg :bold t)
   (ivy-minibuffer-match-face-1
    :foreground fern)
   (ivy-minibuffer-match-face-2
    :foreground lime :bold t)
   (ivy-minibuffer-match-face-3
    :foreground green :bold t)
   (ivy-minibuffer-match-face-4
    :foreground sage :bold t)
   (ivy-confirm-face
    :foreground green)
   (ivy-match-required-face
    :foreground red)
   (ivy-virtual
    :foreground base7 :slant 'italic)
   (ivy-action
    :foreground lime)

   (company-tooltip
    :background base2 :foreground fg)
   (company-tooltip-selection
    :background base3 :foreground fg :bold t)
   (company-tooltip-common
    :foreground lime :bold t)
   (company-tooltip-annotation
    :foreground base7 :slant 'italic)
   (company-scrollbar-bg
    :background base3)
   (company-scrollbar-fg
    :background fern)
   (company-preview
    :foreground base7)
   (company-preview-common
    :foreground lime)

   ;; ── Magit / Git ─────────────────────────────────────────────────────────
   (magit-header-line
    :foreground lime :bold t)
   (magit-section-heading
    :foreground green :bold t)
   (magit-section-highlight
    :background base2)
   (magit-branch-local
    :foreground lime)
   (magit-branch-remote
    :foreground sage)
   (magit-branch-current
    :foreground green :bold t)
   (magit-tag
    :foreground orange)
   (magit-hash
    :foreground base7)
   (magit-dimmed
    :foreground base7)
   (magit-diff-added
    :foreground green :background "#1f2e18" :extend t)
   (magit-diff-added-highlight
    :foreground green :background "#253520" :bold t :extend t)
   (magit-diff-removed
    :foreground red :background "#2a1714" :extend t)
   (magit-diff-removed-highlight
    :foreground red :background "#331c19" :bold t :extend t)
   (magit-diff-context
    :foreground base7 :extend t)
   (magit-diff-context-highlight
    :foreground fg-alt :background base2 :extend t)
   (magit-diff-hunk-heading
    :foreground base7 :background base3)
   (magit-diff-hunk-heading-highlight
    :foreground fg :background base4 :bold t)
   (magit-process-ok
    :foreground green :bold t)
   (magit-process-ng
    :foreground red :bold t)

   (diff-added
    :foreground green :background "#1f2e18" :extend t)
   (diff-removed
    :foreground red :background "#2a1714" :extend t)
   (diff-changed
    :foreground orange :extend t)
   (diff-header
    :foreground base7 :bold t)
   (diff-file-header
    :foreground lime :bold t)

   ;; ── Org mode ────────────────────────────────────────────────────────────
   ;; Simple styling — consistent greens, no rainbow levels
   (org-level-1
    :foreground lime :bold t :height 1.1)
   (org-level-2
    :foreground sage :bold t)
   (org-level-3
    :foreground green)
   (org-level-4
    :foreground fern)
   (org-level-5
    :foreground forest)
   (org-level-6
    :foreground fern)
   (org-level-7
    :foreground fern)
   (org-level-8
    :foreground fern)

   (org-document-title
    :foreground green :bold t :height 1.2)
   (org-document-info
    :foreground base7 :slant 'italic)
   (org-document-info-keyword
    :foreground base6)

   (org-todo
    :foreground red :bold t)
   (org-done
    :foreground forest :bold t)
   (org-headline-done
    :foreground base7)

   (org-priority
    :foreground orange)
   (org-tag
    :foreground base7 :slant 'italic)
   (org-date
    :foreground teal :underline t)
   (org-link
    :foreground blue :underline t)
   (org-footnote
    :foreground teal :underline t)

   (org-block
    :background base2 :extend t)
   (org-block-begin-line
    :foreground fern :background base2 :slant 'italic :extend t)
   (org-block-end-line
    :foreground fern :background base2 :slant 'italic :extend t)
   (org-quote
    :background base2 :slant 'italic :extend t)
   (org-verbatim
    :foreground moss)
   (org-code
    :foreground moss)

   (org-checkbox
    :foreground green :bold t)
   (org-checkbox-statistics-done
    :foreground forest)
   (org-checkbox-statistics-todo
    :foreground red)

   (org-table
    :foreground fg-alt)
   (org-formula
    :foreground orange)
   (org-special-keyword
    :foreground base7 :slant 'italic)
   (org-meta-line
    :foreground base6 :slant 'italic)
   (org-drawer
    :foreground base6)
   (org-property-value
    :foreground fg-alt)

   (org-scheduled
    :foreground green)
   (org-scheduled-today
    :foreground lime :bold t)
   (org-scheduled-previously
    :foreground orange)
   (org-upcoming-deadline
    :foreground orange)
   (org-warning
    :foreground red :bold t)
   (org-agenda-date
    :foreground lime)
   (org-agenda-date-today
    :foreground green :bold t)
   (org-agenda-date-weekend
    :foreground sage)
   (org-agenda-structure
    :foreground green :bold t)
   (org-agenda-done
    :foreground forest)
   (org-ellipsis
    :foreground fern)

   ;; ── Treesitter ──────────────────────────────────────────────────────────
   (tree-sitter-hl-face:keyword
    :foreground green :bold t)
   (tree-sitter-hl-face:function
    :foreground lime)
   (tree-sitter-hl-face:function.call
    :foreground lime)
   (tree-sitter-hl-face:method
    :foreground lime)
   (tree-sitter-hl-face:method.call
    :foreground lime)
   (tree-sitter-hl-face:type
    :foreground sage)
   (tree-sitter-hl-face:type.builtin
    :foreground sage :bold t)
   (tree-sitter-hl-face:string
    :foreground moss)
   (tree-sitter-hl-face:string.special
    :foreground teal)
   (tree-sitter-hl-face:number
    :foreground forest)
   (tree-sitter-hl-face:constant
    :foreground forest)
   (tree-sitter-hl-face:constant.builtin
    :foreground forest :bold t)
   (tree-sitter-hl-face:variable
    :foreground fg)
   (tree-sitter-hl-face:variable.parameter
    :foreground magenta)
   (tree-sitter-hl-face:operator
    :foreground green)
   (tree-sitter-hl-face:punctuation.delimiter
    :foreground fern)
   (tree-sitter-hl-face:punctuation.bracket
    :foreground fern)
   (tree-sitter-hl-face:comment
    :foreground comments :slant 'italic)
   (tree-sitter-hl-face:attribute
    :foreground blue)
   (tree-sitter-hl-face:tag
    :foreground sage)

   ;; ── Rainbow delimiters ──────────────────────────────────────────────────
   (rainbow-delimiters-depth-1-face :foreground green)
   (rainbow-delimiters-depth-2-face :foreground lime)
   (rainbow-delimiters-depth-3-face :foreground sage)
   (rainbow-delimiters-depth-4-face :foreground teal)
   (rainbow-delimiters-depth-5-face :foreground blue)
   (rainbow-delimiters-depth-6-face :foreground magenta)
   (rainbow-delimiters-depth-7-face :foreground orange)
   (rainbow-delimiters-depth-unmatched-face :foreground red :bold t)

   ;; ── Whitespace / indent guides ──────────────────────────────────────────
   (whitespace-tab
    :foreground base4)
   (whitespace-newline
    :foreground base4)
   (whitespace-trailing
    :foreground red :background base2)
   (indent-guide-face
    :foreground base4)
   (highlight-indent-guides-character-face
    :foreground base4)
   (highlight-indent-guides-stack-character-face
    :foreground base5))

  ;; ── Extra variables ──────────────────────────────────────────────────────
  ())

;;; doom-gruvbox-grove-theme.el ends here
