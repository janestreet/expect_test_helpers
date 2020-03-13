open! Core

(* No [open! Import] because we want to be very explicit about the environment. *)

let%expect_test "" =
  Expect_test_helpers.require ~cr:Comment [%here] false;
  [%expect
    {|
    (* require-failed: lib/expect_test_helpers/test/src/test_async_printf_in_open_core.ml:LINE:COL. *) |}]
;;
