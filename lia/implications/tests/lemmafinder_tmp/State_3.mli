
val add : int -> int -> int

type decidable =
  bool
  (* singleton inductive, whose constructor was Build_Decidable *)

val eqb : bool -> bool -> bool

val decidable_eq_bool : bool -> bool -> decidable

module Nat :
 sig
  val eqb : int -> int -> bool

  val leb : int -> int -> bool

  val ltb : int -> int -> bool
 end

type decidable0 = bool

type dec =
  decidable0
  (* singleton inductive, whose constructor was Build_Dec *)

type 'a dec_Eq =
  'a -> 'a -> decidable0
  (* singleton inductive, whose constructor was Build_Dec_Eq *)

val dec_Eq_implies_DecEq : 'a1 dec_Eq -> 'a1 -> 'a1 -> dec

val dec_class_dec : decidable -> dec

type heap =
| Hleaf
| Heap of int * int * heap * heap

val right_height : heap -> int

val rank : heap -> int

val has_leftist_property : heap -> bool

val mergea : int -> heap -> heap -> heap

val merge : heap -> heap -> heap

val dec_Eq_heap : heap dec_Eq

val prop_to_bool : dec -> bool

val goal :
  ((((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int)
  -> bool

val assump_GenVarEq_gv1 :
  ((((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int)
  -> bool

val assump_Assumption_4 :
  ((((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int)
  -> bool

val assump_Assumption_7 :
  ((((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int)
  -> bool

val assump_GenVarEq_gv4 :
  ((((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int)
  -> bool

val assump_Assumption_6 :
  ((((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int)
  -> bool

val definitions_gv4 :
  ((((((heap * heap) * heap) * heap) * int) * int) * int) -> bool

val definitions_gv0 :
  ((((((heap * heap) * heap) * heap) * int) * int) * int) -> bool

val definitions_gv2 :
  ((((((heap * heap) * heap) * heap) * int) * int) * int) -> bool

val definitions_gv1 :
  ((((((heap * heap) * heap) * heap) * int) * int) * int) -> bool

val definitions_gv3 :
  ((((((heap * heap) * heap) * heap) * int) * int) * int) -> bool

val g3_example0 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example9 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example10 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example11 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example12 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example13 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example14 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example15 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example16 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example17 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example18 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example19 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example20 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example21 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example22 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example23 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example24 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example25 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example26 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example27 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example28 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example29 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example30 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example31 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example32 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example33 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example34 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example35 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example36 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example37 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example38 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example39 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example40 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example41 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example42 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example43 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example44 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example45 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example46 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example47 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example48 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example49 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example50 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example51 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example52 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example53 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example54 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example55 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example56 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example57 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example58 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example59 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example60 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example61 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example62 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example63 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example64 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example65 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example66 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example67 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example68 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example69 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example70 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example71 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example72 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example73 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example74 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example75 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example76 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example77 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example78 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example79 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example80 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example81 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example82 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example83 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example84 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example85 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example86 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example87 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example88 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example89 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example90 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example91 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example92 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example93 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example94 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example95 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example96 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example97 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example98 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example99 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example591 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example592 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example593 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example594 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example595 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example596 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example597 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example598 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example599 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example600 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example601 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example602 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example603 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example604 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example605 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example606 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example607 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example608 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example609 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example610 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example611 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example612 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example613 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example614 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example615 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example616 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example617 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example618 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example619 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example620 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example621 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example622 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example623 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example624 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example625 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example626 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example627 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example628 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example629 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example630 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example631 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example632 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example633 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example634 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example635 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example636 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example637 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example638 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example639 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example640 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example641 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example642 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example643 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example644 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example645 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example646 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example647 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example648 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example649 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example650 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example651 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example652 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example653 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example654 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example655 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example656 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example657 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example658 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example659 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example660 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example661 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example662 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example663 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example664 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example665 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example666 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example667 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example668 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example669 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example670 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example671 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example672 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example673 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example674 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example675 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example676 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example677 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example678 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example679 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example680 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example681 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example682 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example683 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example684 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example685 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example686 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example687 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example688 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example689 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example690 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example691 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example692 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example693 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example694 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example695 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example696 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example697 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example698 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example699 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example700 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example701 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example702 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example703 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example704 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example705 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example706 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example707 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example708 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example709 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example710 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example711 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example712 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example713 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example714 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example715 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example716 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example717 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example718 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example719 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example720 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example721 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example722 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example723 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example724 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example725 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example726 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example727 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example728 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example729 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example730 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example731 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example732 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example733 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example734 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example735 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example736 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example737 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example738 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example739 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example740 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example741 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example742 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example743 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example744 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example745 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example746 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example747 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example748 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example749 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example750 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example751 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example752 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example753 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example754 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example755 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example756 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example757 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example758 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example759 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example760 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example761 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example762 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example763 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example764 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example765 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example766 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example767 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example768 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example769 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example770 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example771 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example772 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example773 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example774 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example775 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example776 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example777 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example778 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example779 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example780 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example781 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example782 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example783 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example784 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example785 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example786 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example787 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example788 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example789 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example790 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example791 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example792 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example793 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example794 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example795 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example796 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example797 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example798 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example799 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example800 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example801 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example802 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example803 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example804 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example805 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example806 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example807 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example808 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example809 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example810 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example811 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example812 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example813 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example814 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example815 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example816 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example817 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example818 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example819 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example820 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example821 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example822 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example823 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example824 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example825 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example826 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example827 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example828 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example829 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example830 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example831 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example832 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example833 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example834 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example835 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example836 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example837 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example838 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example839 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example840 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example841 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example842 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example843 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example844 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example845 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example846 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example847 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example848 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example849 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example850 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example851 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example852 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example853 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example854 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example855 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example856 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example857 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example858 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example859 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example860 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example861 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example862 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example863 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example864 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example865 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example866 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example867 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example868 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example869 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example870 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example871 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example872 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example873 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example874 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example875 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example876 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example877 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example878 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example879 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example880 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example881 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example882 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example883 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example884 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example885 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example886 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example887 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example888 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example889 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example890 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example891 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example892 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example893 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example894 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example895 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example896 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example897 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example898 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example899 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example900 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example901 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example902 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example903 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example904 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example905 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example906 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example907 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example908 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example909 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example910 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example911 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example912 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example913 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example914 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example915 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example916 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example917 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example918 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example919 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example920 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example921 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example922 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example923 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example924 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example925 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example926 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example927 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example928 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example929 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example930 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example931 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example932 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example933 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example934 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example935 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example936 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example937 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example938 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example939 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example940 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example941 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example942 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example943 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example944 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example945 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example946 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example947 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example948 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example949 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example950 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example951 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example952 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example953 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example954 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example955 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example956 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example957 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example958 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example959 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example960 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example961 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example962 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example963 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example964 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example965 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example966 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example967 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example968 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example969 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example970 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example971 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example972 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example973 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example974 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example975 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example976 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example977 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example978 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example979 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example980 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example981 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example982 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example983 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example984 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example985 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example986 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example987 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example988 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example989 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example990 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example991 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example992 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example993 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example994 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example995 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example996 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example997 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example998 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example999 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1000 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1001 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1002 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1003 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1004 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1005 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1006 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1007 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1008 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1009 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1010 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1011 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1012 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1013 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1014 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1015 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1016 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1017 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1018 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1019 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1020 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1021 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1022 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1023 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1024 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1025 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1026 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1027 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1028 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1029 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1030 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1031 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1032 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1033 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1034 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1035 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1036 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1037 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1038 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1039 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1040 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1041 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1042 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1043 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1044 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1045 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1046 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1047 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1048 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1049 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1050 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1051 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1052 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1053 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1054 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1055 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1056 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1057 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1058 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1059 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1060 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1061 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1062 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1063 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1064 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1065 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1066 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1067 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1068 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1069 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1070 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1071 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1072 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1073 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1074 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1075 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1076 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1077 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1078 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1079 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1080 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1081 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1082 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1083 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1084 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1085 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1086 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1087 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1088 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1089 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1090 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1091 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1092 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1093 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1094 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1095 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1096 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1097 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1098 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1099 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1591 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1592 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1593 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1594 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1595 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1596 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1597 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1598 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1599 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1600 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1601 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1602 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1603 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1604 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1605 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1606 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1607 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1608 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1609 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1610 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1611 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1612 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1613 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1614 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1615 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1616 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1617 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1618 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1619 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1620 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1621 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1622 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1623 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1624 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1625 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1626 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1627 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1628 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1629 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1630 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1631 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1632 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1633 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1634 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1635 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1636 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1637 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1638 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1639 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1640 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1641 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1642 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1643 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1644 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1645 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1646 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1647 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1648 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1649 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1650 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1651 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1652 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1653 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1654 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1655 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1656 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1657 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1658 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1659 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1660 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1661 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1662 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1663 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1664 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1665 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1666 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1667 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1668 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1669 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1670 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1671 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1672 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1673 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1674 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1675 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1676 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1677 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1678 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1679 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1680 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1681 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1682 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1683 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1684 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1685 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1686 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1687 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1688 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1689 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1690 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1691 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1692 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1693 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1694 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1695 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1696 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1697 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1698 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1699 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1700 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1701 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1702 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1703 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1704 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1705 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1706 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1707 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1708 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1709 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1710 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1711 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1712 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1713 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1714 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1715 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1716 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1717 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1718 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1719 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1720 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1721 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1722 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1723 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1724 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1725 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1726 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1727 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1728 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1729 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1730 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1731 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1732 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1733 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1734 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1735 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1736 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1737 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1738 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1739 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1740 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1741 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1742 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1743 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1744 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1745 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1746 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1747 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1748 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1749 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1750 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1751 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1752 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1753 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1754 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1755 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1756 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1757 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1758 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1759 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1760 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1761 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1762 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1763 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1764 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1765 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1766 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1767 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1768 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1769 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1770 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1771 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1772 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1773 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1774 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1775 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1776 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1777 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1778 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1779 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1780 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1781 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1782 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1783 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1784 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1785 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1786 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1787 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1788 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1789 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1790 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1791 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1792 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1793 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1794 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1795 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1796 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1797 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1798 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1799 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1800 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1801 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1802 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1803 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1804 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1805 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1806 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1807 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1808 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1809 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1810 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1811 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1812 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1813 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1814 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1815 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1816 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1817 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1818 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1819 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1820 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1821 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1822 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1823 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1824 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1825 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1826 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1827 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1828 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1829 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1830 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1831 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1832 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1833 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1834 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1835 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1836 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1837 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1838 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1839 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1840 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1841 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1842 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1843 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1844 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1845 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1846 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1847 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1848 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1849 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1850 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1851 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1852 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1853 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1854 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1855 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1856 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1857 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1858 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1859 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1860 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1861 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1862 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1863 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1864 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1865 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1866 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1867 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1868 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1869 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1870 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1871 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1872 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1873 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1874 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1875 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1876 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1877 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1878 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1879 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1880 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1881 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1882 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1883 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1884 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1885 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1886 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1887 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1888 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1889 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1890 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1891 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1892 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1893 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1894 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1895 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1896 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1897 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1898 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1899 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1900 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1901 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1902 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1903 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1904 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1905 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1906 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1907 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1908 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1909 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1910 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1911 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1912 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1913 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1914 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1915 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1916 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1917 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1918 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1919 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1920 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1921 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1922 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1923 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1924 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1925 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1926 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1927 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1928 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1929 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1930 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1931 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1932 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1933 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1934 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1935 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1936 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1937 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1938 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1939 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1940 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1941 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1942 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1943 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1944 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1945 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1946 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1947 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1948 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1949 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1950 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1951 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1952 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1953 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1954 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1955 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1956 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1957 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1958 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1959 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1960 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1961 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1962 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1963 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1964 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1965 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1966 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1967 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1968 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1969 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1970 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1971 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1972 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1973 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1974 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1975 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1976 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1977 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1978 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1979 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1980 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1981 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1982 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1983 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1984 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1985 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1986 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1987 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1988 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1989 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1990 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1991 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1992 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1993 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1994 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1995 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1996 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1997 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1998 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example1999 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2000 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2001 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2002 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2003 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2004 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2005 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2006 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2007 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2008 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2009 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2010 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2011 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2012 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2013 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2014 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2015 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2016 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2017 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2018 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2019 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2020 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2021 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2022 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2023 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2024 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2025 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2026 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2027 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2028 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2029 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2030 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2031 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2032 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2033 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2034 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2035 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2036 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2037 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2038 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2039 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2040 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2041 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2042 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2043 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2044 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2045 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2046 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2047 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2048 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2049 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2050 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2051 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2052 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2053 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2054 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2055 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2056 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2057 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2058 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2059 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2060 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2061 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2062 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2063 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2064 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2065 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2066 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2067 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2068 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2069 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2070 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2071 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2072 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2073 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2074 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2075 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2076 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2077 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2078 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2079 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2080 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2081 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2082 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2083 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2084 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2085 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2086 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2087 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2088 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2089 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2090 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2091 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2092 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2093 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2094 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2095 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2096 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2097 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2098 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2099 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2591 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2592 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2593 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2594 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2595 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2596 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2597 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2598 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2599 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2600 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2601 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2602 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2603 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2604 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2605 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2606 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2607 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2608 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2609 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2610 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2611 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2612 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2613 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2614 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2615 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2616 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2617 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2618 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2619 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2620 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2621 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2622 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2623 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2624 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2625 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2626 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2627 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2628 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2629 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2630 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2631 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2632 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2633 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2634 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2635 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2636 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2637 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2638 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2639 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2640 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2641 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2642 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2643 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2644 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2645 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2646 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2647 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2648 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2649 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2650 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2651 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2652 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2653 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2654 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2655 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2656 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2657 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2658 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2659 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2660 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2661 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2662 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2663 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2664 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2665 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2666 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2667 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2668 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2669 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2670 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2671 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2672 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2673 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2674 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2675 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2676 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2677 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2678 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2679 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2680 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2681 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2682 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2683 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2684 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2685 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2686 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2687 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2688 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2689 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2690 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2691 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2692 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2693 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2694 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2695 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2696 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2697 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2698 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2699 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2700 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2701 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2702 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2703 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2704 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2705 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2706 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2707 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2708 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2709 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2710 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2711 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2712 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2713 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2714 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2715 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2716 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2717 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2718 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2719 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2720 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2721 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2722 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2723 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2724 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2725 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2726 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2727 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2728 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2729 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2730 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2731 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2732 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2733 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2734 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2735 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2736 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2737 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2738 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2739 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2740 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2741 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2742 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2743 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2744 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2745 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2746 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2747 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2748 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2749 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2750 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2751 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2752 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2753 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2754 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2755 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2756 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2757 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2758 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2759 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2760 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2761 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2762 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2763 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2764 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2765 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2766 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2767 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2768 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2769 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2770 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2771 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2772 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2773 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2774 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2775 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2776 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2777 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2778 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2779 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2780 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2781 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2782 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2783 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2784 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2785 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2786 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2787 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2788 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2789 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2790 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2791 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2792 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2793 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2794 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2795 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2796 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2797 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2798 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2799 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2800 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2801 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2802 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2803 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2804 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2805 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2806 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2807 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2808 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2809 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2810 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2811 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2812 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2813 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2814 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2815 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2816 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2817 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2818 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2819 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2820 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2821 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2822 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2823 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2824 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2825 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2826 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2827 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2828 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2829 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2830 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2831 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2832 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2833 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2834 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2835 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2836 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2837 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2838 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2839 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2840 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2841 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2842 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2843 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2844 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2845 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2846 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2847 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2848 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2849 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2850 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2851 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2852 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2853 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2854 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2855 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2856 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2857 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2858 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2859 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2860 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2861 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2862 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2863 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2864 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2865 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2866 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2867 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2868 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2869 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2870 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2871 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2872 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2873 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2874 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2875 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2876 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2877 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2878 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2879 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2880 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2881 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2882 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2883 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2884 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2885 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2886 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2887 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2888 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2889 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2890 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2891 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2892 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2893 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2894 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2895 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2896 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2897 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2898 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2899 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2900 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2901 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2902 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2903 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2904 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2905 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2906 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2907 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2908 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2909 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2910 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2911 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2912 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2913 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2914 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2915 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2916 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2917 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2918 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2919 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2920 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2921 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2922 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2923 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2924 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2925 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2926 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2927 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2928 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2929 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2930 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2931 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2932 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2933 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2934 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2935 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2936 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2937 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2938 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2939 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2940 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2941 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2942 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2943 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2944 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2945 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2946 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2947 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2948 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2949 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2950 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2951 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2952 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2953 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2954 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2955 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2956 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2957 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2958 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2959 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2960 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2961 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2962 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2963 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2964 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2965 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2966 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2967 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2968 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2969 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2970 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2971 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2972 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2973 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2974 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2975 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2976 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2977 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2978 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2979 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2980 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2981 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2982 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2983 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2984 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2985 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2986 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2987 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2988 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2989 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2990 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2991 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2992 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2993 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2994 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2995 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2996 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2997 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2998 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example2999 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3000 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3001 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3002 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3003 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3004 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3005 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3006 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3007 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3008 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3009 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3010 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3011 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3012 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3013 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3014 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3015 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3016 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3017 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3018 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3019 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3020 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3021 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3022 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3023 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3024 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3025 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3026 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3027 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3028 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3029 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3030 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3031 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3032 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3033 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3034 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3035 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3036 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3037 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3038 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3039 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3040 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3041 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3042 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3043 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3044 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3045 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3046 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3047 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3048 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3049 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3050 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3051 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3052 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3053 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3054 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3055 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3056 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3057 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3058 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3059 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3060 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3061 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3062 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3063 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3064 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3065 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3066 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3067 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3068 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3069 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3070 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3071 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3072 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3073 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3074 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3075 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3076 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3077 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3078 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3079 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3080 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3081 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3082 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3083 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3084 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3085 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3086 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3087 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3088 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3089 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3090 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3091 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3092 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3093 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3094 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3095 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3096 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3097 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3098 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3099 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3591 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3592 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3593 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3594 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3595 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3596 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3597 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3598 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3599 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3600 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3601 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3602 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3603 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3604 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3605 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3606 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3607 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3608 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3609 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3610 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3611 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3612 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3613 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3614 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3615 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3616 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3617 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3618 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3619 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3620 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3621 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3622 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3623 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3624 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3625 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3626 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3627 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3628 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3629 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3630 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3631 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3632 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3633 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3634 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3635 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3636 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3637 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3638 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3639 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3640 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3641 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3642 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3643 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3644 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3645 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3646 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3647 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3648 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3649 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3650 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3651 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3652 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3653 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3654 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3655 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3656 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3657 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3658 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3659 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3660 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3661 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3662 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3663 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3664 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3665 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3666 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3667 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3668 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3669 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3670 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3671 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3672 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3673 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3674 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3675 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3676 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3677 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3678 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3679 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3680 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3681 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3682 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3683 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3684 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3685 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3686 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3687 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3688 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3689 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3690 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3691 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3692 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3693 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3694 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3695 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3696 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3697 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3698 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3699 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3700 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3701 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3702 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3703 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3704 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3705 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3706 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3707 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3708 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3709 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3710 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3711 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3712 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3713 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3714 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3715 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3716 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3717 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3718 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3719 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3720 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3721 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3722 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3723 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3724 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3725 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3726 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3727 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3728 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3729 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3730 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3731 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3732 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3733 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3734 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3735 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3736 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3737 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3738 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3739 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3740 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3741 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3742 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3743 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3744 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3745 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3746 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3747 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3748 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3749 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3750 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3751 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3752 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3753 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3754 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3755 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3756 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3757 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3758 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3759 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3760 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3761 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3762 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3763 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3764 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3765 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3766 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3767 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3768 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3769 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3770 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3771 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3772 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3773 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3774 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3775 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3776 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3777 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3778 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3779 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3780 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3781 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3782 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3783 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3784 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3785 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3786 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3787 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3788 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3789 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3790 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3791 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3792 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3793 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3794 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3795 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3796 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3797 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3798 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3799 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3800 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3801 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3802 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3803 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3804 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3805 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3806 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3807 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3808 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3809 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3810 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3811 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3812 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3813 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3814 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3815 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3816 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3817 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3818 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3819 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3820 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3821 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3822 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3823 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3824 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3825 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3826 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3827 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3828 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3829 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3830 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3831 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3832 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3833 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3834 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3835 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3836 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3837 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3838 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3839 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3840 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3841 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3842 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3843 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3844 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3845 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3846 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3847 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3848 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3849 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3850 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3851 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3852 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3853 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3854 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3855 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3856 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3857 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3858 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3859 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3860 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3861 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3862 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3863 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3864 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3865 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3866 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3867 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3868 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3869 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3870 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3871 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3872 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3873 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3874 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3875 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3876 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3877 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3878 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3879 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3880 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3881 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3882 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3883 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3884 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3885 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3886 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3887 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3888 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3889 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3890 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3891 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3892 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3893 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3894 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3895 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3896 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3897 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3898 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3899 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3900 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3901 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3902 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3903 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3904 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3905 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3906 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3907 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3908 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3909 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3910 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3911 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3912 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3913 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3914 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3915 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3916 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3917 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3918 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3919 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3920 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3921 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3922 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3923 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3924 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3925 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3926 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3927 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3928 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3929 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3930 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3931 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3932 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3933 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3934 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3935 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3936 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3937 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3938 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3939 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3940 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3941 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3942 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3943 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3944 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3945 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3946 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3947 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3948 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3949 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3950 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3951 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3952 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3953 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3954 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3955 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3956 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3957 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3958 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3959 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3960 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3961 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3962 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3963 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3964 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3965 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3966 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3967 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3968 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3969 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3970 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3971 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3972 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3973 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3974 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3975 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3976 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3977 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3978 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3979 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3980 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3981 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3982 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3983 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3984 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3985 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3986 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3987 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3988 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3989 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3990 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3991 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3992 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3993 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3994 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3995 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3996 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3997 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3998 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example3999 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4000 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4001 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4002 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4003 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4004 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4005 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4006 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4007 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4008 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4009 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4010 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4011 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4012 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4013 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4014 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4015 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4016 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4017 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4018 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4019 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4020 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4021 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4022 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4023 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4024 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4025 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4026 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4027 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4028 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4029 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4030 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4031 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4032 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4033 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4034 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4035 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4036 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4037 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4038 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4039 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4040 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4041 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4042 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4043 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4044 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4045 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4046 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4047 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4048 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4049 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4050 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4051 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4052 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4053 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4054 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4055 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4056 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4057 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4058 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4059 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4060 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4061 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4062 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4063 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4064 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4065 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4066 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4067 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4068 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4069 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4070 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4071 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4072 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4073 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4074 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4075 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4076 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4077 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4078 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4079 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4080 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4081 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4082 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4083 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4084 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4085 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4086 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4087 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4088 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4089 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4090 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4091 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4092 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4093 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4094 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4095 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4096 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4097 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4098 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4099 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4591 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4592 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4593 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4594 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4595 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4596 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4597 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4598 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4599 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4600 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4601 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4602 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4603 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4604 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4605 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4606 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4607 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4608 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4609 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4610 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4611 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4612 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4613 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4614 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4615 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4616 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4617 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4618 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4619 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4620 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4621 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4622 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4623 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4624 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4625 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4626 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4627 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4628 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4629 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4630 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4631 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4632 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4633 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4634 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4635 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4636 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4637 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4638 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4639 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4640 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4641 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4642 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4643 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4644 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4645 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4646 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4647 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4648 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4649 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4650 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4651 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4652 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4653 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4654 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4655 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4656 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4657 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4658 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4659 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4660 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4661 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4662 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4663 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4664 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4665 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4666 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4667 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4668 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4669 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4670 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4671 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4672 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4673 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4674 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4675 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4676 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4677 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4678 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4679 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4680 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4681 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4682 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4683 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4684 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4685 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4686 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4687 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4688 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4689 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4690 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4691 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4692 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4693 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4694 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4695 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4696 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4697 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4698 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4699 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4700 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4701 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4702 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4703 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4704 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4705 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4706 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4707 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4708 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4709 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4710 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4711 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4712 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4713 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4714 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4715 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4716 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4717 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4718 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4719 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4720 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4721 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4722 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4723 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4724 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4725 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4726 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4727 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4728 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4729 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4730 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4731 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4732 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4733 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4734 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4735 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4736 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4737 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4738 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4739 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4740 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4741 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4742 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4743 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4744 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4745 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4746 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4747 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4748 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4749 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4750 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4751 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4752 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4753 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4754 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4755 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4756 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4757 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4758 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4759 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4760 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4761 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4762 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4763 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4764 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4765 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4766 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4767 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4768 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4769 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4770 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4771 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4772 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4773 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4774 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4775 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4776 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4777 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4778 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4779 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4780 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4781 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4782 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4783 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4784 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4785 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4786 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4787 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4788 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4789 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4790 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4791 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4792 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4793 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4794 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4795 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4796 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4797 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4798 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4799 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4800 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4801 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4802 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4803 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4804 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4805 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4806 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4807 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4808 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4809 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4810 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4811 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4812 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4813 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4814 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4815 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4816 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4817 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4818 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4819 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4820 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4821 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4822 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4823 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4824 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4825 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4826 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4827 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4828 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4829 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4830 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4831 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4832 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4833 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4834 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4835 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4836 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4837 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4838 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4839 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4840 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4841 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4842 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4843 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4844 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4845 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4846 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4847 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4848 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4849 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4850 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4851 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4852 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4853 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4854 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4855 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4856 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4857 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4858 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4859 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4860 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4861 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4862 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4863 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4864 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4865 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4866 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4867 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4868 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4869 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4870 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4871 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4872 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4873 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4874 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4875 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4876 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4877 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4878 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4879 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4880 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4881 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4882 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4883 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4884 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4885 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4886 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4887 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4888 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4889 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4890 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4891 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4892 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4893 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4894 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4895 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4896 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4897 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4898 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4899 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4900 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4901 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4902 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4903 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4904 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4905 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4906 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4907 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4908 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4909 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4910 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4911 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4912 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4913 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4914 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4915 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4916 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4917 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4918 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4919 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4920 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4921 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4922 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4923 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4924 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4925 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4926 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4927 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4928 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4929 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4930 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4931 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4932 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4933 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4934 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4935 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4936 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4937 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4938 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4939 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4940 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4941 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4942 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4943 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4944 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4945 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4946 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4947 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4948 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4949 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4950 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4951 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4952 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4953 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4954 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4955 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4956 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4957 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4958 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4959 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4960 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4961 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4962 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4963 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4964 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4965 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4966 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4967 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4968 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4969 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4970 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4971 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4972 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4973 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4974 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4975 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4976 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4977 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4978 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4979 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4980 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4981 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4982 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4983 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4984 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4985 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4986 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4987 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4988 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4989 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4990 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4991 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4992 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4993 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4994 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4995 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4996 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4997 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4998 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example4999 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5000 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5001 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5002 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5003 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5004 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5005 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5006 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5007 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5008 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5009 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5010 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5011 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5012 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5013 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5014 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5015 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5016 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5017 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5018 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5019 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5020 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5021 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5022 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5023 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5024 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5025 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5026 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5027 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5028 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5029 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5030 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5031 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5032 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5033 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5034 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5035 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5036 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5037 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5038 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5039 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5040 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5041 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5042 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5043 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5044 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5045 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5046 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5047 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5048 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5049 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5050 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5051 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5052 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5053 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5054 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5055 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5056 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5057 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5058 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5059 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5060 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5061 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5062 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5063 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5064 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5065 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5066 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5067 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5068 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5069 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5070 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5071 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5072 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5073 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5074 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5075 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5076 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5077 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5078 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5079 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5080 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5081 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5082 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5083 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5084 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5085 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5086 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5087 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5088 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5089 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5090 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5091 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5092 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5093 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5094 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5095 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5096 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5097 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5098 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5099 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5591 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5592 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5593 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5594 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5595 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5596 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5597 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5598 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5599 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5600 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5601 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5602 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5603 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5604 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5605 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5606 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5607 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5608 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5609 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5610 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5611 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5612 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5613 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5614 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5615 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5616 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5617 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5618 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5619 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5620 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5621 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5622 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5623 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5624 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5625 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5626 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5627 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5628 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5629 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5630 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5631 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5632 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5633 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5634 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5635 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5636 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5637 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5638 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5639 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5640 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5641 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5642 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5643 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5644 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5645 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5646 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5647 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5648 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5649 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5650 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5651 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5652 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5653 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5654 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5655 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5656 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5657 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5658 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5659 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5660 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5661 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5662 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5663 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5664 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5665 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5666 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5667 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5668 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5669 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5670 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5671 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5672 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5673 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5674 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5675 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5676 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5677 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5678 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5679 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5680 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5681 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5682 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5683 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5684 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5685 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5686 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5687 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5688 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5689 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5690 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5691 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5692 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5693 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5694 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5695 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5696 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5697 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5698 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5699 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5700 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5701 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5702 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5703 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5704 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5705 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5706 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5707 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5708 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5709 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5710 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5711 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5712 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5713 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5714 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5715 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5716 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5717 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5718 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5719 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5720 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5721 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5722 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5723 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5724 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5725 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5726 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5727 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5728 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5729 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5730 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5731 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5732 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5733 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5734 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5735 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5736 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5737 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5738 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5739 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5740 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5741 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5742 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5743 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5744 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5745 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5746 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5747 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5748 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5749 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5750 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5751 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5752 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5753 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5754 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5755 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5756 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5757 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5758 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5759 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5760 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5761 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5762 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5763 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5764 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5765 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5766 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5767 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5768 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5769 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5770 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5771 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5772 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5773 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5774 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5775 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5776 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5777 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5778 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5779 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5780 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5781 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5782 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5783 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5784 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5785 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5786 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5787 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5788 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5789 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5790 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5791 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5792 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5793 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5794 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5795 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5796 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5797 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5798 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5799 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5800 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5801 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5802 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5803 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5804 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5805 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5806 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5807 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5808 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5809 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5810 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5811 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5812 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5813 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5814 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5815 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5816 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5817 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5818 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5819 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5820 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5821 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5822 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5823 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5824 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5825 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5826 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5827 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5828 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5829 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5830 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5831 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5832 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5833 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5834 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5835 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5836 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5837 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5838 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5839 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5840 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5841 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5842 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5843 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5844 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5845 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5846 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5847 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5848 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5849 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5850 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5851 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5852 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5853 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5854 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5855 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5856 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5857 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5858 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5859 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5860 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5861 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5862 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5863 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5864 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5865 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5866 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5867 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5868 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5869 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5870 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5871 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5872 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5873 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5874 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5875 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5876 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5877 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5878 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5879 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5880 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5881 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5882 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5883 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5884 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5885 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5886 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5887 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5888 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5889 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5890 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5891 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5892 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5893 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5894 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5895 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5896 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5897 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5898 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5899 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5900 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5901 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5902 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5903 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5904 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5905 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5906 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5907 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5908 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5909 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5910 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5911 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5912 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5913 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5914 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5915 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5916 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5917 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5918 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5919 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5920 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5921 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5922 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5923 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5924 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5925 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5926 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5927 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5928 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5929 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5930 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5931 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5932 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5933 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5934 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5935 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5936 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5937 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5938 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5939 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5940 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5941 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5942 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5943 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5944 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5945 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5946 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5947 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5948 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5949 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5950 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5951 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5952 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5953 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5954 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5955 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5956 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5957 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5958 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5959 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5960 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5961 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5962 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5963 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5964 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5965 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5966 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5967 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5968 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5969 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5970 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5971 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5972 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5973 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5974 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5975 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5976 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5977 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5978 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5979 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5980 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5981 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5982 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5983 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5984 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5985 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5986 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5987 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5988 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5989 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5990 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5991 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5992 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5993 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5994 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5995 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5996 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5997 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5998 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example5999 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6000 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6001 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6002 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6003 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6004 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6005 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6006 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6007 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6008 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6009 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6010 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6011 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6012 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6013 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6014 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6015 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6016 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6017 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6018 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6019 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6020 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6021 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6022 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6023 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6024 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6025 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6026 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6027 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6028 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6029 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6030 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6031 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6032 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6033 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6034 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6035 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6036 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6037 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6038 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6039 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6040 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6041 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6042 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6043 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6044 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6045 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6046 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6047 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6048 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6049 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6050 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6051 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6052 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6053 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6054 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6055 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6056 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6057 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6058 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6059 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6060 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6061 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6062 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6063 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6064 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6065 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6066 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6067 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6068 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6069 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6070 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6071 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6072 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6073 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6074 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6075 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6076 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6077 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6078 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6079 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6080 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6081 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6082 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6083 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6084 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6085 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6086 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6087 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6088 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6089 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6090 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6091 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6092 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6093 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6094 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6095 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6096 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6097 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6098 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6099 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6591 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6592 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6593 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6594 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6595 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6596 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6597 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6598 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6599 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6600 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6601 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6602 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6603 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6604 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6605 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6606 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6607 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6608 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6609 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6610 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6611 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6612 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6613 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6614 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6615 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6616 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6617 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6618 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6619 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6620 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6621 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6622 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6623 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6624 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6625 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6626 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6627 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6628 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6629 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6630 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6631 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6632 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6633 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6634 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6635 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6636 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6637 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6638 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6639 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6640 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6641 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6642 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6643 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6644 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6645 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6646 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6647 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6648 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6649 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6650 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6651 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6652 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6653 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6654 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6655 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6656 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6657 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6658 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6659 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6660 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6661 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6662 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6663 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6664 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6665 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6666 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6667 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6668 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6669 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6670 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6671 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6672 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6673 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6674 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6675 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6676 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6677 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6678 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6679 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6680 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6681 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6682 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6683 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6684 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6685 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6686 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6687 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6688 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6689 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6690 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6691 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6692 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6693 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6694 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6695 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6696 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6697 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6698 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6699 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6700 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6701 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6702 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6703 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6704 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6705 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6706 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6707 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6708 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6709 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6710 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6711 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6712 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6713 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6714 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6715 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6716 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6717 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6718 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6719 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6720 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6721 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6722 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6723 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6724 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6725 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6726 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6727 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6728 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6729 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6730 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6731 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6732 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6733 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6734 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6735 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6736 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6737 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6738 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6739 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6740 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6741 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6742 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6743 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6744 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6745 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6746 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6747 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6748 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6749 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6750 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6751 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6752 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6753 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6754 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6755 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6756 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6757 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6758 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6759 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6760 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6761 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6762 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6763 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6764 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6765 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6766 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6767 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6768 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6769 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6770 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6771 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6772 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6773 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6774 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6775 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6776 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6777 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6778 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6779 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6780 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6781 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6782 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6783 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6784 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6785 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6786 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6787 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6788 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6789 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6790 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6791 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6792 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6793 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6794 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6795 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6796 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6797 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6798 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6799 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6800 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6801 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6802 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6803 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6804 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6805 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6806 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6807 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6808 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6809 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6810 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6811 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6812 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6813 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6814 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6815 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6816 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6817 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6818 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6819 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6820 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6821 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6822 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6823 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6824 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6825 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6826 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6827 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6828 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6829 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6830 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6831 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6832 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6833 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6834 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6835 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6836 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6837 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6838 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6839 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6840 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6841 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6842 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6843 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6844 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6845 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6846 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6847 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6848 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6849 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6850 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6851 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6852 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6853 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6854 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6855 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6856 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6857 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6858 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6859 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6860 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6861 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6862 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6863 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6864 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6865 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6866 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6867 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6868 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6869 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6870 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6871 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6872 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6873 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6874 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6875 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6876 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6877 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6878 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6879 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6880 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6881 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6882 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6883 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6884 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6885 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6886 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6887 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6888 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6889 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6890 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6891 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6892 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6893 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6894 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6895 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6896 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6897 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6898 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6899 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6900 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6901 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6902 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6903 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6904 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6905 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6906 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6907 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6908 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6909 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6910 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6911 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6912 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6913 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6914 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6915 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6916 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6917 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6918 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6919 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6920 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6921 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6922 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6923 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6924 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6925 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6926 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6927 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6928 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6929 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6930 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6931 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6932 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6933 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6934 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6935 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6936 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6937 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6938 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6939 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6940 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6941 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6942 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6943 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6944 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6945 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6946 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6947 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6948 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6949 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6950 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6951 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6952 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6953 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6954 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6955 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6956 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6957 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6958 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6959 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6960 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6961 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6962 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6963 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6964 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6965 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6966 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6967 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6968 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6969 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6970 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6971 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6972 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6973 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6974 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6975 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6976 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6977 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6978 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6979 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6980 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6981 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6982 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6983 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6984 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6985 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6986 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6987 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6988 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6989 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6990 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6991 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6992 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6993 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6994 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6995 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6996 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6997 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6998 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example6999 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7000 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7001 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7002 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7003 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7004 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7005 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7006 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7007 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7008 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7009 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7010 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7011 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7012 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7013 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7014 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7015 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7016 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7017 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7018 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7019 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7020 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7021 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7022 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7023 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7024 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7025 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7026 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7027 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7028 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7029 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7030 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7031 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7032 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7033 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7034 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7035 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7036 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7037 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7038 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7039 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7040 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7041 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7042 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7043 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7044 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7045 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7046 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7047 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7048 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7049 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7050 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7051 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7052 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7053 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7054 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7055 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7056 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7057 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7058 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7059 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7060 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7061 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7062 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7063 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7064 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7065 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7066 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7067 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7068 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7069 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7070 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7071 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7072 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7073 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7074 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7075 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7076 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7077 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7078 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7079 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7080 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7081 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7082 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7083 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7084 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7085 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7086 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7087 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7088 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7089 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7090 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7091 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7092 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7093 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7094 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7095 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7096 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7097 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7098 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7099 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7591 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7592 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7593 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7594 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7595 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7596 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7597 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7598 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7599 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7600 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7601 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7602 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7603 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7604 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7605 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7606 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7607 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7608 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7609 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7610 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7611 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7612 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7613 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7614 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7615 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7616 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7617 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7618 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7619 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7620 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7621 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7622 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7623 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7624 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7625 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7626 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7627 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7628 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7629 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7630 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7631 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7632 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7633 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7634 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7635 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7636 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7637 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7638 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7639 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7640 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7641 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7642 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7643 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7644 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7645 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7646 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7647 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7648 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7649 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7650 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7651 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7652 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7653 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7654 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7655 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7656 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7657 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7658 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7659 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7660 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7661 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7662 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7663 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7664 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7665 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7666 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7667 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7668 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7669 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7670 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7671 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7672 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7673 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7674 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7675 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7676 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7677 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7678 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7679 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7680 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7681 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7682 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7683 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7684 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7685 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7686 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7687 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7688 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7689 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7690 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7691 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7692 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7693 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7694 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7695 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7696 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7697 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7698 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7699 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7700 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7701 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7702 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7703 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7704 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7705 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7706 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7707 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7708 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7709 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7710 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7711 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7712 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7713 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7714 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7715 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7716 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7717 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7718 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7719 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7720 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7721 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7722 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7723 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7724 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7725 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7726 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7727 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7728 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7729 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7730 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7731 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7732 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7733 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7734 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7735 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7736 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7737 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7738 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7739 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7740 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7741 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7742 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7743 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7744 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7745 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7746 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7747 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7748 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7749 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7750 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7751 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7752 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7753 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7754 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7755 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7756 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7757 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7758 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7759 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7760 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7761 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7762 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7763 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7764 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7765 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7766 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7767 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7768 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7769 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7770 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7771 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7772 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7773 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7774 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7775 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7776 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7777 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7778 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7779 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7780 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7781 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7782 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7783 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7784 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7785 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7786 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7787 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7788 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7789 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7790 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7791 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7792 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7793 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7794 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7795 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7796 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7797 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7798 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7799 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7800 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7801 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7802 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7803 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7804 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7805 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7806 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7807 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7808 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7809 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7810 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7811 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7812 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7813 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7814 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7815 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7816 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7817 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7818 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7819 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7820 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7821 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7822 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7823 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7824 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7825 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7826 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7827 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7828 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7829 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7830 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7831 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7832 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7833 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7834 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7835 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7836 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7837 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7838 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7839 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7840 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7841 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7842 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7843 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7844 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7845 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7846 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7847 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7848 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7849 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7850 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7851 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7852 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7853 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7854 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7855 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7856 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7857 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7858 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7859 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7860 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7861 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7862 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7863 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7864 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7865 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7866 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7867 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7868 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7869 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7870 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7871 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7872 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7873 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7874 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7875 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7876 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7877 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7878 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7879 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7880 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7881 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7882 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7883 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7884 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7885 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7886 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7887 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7888 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7889 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7890 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7891 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7892 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7893 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7894 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7895 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7896 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7897 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7898 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7899 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7900 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7901 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7902 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7903 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7904 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7905 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7906 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7907 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7908 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7909 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7910 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7911 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7912 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7913 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7914 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7915 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7916 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7917 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7918 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7919 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7920 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7921 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7922 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7923 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7924 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7925 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7926 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7927 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7928 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7929 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7930 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7931 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7932 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7933 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7934 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7935 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7936 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7937 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7938 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7939 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7940 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7941 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7942 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7943 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7944 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7945 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7946 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7947 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7948 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7949 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7950 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7951 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7952 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7953 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7954 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7955 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7956 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7957 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7958 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7959 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7960 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7961 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7962 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7963 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7964 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7965 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7966 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7967 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7968 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7969 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7970 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7971 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7972 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7973 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7974 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7975 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7976 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7977 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7978 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7979 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7980 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7981 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7982 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7983 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7984 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7985 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7986 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7987 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7988 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7989 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7990 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7991 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7992 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7993 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7994 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7995 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7996 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7997 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7998 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example7999 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8000 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8001 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8002 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8003 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8004 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8005 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8006 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8007 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8008 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8009 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8010 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8011 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8012 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8013 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8014 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8015 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8016 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8017 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8018 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8019 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8020 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8021 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8022 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8023 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8024 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8025 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8026 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8027 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8028 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8029 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8030 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8031 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8032 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8033 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8034 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8035 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8036 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8037 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8038 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8039 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8040 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8041 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8042 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8043 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8044 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8045 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8046 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8047 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8048 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8049 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8050 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8051 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8052 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8053 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8054 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8055 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8056 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8057 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8058 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8059 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8060 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8061 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8062 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8063 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8064 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8065 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8066 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8067 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8068 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8069 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8070 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8071 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8072 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8073 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8074 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8075 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8076 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8077 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8078 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8079 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8080 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8081 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8082 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8083 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8084 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8085 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8086 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8087 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8088 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8089 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8090 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8091 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8092 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8093 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8094 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8095 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8096 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8097 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8098 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8099 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8100 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8101 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8102 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8103 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8104 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8105 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8106 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8107 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8108 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8109 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8110 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8111 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8112 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8113 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8114 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8115 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8116 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8117 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8118 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8119 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8120 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8121 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8122 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8123 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8124 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8125 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8126 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8127 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8128 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8129 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8130 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8131 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8132 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8133 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8134 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8135 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8136 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8137 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8138 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8139 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8140 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8141 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8142 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8143 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8144 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8145 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8146 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8147 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8148 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8149 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8150 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8151 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8152 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8153 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8154 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8155 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8156 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8157 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8158 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8159 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8160 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8161 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8162 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8163 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8164 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8165 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8166 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8167 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8168 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8169 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8170 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8171 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8172 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8173 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8174 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8175 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8176 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8177 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8178 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8179 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8180 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8181 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8182 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8183 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8184 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8185 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8186 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8187 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8188 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8189 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8190 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8191 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8192 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8193 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8194 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8195 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8196 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8197 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8198 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8199 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8200 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8201 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8202 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8203 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8204 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8205 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8206 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8207 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8208 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8209 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8210 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8211 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8212 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8213 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8214 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8215 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8216 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8217 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8218 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8219 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8220 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8221 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8222 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8223 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8224 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8225 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8226 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8227 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8228 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8229 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8230 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8231 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8232 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8233 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8234 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8235 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8236 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8237 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8238 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8239 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8240 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8241 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8242 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8243 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8244 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8245 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8246 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8247 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8248 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8249 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8250 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8251 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8252 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8253 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8254 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8255 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8256 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8257 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8258 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8259 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8260 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8261 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8262 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8263 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8264 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8265 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8266 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8267 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8268 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8269 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8270 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8271 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8272 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8273 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8274 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8275 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8276 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8277 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8278 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8279 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8280 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8281 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8282 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8283 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8284 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8285 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8286 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8287 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8288 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8289 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8290 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8291 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8292 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8293 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8294 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8295 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8296 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8297 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8298 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8299 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8300 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8301 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8302 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8303 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8304 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8305 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8306 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8307 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8308 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8309 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8310 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8311 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8312 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8313 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8314 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8315 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8316 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8317 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8318 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8319 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8320 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8321 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8322 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8323 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8324 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8325 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8326 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8327 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8328 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8329 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8330 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8331 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8332 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8333 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8334 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8335 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8336 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8337 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8338 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8339 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8340 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8341 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8342 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8343 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8344 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8345 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8346 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8347 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8348 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8349 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8350 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8351 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8352 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8353 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8354 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8355 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8356 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8357 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8358 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8359 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8360 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8361 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8362 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8363 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8364 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8365 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8366 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8367 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8368 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8369 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8370 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8371 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8372 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8373 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8374 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8375 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8376 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8377 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8378 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8379 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8380 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8381 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8382 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8383 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8384 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8385 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8386 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8387 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8388 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8389 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8390 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8391 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8392 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8393 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8394 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8395 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8396 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8397 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8398 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8399 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8400 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8401 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8402 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8403 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8404 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8405 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8406 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8407 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8408 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8409 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8410 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8411 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8412 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8413 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8414 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8415 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8416 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8417 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8418 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8419 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8420 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8421 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8422 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8423 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8424 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8425 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8426 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8427 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8428 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8429 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8430 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8431 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8432 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8433 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8434 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8435 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8436 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8437 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8438 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8439 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8440 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8441 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8442 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8443 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8444 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8445 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8446 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8447 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8448 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8449 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8450 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8451 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8452 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8453 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8454 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8455 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8456 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8457 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8458 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8459 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8460 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8461 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8462 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8463 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8464 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8465 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8466 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8467 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8468 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8469 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8470 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8471 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8472 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8473 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8474 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8475 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8476 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8477 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8478 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8479 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8480 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8481 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8482 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8483 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8484 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8485 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8486 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8487 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8488 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8489 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8490 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8491 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8492 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8493 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8494 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8495 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8496 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8497 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8498 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8499 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8500 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8501 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8502 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8503 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8504 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8505 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8506 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8507 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8508 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8509 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8510 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8511 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8512 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8513 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8514 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8515 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8516 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8517 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8518 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8519 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8520 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8521 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8522 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8523 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8524 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8525 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8526 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8527 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8528 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8529 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8530 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8531 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8532 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8533 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8534 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8535 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8536 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8537 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8538 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8539 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8540 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8541 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8542 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8543 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8544 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8545 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8546 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8547 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8548 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8549 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8550 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8551 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8552 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8553 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8554 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8555 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8556 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8557 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8558 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8559 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8560 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8561 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8562 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8563 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8564 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8565 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8566 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8567 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8568 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8569 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8570 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8571 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8572 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8573 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8574 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8575 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8576 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8577 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8578 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8579 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8580 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8581 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8582 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8583 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8584 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8585 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8586 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8587 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8588 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8589 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val g3_example8590 :
  (((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int

val example_set_3 :
  (char list * ((((((((heap * bool) * heap) * heap) * heap) * heap) * int) * int) * int))
  list