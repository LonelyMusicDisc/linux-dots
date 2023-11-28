;;; doom-sonokai-dark-theme.el --- a dark variant of Sonokai -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: July 15, 2019 (#303)
;; Author: sainnhe <https://github.com/sainnhe>
;; Maintainer:
;; Source: https://github.com/LonelyMusicDisc/sonokai-emacs
;;
;;; Commentary:
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-sonokai-dark-theme nil
  "Options for the `doom-sonokai-dark' theme."
  :group 'doom-themes)

(defcustom doom-sonokai-dark-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-sonokai-dark-theme
  :type 'boolean)

(defcustom doom-sonokai-dark-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-sonokai-dark-theme
  :type 'boolean)

(defcustom doom-sonokai-dark-brighter-text nil
  "If non-nil, default text will be brighter."
  :group 'doom-sonokai-dark-theme
  :type 'boolean)

(defcustom doom-sonokai-dark-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-sonokai-dark-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-sonokai-dark
  "A doom port of Sainnhe's Sonokai."

  ;; name        default   256       16
  ((bg         '("#2c2e34" "#2c2e34" "brightwhite" ))
   (fg         (if doom-sonokai-dark-brighter-text
                   '("#BBBBBB" "#BBBBBB" "brightwhite")
                 '("#e2e2e3" "#e2e2e3" "brightwhite")))

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#222327" "#222327" "white"       ))
   (fg-alt     '("#c5c4cc" "#c5c4cc" "white"       ))

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, base0 should be white and base8 should be black.
   (base0      '("#181819" "#073642" "black"       ))
   (base1      '("#2c2e34" "#2c2e34" "brightblack" ))
   (base2      '("#33353f" "#33353f" "brightblack" ))
   (base3      '("#363944" "#363944" "brightblack" ))
   (base4      '("#3b3e48" "#3b3e48" "brightblack" ))
   (base5      '("#414550" "#414550" "brightblack" ))
   (base6      '("#595f6f" "#595f6f" "brightblack" ))
   (base7      '("#e2e2e3" "#e2e2e3" "brightblack" ))
   (base8      '("#f0f0f0" "#f0f0f0" "white"       ))

   (grey       base4)
   (red        '("#fc5d7c" "#fc5d7c" "red"          ))
   (orange     '("#f39660" "#f39660" "brightred"    ))
   (green      '("#9ed072" "#9ed072" "green"        ))
   (teal       '("#5accb5" "#5accb5" "brightgreen"  ))
   (yellow     '("#e7c664" "#e7c664" "yellow"       ))
   (blue       '("#76cce0" "#76cce0" "brightblue"   ))
   (dark-blue  '("#b39df3" "#b39df3" "blue"         ))
   (magenta    '("#f538bf" "#f538bf" "magenta"      ))
   (violet     '("#8b46eb" "#8b46eb" "brightmagenta"))
   (cyan       '("#6fdeae" "#6fdeae" "brightcyan"   ))
   (dark-cyan  '("#45bbbf" "#45bbbf" "cyan"         ))

   ;; face categories -- required for all themes
   (highlight      blue)
   (vertical-bar   (doom-darken base1 0.5))
   (selection      dark-blue)
   (builtin        blue)
   (comments       (if doom-sonokai-dark-brighter-comments blue base6))
   (doc-comments   green)
   (constants      red)
   (functions      red)
   (keywords       red)
   (methods        cyan)
   (operators      orange)
   (type           yellow)
   (strings        yellow)
   (variables      fg)
   (numbers        dark-blue)
   (region         base0)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    yellow)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (-modeline-bright doom-sonokai-dark-brighter-modeline)
   (-modeline-pad
    (when doom-sonokai-dark-padded-modeline
      (if (integerp doom-sonokai-dark-padded-modeline) doom-sonokai-dark-padded-modeline 4)))

   (modeline-fg     nil)
   (modeline-fg-alt base5)

   (modeline-bg
    (if -modeline-bright
        base3
      `(,(doom-darken (car bg) 0.1) ,@(cdr base0))))
   (modeline-bg-alt
    (if -modeline-bright
        base3
      `(,(doom-darken (car bg) 0.15) ,@(cdr base0))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt (doom-darken bg 0.1)))


  ;;;; Base theme face overrides
  (((font-lock-comment-face &override)
    :background (if doom-sonokai-dark-brighter-comments (doom-lighten bg 0.05)))
   ((font-lock-keyword-face &override) :weight 'bold)
   ((font-lock-constant-face &override) :weight 'bold)
   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground fg)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if -modeline-bright base8 highlight))

   ;;;; centaur-tabs
   (centaur-tabs-active-bar-face :background blue)
   (centaur-tabs-modified-marker-selected
    :inherit 'centaur-tabs-selected :foreground blue)
   (centaur-tabs-modified-marker-unselected
    :inherit 'centaur-tabs-unselected :foreground blue)
   ;;;; company
   (company-tooltip-selection     :background dark-cyan)
   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)
   ;;;; doom-modeline
   (doom-modeline-bar :background blue)
   (doom-modeline-evil-emacs-state  :foreground magenta)
   (doom-modeline-evil-insert-state :foreground blue)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")
   ;;;; helm
   (helm-selection :inherit 'bold
                   :background selection
                   :distant-foreground bg
                   :extend t)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   (markdown-url-face    :foreground teal :weight 'normal)
   (markdown-reference-face :foreground base6)
   ((markdown-bold-face &override)   :foreground fg)
   ((markdown-italic-face &override) :foreground fg-alt)
   ;;;; outline <built-in>
   ((outline-1 &override) :foreground red)
   ((outline-2 &override) :foreground orange)
   ((outline-3 &override) :foreground yellow)
   ((outline-4 &override) :foreground green)
   ((outline-5 &override) :foreground blue)
   ((outline-6 &override) :foreground fg)
   ((outline-7 &override) :foreground (doom-darken red 0.4))
   ((outline-8 &override) :foreground (doom-darken orange 0.4))
   ;;;; org <built-in>
   ((org-block &override) :background base0)
   ((org-level-4 &override) :foreground green)
   ((org-block-begin-line &override) :foreground comments :background base0)
   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-alt))))

  ;;;; Base theme variable overrides-
  ;; ()
  )

;;; doom-sonokai-dark-theme.el ends here
