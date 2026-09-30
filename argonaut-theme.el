;;; argonaut-theme.el --- Dark theme based on the Argonaut palette -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Version: 0.1.0
;; Package-Requires: ((emacs "27.1") (doom-themes "2.3.0"))
;; Keywords: faces
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; An Argonaut color theme built with `doom-themes'.  It works with Doom Emacs
;; and with a standard Emacs installation that has `doom-themes' installed.
;; Load it with `(load-theme 'argonaut t)' or set `doom-theme' to `argonaut'.
;;
;;; Code:

(require 'doom-themes)

(def-doom-theme argonaut
  "A dark Doom theme based on the Argonaut terminal palette."
  :background-mode 'dark

  ((argonaut-bg      '("#0e1019" "#0e1019" "black"))
   (argonaut-bg-alt  '("#171a24" "#171a24" "black"))
   (argonaut-surface '("#20232d" "#20232d" "brightblack"))
   (argonaut-border '("#343844" "#343844" "brightblack"))
   (argonaut-muted   '("#858895" "#858895" "brightblack"))
   (argonaut-fg      '("#fffaf4" "#fffaf4" "white"))

   ;; Argonaut terminal colors, in normal and bright order.
   (argonaut-black        '("#232323" "#232323" "black"))
   (argonaut-red          '("#ff000f" "#ff000f" "red"))
   (argonaut-green        '("#8ce10b" "#8ce10b" "green"))
   (argonaut-yellow       '("#ffb900" "#ffb900" "yellow"))
   (argonaut-blue         '("#008df8" "#008df8" "blue"))
   (argonaut-magenta      '("#6d43a6" "#6d43a6" "magenta"))
   (argonaut-cyan         '("#00d8eb" "#00d8eb" "cyan"))
   (argonaut-white        '("#ffffff" "#ffffff" "white"))
   (argonaut-bright-black '("#444444" "#444444" "brightblack"))
   (argonaut-bright-red   '("#ff2740" "#ff2740" "brightred"))
   (argonaut-bright-green '("#abe15b" "#abe15b" "brightgreen"))
   (argonaut-bright-yellow '("#ffd242" "#ffd242" "brightyellow"))
   (argonaut-bright-blue  '("#0092ff" "#0092ff" "brightblue"))
   (argonaut-bright-magenta '("#9a5feb" "#9a5feb" "brightmagenta"))
   (argonaut-bright-cyan  '("#67fff0" "#67fff0" "brightcyan"))
   (argonaut-bright-white '("#ffffff" "#ffffff" "brightwhite"))

   (bg       argonaut-bg)
   (bg-alt   argonaut-bg-alt)
   (fg       argonaut-fg)
   (fg-alt   argonaut-muted)

   ;; Doom's ordered background scale runs from darkest to lightest.
   (base0 argonaut-bg)
   (base1 argonaut-bg-alt)
   (base2 argonaut-surface)
   (base3 argonaut-border)
   (base4 argonaut-muted)
   (base5 '("#a5a8b2" "#a5a8b2" "brightwhite"))
   (base6 '("#c6c8ce" "#c6c8ce" "white"))
   (base7 '("#e4e5e8" "#e4e5e8" "white"))
   (base8 argonaut-fg)

   (grey       argonaut-muted)
   (red        argonaut-red)
   (orange     argonaut-yellow)
   (green      argonaut-green)
   (teal       argonaut-cyan)
   (yellow     argonaut-bright-yellow)
   (blue       argonaut-blue)
   (dark-blue  argonaut-blue)
   (magenta    argonaut-magenta)
   (violet     argonaut-bright-magenta)
   (cyan       argonaut-bright-cyan)
   (dark-cyan  argonaut-cyan)

   (highlight      argonaut-blue)
   (vertical-bar   argonaut-border)
   (selection      argonaut-blue)
   (builtin        argonaut-bright-cyan)
   (comments       argonaut-muted)
   (doc-comments   argonaut-muted)
   (constants      argonaut-bright-yellow)
   (functions      argonaut-bright-blue)
   (keywords       argonaut-red)
   (methods        argonaut-blue)
   (operators      argonaut-fg)
   (type           argonaut-green)
   (strings        argonaut-bright-green)
   (variables      argonaut-fg)
   (numbers        argonaut-bright-magenta)
   (region         argonaut-blue)
   (error          argonaut-red)
   (warning        argonaut-yellow)
   (success        argonaut-green)
   (vc-modified    argonaut-yellow)
   (vc-added       argonaut-green)
   (vc-deleted     argonaut-red))

  ((default :background bg :foreground fg)
   (cursor :background argonaut-red :foreground bg)
   (fringe :background bg :foreground argonaut-border)
   (vertical-border :foreground argonaut-border)
   (window-divider :foreground argonaut-border)
   (shadow :foreground argonaut-muted)
   (link :foreground argonaut-bright-blue :underline t)
   (link-visited :foreground argonaut-bright-magenta :underline t)
   (button :inherit 'link)
   (highlight :background argonaut-surface :foreground fg)
   (hl-line :background argonaut-bg-alt)
   (region :background argonaut-blue :foreground bg
           :distant-foreground bg :extend t)
   (secondary-selection :background argonaut-border :foreground fg :extend t)
   (match :background argonaut-yellow :foreground bg)
   (isearch :background argonaut-red :foreground fg :weight 'bold)
   (lazy-highlight :background argonaut-surface :foreground argonaut-bright-yellow)
   (trailing-whitespace :background argonaut-red)
   (escape-glyph :foreground argonaut-bright-magenta)
   (error :foreground argonaut-bright-red :weight 'bold)
   (warning :foreground argonaut-bright-yellow :weight 'bold)
   (success :foreground argonaut-bright-green :weight 'bold)
   (minibuffer-prompt :foreground argonaut-bright-blue :weight 'bold)
   (header-line :background argonaut-bg-alt :foreground fg :box nil)
   (tooltip :background argonaut-surface :foreground fg)
   ((line-number &override) :foreground argonaut-muted :background bg)
   ((line-number-current-line &override) :foreground fg :background bg :weight 'bold)
   (fill-column-indicator :foreground argonaut-border)

   (mode-line :background argonaut-surface :foreground fg
              :box `(:line-width 1 :color ,argonaut-border))
   (mode-line-inactive :background argonaut-bg-alt :foreground argonaut-muted
                       :box `(:line-width 1 :color ,argonaut-bg-alt))
   (mode-line-buffer-id :foreground fg :weight 'bold)
   (mode-line-emphasis :foreground argonaut-bright-cyan :weight 'bold)
   (mode-line-highlight :foreground argonaut-bright-yellow :box nil)

   ;; Doom's `SPC TAB TAB' lists workspaces in the echo area with this face.
   (+workspace-tab-selected-face :background argonaut-bright-yellow
                                 :foreground argonaut-bg :weight 'bold)

   ;; Emacs tab-bar and tab-line tabs.
   (tab-bar :background argonaut-bg :foreground argonaut-muted)
   (tab-bar-tab :background argonaut-bright-yellow :foreground argonaut-bg
                :weight 'bold :box `(:line-width 2 :color ,argonaut-bright-yellow))
   (tab-bar-tab-inactive :background argonaut-bg-alt :foreground argonaut-muted
                         :box `(:line-width 1 :color ,argonaut-bg-alt))
   (tab-line :background argonaut-bg :foreground argonaut-muted)
   (tab-line-tab :background argonaut-bg-alt :foreground argonaut-muted)
   (tab-line-tab-current :background argonaut-bright-yellow :foreground argonaut-bg
                         :weight 'bold
                         :box `(:line-width 2 :color ,argonaut-bright-yellow))

   ((font-lock-builtin-face &override) :foreground argonaut-bright-cyan)
   ((font-lock-comment-face &override) :foreground argonaut-muted :slant 'italic)
   ((font-lock-comment-delimiter-face &override) :foreground argonaut-muted :slant 'italic)
   ((font-lock-doc-face &override) :foreground argonaut-bright-cyan)
   ((font-lock-string-face &override) :foreground argonaut-bright-green)
   ((font-lock-function-name-face &override) :foreground argonaut-bright-blue)
   ((font-lock-variable-name-face &override) :foreground fg)
   ((font-lock-keyword-face &override) :foreground argonaut-bright-red :weight 'semi-bold)
   ((font-lock-type-face &override) :foreground argonaut-green)
   ((font-lock-constant-face &override) :foreground argonaut-bright-yellow)
   ((font-lock-number-face &override) :foreground argonaut-bright-magenta)
   ((font-lock-operator-face &override) :foreground argonaut-cyan)

   ;; The ANSI faces preserve the full 16-colour terminal palette in buffers.
   (ansi-color-black :foreground argonaut-black :background argonaut-black)
   (ansi-color-red :foreground argonaut-red :background argonaut-red)
   (ansi-color-green :foreground argonaut-green :background argonaut-green)
   (ansi-color-yellow :foreground argonaut-yellow :background argonaut-yellow)
   (ansi-color-blue :foreground argonaut-blue :background argonaut-blue)
   (ansi-color-magenta :foreground argonaut-magenta :background argonaut-magenta)
   (ansi-color-cyan :foreground argonaut-cyan :background argonaut-cyan)
   (ansi-color-white :foreground argonaut-white :background argonaut-white)
   (ansi-color-bright-black :foreground argonaut-bright-black :background argonaut-bright-black)
   (ansi-color-bright-red :foreground argonaut-bright-red :background argonaut-bright-red)
   (ansi-color-bright-green :foreground argonaut-bright-green :background argonaut-bright-green)
   (ansi-color-bright-yellow :foreground argonaut-bright-yellow :background argonaut-bright-yellow)
   (ansi-color-bright-blue :foreground argonaut-bright-blue :background argonaut-bright-blue)
   (ansi-color-bright-magenta :foreground argonaut-bright-magenta :background argonaut-bright-magenta)
   (ansi-color-bright-cyan :foreground argonaut-bright-cyan :background argonaut-bright-cyan)
   (ansi-color-bright-white :foreground argonaut-bright-white :background argonaut-bright-white)

   ;; Completion faces.
   (vertico-current :background argonaut-magenta :foreground fg
                    :weight 'bold :extend t)
   (corfu-current :background argonaut-surface :foreground fg)
   (company-tooltip-selection :background argonaut-surface :foreground fg)
   (company-tooltip-common :foreground argonaut-bright-yellow :weight 'bold)
   (consult-preview-match :background argonaut-surface :foreground fg)
   (orderless-match-face-0 :foreground argonaut-bright-yellow :weight 'bold)
   (orderless-match-face-1 :foreground argonaut-bright-cyan :weight 'bold)
   (orderless-match-face-2 :foreground argonaut-bright-magenta)
   (orderless-match-face-3 :foreground argonaut-green)

   ;; Org faces.
   (org-document-title :foreground argonaut-bright-cyan :weight 'bold)
   (org-level-1 :foreground argonaut-bright-red :weight 'bold)
   (org-level-2 :foreground argonaut-bright-blue :weight 'bold)
   (org-level-3 :foreground argonaut-bright-green)
   (org-level-4 :foreground argonaut-bright-yellow)
   (org-level-5 :foreground argonaut-bright-magenta)
   (org-level-6 :foreground argonaut-bright-cyan)
   (org-level-7 :foreground argonaut-green)
   (org-level-8 :foreground argonaut-yellow)
   (org-todo :foreground argonaut-bright-red :weight 'bold)
   (org-done :foreground argonaut-green :weight 'bold)
   (org-date :foreground argonaut-bright-blue :underline t)
   (org-code :foreground argonaut-bright-green)
   (org-block :background argonaut-bg-alt :extend t)
   (org-block-begin-line :background argonaut-bg-alt :foreground argonaut-muted :extend t)
   (org-block-end-line :background argonaut-bg-alt :foreground argonaut-muted :extend t)

   ;; Diff and Magit faces.
   (diff-added :foreground argonaut-bright-green :background argonaut-bg-alt :extend t)
   (diff-removed :foreground argonaut-bright-red :background argonaut-bg-alt :extend t)
   (diff-changed :foreground argonaut-bright-yellow :background argonaut-bg-alt :extend t)
   (magit-section-highlight :background argonaut-bg-alt)
   (magit-diff-context-highlight :background argonaut-surface :extend t)
   (magit-diff-added :foreground argonaut-bright-green :background argonaut-bg :extend t)
   (magit-diff-added-highlight :foreground argonaut-bright-green :background argonaut-bg-alt :extend t)
   (magit-diff-removed :foreground argonaut-bright-red :background argonaut-bg :extend t)
   (magit-diff-removed-highlight :foreground argonaut-bright-red :background argonaut-bg-alt :extend t)

   ;; Doom modeline faces.
   (doom-modeline-project-name :background argonaut-bright-yellow
                               :foreground argonaut-bg :weight 'bold :box nil)
   (doom-modeline-project-dir :background argonaut-bright-yellow
                              :foreground argonaut-bg :weight 'bold :box nil)
   (doom-modeline-project-root-dir :background argonaut-bright-yellow
                                   :foreground argonaut-bg :weight 'bold :box nil)
   (doom-modeline-project-parent-dir :foreground argonaut-bright-yellow :weight 'bold)
   (doom-modeline-workspace-name :background argonaut-bright-yellow
                                 :foreground argonaut-bg :weight 'bold :box nil)
   (doom-modeline-bar :background argonaut-bright-red)
   (doom-modeline-bar-inactive :background argonaut-border))

  ())

(provide-theme 'argonaut)
(provide 'argonaut-theme)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;; argonaut-theme.el ends here
