;;;;总体设置
(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
;(menu-bar-mode -1)
;(global-set-key [f10] 'menu-bar-mode)
;(global-set-key [f9] 'tool-bar-mode)
(global-set-key [f8] 'other-window)
(global-set-key [f10] 'evil-mode)
(global-set-key [f9] 'anything)
(global-set-key [f1] 'bookmark-set)
(global-set-key [f2] 'list-bookmarks)
(global-set-key [f11] 'goto-line)
;;cua-mode
;(require 'cua)
(cua-mode t)

(global-auto-revert-mode  1)
;;自动补全括号
;; operators
;(setq skeleton-pair t)
;(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
;(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
;(global-set-key (kbd "<") 'skeleton-pair-insert-maybe)
;(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)

;(set-background-color "green")
;;滚动时舒服
(setq scroll-margin 3
       scroll-conservatively 10000)

(setq calendar-week-start-day 1)
;(calendar)  ;;自启动

;;字体设置
;(set-frame-font "Comic Sans MS-11")
;; Setting English Font
(set-face-attribute
'default nil :font "Monaco 12")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset
(font-spec :family "华文仿宋" :size 20)))

(line-number-mode t)
(global-linum-mode t)
(column-number-mode t)

;(setq mouse-yank-at-point t)

(setq x-select-enable-clipboard t)

(fset 'yes-or-no-p 'y-or-n-p)

(w32-send-sys-command 61488)

(setq display-time-24hr-format t)
(display-time)
(setq display-time-day-and-date t)

(setq auto-image-file-mode t)

;;当指针到一个括号时，自动显示所匹配的另一个括号  
(show-paren-mode t)  
;;高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处  
(setq show-paren-style 'parenthesis) ;;好像也没太大作用  

(setq make-backup-files nil)

(setq default-directory "e:/documents/note/")

;;色彩设置
(set-cursor-color "pink")
;(set-mouse-color "black")
;(set-foreground-color "purple")
(set-background-color "#253960")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq frame-title-format
'("%S" (buffer-file-name "%f"
(dired-directory dired-directory "%b"))))

;;;扩展
(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                            ("marmalade" . "http://marmalade-repo.org/packages/")))
;                            ("melpa" . "http://melpa.milkbox.net/packages/")))

(global-set-key [f12] 'list-packages)

;;;总的el文件的目录设置
(add-to-list 'load-path "d:/ls")
;(require 'yasnippet-bundle)
(add-to-list 'load-path
	     "~/.emacs.d/elpa/yasnippet-0.8.0")
(require 'yasnippet)
(yas-global-mode 1)

;(speedbar 1)
(setq speedbar-show-unknown-files t)

(require 'rect-mark)
;(require 'isearch+)
;(require 'generic-x)

;;基础设置
;(require 'basic-edit-toolkit)
;(require 'lazycat-toolkit)
;(require 'window-extension)
;(require 'buffer-extension)
;(require 'org-extension)
;(require 'paste2)
;智能括号
;(require 'highlight-parentheses)

;代码折叠
;(require 'semantic-tag-folding nil 'noerror)
;(global-semantic-tag-folding-mode 1)


;;common lisp 的设置
(add-to-list 'load-path "D:/sbcl/")
(add-to-list 'load-path "D:/slime/")
(add-to-list 'load-path "D:/ccl/")
(add-to-list 'load-path "D:\\Program Files\\acl81")
;(setq inferior-lisp-program "sbcl")
;(setq inferior-lisp-program "D:\\Program Files\\acl8\\alisp.exe")
(setq inferior-lisp-program "D:/ccl/wx86cl64.exe")
(require 'slime-autoloads)
(slime-setup '(slime-fancy))

;;allegro
; This is sample code for starting and specifying defaults to the
; Emacs-Lisp interface. 
 (push "D:\\Program Files\\acl81\\eli" load-path)
 (load "fi-site-init.el")
;
 (setq fi:common-lisp-image-name "D:\\Program Files\\acl81\\allegro-ansi.exe")
 (setq fi:common-lisp-image-file "D:\\Program Files\\acl81\\allegro-ansi.dxl")
 (setq fi:common-lisp-directory "D:\\Program Files\\acl81")
(defun allegro ()
  (interactive)
  (fi:common-lisp "*common-lisp*"
                  "D:\\Program Files\\acl81"
                  "D:\\Program Files\\acl81\\mlisp.exe"
                  '("+B" "+cn")
                  "localhost"
                  "D:\\Program Files\\acl81\\mlisp.dxl"))

;
;(require 'hippie-expand-slime)
;(add-hook 'slime-mode-hook 'set-up-slime-hippie-expand)
;(add-hook 'slime-repl-mode-hook 'set-up-slime-hippie-expand))

;;mathematica 设置 没有用
;(add-to-list 'load-path "D:/math/")
;(require 'mathematica)

;;mathematica设置
(load-file "D:/math/mathematica.el")
(setq mathematica-command-line "D:\\Program Files\\Wolfram Research\\Mathematica\\9.0\\math.exe") 

;;w3m配置项
(add-to-list 'load-path "D:/emacs-w3m/")
(add-to-list 'exec-path "D:/w3m/") 
;指定w3m可执行程序，所在的执行路径
(require 'w3m)
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq w3m-default-display-inline-images t)
(setq w3m-default-toggle-inline-images t)
(setq w3m-home-page "http://www.baidu.com")

(setq browse-url-browser-function 'w3m-browse-url)                
(setq w3m-view-this-url-new-session-in-background t)

;;c/c++设置
(require 'gtags)
(add-hook 'c-mode-common-hook
          '(lambda()
             (gtags-mode 1)
             (gtags-make-complete-list)
             ))

(require 'cedet)
(global-ede-mode t)
;;ecb设置
;(require 'ecb)
(require 'ecb-autoloads)
;(setq ecb-auto-activate t)
(setq ecb-tip-of-the-day nil)
;激活ecb 
(global-set-key [C-f4] 'ecb-activate)
;隐藏和显示ecb窗口
(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)

;;;;  semantic
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(geiser-active-implementations (quote (racket)))
 '(geiser-default-implementation (quote racket))
 '(geiser-racket-use-gracket-p t)
 '(py-complete-function nil)
 '(semantic-default-submodes (quote (global-semantic-decoration-mode global-semantic-idle-completions-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode global-semantic-mru-bookmark-mode)))
 '(semantic-idle-scheduler-idle-time 3)
 '(speedbar-default-position (quote right))
 '(speedbar-hide-button-brackets-flag t)
 '(speedbar-sort-tags t)
 '(speedbar-supported-extension-expressions (quote (".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ad[abs]" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?"))))

(semantic-mode)
;;;;

;; smart complitions
(require 'semantic/ia)
(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))

;;;auto-complete

;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "c:/Users/yzj/AppData/Roaming/.emacs.d/plugins/autocomplete/ac-dict")
;;(ac-config-default)

;(add-to-list 'load-path "c:/Users/yzj/AppData/Roaming/.emacs.d/plugins/autocomplete")
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") ;;; 设置比上面截图中更好看的背景颜色
(define-key ac-completing-map "\M-n" 'ac-next)  ;;; 列表中通过按M-n来向下移动
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 2)
(setq ac-dwim t)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

;;python-mode
(add-to-list 'load-path "D:/Python27/")
(add-to-list 'load-path "D:/Python27/Lib/site-packages/")

;(add-to-list 'load-path "~/.emacs.d/elpa/pymacs-0.25")
;(require 'pymacs)
;(setq py-load-pymacs-p nil)
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)


;(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)
(require 'fuzzy)
(require 'pytest)
;(setq auto-mode-alist
;(cons '("\\.py$" . python-mode) auto-mode-alist))


(setq interpreter-mode-alist
(cons '("python" . python-mode)
      interpreter-mode-alist))

(autoload 'python-mode "python-mode" "Python editing mode." t)

;;pdb
;(setq pdb-path 'd:/python27/Lib/pdb.py
;       gud-pdb-command-name (symbol-name pdb-path))
;(defadvice pdb (before gud-query-cmdline activate)
;  "Provide a better default command line when called interactively."
;   (interactive
;    (list (gud-query-cmdline pdb-path
;			     (file-name-nondirectory buffer-file-name)))))


;;python-mode
(setq py-install-directory "D:/Python27/python-mode/")
(add-to-list 'load-path py-install-directory)

;(require 'python-mode)


;(when (load "flymake" t)
;  (defun flymake-pylint-init ()
;    (let* ((temp-file (flymake-init-create-temp-buffer-copy
; 		       'flymake-create-temp-inplace))
;           (local-file (file-relative-name
;                        temp-file
;                        (file-name-directory buffer-file-name))))
;      (list "epylint" (list local-file))))
; 
;  (add-to-list 'flymake-allowed-file-name-masks
;               '("\\.py\\'" flymake-pylint-init)))

;;Using flymake with pyflakes
;(when (load "flymake" t)
;  (defun flymake-pyflakes-init ()
;     ; Make sure it's not a remote buffer or flymake would not work
;     (when (not (subsetp (list (current-buffer)) (tramp-list-remote-buffers)))
;      (let* ((temp-file (flymake-init-create-temp-buffer-copy
;                         'flymake-create-temp-inplace))
;             (local-file (file-relative-name
;                          temp-file
;                          (file-name-directory buffer-file-name))))
;        (list "pyflakes" (list local-file)))))
;  (add-to-list 'flymake-allowed-file-name-masks
;               '("\\.py\\'" flymake-pyflakes-init)))

;(require 'pycomplete)
;(setq py-load-pymacs-p -1)
;(add-to-list 'load-path "d:/pysmell")
;(require 'pysmell)
;(add-hook 'python-mode-hook (lambda () (pysmell-mode 1)))
;(add-to-list 'load-path "D:/Python27/")
;(add-to-list 'load-path "D:/Python27/Lib/site-packages/")
;; pdb setup, note the python version
;(setq pdb-path 'd:/Python27/Lib/pdb.py
;       gud-pdb-command-name (symbol-name pdb-path))
; (defadvice pdb (before gud-query-cmdline activate)
;   "Provide a better default command line when called interactively."
;   (interactive
;    (list (gud-query-cmdline pdb-path
;                 (file-name-nondirectory buffer-file-name)))))
;(require 'pymacs)
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)

;(setq auto-mode-alist
;      (cons '("\\.py$" . python-mode) auto-mode-alist))
;(setq interpreter-mode-alist
;      (cons '("python" . python-mode)
;interpreter-mode-alist))
;(autoload 'python-mode "python-mode" "Python editing mode." t)
;;; add these lines if you like color-based syntax highlighting
;(global-font-lock-mode t)
;(setq font-lock-maximum-decoration t)
;(set-language-environment 'Chinese-GB)
;(set-keyboard-coding-system 'euc-cn)
;(set-clipboard-coding-system 'euc-cn)
;(set-terminal-coding-system 'euc-cn)
;(set-buffer-file-coding-system 'euc-cn)
;(set-selection-coding-system 'euc-cn)
;(modify-coding-system-alist 'process "*" 'euc-cn)
;(setq default-process-coding-system
;'(euc-cn . euc-cn))
;(setq-default pathname-coding-system 'euc-cn)

;(add-to-list 'load-path "D:/Python27/")
;(add-to-list 'load-path "D:/Python27/Lib/site-packages/")
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)
;(setq auto-mode-alist
;(cons '("\\.py$" . python-mode) auto-mode-alist))
;(setq interpreter-mode-alist
;(cons '("python" . python-mode)
;interpreter-mode-alist))
;(autoload 'python-mode "python-mode" "Python editing mode." t)

;(global-font-lock-mode t)
;(setq font-lock-maximum-decoration t)
;(set-language-environment 'Chinese-GB)
;(set-keyboard-coding-system 'euc-cn)
;(set-clipboard-coding-system 'euc-cn)
;(set-terminal-coding-system 'euc-cn)
;(set-buffer-file-coding-system 'euc-cn)
;(set-selection-coding-system 'euc-cn)
;(modify-coding-system-alist 'process "*" 'euc-cn)
;(setq default-process-coding-system
;'(euc-cn . euc-cn))
;(setq-default pathname-coding-system 'euc-cn)

;;ipython
;(defvar server-buffer-clients)
;(when (and (fboundp 'server-start) (string-equal (getenv "TERM") 'xterm))
;  (server-start)
;  (defun fp-kill-server-with-buffer-routine ()
;    (and server-buffer-clients (server-done)))
;  (add-hook 'kill-buffer-hook 'fp-kill-server-with-buffer-routine))
;(require 'ansi-color)
;(require 'python)         ;; I have the very tip from python-mode project
;(setq auto-mode-alist (append (list (cons "\\.py" 'python-mode))
;                              auto-mode-alist))
;(setq ipython-command "D:/Python27/Scripts/ipython")
;(require 'ipython)
;(setq py-python-command-args '("-pylab" "-colors" "LightBG"))
;(setq ansi-color-for-comint-mode t)


;;CTEX
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(require 'tex-mik)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq preview-scale-function 1.3)
(setq LaTeX-math-menu-unicode t)
(setq TeX-insert-braces nil)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;为了使用 auctex 方便，为 LaTeX 模式 hook 自动换行，数学公式，reftex 和显示行号的功能。
(mapc (lambda (mode)
      (add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
            'LaTeX-math-mode
            'turn-on-reftex
            'linum-mode))
;
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  TeX-show-compilation t) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))
;
;(setq TeX-view-program-list
;      '(("SumatraPDF "SumatraPDF.exe %o")))
;
(setq TeX-view-program-list
      '(("SumatraPDF" "SumatraPDF.exe %o")
        ("Gsview" "gsview32.exe %o")
        ("Okular" "okular --unique %o")
        ("Evince" "evince %o")
        ("Firefox" "firefox %o")))

(cond
((eq system-type 'windows-nt)
  (add-hook 'LaTeX-mode-hook
            (lambda ()
              (setq TeX-view-program-selection '((output-pdf "SumatraPDF")
                                                 (output-dvi "Yap"))))))

((eq system-type 'gnu/linux)
  (add-hook 'LaTeX-mode-hook
            (lambda ()
              (setq TeX-view-program-selection '((output-pdf "Okular")
                                                 (output-dvi "Okular")))))))

(autoload 'cdlatex-mode "cdlatex" "CDLaTeX Mode" t)
(autoload 'turn-on-cdlatex "cdlatex" "CDLaTeX Mode" nil)
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode

(require 'project-mode)

(require 'f90-interface-browser)

(require 'evil)
;(evil-mode 1)

(require 'autopair)
(autopair-global-mode)

;;
(require 'list-utils)
(list-utils-flatten '(1 2 (3 4 (5 6 7))))
(let ((cyclic-list '(1 2 3 4 5 6 7)))
  (nconc cyclic-list (cdr cyclic-list))
  (list-utils-flatten cyclic-list))
(list-utils-cyclic-p '(1 2 3))
(list-utils-plist-del '(:one 1 :two 2 :three 3) :two)

;(require 'string-utils)
;(string-utils-squeeze-filename (buffer-file-name (current-buffer)) 20)
;(string-utils-stringify-anything (selected-frame))
;(progn
;  (message (string-utils-pad (buffer-name (current-buffer)) (window-width) 'right))
;  (sit-for 1)
;  (message (string-utils-pad (buffer-name (current-buffer)) (window-width) 'center))
;  (sit-for 1)
;  (message (string-utils-pad (buffer-name (current-buffer)) (window-width) 'left))
;  (sit-for 1))

(require 'track-closed-files)
(require 'tracking)
;(require 'tabbar)
;(require 'tabbar-ruler)

(setq everything-ffap-integration nil) ;; to disable ffap 
(require 'everything)

;(require 'pyde)
;(load-file "d:/ls/tabbar.el")
;(require 'tabbar)
;(tabbar-mode 1)

;;;; 设置tabbar外观 
;;;; 设置默认主题: 字体, 背景和前景颜色，大小 
;;;set-face-attribute 'tabbar-default nil 
;;;                   ;:family "DejaVu Sans Mono" 
;;;                  :background "gray80" 
;;;                  :foreground "gray30" 
;;;                  :height 1.0 
;;;                   ) 
;;;; 设置左边按钮外观：外框框边大小和颜色 
;;;set-face-attribute 'tabbar-button nil 
;;;                   :inherit 'tabbar-default 
;;;                   :box '(:line-width 1 :color "yellow70") 
;;;                   ) 
;;;; 设置当前tab外观：颜色，字体，外框大小和颜色 
;;;set-face-attribute 'tabbar-selected nil 
;;;                   :inherit 'tabbar-default 
;;;                   :foreground "DarkGreen" 
;;;                   :background "LightGoldenrod" 
;;;                  :box '(:line-width 2 :color "DarkGoldenrod") 
;;;                   :overline "black" 
;;;                   :underline "black" 
;;;                   :weight 'bold 
;;;                  ) 
;; 设置非当前tab外观：外框大小和颜色 
;;;;;(set-face-attribute 'tabbar-unselected nil 
;;;;;:inherit 'tabbar-default 
;;;;;:box '(:line-width 2 :color "#00B2BF") 
;;;;;)  

;(setq tabbar-buffer-list-function
;    (lambda ()
;        (remove-if
;          (lambda(buffer)
;             (find (aref (buffer-name buffer) 0) " *"))
;          (buffer-list))))
;(add-to-list 'load-path "d:/elscreen")
;(require 'elscreen)

;(load-file "d:/elscreen/elscreen.el")

(require 'edit-list)

(add-to-list 'load-path "d:/google-maps/google-maps-e9b4a1c")
(require 'google-maps)

