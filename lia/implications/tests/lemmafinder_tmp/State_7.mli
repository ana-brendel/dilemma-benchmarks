
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
  (((((((bool * heap) * heap) * heap) * heap) * int) * int) * int) -> bool

val assump_Assumption_4 :
  (((((((bool * heap) * heap) * heap) * heap) * int) * int) * int) -> bool

val assump_Assumption_7 :
  (((((((bool * heap) * heap) * heap) * heap) * int) * int) * int) -> bool

val assump_GenVarEq_gv0 :
  (((((((bool * heap) * heap) * heap) * heap) * int) * int) * int) -> bool

val assump_Assumption_6 :
  (((((((bool * heap) * heap) * heap) * heap) * int) * int) * int) -> bool

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

val g7_example0 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example9 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example10 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example11 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example12 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example13 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example14 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example15 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example16 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example17 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example18 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example19 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example20 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example21 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example22 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example23 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example24 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example25 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example26 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example27 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example28 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example29 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example30 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example31 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example32 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example33 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example34 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example35 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example36 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example37 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example38 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example39 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example40 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example41 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example42 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example43 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example44 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example45 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example46 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example47 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example48 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example49 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example50 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example51 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example52 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example53 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example54 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example55 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example56 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example57 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example58 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example59 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example60 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example61 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example62 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example63 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example64 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example65 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example66 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example67 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example68 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example69 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example70 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example71 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example72 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example73 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example74 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example75 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example76 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example77 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example78 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example79 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example80 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example81 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example82 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example83 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example84 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example85 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example86 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example87 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example88 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example89 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example90 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example91 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example92 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example93 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example94 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example95 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example96 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example97 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example98 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example99 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example408 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example409 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example410 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example411 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example412 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example413 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example414 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example415 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example416 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example417 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example418 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example419 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example420 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example421 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example422 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example423 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example424 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example425 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example426 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example427 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example428 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example429 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example430 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example431 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example432 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example433 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example434 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example435 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example436 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example437 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example438 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example439 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example440 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example441 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example442 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example443 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example444 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example445 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example446 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example447 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example448 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example449 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example450 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example451 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example452 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example453 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example454 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example455 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example456 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example457 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example458 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example459 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example460 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example461 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example462 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example463 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example464 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example465 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example466 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example467 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example468 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example469 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example470 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example471 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example472 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example473 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example474 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example475 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example476 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example477 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example478 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example479 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example480 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example481 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example482 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example483 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example484 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example485 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example486 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example487 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example488 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example489 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example490 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example491 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example492 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example493 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example494 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example495 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example496 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example497 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example498 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example499 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example500 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example501 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example502 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example503 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example504 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example505 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example506 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example507 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example508 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example509 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example510 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example511 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example512 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example513 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example514 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example515 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example516 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example517 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example518 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example519 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example520 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example521 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example522 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example523 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example524 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example525 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example526 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example527 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example528 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example529 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example530 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example531 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example532 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example533 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example534 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example535 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example536 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example537 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example538 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example539 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example540 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example541 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example542 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example543 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example544 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example545 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example546 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example547 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example548 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example549 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example550 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example551 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example552 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example553 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example554 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example555 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example556 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example557 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example558 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example559 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example560 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example561 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example562 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example563 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example564 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example565 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example566 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example567 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example568 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example569 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example570 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example571 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example572 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example573 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example574 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example575 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example576 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example577 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example578 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example579 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example580 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example581 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example582 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example583 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example584 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example585 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example586 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example587 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example588 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example589 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example590 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example591 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example592 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example593 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example594 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example595 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example596 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example597 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example598 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example599 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example600 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example601 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example602 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example603 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example604 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example605 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example606 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example607 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example608 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example609 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example610 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example611 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example612 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example613 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example614 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example615 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example616 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example617 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example618 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example619 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example620 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example621 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example622 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example623 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example624 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example625 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example626 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example627 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example628 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example629 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example630 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example631 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example632 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example633 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example634 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example635 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example636 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example637 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example638 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example639 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example640 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example641 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example642 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example643 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example644 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example645 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example646 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example647 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example648 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example649 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example650 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example651 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example652 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example653 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example654 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example655 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example656 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example657 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example658 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example659 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example660 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example661 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example662 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example663 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example664 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example665 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example666 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example667 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example668 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example669 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example670 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example671 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example672 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example673 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example674 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example675 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example676 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example677 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example678 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example679 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example680 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example681 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example682 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example683 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example684 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example685 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example686 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example687 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example688 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example689 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example690 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example691 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example692 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example693 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example694 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example695 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example696 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example697 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example698 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example699 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example700 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example701 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example702 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example703 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example704 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example705 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example706 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example707 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example708 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example709 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example710 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example711 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example712 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example713 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example714 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example715 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example716 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example717 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example718 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example719 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example720 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example721 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example722 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example723 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example724 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example725 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example726 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example727 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example728 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example729 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example730 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example731 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example732 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example733 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example734 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example735 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example736 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example737 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example738 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example739 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example740 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example741 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example742 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example743 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example744 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example745 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example746 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example747 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example748 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example749 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example750 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example751 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example752 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example753 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example754 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example755 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example756 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example757 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example758 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example759 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example760 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example761 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example762 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example763 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example764 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example765 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example766 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example767 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example768 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example769 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example770 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example771 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example772 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example773 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example774 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example775 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example776 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example777 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example778 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example779 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example780 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example781 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example782 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example783 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example784 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example785 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example786 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example787 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example788 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example789 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example790 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example791 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example792 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example793 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example794 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example795 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example796 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example797 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example798 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example799 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example800 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example801 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example802 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example803 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example804 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example805 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example806 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example807 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example808 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example809 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example810 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example811 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example812 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example813 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example814 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example815 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example816 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example817 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example818 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example819 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example820 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example821 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example822 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example823 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example824 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example825 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example826 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example827 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example828 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example829 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example830 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example831 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example832 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example833 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example834 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example835 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example836 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example837 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example838 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example839 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example840 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example841 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example842 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example843 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example844 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example845 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example846 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example847 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example848 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example849 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example850 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example851 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example852 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example853 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example854 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example855 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example856 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example857 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example858 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example859 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example860 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example861 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example862 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example863 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example864 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example865 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example866 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example867 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example868 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example869 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example870 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example871 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example872 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example873 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example874 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example875 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example876 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example877 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example878 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example879 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example880 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example881 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example882 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example883 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example884 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example885 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example886 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example887 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example888 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example889 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example890 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example891 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example892 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example893 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example894 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example895 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example896 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example897 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example898 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example899 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example900 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example901 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example902 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example903 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example904 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example905 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example906 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example907 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example908 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example909 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example910 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example911 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example912 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example913 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example914 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example915 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example916 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example917 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example918 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example919 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example920 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example921 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example922 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example923 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example924 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example925 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example926 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example927 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example928 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example929 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example930 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example931 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example932 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example933 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example934 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example935 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example936 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example937 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example938 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example939 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example940 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example941 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example942 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example943 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example944 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example945 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example946 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example947 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example948 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example949 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example950 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example951 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example952 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example953 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example954 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example955 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example956 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example957 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example958 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example959 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example960 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example961 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example962 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example963 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example964 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example965 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example966 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example967 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example968 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example969 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example970 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example971 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example972 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example973 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example974 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example975 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example976 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example977 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example978 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example979 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example980 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example981 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example982 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example983 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example984 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example985 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example986 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example987 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example988 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example989 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example990 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example991 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example992 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example993 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example994 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example995 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example996 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example997 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example998 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example999 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1000 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1001 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1002 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1003 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1004 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1005 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1006 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1007 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1008 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1009 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1010 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1011 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1012 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1013 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1014 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1015 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1016 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1017 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1018 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1019 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1020 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1021 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1022 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1023 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1024 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1025 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1026 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1027 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1028 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1029 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1030 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1031 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1032 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1033 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1034 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1035 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1036 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1037 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1038 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1039 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1040 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1041 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1042 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1043 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1044 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1045 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1046 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1047 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1048 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1049 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1050 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1051 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1052 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1053 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1054 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1055 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1056 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1057 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1058 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1059 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1060 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1061 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1062 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1063 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1064 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1065 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1066 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1067 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1068 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1069 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1070 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1071 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1072 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1073 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1074 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1075 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1076 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1077 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1078 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1079 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1080 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1081 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1082 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1083 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1084 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1085 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1086 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1087 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1088 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1089 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1090 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1091 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1092 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1093 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1094 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1095 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1096 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1097 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1098 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1099 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1408 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1409 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1410 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1411 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1412 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1413 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1414 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1415 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1416 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1417 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1418 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1419 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1420 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1421 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1422 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1423 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1424 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1425 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1426 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1427 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1428 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1429 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1430 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1431 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1432 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1433 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1434 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1435 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1436 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1437 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1438 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1439 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1440 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1441 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1442 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1443 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1444 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1445 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1446 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1447 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1448 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1449 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1450 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1451 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1452 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1453 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1454 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1455 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1456 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1457 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1458 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1459 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1460 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1461 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1462 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1463 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1464 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1465 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1466 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1467 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1468 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1469 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1470 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1471 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1472 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1473 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1474 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1475 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1476 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1477 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1478 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1479 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1480 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1481 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1482 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1483 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1484 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1485 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1486 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1487 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1488 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1489 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1490 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1491 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1492 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1493 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1494 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1495 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1496 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1497 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1498 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1499 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1500 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1501 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1502 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1503 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1504 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1505 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1506 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1507 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1508 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1509 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1510 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1511 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1512 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1513 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1514 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1515 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1516 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1517 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1518 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1519 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1520 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1521 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1522 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1523 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1524 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1525 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1526 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1527 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1528 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1529 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1530 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1531 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1532 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1533 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1534 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1535 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1536 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1537 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1538 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1539 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1540 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1541 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1542 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1543 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1544 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1545 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1546 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1547 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1548 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1549 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1550 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1551 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1552 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1553 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1554 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1555 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1556 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1557 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1558 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1559 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1560 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1561 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1562 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1563 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1564 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1565 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1566 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1567 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1568 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1569 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1570 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1571 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1572 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1573 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1574 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1575 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1576 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1577 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1578 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1579 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1580 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1581 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1582 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1583 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1584 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1585 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1586 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1587 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1588 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1589 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1590 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1591 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1592 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1593 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1594 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1595 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1596 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1597 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1598 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1599 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1600 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1601 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1602 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1603 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1604 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1605 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1606 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1607 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1608 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1609 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1610 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1611 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1612 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1613 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1614 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1615 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1616 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1617 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1618 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1619 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1620 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1621 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1622 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1623 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1624 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1625 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1626 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1627 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1628 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1629 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1630 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1631 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1632 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1633 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1634 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1635 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1636 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1637 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1638 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1639 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1640 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1641 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1642 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1643 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1644 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1645 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1646 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1647 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1648 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1649 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1650 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1651 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1652 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1653 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1654 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1655 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1656 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1657 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1658 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1659 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1660 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1661 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1662 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1663 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1664 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1665 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1666 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1667 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1668 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1669 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1670 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1671 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1672 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1673 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1674 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1675 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1676 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1677 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1678 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1679 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1680 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1681 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1682 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1683 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1684 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1685 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1686 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1687 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1688 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1689 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1690 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1691 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1692 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1693 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1694 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1695 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1696 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1697 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1698 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1699 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1700 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1701 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1702 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1703 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1704 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1705 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1706 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1707 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1708 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1709 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1710 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1711 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1712 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1713 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1714 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1715 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1716 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1717 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1718 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1719 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1720 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1721 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1722 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1723 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1724 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1725 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1726 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1727 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1728 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1729 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1730 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1731 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1732 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1733 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1734 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1735 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1736 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1737 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1738 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1739 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1740 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1741 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1742 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1743 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1744 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1745 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1746 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1747 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1748 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1749 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1750 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1751 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1752 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1753 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1754 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1755 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1756 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1757 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1758 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1759 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1760 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1761 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1762 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1763 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1764 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1765 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1766 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1767 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1768 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1769 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1770 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1771 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1772 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1773 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1774 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1775 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1776 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1777 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1778 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1779 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1780 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1781 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1782 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1783 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1784 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1785 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1786 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1787 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1788 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1789 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1790 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1791 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1792 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1793 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1794 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1795 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1796 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1797 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1798 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1799 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1800 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1801 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1802 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1803 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1804 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1805 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1806 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1807 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1808 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1809 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1810 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1811 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1812 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1813 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1814 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1815 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1816 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1817 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1818 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1819 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1820 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1821 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1822 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1823 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1824 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1825 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1826 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1827 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1828 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1829 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1830 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1831 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1832 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1833 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1834 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1835 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1836 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1837 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1838 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1839 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1840 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1841 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1842 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1843 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1844 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1845 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1846 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1847 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1848 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1849 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1850 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1851 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1852 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1853 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1854 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1855 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1856 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1857 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1858 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1859 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1860 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1861 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1862 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1863 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1864 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1865 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1866 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1867 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1868 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1869 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1870 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1871 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1872 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1873 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1874 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1875 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1876 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1877 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1878 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1879 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1880 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1881 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1882 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1883 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1884 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1885 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1886 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1887 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1888 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1889 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1890 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1891 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1892 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1893 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1894 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1895 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1896 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1897 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1898 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1899 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1900 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1901 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1902 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1903 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1904 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1905 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1906 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1907 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1908 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1909 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1910 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1911 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1912 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1913 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1914 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1915 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1916 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1917 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1918 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1919 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1920 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1921 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1922 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1923 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1924 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1925 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1926 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1927 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1928 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1929 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1930 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1931 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1932 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1933 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1934 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1935 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1936 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1937 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1938 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1939 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1940 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1941 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1942 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1943 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1944 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1945 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1946 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1947 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1948 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1949 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1950 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1951 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1952 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1953 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1954 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1955 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1956 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1957 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1958 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1959 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1960 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1961 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1962 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1963 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1964 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1965 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1966 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1967 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1968 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1969 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1970 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1971 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1972 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1973 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1974 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1975 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1976 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1977 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1978 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1979 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1980 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1981 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1982 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1983 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1984 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1985 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1986 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1987 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1988 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1989 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1990 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1991 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1992 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1993 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1994 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1995 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1996 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1997 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1998 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example1999 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2000 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2001 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2002 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2003 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2004 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2005 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2006 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2007 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2008 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2009 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2010 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2011 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2012 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2013 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2014 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2015 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2016 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2017 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2018 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2019 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2020 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2021 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2022 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2023 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2024 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2025 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2026 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2027 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2028 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2029 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2030 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2031 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2032 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2033 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2034 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2035 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2036 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2037 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2038 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2039 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2040 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2041 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2042 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2043 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2044 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2045 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2046 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2047 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2048 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2049 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2050 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2051 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2052 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2053 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2054 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2055 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2056 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2057 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2058 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2059 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2060 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2061 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2062 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2063 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2064 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2065 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2066 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2067 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2068 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2069 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2070 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2071 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2072 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2073 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2074 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2075 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2076 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2077 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2078 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2079 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2080 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2081 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2082 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2083 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2084 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2085 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2086 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2087 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2088 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2089 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2090 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2091 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2092 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2093 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2094 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2095 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2096 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2097 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2098 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2099 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2408 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2409 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2410 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2411 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2412 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2413 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2414 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2415 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2416 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2417 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2418 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2419 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2420 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2421 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2422 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2423 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2424 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2425 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2426 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2427 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2428 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2429 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2430 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2431 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2432 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2433 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2434 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2435 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2436 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2437 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2438 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2439 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2440 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2441 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2442 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2443 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2444 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2445 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2446 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2447 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2448 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2449 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2450 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2451 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2452 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2453 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2454 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2455 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2456 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2457 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2458 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2459 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2460 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2461 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2462 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2463 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2464 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2465 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2466 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2467 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2468 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2469 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2470 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2471 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2472 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2473 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2474 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2475 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2476 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2477 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2478 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2479 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2480 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2481 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2482 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2483 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2484 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2485 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2486 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2487 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2488 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2489 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2490 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2491 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2492 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2493 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2494 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2495 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2496 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2497 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2498 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2499 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2500 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2501 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2502 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2503 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2504 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2505 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2506 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2507 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2508 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2509 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2510 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2511 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2512 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2513 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2514 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2515 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2516 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2517 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2518 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2519 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2520 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2521 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2522 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2523 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2524 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2525 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2526 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2527 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2528 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2529 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2530 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2531 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2532 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2533 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2534 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2535 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2536 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2537 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2538 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2539 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2540 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2541 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2542 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2543 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2544 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2545 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2546 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2547 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2548 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2549 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2550 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2551 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2552 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2553 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2554 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2555 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2556 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2557 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2558 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2559 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2560 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2561 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2562 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2563 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2564 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2565 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2566 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2567 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2568 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2569 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2570 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2571 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2572 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2573 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2574 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2575 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2576 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2577 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2578 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2579 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2580 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2581 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2582 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2583 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2584 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2585 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2586 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2587 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2588 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2589 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2590 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2591 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2592 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2593 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2594 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2595 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2596 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2597 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2598 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2599 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2600 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2601 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2602 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2603 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2604 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2605 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2606 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2607 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2608 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2609 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2610 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2611 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2612 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2613 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2614 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2615 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2616 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2617 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2618 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2619 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2620 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2621 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2622 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2623 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2624 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2625 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2626 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2627 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2628 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2629 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2630 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2631 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2632 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2633 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2634 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2635 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2636 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2637 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2638 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2639 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2640 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2641 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2642 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2643 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2644 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2645 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2646 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2647 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2648 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2649 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2650 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2651 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2652 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2653 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2654 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2655 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2656 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2657 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2658 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2659 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2660 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2661 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2662 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2663 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2664 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2665 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2666 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2667 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2668 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2669 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2670 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2671 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2672 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2673 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2674 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2675 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2676 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2677 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2678 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2679 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2680 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2681 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2682 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2683 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2684 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2685 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2686 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2687 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2688 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2689 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2690 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2691 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2692 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2693 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2694 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2695 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2696 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2697 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2698 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2699 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2700 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2701 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2702 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2703 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2704 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2705 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2706 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2707 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2708 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2709 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2710 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2711 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2712 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2713 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2714 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2715 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2716 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2717 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2718 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2719 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2720 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2721 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2722 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2723 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2724 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2725 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2726 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2727 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2728 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2729 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2730 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2731 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2732 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2733 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2734 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2735 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2736 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2737 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2738 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2739 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2740 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2741 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2742 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2743 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2744 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2745 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2746 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2747 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2748 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2749 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2750 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2751 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2752 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2753 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2754 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2755 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2756 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2757 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2758 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2759 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2760 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2761 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2762 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2763 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2764 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2765 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2766 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2767 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2768 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2769 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2770 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2771 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2772 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2773 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2774 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2775 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2776 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2777 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2778 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2779 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2780 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2781 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2782 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2783 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2784 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2785 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2786 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2787 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2788 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2789 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2790 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2791 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2792 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2793 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2794 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2795 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2796 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2797 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2798 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2799 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2800 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2801 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2802 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2803 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2804 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2805 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2806 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2807 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2808 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2809 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2810 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2811 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2812 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2813 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2814 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2815 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2816 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2817 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2818 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2819 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2820 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2821 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2822 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2823 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2824 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2825 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2826 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2827 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2828 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2829 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2830 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2831 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2832 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2833 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2834 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2835 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2836 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2837 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2838 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2839 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2840 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2841 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2842 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2843 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2844 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2845 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2846 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2847 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2848 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2849 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2850 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2851 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2852 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2853 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2854 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2855 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2856 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2857 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2858 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2859 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2860 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2861 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2862 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2863 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2864 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2865 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2866 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2867 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2868 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2869 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2870 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2871 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2872 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2873 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2874 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2875 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2876 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2877 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2878 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2879 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2880 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2881 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2882 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2883 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2884 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2885 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2886 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2887 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2888 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2889 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2890 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2891 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2892 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2893 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2894 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2895 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2896 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2897 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2898 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2899 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2900 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2901 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2902 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2903 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2904 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2905 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2906 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2907 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2908 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2909 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2910 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2911 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2912 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2913 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2914 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2915 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2916 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2917 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2918 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2919 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2920 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2921 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2922 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2923 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2924 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2925 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2926 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2927 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2928 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2929 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2930 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2931 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2932 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2933 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2934 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2935 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2936 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2937 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2938 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2939 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2940 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2941 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2942 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2943 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2944 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2945 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2946 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2947 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2948 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2949 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2950 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2951 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2952 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2953 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2954 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2955 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2956 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2957 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2958 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2959 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2960 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2961 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2962 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2963 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2964 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2965 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2966 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2967 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2968 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2969 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2970 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2971 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2972 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2973 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2974 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2975 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2976 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2977 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2978 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2979 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2980 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2981 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2982 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2983 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2984 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2985 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2986 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2987 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2988 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2989 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2990 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2991 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2992 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2993 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2994 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2995 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2996 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2997 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2998 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example2999 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3000 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3001 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3002 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3003 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3004 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3005 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3006 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3007 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3008 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3009 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3010 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3011 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3012 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3013 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3014 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3015 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3016 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3017 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3018 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3019 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3020 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3021 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3022 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3023 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3024 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3025 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3026 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3027 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3028 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3029 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3030 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3031 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3032 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3033 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3034 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3035 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3036 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3037 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3038 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3039 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3040 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3041 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3042 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3043 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3044 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3045 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3046 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3047 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3048 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3049 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3050 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3051 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3052 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3053 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3054 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3055 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3056 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3057 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3058 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3059 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3060 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3061 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3062 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3063 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3064 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3065 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3066 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3067 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3068 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3069 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3070 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3071 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3072 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3073 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3074 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3075 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3076 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3077 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3078 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3079 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3080 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3081 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3082 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3083 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3084 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3085 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3086 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3087 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3088 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3089 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3090 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3091 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3092 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3093 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3094 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3095 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3096 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3097 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3098 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3099 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3408 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3409 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3410 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3411 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3412 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3413 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3414 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3415 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3416 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3417 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3418 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3419 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3420 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3421 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3422 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3423 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3424 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3425 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3426 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3427 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3428 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3429 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3430 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3431 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3432 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3433 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3434 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3435 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3436 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3437 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3438 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3439 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3440 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3441 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3442 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3443 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3444 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3445 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3446 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3447 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3448 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3449 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3450 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3451 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3452 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3453 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3454 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3455 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3456 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3457 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3458 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3459 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3460 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3461 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3462 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3463 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3464 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3465 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3466 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3467 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3468 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3469 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3470 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3471 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3472 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3473 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3474 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3475 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3476 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3477 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3478 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3479 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3480 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3481 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3482 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3483 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3484 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3485 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3486 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3487 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3488 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3489 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3490 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3491 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3492 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3493 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3494 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3495 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3496 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3497 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3498 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3499 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3500 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3501 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3502 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3503 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3504 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3505 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3506 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3507 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3508 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3509 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3510 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3511 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3512 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3513 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3514 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3515 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3516 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3517 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3518 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3519 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3520 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3521 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3522 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3523 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3524 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3525 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3526 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3527 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3528 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3529 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3530 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3531 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3532 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3533 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3534 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3535 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3536 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3537 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3538 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3539 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3540 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3541 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3542 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3543 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3544 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3545 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3546 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3547 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3548 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3549 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3550 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3551 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3552 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3553 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3554 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3555 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3556 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3557 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3558 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3559 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3560 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3561 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3562 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3563 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3564 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3565 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3566 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3567 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3568 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3569 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3570 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3571 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3572 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3573 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3574 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3575 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3576 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3577 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3578 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3579 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3580 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3581 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3582 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3583 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3584 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3585 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3586 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3587 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3588 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3589 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3590 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3591 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3592 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3593 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3594 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3595 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3596 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3597 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3598 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3599 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3600 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3601 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3602 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3603 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3604 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3605 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3606 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3607 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3608 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3609 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3610 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3611 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3612 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3613 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3614 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3615 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3616 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3617 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3618 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3619 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3620 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3621 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3622 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3623 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3624 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3625 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3626 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3627 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3628 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3629 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3630 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3631 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3632 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3633 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3634 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3635 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3636 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3637 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3638 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3639 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3640 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3641 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3642 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3643 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3644 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3645 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3646 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3647 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3648 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3649 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3650 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3651 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3652 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3653 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3654 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3655 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3656 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3657 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3658 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3659 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3660 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3661 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3662 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3663 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3664 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3665 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3666 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3667 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3668 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3669 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3670 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3671 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3672 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3673 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3674 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3675 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3676 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3677 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3678 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3679 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3680 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3681 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3682 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3683 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3684 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3685 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3686 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3687 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3688 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3689 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3690 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3691 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3692 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3693 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3694 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3695 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3696 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3697 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3698 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3699 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3700 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3701 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3702 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3703 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3704 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3705 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3706 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3707 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3708 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3709 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3710 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3711 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3712 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3713 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3714 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3715 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3716 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3717 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3718 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3719 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3720 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3721 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3722 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3723 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3724 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3725 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3726 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3727 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3728 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3729 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3730 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3731 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3732 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3733 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3734 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3735 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3736 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3737 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3738 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3739 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3740 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3741 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3742 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3743 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3744 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3745 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3746 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3747 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3748 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3749 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3750 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3751 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3752 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3753 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3754 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3755 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3756 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3757 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3758 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3759 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3760 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3761 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3762 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3763 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3764 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3765 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3766 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3767 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3768 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3769 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3770 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3771 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3772 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3773 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3774 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3775 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3776 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3777 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3778 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3779 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3780 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3781 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3782 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3783 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3784 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3785 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3786 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3787 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3788 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3789 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3790 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3791 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3792 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3793 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3794 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3795 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3796 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3797 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3798 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3799 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3800 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3801 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3802 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3803 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3804 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3805 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3806 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3807 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3808 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3809 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3810 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3811 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3812 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3813 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3814 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3815 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3816 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3817 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3818 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3819 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3820 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3821 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3822 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3823 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3824 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3825 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3826 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3827 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3828 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3829 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3830 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3831 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3832 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3833 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3834 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3835 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3836 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3837 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3838 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3839 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3840 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3841 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3842 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3843 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3844 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3845 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3846 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3847 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3848 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3849 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3850 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3851 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3852 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3853 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3854 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3855 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3856 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3857 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3858 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3859 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3860 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3861 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3862 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3863 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3864 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3865 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3866 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3867 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3868 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3869 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3870 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3871 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3872 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3873 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3874 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3875 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3876 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3877 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3878 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3879 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3880 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3881 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3882 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3883 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3884 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3885 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3886 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3887 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3888 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3889 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3890 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3891 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3892 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3893 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3894 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3895 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3896 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3897 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3898 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3899 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3900 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3901 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3902 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3903 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3904 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3905 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3906 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3907 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3908 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3909 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3910 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3911 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3912 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3913 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3914 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3915 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3916 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3917 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3918 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3919 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3920 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3921 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3922 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3923 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3924 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3925 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3926 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3927 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3928 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3929 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3930 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3931 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3932 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3933 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3934 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3935 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3936 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3937 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3938 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3939 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3940 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3941 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3942 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3943 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3944 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3945 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3946 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3947 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3948 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3949 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3950 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3951 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3952 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3953 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3954 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3955 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3956 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3957 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3958 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3959 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3960 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3961 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3962 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3963 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3964 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3965 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3966 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3967 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3968 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3969 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3970 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3971 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3972 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3973 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3974 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3975 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3976 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3977 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3978 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3979 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3980 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3981 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3982 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3983 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3984 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3985 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3986 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3987 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3988 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3989 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3990 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3991 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3992 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3993 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3994 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3995 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3996 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3997 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3998 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example3999 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4000 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4001 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4002 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4003 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4004 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4005 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4006 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4007 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4008 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4009 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4010 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4011 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4012 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4013 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4014 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4015 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4016 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4017 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4018 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4019 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4020 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4021 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4022 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4023 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4024 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4025 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4026 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4027 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4028 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4029 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4030 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4031 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4032 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4033 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4034 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4035 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4036 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4037 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4038 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4039 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4040 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4041 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4042 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4043 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4044 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4045 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4046 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4047 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4048 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4049 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4050 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4051 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4052 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4053 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4054 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4055 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4056 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4057 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4058 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4059 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4060 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4061 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4062 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4063 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4064 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4065 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4066 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4067 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4068 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4069 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4070 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4071 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4072 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4073 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4074 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4075 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4076 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4077 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4078 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4079 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4080 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4081 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4082 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4083 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4084 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4085 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4086 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4087 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4088 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4089 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4090 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4091 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4092 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4093 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4094 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4095 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4096 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4097 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4098 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4099 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4408 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4409 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4410 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4411 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4412 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4413 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4414 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4415 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4416 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4417 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4418 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4419 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4420 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4421 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4422 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4423 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4424 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4425 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4426 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4427 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4428 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4429 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4430 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4431 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4432 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4433 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4434 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4435 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4436 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4437 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4438 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4439 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4440 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4441 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4442 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4443 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4444 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4445 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4446 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4447 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4448 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4449 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4450 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4451 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4452 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4453 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4454 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4455 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4456 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4457 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4458 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4459 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4460 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4461 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4462 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4463 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4464 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4465 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4466 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4467 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4468 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4469 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4470 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4471 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4472 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4473 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4474 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4475 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4476 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4477 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4478 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4479 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4480 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4481 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4482 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4483 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4484 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4485 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4486 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4487 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4488 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4489 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4490 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4491 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4492 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4493 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4494 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4495 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4496 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4497 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4498 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4499 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4500 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4501 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4502 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4503 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4504 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4505 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4506 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4507 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4508 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4509 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4510 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4511 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4512 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4513 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4514 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4515 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4516 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4517 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4518 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4519 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4520 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4521 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4522 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4523 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4524 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4525 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4526 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4527 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4528 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4529 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4530 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4531 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4532 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4533 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4534 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4535 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4536 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4537 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4538 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4539 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4540 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4541 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4542 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4543 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4544 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4545 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4546 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4547 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4548 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4549 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4550 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4551 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4552 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4553 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4554 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4555 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4556 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4557 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4558 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4559 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4560 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4561 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4562 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4563 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4564 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4565 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4566 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4567 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4568 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4569 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4570 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4571 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4572 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4573 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4574 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4575 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4576 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4577 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4578 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4579 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4580 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4581 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4582 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4583 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4584 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4585 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4586 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4587 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4588 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4589 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4590 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4591 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4592 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4593 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4594 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4595 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4596 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4597 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4598 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4599 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4600 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4601 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4602 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4603 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4604 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4605 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4606 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4607 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4608 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4609 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4610 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4611 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4612 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4613 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4614 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4615 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4616 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4617 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4618 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4619 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4620 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4621 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4622 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4623 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4624 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4625 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4626 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4627 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4628 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4629 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4630 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4631 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4632 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4633 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4634 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4635 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4636 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4637 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4638 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4639 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4640 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4641 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4642 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4643 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4644 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4645 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4646 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4647 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4648 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4649 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4650 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4651 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4652 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4653 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4654 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4655 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4656 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4657 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4658 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4659 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4660 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4661 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4662 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4663 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4664 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4665 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4666 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4667 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4668 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4669 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4670 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4671 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4672 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4673 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4674 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4675 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4676 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4677 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4678 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4679 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4680 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4681 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4682 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4683 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4684 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4685 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4686 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4687 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4688 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4689 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4690 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4691 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4692 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4693 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4694 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4695 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4696 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4697 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4698 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4699 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4700 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4701 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4702 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4703 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4704 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4705 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4706 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4707 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4708 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4709 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4710 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4711 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4712 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4713 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4714 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4715 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4716 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4717 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4718 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4719 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4720 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4721 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4722 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4723 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4724 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4725 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4726 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4727 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4728 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4729 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4730 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4731 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4732 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4733 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4734 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4735 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4736 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4737 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4738 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4739 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4740 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4741 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4742 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4743 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4744 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4745 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4746 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4747 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4748 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4749 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4750 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4751 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4752 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4753 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4754 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4755 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4756 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4757 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4758 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4759 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4760 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4761 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4762 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4763 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4764 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4765 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4766 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4767 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4768 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4769 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4770 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4771 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4772 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4773 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4774 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4775 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4776 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4777 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4778 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4779 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4780 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4781 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4782 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4783 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4784 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4785 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4786 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4787 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4788 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4789 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4790 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4791 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4792 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4793 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4794 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4795 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4796 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4797 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4798 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4799 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4800 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4801 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4802 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4803 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4804 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4805 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4806 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4807 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4808 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4809 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4810 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4811 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4812 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4813 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4814 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4815 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4816 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4817 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4818 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4819 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4820 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4821 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4822 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4823 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4824 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4825 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4826 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4827 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4828 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4829 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4830 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4831 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4832 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4833 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4834 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4835 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4836 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4837 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4838 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4839 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4840 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4841 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4842 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4843 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4844 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4845 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4846 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4847 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4848 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4849 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4850 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4851 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4852 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4853 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4854 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4855 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4856 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4857 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4858 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4859 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4860 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4861 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4862 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4863 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4864 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4865 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4866 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4867 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4868 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4869 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4870 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4871 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4872 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4873 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4874 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4875 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4876 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4877 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4878 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4879 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4880 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4881 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4882 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4883 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4884 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4885 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4886 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4887 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4888 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4889 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4890 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4891 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4892 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4893 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4894 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4895 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4896 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4897 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4898 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4899 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4900 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4901 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4902 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4903 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4904 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4905 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4906 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4907 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4908 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4909 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4910 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4911 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4912 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4913 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4914 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4915 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4916 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4917 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4918 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4919 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4920 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4921 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4922 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4923 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4924 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4925 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4926 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4927 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4928 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4929 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4930 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4931 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4932 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4933 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4934 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4935 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4936 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4937 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4938 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4939 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4940 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4941 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4942 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4943 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4944 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4945 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4946 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4947 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4948 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4949 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4950 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4951 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4952 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4953 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4954 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4955 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4956 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4957 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4958 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4959 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4960 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4961 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4962 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4963 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4964 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4965 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4966 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4967 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4968 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4969 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4970 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4971 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4972 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4973 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4974 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4975 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4976 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4977 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4978 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4979 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4980 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4981 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4982 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4983 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4984 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4985 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4986 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4987 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4988 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4989 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4990 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4991 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4992 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4993 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4994 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4995 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4996 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4997 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4998 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example4999 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5000 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5001 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5002 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5003 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5004 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5005 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5006 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5007 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5008 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5009 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5010 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5011 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5012 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5013 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5014 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5015 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5016 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5017 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5018 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5019 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5020 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5021 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5022 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5023 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5024 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5025 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5026 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5027 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5028 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5029 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5030 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5031 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5032 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5033 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5034 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5035 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5036 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5037 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5038 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5039 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5040 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5041 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5042 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5043 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5044 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5045 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5046 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5047 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5048 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5049 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5050 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5051 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5052 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5053 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5054 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5055 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5056 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5057 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5058 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5059 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5060 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5061 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5062 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5063 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5064 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5065 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5066 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5067 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5068 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5069 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5070 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5071 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5072 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5073 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5074 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5075 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5076 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5077 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5078 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5079 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5080 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5081 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5082 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5083 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5084 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5085 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5086 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5087 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5088 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5089 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5090 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5091 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5092 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5093 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5094 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5095 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5096 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5097 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5098 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5099 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5408 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5409 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5410 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5411 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5412 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5413 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5414 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5415 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5416 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5417 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5418 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5419 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5420 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5421 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5422 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5423 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5424 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5425 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5426 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5427 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5428 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5429 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5430 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5431 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5432 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5433 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5434 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5435 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5436 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5437 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5438 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5439 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5440 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5441 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5442 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5443 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5444 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5445 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5446 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5447 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5448 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5449 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5450 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5451 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5452 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5453 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5454 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5455 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5456 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5457 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5458 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5459 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5460 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5461 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5462 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5463 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5464 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5465 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5466 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5467 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5468 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5469 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5470 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5471 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5472 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5473 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5474 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5475 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5476 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5477 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5478 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5479 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5480 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5481 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5482 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5483 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5484 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5485 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5486 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5487 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5488 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5489 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5490 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5491 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5492 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5493 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5494 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5495 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5496 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5497 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5498 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5499 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5500 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5501 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5502 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5503 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5504 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5505 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5506 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5507 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5508 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5509 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5510 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5511 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5512 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5513 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5514 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5515 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5516 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5517 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5518 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5519 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5520 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5521 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5522 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5523 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5524 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5525 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5526 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5527 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5528 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5529 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5530 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5531 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5532 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5533 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5534 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5535 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5536 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5537 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5538 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5539 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5540 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5541 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5542 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5543 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5544 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5545 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5546 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5547 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5548 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5549 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5550 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5551 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5552 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5553 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5554 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5555 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5556 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5557 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5558 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5559 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5560 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5561 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5562 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5563 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5564 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5565 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5566 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5567 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5568 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5569 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5570 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5571 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5572 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5573 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5574 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5575 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5576 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5577 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5578 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5579 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5580 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5581 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5582 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5583 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5584 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5585 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5586 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5587 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5588 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5589 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5590 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5591 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5592 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5593 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5594 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5595 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5596 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5597 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5598 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5599 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5600 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5601 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5602 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5603 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5604 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5605 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5606 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5607 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5608 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5609 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5610 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5611 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5612 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5613 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5614 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5615 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5616 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5617 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5618 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5619 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5620 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5621 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5622 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5623 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5624 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5625 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5626 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5627 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5628 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5629 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5630 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5631 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5632 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5633 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5634 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5635 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5636 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5637 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5638 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5639 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5640 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5641 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5642 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5643 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5644 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5645 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5646 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5647 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5648 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5649 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5650 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5651 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5652 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5653 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5654 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5655 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5656 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5657 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5658 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5659 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5660 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5661 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5662 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5663 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5664 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5665 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5666 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5667 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5668 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5669 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5670 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5671 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5672 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5673 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5674 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5675 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5676 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5677 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5678 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5679 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5680 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5681 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5682 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5683 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5684 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5685 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5686 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5687 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5688 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5689 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5690 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5691 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5692 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5693 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5694 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5695 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5696 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5697 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5698 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5699 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5700 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5701 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5702 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5703 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5704 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5705 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5706 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5707 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5708 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5709 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5710 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5711 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5712 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5713 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5714 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5715 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5716 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5717 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5718 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5719 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5720 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5721 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5722 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5723 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5724 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5725 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5726 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5727 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5728 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5729 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5730 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5731 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5732 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5733 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5734 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5735 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5736 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5737 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5738 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5739 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5740 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5741 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5742 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5743 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5744 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5745 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5746 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5747 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5748 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5749 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5750 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5751 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5752 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5753 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5754 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5755 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5756 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5757 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5758 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5759 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5760 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5761 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5762 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5763 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5764 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5765 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5766 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5767 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5768 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5769 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5770 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5771 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5772 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5773 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5774 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5775 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5776 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5777 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5778 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5779 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5780 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5781 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5782 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5783 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5784 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5785 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5786 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5787 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5788 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5789 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5790 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5791 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5792 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5793 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5794 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5795 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5796 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5797 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5798 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5799 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5800 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5801 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5802 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5803 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5804 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5805 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5806 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5807 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5808 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5809 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5810 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5811 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5812 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5813 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5814 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5815 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5816 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5817 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5818 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5819 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5820 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5821 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5822 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5823 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5824 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5825 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5826 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5827 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5828 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5829 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5830 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5831 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5832 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5833 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5834 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5835 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5836 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5837 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5838 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5839 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5840 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5841 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5842 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5843 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5844 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5845 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5846 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5847 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5848 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5849 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5850 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5851 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5852 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5853 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5854 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5855 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5856 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5857 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5858 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5859 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5860 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5861 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5862 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5863 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5864 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5865 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5866 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5867 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5868 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5869 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5870 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5871 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5872 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5873 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5874 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5875 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5876 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5877 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5878 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5879 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5880 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5881 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5882 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5883 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5884 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5885 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5886 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5887 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5888 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5889 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5890 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5891 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5892 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5893 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5894 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5895 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5896 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5897 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5898 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5899 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5900 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5901 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5902 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5903 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5904 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5905 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5906 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5907 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5908 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5909 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5910 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5911 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5912 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5913 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5914 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5915 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5916 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5917 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5918 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5919 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5920 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5921 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5922 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5923 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5924 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5925 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5926 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5927 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5928 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5929 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5930 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5931 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5932 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5933 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5934 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5935 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5936 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5937 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5938 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5939 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5940 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5941 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5942 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5943 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5944 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5945 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5946 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5947 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5948 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5949 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5950 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5951 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5952 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5953 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5954 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5955 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5956 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5957 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5958 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5959 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5960 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5961 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5962 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5963 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5964 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5965 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5966 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5967 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5968 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5969 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5970 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5971 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5972 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5973 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5974 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5975 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5976 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5977 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5978 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5979 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5980 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5981 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5982 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5983 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5984 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5985 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5986 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5987 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5988 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5989 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5990 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5991 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5992 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5993 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5994 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5995 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5996 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5997 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5998 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example5999 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6000 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6001 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6002 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6003 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6004 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6005 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6006 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6007 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6008 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6009 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6010 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6011 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6012 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6013 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6014 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6015 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6016 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6017 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6018 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6019 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6020 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6021 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6022 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6023 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6024 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6025 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6026 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6027 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6028 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6029 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6030 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6031 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6032 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6033 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6034 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6035 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6036 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6037 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6038 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6039 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6040 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6041 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6042 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6043 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6044 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6045 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6046 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6047 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6048 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6049 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6050 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6051 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6052 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6053 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6054 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6055 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6056 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6057 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6058 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6059 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6060 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6061 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6062 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6063 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6064 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6065 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6066 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6067 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6068 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6069 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6070 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6071 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6072 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6073 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6074 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6075 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6076 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6077 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6078 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6079 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6080 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6081 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6082 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6083 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6084 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6085 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6086 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6087 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6088 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6089 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6090 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6091 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6092 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6093 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6094 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6095 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6096 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6097 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6098 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6099 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6408 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6409 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6410 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6411 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6412 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6413 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6414 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6415 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6416 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6417 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6418 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6419 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6420 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6421 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6422 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6423 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6424 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6425 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6426 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6427 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6428 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6429 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6430 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6431 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6432 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6433 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6434 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6435 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6436 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6437 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6438 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6439 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6440 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6441 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6442 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6443 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6444 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6445 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6446 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6447 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6448 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6449 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6450 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6451 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6452 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6453 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6454 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6455 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6456 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6457 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6458 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6459 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6460 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6461 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6462 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6463 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6464 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6465 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6466 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6467 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6468 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6469 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6470 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6471 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6472 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6473 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6474 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6475 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6476 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6477 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6478 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6479 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6480 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6481 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6482 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6483 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6484 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6485 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6486 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6487 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6488 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6489 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6490 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6491 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6492 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6493 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6494 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6495 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6496 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6497 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6498 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6499 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6500 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6501 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6502 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6503 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6504 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6505 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6506 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6507 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6508 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6509 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6510 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6511 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6512 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6513 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6514 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6515 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6516 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6517 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6518 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6519 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6520 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6521 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6522 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6523 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6524 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6525 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6526 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6527 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6528 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6529 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6530 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6531 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6532 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6533 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6534 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6535 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6536 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6537 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6538 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6539 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6540 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6541 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6542 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6543 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6544 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6545 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6546 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6547 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6548 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6549 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6550 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6551 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6552 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6553 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6554 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6555 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6556 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6557 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6558 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6559 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6560 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6561 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6562 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6563 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6564 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6565 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6566 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6567 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6568 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6569 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6570 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6571 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6572 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6573 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6574 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6575 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6576 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6577 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6578 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6579 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6580 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6581 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6582 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6583 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6584 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6585 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6586 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6587 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6588 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6589 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6590 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6591 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6592 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6593 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6594 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6595 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6596 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6597 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6598 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6599 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6600 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6601 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6602 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6603 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6604 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6605 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6606 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6607 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6608 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6609 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6610 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6611 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6612 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6613 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6614 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6615 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6616 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6617 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6618 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6619 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6620 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6621 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6622 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6623 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6624 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6625 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6626 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6627 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6628 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6629 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6630 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6631 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6632 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6633 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6634 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6635 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6636 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6637 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6638 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6639 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6640 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6641 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6642 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6643 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6644 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6645 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6646 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6647 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6648 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6649 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6650 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6651 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6652 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6653 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6654 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6655 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6656 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6657 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6658 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6659 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6660 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6661 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6662 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6663 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6664 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6665 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6666 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6667 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6668 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6669 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6670 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6671 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6672 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6673 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6674 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6675 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6676 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6677 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6678 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6679 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6680 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6681 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6682 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6683 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6684 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6685 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6686 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6687 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6688 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6689 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6690 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6691 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6692 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6693 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6694 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6695 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6696 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6697 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6698 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6699 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6700 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6701 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6702 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6703 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6704 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6705 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6706 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6707 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6708 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6709 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6710 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6711 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6712 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6713 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6714 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6715 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6716 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6717 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6718 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6719 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6720 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6721 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6722 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6723 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6724 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6725 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6726 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6727 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6728 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6729 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6730 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6731 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6732 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6733 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6734 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6735 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6736 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6737 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6738 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6739 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6740 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6741 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6742 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6743 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6744 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6745 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6746 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6747 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6748 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6749 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6750 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6751 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6752 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6753 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6754 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6755 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6756 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6757 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6758 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6759 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6760 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6761 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6762 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6763 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6764 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6765 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6766 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6767 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6768 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6769 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6770 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6771 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6772 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6773 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6774 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6775 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6776 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6777 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6778 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6779 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6780 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6781 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6782 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6783 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6784 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6785 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6786 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6787 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6788 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6789 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6790 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6791 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6792 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6793 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6794 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6795 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6796 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6797 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6798 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6799 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6800 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6801 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6802 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6803 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6804 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6805 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6806 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6807 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6808 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6809 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6810 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6811 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6812 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6813 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6814 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6815 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6816 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6817 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6818 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6819 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6820 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6821 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6822 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6823 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6824 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6825 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6826 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6827 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6828 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6829 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6830 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6831 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6832 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6833 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6834 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6835 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6836 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6837 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6838 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6839 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6840 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6841 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6842 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6843 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6844 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6845 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6846 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6847 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6848 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6849 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6850 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6851 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6852 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6853 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6854 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6855 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6856 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6857 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6858 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6859 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6860 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6861 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6862 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6863 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6864 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6865 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6866 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6867 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6868 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6869 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6870 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6871 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6872 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6873 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6874 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6875 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6876 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6877 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6878 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6879 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6880 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6881 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6882 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6883 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6884 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6885 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6886 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6887 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6888 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6889 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6890 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6891 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6892 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6893 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6894 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6895 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6896 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6897 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6898 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6899 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6900 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6901 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6902 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6903 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6904 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6905 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6906 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6907 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6908 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6909 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6910 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6911 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6912 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6913 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6914 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6915 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6916 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6917 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6918 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6919 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6920 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6921 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6922 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6923 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6924 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6925 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6926 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6927 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6928 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6929 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6930 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6931 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6932 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6933 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6934 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6935 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6936 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6937 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6938 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6939 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6940 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6941 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6942 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6943 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6944 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6945 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6946 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6947 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6948 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6949 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6950 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6951 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6952 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6953 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6954 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6955 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6956 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6957 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6958 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6959 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6960 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6961 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6962 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6963 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6964 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6965 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6966 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6967 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6968 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6969 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6970 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6971 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6972 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6973 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6974 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6975 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6976 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6977 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6978 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6979 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6980 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6981 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6982 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6983 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6984 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6985 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6986 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6987 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6988 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6989 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6990 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6991 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6992 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6993 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6994 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6995 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6996 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6997 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6998 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example6999 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7000 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7001 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7002 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7003 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7004 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7005 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7006 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7007 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7008 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7009 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7010 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7011 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7012 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7013 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7014 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7015 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7016 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7017 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7018 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7019 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7020 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7021 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7022 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7023 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7024 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7025 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7026 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7027 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7028 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7029 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7030 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7031 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7032 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7033 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7034 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7035 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7036 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7037 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7038 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7039 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7040 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7041 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7042 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7043 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7044 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7045 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7046 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7047 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7048 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7049 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7050 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7051 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7052 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7053 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7054 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7055 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7056 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7057 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7058 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7059 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7060 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7061 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7062 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7063 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7064 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7065 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7066 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7067 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7068 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7069 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7070 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7071 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7072 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7073 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7074 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7075 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7076 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7077 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7078 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7079 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7080 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7081 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7082 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7083 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7084 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7085 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7086 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7087 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7088 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7089 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7090 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7091 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7092 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7093 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7094 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7095 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7096 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7097 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7098 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7099 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7408 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7409 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7410 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7411 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7412 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7413 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7414 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7415 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7416 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7417 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7418 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7419 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7420 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7421 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7422 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7423 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7424 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7425 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7426 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7427 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7428 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7429 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7430 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7431 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7432 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7433 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7434 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7435 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7436 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7437 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7438 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7439 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7440 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7441 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7442 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7443 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7444 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7445 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7446 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7447 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7448 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7449 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7450 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7451 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7452 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7453 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7454 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7455 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7456 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7457 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7458 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7459 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7460 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7461 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7462 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7463 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7464 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7465 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7466 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7467 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7468 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7469 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7470 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7471 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7472 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7473 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7474 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7475 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7476 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7477 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7478 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7479 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7480 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7481 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7482 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7483 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7484 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7485 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7486 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7487 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7488 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7489 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7490 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7491 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7492 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7493 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7494 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7495 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7496 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7497 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7498 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7499 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7500 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7501 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7502 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7503 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7504 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7505 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7506 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7507 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7508 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7509 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7510 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7511 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7512 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7513 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7514 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7515 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7516 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7517 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7518 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7519 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7520 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7521 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7522 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7523 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7524 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7525 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7526 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7527 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7528 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7529 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7530 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7531 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7532 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7533 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7534 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7535 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7536 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7537 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7538 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7539 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7540 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7541 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7542 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7543 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7544 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7545 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7546 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7547 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7548 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7549 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7550 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7551 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7552 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7553 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7554 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7555 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7556 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7557 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7558 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7559 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7560 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7561 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7562 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7563 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7564 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7565 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7566 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7567 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7568 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7569 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7570 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7571 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7572 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7573 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7574 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7575 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7576 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7577 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7578 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7579 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7580 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7581 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7582 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7583 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7584 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7585 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7586 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7587 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7588 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7589 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7590 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7591 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7592 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7593 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7594 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7595 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7596 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7597 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7598 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7599 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7600 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7601 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7602 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7603 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7604 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7605 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7606 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7607 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7608 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7609 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7610 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7611 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7612 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7613 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7614 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7615 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7616 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7617 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7618 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7619 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7620 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7621 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7622 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7623 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7624 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7625 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7626 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7627 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7628 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7629 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7630 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7631 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7632 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7633 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7634 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7635 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7636 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7637 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7638 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7639 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7640 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7641 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7642 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7643 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7644 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7645 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7646 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7647 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7648 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7649 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7650 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7651 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7652 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7653 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7654 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7655 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7656 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7657 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7658 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7659 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7660 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7661 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7662 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7663 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7664 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7665 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7666 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7667 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7668 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7669 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7670 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7671 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7672 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7673 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7674 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7675 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7676 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7677 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7678 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7679 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7680 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7681 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7682 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7683 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7684 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7685 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7686 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7687 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7688 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7689 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7690 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7691 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7692 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7693 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7694 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7695 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7696 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7697 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7698 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7699 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7700 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7701 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7702 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7703 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7704 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7705 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7706 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7707 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7708 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7709 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7710 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7711 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7712 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7713 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7714 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7715 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7716 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7717 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7718 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7719 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7720 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7721 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7722 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7723 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7724 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7725 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7726 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7727 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7728 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7729 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7730 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7731 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7732 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7733 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7734 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7735 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7736 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7737 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7738 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7739 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7740 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7741 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7742 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7743 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7744 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7745 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7746 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7747 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7748 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7749 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7750 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7751 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7752 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7753 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7754 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7755 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7756 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7757 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7758 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7759 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7760 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7761 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7762 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7763 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7764 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7765 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7766 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7767 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7768 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7769 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7770 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7771 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7772 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7773 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7774 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7775 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7776 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7777 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7778 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7779 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7780 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7781 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7782 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7783 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7784 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7785 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7786 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7787 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7788 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7789 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7790 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7791 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7792 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7793 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7794 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7795 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7796 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7797 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7798 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7799 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7800 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7801 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7802 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7803 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7804 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7805 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7806 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7807 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7808 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7809 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7810 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7811 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7812 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7813 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7814 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7815 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7816 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7817 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7818 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7819 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7820 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7821 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7822 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7823 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7824 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7825 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7826 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7827 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7828 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7829 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7830 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7831 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7832 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7833 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7834 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7835 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7836 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7837 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7838 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7839 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7840 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7841 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7842 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7843 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7844 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7845 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7846 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7847 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7848 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7849 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7850 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7851 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7852 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7853 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7854 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7855 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7856 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7857 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7858 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7859 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7860 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7861 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7862 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7863 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7864 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7865 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7866 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7867 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7868 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7869 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7870 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7871 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7872 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7873 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7874 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7875 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7876 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7877 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7878 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7879 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7880 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7881 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7882 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7883 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7884 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7885 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7886 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7887 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7888 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7889 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7890 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7891 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7892 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7893 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7894 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7895 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7896 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7897 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7898 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7899 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7900 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7901 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7902 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7903 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7904 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7905 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7906 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7907 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7908 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7909 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7910 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7911 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7912 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7913 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7914 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7915 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7916 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7917 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7918 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7919 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7920 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7921 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7922 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7923 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7924 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7925 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7926 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7927 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7928 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7929 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7930 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7931 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7932 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7933 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7934 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7935 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7936 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7937 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7938 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7939 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7940 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7941 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7942 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7943 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7944 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7945 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7946 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7947 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7948 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7949 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7950 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7951 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7952 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7953 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7954 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7955 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7956 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7957 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7958 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7959 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7960 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7961 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7962 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7963 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7964 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7965 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7966 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7967 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7968 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7969 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7970 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7971 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7972 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7973 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7974 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7975 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7976 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7977 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7978 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7979 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7980 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7981 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7982 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7983 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7984 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7985 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7986 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7987 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7988 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7989 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7990 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7991 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7992 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7993 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7994 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7995 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7996 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7997 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7998 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example7999 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8000 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8001 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8002 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8003 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8004 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8005 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8006 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8007 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8008 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8009 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8010 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8011 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8012 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8013 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8014 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8015 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8016 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8017 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8018 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8019 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8020 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8021 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8022 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8023 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8024 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8025 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8026 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8027 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8028 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8029 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8030 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8031 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8032 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8033 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8034 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8035 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8036 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8037 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8038 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8039 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8040 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8041 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8042 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8043 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8044 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8045 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8046 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8047 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8048 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8049 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8050 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8051 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8052 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8053 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8054 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8055 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8056 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8057 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8058 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8059 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8060 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8061 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8062 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8063 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8064 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8065 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8066 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8067 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8068 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8069 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8070 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8071 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8072 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8073 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8074 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8075 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8076 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8077 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8078 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8079 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8080 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8081 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8082 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8083 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8084 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8085 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8086 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8087 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8088 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8089 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8090 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8091 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8092 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8093 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8094 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8095 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8096 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8097 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8098 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8099 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8100 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8101 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8102 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8103 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8104 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8105 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8106 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8107 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8108 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8109 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8110 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8111 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8112 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8113 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8114 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8115 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8116 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8117 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8118 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8119 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8120 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8121 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8122 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8123 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8124 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8125 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8126 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8127 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8128 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8129 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8130 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8131 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8132 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8133 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8134 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8135 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8136 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8137 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8138 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8139 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8140 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8141 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8142 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8143 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8144 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8145 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8146 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8147 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8148 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8149 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8150 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8151 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8152 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8153 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8154 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8155 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8156 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8157 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8158 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8159 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8160 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8161 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8162 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8163 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8164 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8165 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8166 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8167 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8168 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8169 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8170 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8171 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8172 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8173 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8174 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8175 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8176 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8177 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8178 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8179 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8180 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8181 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8182 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8183 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8184 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8185 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8186 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8187 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8188 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8189 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8190 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8191 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8192 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8193 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8194 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8195 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8196 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8197 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8198 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8199 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8200 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8201 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8202 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8203 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8204 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8205 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8206 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8207 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8208 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8209 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8210 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8211 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8212 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8213 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8214 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8215 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8216 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8217 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8218 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8219 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8220 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8221 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8222 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8223 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8224 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8225 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8226 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8227 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8228 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8229 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8230 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8231 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8232 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8233 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8234 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8235 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8236 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8237 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8238 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8239 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8240 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8241 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8242 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8243 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8244 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8245 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8246 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8247 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8248 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8249 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8250 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8251 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8252 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8253 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8254 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8255 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8256 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8257 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8258 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8259 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8260 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8261 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8262 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8263 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8264 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8265 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8266 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8267 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8268 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8269 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8270 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8271 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8272 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8273 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8274 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8275 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8276 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8277 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8278 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8279 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8280 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8281 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8282 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8283 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8284 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8285 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8286 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8287 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8288 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8289 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8290 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8291 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8292 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8293 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8294 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8295 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8296 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8297 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8298 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8299 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8300 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8301 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8302 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8303 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8304 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8305 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8306 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8307 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8308 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8309 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8310 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8311 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8312 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8313 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8314 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8315 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8316 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8317 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8318 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8319 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8320 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8321 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8322 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8323 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8324 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8325 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8326 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8327 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8328 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8329 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8330 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8331 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8332 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8333 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8334 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8335 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8336 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8337 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8338 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8339 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8340 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8341 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8342 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8343 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8344 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8345 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8346 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8347 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8348 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8349 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8350 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8351 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8352 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8353 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8354 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8355 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8356 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8357 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8358 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8359 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8360 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8361 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8362 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8363 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8364 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8365 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8366 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8367 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8368 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8369 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8370 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8371 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8372 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8373 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8374 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8375 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8376 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8377 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8378 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8379 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8380 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8381 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8382 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8383 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8384 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8385 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8386 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8387 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8388 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8389 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8390 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8391 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8392 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8393 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8394 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8395 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8396 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8397 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8398 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8399 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8400 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8401 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8402 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8403 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8404 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8405 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8406 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val g7_example8407 :
  ((((((bool * heap) * heap) * heap) * heap) * int) * int) * int

val example_set_7 :
  (char list * (((((((bool * heap) * heap) * heap) * heap) * int) * int) * int))
  list