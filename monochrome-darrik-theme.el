;;; monochrome-darrik-theme.el --- A dark Emacs 24 theme for your focused hacking sessions

;; Copyright (C) 2011-2014 Xavier Noria
;;
;; Author: Xavier Noria <fxn@hashref.com>
;;
;; Just throw this file into ~/.emacs.d and
;;
;;     M-x load-theme RET monochrome-darrik RET
;;
;; or put in your init file
;;
;;     (load-theme 'monochrome-darrik)
;;
;; This theme is based on the builtin dichromacy theme.
;;
;; Works with Emacs 24.

;; monochrome-darrik version by Rikard Glans <rikard@ecx.se>
;; Time-stamp: <2014-08-28 01:45:25>

(deftheme monochrome-darrik
  "Gray on black for your focused hacking sessions.")

(let ((class '((class color) (min-colors 10)))
      (black          "#000000")

      ;; whites
      (white          "#ffffff")
      (ivory          "#fffff0")
      (snow           "#fffafa")
      (floralwhite    "#fffaf0")
      (seashell       "#fff5ee")
      (lavenderblush  "#fff0f5")
      (oldlace        "#fdf5e6")
      (linen          "#faf0e6")
      (antiquewhite   "#faebd7")
      (ghostwhite     "#f8f8ff")
      (mintcream      "#f5fffa")
      (whitesmoke     "#f5f5f5")
      (beige          "#f5f5dc")
      (azure          "#f0ffff")
      (honeydew       "#f0fff0")
      (aliceblue      "#f0f8ff")

      ;; grays
      (gainsboro      "#DCDCDC")
      (lightgray      "#D3D3D3")
      (silver         "#C0C0C0")
      (darkgray       "#A9A9A9")
      (gray           "#808080")
      (lightslategray "#778899")
      (slategray      "#708090")
      (dimgray        "#696969")
      (darkslategray  "#2F4F4F")

      )

  (custom-theme-set-faces
   'monochrome-darrik

   `(default ((,class (:foreground ,lightgray :background ,black))))
   `(cursor ((,class (:background ,lightgray))))

   ;; Highlighting faces
   `(fringe ((t (:background "black" :foreground "light gray"))))
   `(highlight ((,class (:foreground ,black :background ,lightgray))))
   `(region ((,class (:foreground ,black :background ,lightgray))))
   `(region ((t (:background "dim gray" :foreground "white"))))
   `(secondary-selection ((,class (:foreground: ,black :background ,lightslategray))))
   `(isearch ((,class (:foreground ,black :background ,lightgray))))
   `(lazy-highlight ((,class (:foreground ,black :background ,lightgray))))
   `(linum ((,class (:foreground ,darkgray :slant italic))))
   `(trailing-whitespace ((,class (:background ,lavenderblush))))

   ;; Mode line faces
   `(mode-line ((t (:background "black" :foreground "#e5e5e5" :box (:line-width -1 :style released-button)))))
   `(mode-line-inactive ((t (:background "dim gray" :foreground "black" :box (:line-width -1 :style released-button)))))

   ;; Whitespace-mode
   `(whitespace-empty ((,class (:background unspecified :foreground ,lavenderblush))))
   `(whitespace-line ((,class (:background ,lightgray :foreground ,black))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,lightgray))))
   `(escape-glyph ((,class (:foreground ,lightgray))))
   `(error ((,class (:weight bold :slant italic :foreground ,lavenderblush))))
   `(warning ((,class (:foreground ,beige))))
   `(success ((,class (:foreground ,honeydew))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,lightgray))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,darkgray))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,lightgray))))
   `(font-lock-function-name-face ((,class (:foreground ,white))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,white))))
   `(font-lock-string-face ((,class (:foreground ,lightslategray))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,lightgray))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground ,lightslategray))))
   `(font-lock-warning-face ((,class (:foreground ,beige))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,lightgray))))
   `(link-visited ((,class (:underline t :foreground ,lightgray))))

   ;; Show-paren
   `(show-paren-match ((t (:background ,lightslategray))))
   `(show-paren-mismatch ((t (:background ,lavenderblush))))

   ;; Speedbar
   `(speedbar-button-face ((,class (:foreground ,darkgray))))
   `(speedbar-file-face ((,class (:foreground ,lightgray))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,white))))
   `(speedbar-tag-face ((,class (:foreground ,darkgray))))
   `(speedbar-selected-face ((,class (:underline ,lightgray :foreground ,lightgray))))
   `(speedbar-highlight-face ((,class (:weight bold :background ,black :foreground ,white))))

   ;; ido
   `(ido-first-match ((,class (:foreground ,lightgray))))
   `(ido-only-match ((,class (:underline ,lightgray :foreground ,lightgray))))
   `(ido-subdir ((,class (:weight bold :foreground ,white))))

   ;; MuMaMo
   `(mumamo-background-chunk-major ((,class (:background ,black))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,black))))
   `(mumamo-border-face-in ((,class (:slant unspecified :underline unspecified
                                     :weight bold :foreground ,white))))
   `(mumamo-border-face-out ((,class (:slant unspecified :underline unspecified
                                      :weight bold :foreground ,white))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-group-news-1-low ((,class (:foreground ,lightgray))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-group-news-2-low ((,class (:foreground ,lightgray))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-group-news-3-low ((,class (:foreground ,lightgray))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-group-news-4-low ((,class (:foreground ,lightgray))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-group-news-5-low ((,class (:foreground ,lightgray))))
   `(gnus-group-news-low ((,class (:foreground ,lightgray))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-group-mail-1-low ((,class (:foreground ,lightgray))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-group-mail-2-low ((,class (:foreground ,lightgray))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-group-mail-3-low ((,class (:foreground ,lightgray))))
   `(gnus-group-mail-low ((,class (:foreground ,lightgray))))
   `(gnus-header-content ((,class (:foreground ,lightgray))))
   `(gnus-header-from ((,class (:weight bold :foreground ,lightgray))))
   `(gnus-header-subject ((,class (:foreground ,lightgray))))
   `(gnus-header-name ((,class (:foreground ,lightgray))))
   `(gnus-header-newsgroups ((,class (:foreground ,lightgray))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,lightgray))))
   `(message-header-cc ((,class (:foreground ,lightgray))))
   `(message-header-other ((,class (:foreground ,lightgray))))
   `(message-header-subject ((,class (:foreground ,lightgray))))
   `(message-header-to ((,class (:weight bold :foreground ,lightgray))))
   `(message-cited-text ((,class (:slant italic :foreground ,lightgray))))
   `(message-separator ((,class (:weight bold :foreground ,lightgray))))

   ;; EShell
   `(eshell-prompt ((,class (:foreground ,white :bold t))))
   `(eshell-ls-archive ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-backup ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-clutter ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-directory ((,class (:foreground ,lightgray :bold t))))
   `(eshell-ls-executable ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-missing ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-product ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-readonly ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-special ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-symlink ((,class (:inherit eshell-ls-unreadable))))

   ;; Org-mode
   `(org-level-1        ((t (:bold nil :foreground ,gainsboro))))
   `(org-level-2        ((t (:bold nil :foreground ,silver))))
   `(org-level-3        ((t (:bold nil :foreground ,darkgray))))
   `(org-level-4        ((t (:bold nil :foreground ,gray))))
   `(org-link           ((t (:foreground ,lightslategray :underline t))))
   `(org-todo           ((t (:bold t :foreground ,lavenderblush))))
   `(org-done           ((t (:bold t :foreground ,honeydew))))
   `(org-table          ((t (:bold nil :foreground ,ghostwhite))))
   `(org-document-title ((t (:bold t :foreground ,whitesmoke))))
   `(org-date           ((t (:bold nil :foreground ,slategray))))

   ;; helm
   `(helm-header ((t (:foreground ,darkgray :background ,black :underline nil :box nil))))
   `(helm-source-header
     ((t (:foreground ,white
                      :background ,black
                      :underline nil
                      :weight bold
                      :box (:line-width 1 :style released-button)))))
   `(helm-selection ((t (:background ,lightgray :underline t :foreground ,black))))
   `(helm-selection-line ((t (:background ,black))))
   `(helm-visible-mark ((t (:foreground ,black :background ,white))))
   `(helm-candidate-number ((t (:foreground ,lightgray :background ,black))))
   `(helm-separator ((t (:foreground ,white :background ,black))))
   `(helm-time-zone-current ((t (:foreground ,lightgray :background ,black))))
   `(helm-time-zone-home ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-addressbook ((t (:foreground ,lightgray :background ,black))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-info ((t (:foreground ,lightgray :background ,black))))
   `(helm-bookmark-man ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-w3m ((t (:foreground ,white :background ,black))))
   `(helm-buffer-not-saved ((t (:foreground ,white :background ,black))))
   `(helm-buffer-process ((t (:foreground ,white :background ,black))))
   `(helm-buffer-saved-out ((t (:foreground ,lightgray :background ,black))))
   `(helm-buffer-size ((t (:foreground ,lightgray :background ,black))))
   `(helm-ff-directory ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-match ((t (:background "white" :foreground "black"))))
   `(helm-ff-file ((t (:foreground ,lightgray :background ,black :weight normal))))
   `(helm-ff-executable ((t (:foreground ,lightgray :background ,black :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,black :background ,white :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,white :background ,black))))
   `(helm-grep-file ((t (:foreground ,lightgray :background ,black))))
   `(helm-grep-finish ((t (:foreground ,lightgray :background ,black))))
   `(helm-grep-lineno ((t (:foreground ,lightgray :background ,black))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,white :background ,black))))
   `(helm-moccur-buffer ((t (:foreground ,white :background ,black))))
   `(helm-mu-contacts-address-face ((t (:foreground ,lightgray :background ,black))))
   `(helm-mu-contacts-name-face ((t (:foreground ,lightgray :background ,black))))

   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,lightgray))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified
                                          :slant unspecified :underline ,lightgray)))))

  ;; Magit
  '(magit-diff-add ((t (:foreground "dark sea green"))))
  '(magit-diff-del ((t (:foreground "light coral"))))
  '(magit-diff-file-header ((t (:box (:line-width 2 :color "grey75" :style released-button)))))
  '(magit-diff-hunk-header ((t (:weight bold))))
  '(magit-item-highlight ((t (:weight bold))))

  (custom-theme-set-variables
   'monochrome-darrik
   `(ansi-color-names-vector [,black ,lightgray ,darkgray ,lightslategray])))

;; Autoload for MELPA

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'monochrome-darrik)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monochrome-darrik-theme.el ends here
