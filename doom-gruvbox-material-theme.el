;;; doom-gruvbox-material.el --- inspired by Gruvbox material
;;; https://github.com/sainnhe/gruvbox-material/blob/master/autoload/gruvbox_material.vim
(require 'doom-themes)

;;
(defgroup doom-gruvbox-material-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-gruvbox-material-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-gruvbox-material-theme
  :type 'boolean)

(defcustom doom-gruvbox-material-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-gruvbox-material-theme
  :type 'boolean)

(defcustom doom-gruvbox-material-comment-bg doom-gruvbox-material-brighter-comments
  "If non-nil, comments will have a subtle, darker background. Enhancing their
legibility."
  :group 'doom-gruvbox-material-theme
  :type 'boolean)

(defcustom doom-gruvbox-material-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-gruvbox-material-theme
  :type '(choice integer boolean))

(defcustom doom-gruvbox-material-background nil
  "Choose between \"soft\", \"medium\" and \"hard\" background contrast.
Defaults to \"soft\""
  :group 'doom-gruvbox-material-theme
  :type 'string)

(defcustom doom-gruvbox-material-palette nil
  "Choose between \"material\", \"mix\" and \"original\" color palette.
Defaults to \"material\""
  :group 'doom-gruvbox-material-theme
  :type 'string)

;; colors from
;; https://github.com/sainnhe/gruvbox-material-vscode/tree/master/src/palette
(cond
 ((equal doom-gruvbox-material-background "hard")
  (setq gm/bg           "#202020"       ;; bg
        gm/bg-alt       "#2a2827"       ;; bg2
        gm/base0        "#131414"       ;; bg1
        gm/base1        "#2a2827"       ;; bg2
        gm/base2        "#2e2c2b"       ;; bg3
        gm/base3        "#131414"       ;; bg4
        gm/base4        "#32302f"       ;; bg5
        gm/base5        "#46403d"       ;; bg6
        gm/base6        "#514945"       ;; bg7
        gm/base7        "#5a524c"       ;; bg8
        gm/base8        "#7c6f64"))     ;; grey0
 ((equal doom-gruvbox-material-background "medium")
  (setq gm/bg           "#292828"       ;; bg
        gm/bg-alt       "#32302f"       ;; bg2
        gm/base0        "#1c1c1c"       ;; bg1
        gm/base1        "#32302f"       ;; bg2
        gm/base2        "#383432"       ;; bg3
        gm/base3        "#3c3836"       ;; bg4
        gm/base4        "#45403d"       ;; bg5
        gm/base5        "#504945"       ;; bg6
        gm/base6        "#5a524c"       ;; bg7
        gm/base7        "#665c54"       ;; bg8
        gm/base8        "#7c6f64"))     ;; grey0
 (t
  (setq gm/bg           "#181919"       ;; bg
        gm/bg-alt       "#3c3836"       ;; bg2
        gm/base0        "#242424"       ;; bg1
        gm/base1        "#3c3836"       ;; bg2
        gm/base2        "#403c3a"       ;; bg3
        gm/base3        "#45403d"       ;; bg4
        gm/base4        "#504945"       ;; bg5
        gm/base5        "#5a524c"       ;; bg6
        gm/base6        "#665c54"       ;; bg7
        gm/base7        "#7c6f64"       ;; bg8
        gm/base8        "#7c6f64")))    ;; grey0

(cond
 ((equal doom-gruvbox-material-palette "original")
  (setq gm/fg           "#ebdbb2"       ;; fg
        gm/fg-alt       "#c9b99a"       ;; fg1
        gm/red          "#fb4934"
        gm/dark-red     "#b85651"       ;;dimRed
        gm/orange       "#fe8019"
        gm/dark-orange  "#bd6f3e"       ;;dimOrange
        gm/green        "#b8bb26"
        gm/dark-green   "#8f9a52"       ;;dimGreen
        gm/teal         "#8ec07c"       ;; aqua
        gm/dark-teal    "#72966c"       ;; dimAqua
        gm/yellow       "#fabd2f"
        gm/dark-yellow  "#c18f41"       ;; dimYellow
        gm/blue         "#83a598"
        gm/dark-blue    "#68948a"       ;; dimBlue
        gm/magenta      "#d3869b"       ;; purple
        gm/violet       "#ab6c7d"       ;; dimPurple
        gm/cyan         "#8ec07c"       ;; aqua
        gm/dark-cyan    "#72966c"))     ;; dimAqua
 ((equal doom-gruvbox-material-palette "mix")
  (setq gm/fg           "#e2cca9"       ;; fg
        gm/fg-alt       "#c5b18d"       ;; fg1
        gm/red          "#f2594b"
        gm/dark-red     "#b85651"       ;;dimRed
        gm/orange       "#f28534"
        gm/dark-orange  "#bd6f3e"       ;;dimOrange
        gm/green        "#b0b846"
        gm/dark-green   "#8f9a52"       ;;dimGreen
        gm/teal         "#8bba7f"       ;; aqua
        gm/dark-teal    "#72966c"       ;; dimAqua
        gm/yellow       "#e9b143"
        gm/dark-yellow  "#c18f41"       ;; dimYellow
        gm/blue         "#80aa9e"
        gm/dark-blue    "#68948a"       ;; dimBlue
        gm/magenta      "#d3869b"       ;; purple
        gm/violet       "#ab6c7d"       ;; dimPurple
        gm/cyan         "#8bba7f"       ;; aqua
        gm/dark-cyan    "#72966c"))     ;; dimAqua
 (t
  (setq gm/fg           "#d4be98"       ;; fg
        gm/fg-alt       "#c5b18d"       ;; fg1
        gm/red          "#ea6962"
        gm/dark-red     "#b85651"       ;; dimRed
        gm/orange       "#e78a4e"
        gm/dark-orange  "#bd6f3e"       ;; dimOrange
        gm/green        "#a9b665"
        gm/dark-green   "#8f9a52"       ;; dimGreen
        gm/teal         "#89b482"       ;; aqua
        gm/dark-teal    "#72966c"       ;; dimAqua
        gm/yellow       "#d8a657"
        gm/dark-yellow  "#c18f41"       ;; dimYellow
        gm/blue         "#7daea3"
        gm/dark-blue    "#68948a"       ;; dimBlue
        gm/magenta      "#d3869b"       ;; purple
        gm/violet       "#ab6c7d"       ;; dimPurple
        gm/cyan         "#89b482"       ;; aqua
        gm/dark-cyan    "#72966c")))    ;; dimAqua

(def-doom-theme doom-gruvbox-material
  "A dark theme inspired by gruvbox material"
  ;; name       default                 256       16
  ((bg          `(,gm/bg                nil       nil            ))
   (bg-alt      `(,gm/bg-alt            nil       nil            ))
   (base0       `(,gm/base0             "black"   "black"        ))
   (base1       `(,gm/base1             "#1e1e1e" "brightblack"  ))
   (base2       `(,gm/base2             "#2e2e2e" "brightblack"  ))
   (base3       `(,gm/base3             "#262626" "brightblack"  ))
   (base4       `(,gm/base4             "#3f3f3f" "brightblack"  ))
   (base5       `(,gm/base5             "#525252" "brightblack"  ))
   (base6       `(,gm/base6             "#6b6b6b" "brightblack"  ))
   (base7       `(,gm/base7             "#979797" "brightblack"  ))
   (base8       `(,gm/base8             "#dfdfdf" "white"        ))
   (fg          `(,gm/fg                "#bfbfbf" "brightwhite"  ))
   (fg-alt      `(,gm/fg-alt            "#2d2d2d" "white"        ))

   (grey        base8)
   (red         `(,gm/red               "#ff6655" "red"          ))
   (dark-red    `(,gm/dark-red          "#ff6655" "red"          ))
   (orange      `(,gm/orange            "#dd8844" "brightred"    ))
   (dark-orange `(,gm/dark-orange       "#dd8844" "brightred"    ))
   (green       `(,gm/green             "#99bb66" "green"        ))
   (dark-green  `(,gm/dark-green        "#99bb66" "green"        ))
   (teal        `(,gm/teal              "#44b9b1" "brightgreen"  ))
   (dark-teal   `(,gm/dark-teal         "#44b9b1" "brightgreen"  ))
   (yellow      `(,gm/yellow            "#ECBE7B" "yellow"       ))
   (dark-yellow `(,gm/dark-yellow       "#ECBE7B" "yellow"       ))
   (blue        `(,gm/blue              "#51afef" "brightblue"   ))
   (dark-blue   `(,gm/dark-blue         "#2257A0" "blue"         ))
   (magenta     `(,gm/magenta           "#c678dd" "brightmagenta"))
   (violet      `(,gm/violet            "#a9a1e1" "magenta"      ))
   (cyan        `(,gm/cyan              "#46D9FF" "brightcyan"   ))
   (dark-cyan   `(,gm/dark-cyan         "#5699AF" "cyan"         ))

   ;; face categories -- required for all themes
   (highlight       blue)
   (vertical-bar   (doom-darken base1 0.1))
   (selection       dark-blue)
   (builtin         magenta)
   (comments        (if doom-gruvbox-material-brighter-comments dark-cyan base8))
   (doc-comments   (doom-darken (if doom-gruvbox-material-brighter-comments green green) 0.15))
   (constants      violet)
   (functions      cyan)
   (keywords       red)
   (methods        cyan)
   (operators      blue)
   (type           orange)
   (strings        green)
   (variables      blue)
   (numbers        magenta)
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (hidden     `(,(car bg) "black" "black"))
   (-modeline-bright doom-gruvbox-material-brighter-modeline)
   (-modeline-pad
    (when doom-gruvbox-material-padded-modeline
      (if (integerp doom-gruvbox-material-padded-modeline) doom-gruvbox-material-padded-modeline 4)))

   (modeline-fg     fg)
   (modeline-fg-alt fg-alt)

   (modeline-bg
    (if -modeline-bright
        (doom-darken blue 0.475)
      `(,(doom-darken (car bg-alt) 0.15) ,@(cdr base0))))
   (modeline-bg-l
    (if -modeline-bright
        (doom-darken blue 0.45)
      `(,(doom-darken (car bg-alt) 0.1) ,@(cdr base0))))
   (modeline-bg-inactive   `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg-alt)))
   (modeline-bg-inactive-l `(,(car bg-alt) ,@(cdr base1))))


  ;; --- extra faces ------------------------
  ((elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")
   (evil-goggles-default-face :inherit 'region :background (doom-blend region bg 0.5))

   ((line-number &override) :foreground (doom-darken fg-alt 0.4))
   ((line-number-current-line &override) :foreground fg)

   (font-lock-comment-face
    :foreground comments
    :background (if doom-gruvbox-material-comment-bg (doom-lighten bg 0.05)))
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis
    :foreground (if -modeline-bright base8 highlight))

   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   ;; Doom modeline
   (doom-modeline-bar :background (if -modeline-bright modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground blue :weight 'bold)

   ;; ivy-mode
   (ivy-current-match :background blue :distant-foreground base0 :weight 'bold)

   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;; LaTeX-mode
   (font-latex-math-face :foreground dark-green)
   (font-latex-script-char-face :foreground dark-blue)

   ;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))

   ;; org-mode
   (org-hide :foreground hidden)
   (solaire-org-hide-face :foreground hidden)
   (org-document-info :foreground blue)
   (org-document-info-keyword :foreground dark-blue)
   (org-document-title :foreground blue)
   (org-block-begin-line :foreground dark-cyan
                         :background bg-alt)
   (org-block-end-line :foreground dark-cyan
                         :background bg-alt)
   (org-block :foreground fg :background bg-alt)
   (org-meta-line :foreground dark-cyan)
   (org-drawer :foreground dark-yellow)
   (org-level-1 :foreground magenta :weight 'semi-bold)
   (org-level-2 :foreground cyan :weight 'semi-bold)
   (org-level-3 :foreground green :weight 'semi-bold)
   (org-level-4 :foreground yellow :weight 'semi-bold)
   (org-level-5 :foreground violet :weight 'semi-bold)
   (org-level-6 :foreground dark-cyan :weight 'semi-bold)
   (org-level-7 :foreground dark-green :weight 'semi-bold)
   (org-level-8 :foreground dark-yellow :weight 'semi-bold)

   ;; magit
   (magit-section-heading :foreground blue :weight 'bold)

   ;; ivy
   (ivy-current-match :foreground blue :background bg)
   (ivy-minibuffer-match-face-2 :foreground blue :background bg)

   ;; rainbow and parenthesis
   (rainbow-delimiters-depth-1-face :foreground dark-orange)
   (rainbow-delimiters-depth-2-face :foreground violet)
   (rainbow-delimiters-depth-3-face :foreground dark-cyan)
   (rainbow-delimiters-depth-4-face :foreground dark-yellow)
   (rainbow-delimiters-unmatched-face: :foreground fg :background 'nil)
   (show-paren-match :foreground bg :background dark-red)

   ;; evil
   (evil-ex-lazy-highlight :foreground fg :background violet)

   ;; others
   (isearch :foreground fg :background violet)

   ;; column indicator
   (fill-column-indicator :foreground bg-alt :background bg-alt))
  ;; --- extra variables ---------------------
  ()
  )

;;; doom-gruvbox-material-theme.el ends here
