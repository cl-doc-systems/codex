(defpackage #:example/utils
  (:use #:cl)
  (:export #:do-the-job)
  (:documentation "The utils"))
(in-package example/utils)


(defun concat (first second)
  "This function is not exported and should not be showed in the API reference."
  (format nil "~A ~A" first second))


(defun do-the-job (first second)
  "The function does the job.

   It @b(concatenates) first and second arguments
   calling internal function concat.

   On this multiline we'll check how does documentation
   system processes docstrings.

   By the way, pay attention at the second paragraph where
   I've used @link[uri=http://commondoc.github.io/scriba/docs/reference.html](Scriba's format)
   to make the word \"concatenates\" bold.

   Also, we can reference some parts of the documentation. Is not a cross-reference though.
   Read more about writing docs in the @ref[doc=handwritten id=beginning](Handwritten documentation) chapter.

   But seems the resulting link is broken because it points to @c(.../handwritten.html/#beginning)."
  (concat first second))
