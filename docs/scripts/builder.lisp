(defpackage #:example-docs/builder
  (:use #:cl)
  (:import-from #:codex)
  (:import-from #:osicat)
  
  (:export #:build))
(in-package example-docs/builder)


(defun build ()
  (osicat:delete-directory-and-files "docs/build/"
                                     :if-does-not-exist :ignore)
  
  (codex:document :example
                  :manifest-path #P"docs/source/manifest.lisp")

  (osicat-posix:rename "./docs/source/build/example-of-codex-documentation-for-a-common-lisp-library/html/"
                       "./docs/build/")

  (values))
