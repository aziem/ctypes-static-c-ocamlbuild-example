foo_ml.native: foo.c foo_ml.ml
	ocamlbuild -use-ocamlfind foo_ml.native

clean:
	ocamlbuild -clean
