;;; -*- no-byte-compile: t; -*-
;;; private-lang/protobuf/packages.el

(package! protobuf-mode :pin "b9483e03c7cfa854c250ad6415b4d9e6f7a9709e")

(package! company-protobuf
  :recipe (:host github
           :repo "weidaolee/company-protobuf"
           :branch "main")
  :pin "676f31c0aa4cc2b4bbf683f66e8be3a82dc60ee1")
