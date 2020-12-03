(defpackage #:example/app
  (:use #:cl)
  (:import-from #:example/utils)
  (:documentation "This is docstring for the package.

                   The package contains a function which does it's job by
                   applying transformation to the first and second arguments.

                   CLDomain is not support these docstrings yet.")
  (:export #:foo))
(in-package example/app)


(defun foo (first &key (other 100500))
  "This is example function.

   Internally it calls EXAMPLE/UTILS:DO-THE-JOB
   to do the real job.

   Note, that the there is no link above because Codex does not
   support cross referencing yet."
  (example/utils:do-the-job first other))
