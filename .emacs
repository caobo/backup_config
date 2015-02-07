;================================================
;               System Settings                 |
;              (Don't edit here)                |
;================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("5cd698ce53179b1e4eaa7917c992832a220600c973967904fea71e3980a46532" default)))
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;================================================
;               Personal Settings               |
;           (Adding My Settings Below)          |
;================================================

;================================================
;               Set Font                        |
;================================================
(set-frame-font "Monaco-16" nil t)

;================================================
;               Set Theme And Look              |
;================================================
;-------Set Theme----------------
(add-to-list 'custom-theme-load-path "~/.emacs.d/elisp")
(load-theme 'kingsajz t t)
(enable-theme 'kingsajz)

;-------High Light Line----------
(global-hl-line-mode)
(set-face-background hl-line-face "gray13")

;================================================
;               Add Evel Mode                   |
;================================================
(add-to-list 'load-path "~/.emacs.d/elisp/evil")
(require 'evil)
(evil-mode 1)

;================================================
;              Add plugins -- smex              |
;                          -- tabbar            |
;================================================
;-------Set Evil Mode------------
(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-x M-x") 'execute-extended-command)

;-------Set Tabbar---------------
(require 'tabbar)  
(tabbar-mode 1) 
(global-set-key [(meta k)] 'tabbar-backward)  
(global-set-key [(meta j)] 'tabbar-forward) 

;================================================
;              Others                           |
;================================================
(require 'generic-x)
(global-font-lock-mode 1)
(show-paren-mode 1)
(setq show-paren-style 'expression)
(column-number-mode t)
(global-linum-mode 1)
(setq diary-file "~/.emacs.d/diary")
(add-hook 'diary-hook 'appt-make-list)

;================================================
;             Hide Menubar                      |
;================================================
(tool-bar-mode 0)  
(menu-bar-mode 0)  
(scroll-bar-mode 0)  

;================================================
;             Xelatex Setting                   |
;================================================
;(setq-default TeX-engine 'xetex)
;(setq TeX-command-default "XeLaTeX")
;(setq-default TeX-PDF-mode t)
;(setq TeX-show-compilation t)
