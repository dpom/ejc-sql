;; project settings
(setq ent-project-home (file-name-directory (if load-file-name load-file-name buffer-file-name)))
(setq ent-project-name "ejc-sql")
(setq ent-clean-regexp "~$\\|\\.tex$")
(setq ent-project-config-filename "README.md")

;; local functions

(defvar project-version)

(setq project-version (ent-get-version))


(defun make-image-tag (&optional version)
  "Make docker image tag using ent variables."
  (concat ent-project-name ":" (or version project-version)))



;; tasks

(load ent-init-file)

(task 'format '() "format the project" '(lambda (&optional x) "lein cljfmt fix"))

(task 'check '() "check the project" '(lambda (&optional x) "lein with-profile +check do check, kibit, eastwood"))

(task 'tree '() "tree dependencies" '(lambda (&optional x) "lein do clean, deps :tree"))

(task 'libupdate () "update project libraries" '(lambda (&optional x) "lein ancient :no-colors"))

;; Local Variables:
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
