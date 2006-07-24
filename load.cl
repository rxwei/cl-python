;; This software is Copyright (c) Franz Inc. and Willem Broekema.
;; Franz Inc. and Willem Broekema grant you the rights to
;; distribute and use this software as governed by the terms
;; of the Lisp Lesser GNU Public License
;; (http://opensource.franz.com/preamble.html),
;; known as the LLGPL.

(in-package :user)

;; Ensure read-time conditionals are not compiled away.
(eval-when (compile)
  (error "This file should be loaded interpreted, not compiled."))

#-(and allegro-version>= (version>= 7 0))
(cerror "continue anyway"
	"CLPython requires Allegro Common Lisp 8.0.")

#+(and allegro-version>= (version>= 7 0) (not (version>= 8 0)))
(warn "CLPython is tested on Allegro Common Lisp 8.0, ~
       but it might work just fine on version 7.0.")

(load "defsys")

(compy)
(loadpy)
