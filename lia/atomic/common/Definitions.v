Require Import Bool.
Require Import Arith.
Require Import Nat.

Inductive lst : Type :=
| Cons : nat -> lst -> lst
| Nil : lst.

Inductive heap : Type :=
| Hleaf : heap
| Heap : nat -> nat -> heap -> heap -> heap.