open Ocamlbuild_plugin
open Command

let () =
  dispatch begin function
             | After_rules  ->
                flag ["compile"; "c"; "mygcc"]
                     (S[A"-ccopt"; A"-fPIC"]);

                dep ["link"; "ocaml"; "native"; "staticlinkopt"] ["foo.o"];

                flag ["link"; "ocaml"; "native"; "staticlinkopt"]
                     (S[A"-cclib"; A"-Wl,-E"])
             | _ -> ()
           end
