(defsystem example-docs
  :class :package-inferred-system
  :build-operation build-docs-op
  :build-pathname "docs/scripts/"
  :depends-on ("example-docs/builder"))
