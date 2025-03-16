
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

val goal : ((((bool * heap) * heap) * heap) * int) -> bool

val assump_Assumption_4 : ((((bool * heap) * heap) * heap) * int) -> bool

val assump_Assumption_7 : ((((bool * heap) * heap) * heap) * int) -> bool

val assump_GenVarEq_gv0 : ((((bool * heap) * heap) * heap) * int) -> bool

val assump_Assumption_6 : ((((bool * heap) * heap) * heap) * int) -> bool

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

val g11_example0 : (((bool * heap) * heap) * heap) * int

val g11_example1 : (((bool * heap) * heap) * heap) * int

val g11_example2 : (((bool * heap) * heap) * heap) * int

val g11_example3 : (((bool * heap) * heap) * heap) * int

val g11_example4 : (((bool * heap) * heap) * heap) * int

val g11_example5 : (((bool * heap) * heap) * heap) * int

val g11_example6 : (((bool * heap) * heap) * heap) * int

val g11_example7 : (((bool * heap) * heap) * heap) * int

val g11_example8 : (((bool * heap) * heap) * heap) * int

val g11_example9 : (((bool * heap) * heap) * heap) * int

val g11_example10 : (((bool * heap) * heap) * heap) * int

val g11_example11 : (((bool * heap) * heap) * heap) * int

val g11_example12 : (((bool * heap) * heap) * heap) * int

val g11_example13 : (((bool * heap) * heap) * heap) * int

val g11_example14 : (((bool * heap) * heap) * heap) * int

val g11_example15 : (((bool * heap) * heap) * heap) * int

val g11_example16 : (((bool * heap) * heap) * heap) * int

val g11_example17 : (((bool * heap) * heap) * heap) * int

val g11_example18 : (((bool * heap) * heap) * heap) * int

val g11_example19 : (((bool * heap) * heap) * heap) * int

val g11_example20 : (((bool * heap) * heap) * heap) * int

val g11_example21 : (((bool * heap) * heap) * heap) * int

val g11_example22 : (((bool * heap) * heap) * heap) * int

val g11_example23 : (((bool * heap) * heap) * heap) * int

val g11_example24 : (((bool * heap) * heap) * heap) * int

val g11_example25 : (((bool * heap) * heap) * heap) * int

val g11_example26 : (((bool * heap) * heap) * heap) * int

val g11_example27 : (((bool * heap) * heap) * heap) * int

val g11_example28 : (((bool * heap) * heap) * heap) * int

val g11_example29 : (((bool * heap) * heap) * heap) * int

val g11_example30 : (((bool * heap) * heap) * heap) * int

val g11_example31 : (((bool * heap) * heap) * heap) * int

val g11_example32 : (((bool * heap) * heap) * heap) * int

val g11_example33 : (((bool * heap) * heap) * heap) * int

val g11_example34 : (((bool * heap) * heap) * heap) * int

val g11_example35 : (((bool * heap) * heap) * heap) * int

val g11_example36 : (((bool * heap) * heap) * heap) * int

val g11_example37 : (((bool * heap) * heap) * heap) * int

val g11_example38 : (((bool * heap) * heap) * heap) * int

val g11_example39 : (((bool * heap) * heap) * heap) * int

val g11_example40 : (((bool * heap) * heap) * heap) * int

val g11_example41 : (((bool * heap) * heap) * heap) * int

val g11_example42 : (((bool * heap) * heap) * heap) * int

val g11_example43 : (((bool * heap) * heap) * heap) * int

val g11_example44 : (((bool * heap) * heap) * heap) * int

val g11_example45 : (((bool * heap) * heap) * heap) * int

val g11_example46 : (((bool * heap) * heap) * heap) * int

val g11_example47 : (((bool * heap) * heap) * heap) * int

val g11_example48 : (((bool * heap) * heap) * heap) * int

val g11_example49 : (((bool * heap) * heap) * heap) * int

val g11_example50 : (((bool * heap) * heap) * heap) * int

val g11_example51 : (((bool * heap) * heap) * heap) * int

val g11_example52 : (((bool * heap) * heap) * heap) * int

val g11_example53 : (((bool * heap) * heap) * heap) * int

val g11_example54 : (((bool * heap) * heap) * heap) * int

val g11_example55 : (((bool * heap) * heap) * heap) * int

val g11_example56 : (((bool * heap) * heap) * heap) * int

val g11_example57 : (((bool * heap) * heap) * heap) * int

val g11_example58 : (((bool * heap) * heap) * heap) * int

val g11_example59 : (((bool * heap) * heap) * heap) * int

val g11_example60 : (((bool * heap) * heap) * heap) * int

val g11_example61 : (((bool * heap) * heap) * heap) * int

val g11_example62 : (((bool * heap) * heap) * heap) * int

val g11_example63 : (((bool * heap) * heap) * heap) * int

val g11_example64 : (((bool * heap) * heap) * heap) * int

val g11_example65 : (((bool * heap) * heap) * heap) * int

val g11_example66 : (((bool * heap) * heap) * heap) * int

val g11_example67 : (((bool * heap) * heap) * heap) * int

val g11_example68 : (((bool * heap) * heap) * heap) * int

val g11_example69 : (((bool * heap) * heap) * heap) * int

val g11_example70 : (((bool * heap) * heap) * heap) * int

val g11_example71 : (((bool * heap) * heap) * heap) * int

val g11_example72 : (((bool * heap) * heap) * heap) * int

val g11_example73 : (((bool * heap) * heap) * heap) * int

val g11_example74 : (((bool * heap) * heap) * heap) * int

val g11_example75 : (((bool * heap) * heap) * heap) * int

val g11_example76 : (((bool * heap) * heap) * heap) * int

val g11_example77 : (((bool * heap) * heap) * heap) * int

val g11_example78 : (((bool * heap) * heap) * heap) * int

val g11_example79 : (((bool * heap) * heap) * heap) * int

val g11_example80 : (((bool * heap) * heap) * heap) * int

val g11_example81 : (((bool * heap) * heap) * heap) * int

val g11_example82 : (((bool * heap) * heap) * heap) * int

val g11_example83 : (((bool * heap) * heap) * heap) * int

val g11_example84 : (((bool * heap) * heap) * heap) * int

val g11_example85 : (((bool * heap) * heap) * heap) * int

val g11_example86 : (((bool * heap) * heap) * heap) * int

val g11_example87 : (((bool * heap) * heap) * heap) * int

val g11_example88 : (((bool * heap) * heap) * heap) * int

val g11_example89 : (((bool * heap) * heap) * heap) * int

val g11_example90 : (((bool * heap) * heap) * heap) * int

val g11_example91 : (((bool * heap) * heap) * heap) * int

val g11_example92 : (((bool * heap) * heap) * heap) * int

val g11_example93 : (((bool * heap) * heap) * heap) * int

val g11_example94 : (((bool * heap) * heap) * heap) * int

val g11_example95 : (((bool * heap) * heap) * heap) * int

val g11_example96 : (((bool * heap) * heap) * heap) * int

val g11_example97 : (((bool * heap) * heap) * heap) * int

val g11_example98 : (((bool * heap) * heap) * heap) * int

val g11_example99 : (((bool * heap) * heap) * heap) * int

val g11_example100 : (((bool * heap) * heap) * heap) * int

val g11_example101 : (((bool * heap) * heap) * heap) * int

val g11_example102 : (((bool * heap) * heap) * heap) * int

val g11_example103 : (((bool * heap) * heap) * heap) * int

val g11_example104 : (((bool * heap) * heap) * heap) * int

val g11_example105 : (((bool * heap) * heap) * heap) * int

val g11_example106 : (((bool * heap) * heap) * heap) * int

val g11_example107 : (((bool * heap) * heap) * heap) * int

val g11_example108 : (((bool * heap) * heap) * heap) * int

val g11_example109 : (((bool * heap) * heap) * heap) * int

val g11_example110 : (((bool * heap) * heap) * heap) * int

val g11_example111 : (((bool * heap) * heap) * heap) * int

val g11_example112 : (((bool * heap) * heap) * heap) * int

val g11_example113 : (((bool * heap) * heap) * heap) * int

val g11_example114 : (((bool * heap) * heap) * heap) * int

val g11_example115 : (((bool * heap) * heap) * heap) * int

val g11_example116 : (((bool * heap) * heap) * heap) * int

val g11_example117 : (((bool * heap) * heap) * heap) * int

val g11_example118 : (((bool * heap) * heap) * heap) * int

val g11_example119 : (((bool * heap) * heap) * heap) * int

val g11_example120 : (((bool * heap) * heap) * heap) * int

val g11_example121 : (((bool * heap) * heap) * heap) * int

val g11_example122 : (((bool * heap) * heap) * heap) * int

val g11_example123 : (((bool * heap) * heap) * heap) * int

val g11_example124 : (((bool * heap) * heap) * heap) * int

val g11_example125 : (((bool * heap) * heap) * heap) * int

val g11_example126 : (((bool * heap) * heap) * heap) * int

val g11_example127 : (((bool * heap) * heap) * heap) * int

val g11_example128 : (((bool * heap) * heap) * heap) * int

val g11_example129 : (((bool * heap) * heap) * heap) * int

val g11_example130 : (((bool * heap) * heap) * heap) * int

val g11_example131 : (((bool * heap) * heap) * heap) * int

val g11_example132 : (((bool * heap) * heap) * heap) * int

val g11_example133 : (((bool * heap) * heap) * heap) * int

val g11_example134 : (((bool * heap) * heap) * heap) * int

val g11_example135 : (((bool * heap) * heap) * heap) * int

val g11_example136 : (((bool * heap) * heap) * heap) * int

val g11_example137 : (((bool * heap) * heap) * heap) * int

val g11_example138 : (((bool * heap) * heap) * heap) * int

val g11_example139 : (((bool * heap) * heap) * heap) * int

val g11_example140 : (((bool * heap) * heap) * heap) * int

val g11_example141 : (((bool * heap) * heap) * heap) * int

val g11_example142 : (((bool * heap) * heap) * heap) * int

val g11_example143 : (((bool * heap) * heap) * heap) * int

val g11_example144 : (((bool * heap) * heap) * heap) * int

val g11_example145 : (((bool * heap) * heap) * heap) * int

val g11_example146 : (((bool * heap) * heap) * heap) * int

val g11_example147 : (((bool * heap) * heap) * heap) * int

val g11_example148 : (((bool * heap) * heap) * heap) * int

val g11_example149 : (((bool * heap) * heap) * heap) * int

val g11_example150 : (((bool * heap) * heap) * heap) * int

val g11_example151 : (((bool * heap) * heap) * heap) * int

val g11_example152 : (((bool * heap) * heap) * heap) * int

val g11_example153 : (((bool * heap) * heap) * heap) * int

val g11_example154 : (((bool * heap) * heap) * heap) * int

val g11_example155 : (((bool * heap) * heap) * heap) * int

val g11_example156 : (((bool * heap) * heap) * heap) * int

val g11_example157 : (((bool * heap) * heap) * heap) * int

val g11_example158 : (((bool * heap) * heap) * heap) * int

val g11_example159 : (((bool * heap) * heap) * heap) * int

val g11_example160 : (((bool * heap) * heap) * heap) * int

val g11_example161 : (((bool * heap) * heap) * heap) * int

val g11_example162 : (((bool * heap) * heap) * heap) * int

val g11_example163 : (((bool * heap) * heap) * heap) * int

val g11_example164 : (((bool * heap) * heap) * heap) * int

val g11_example165 : (((bool * heap) * heap) * heap) * int

val g11_example166 : (((bool * heap) * heap) * heap) * int

val g11_example167 : (((bool * heap) * heap) * heap) * int

val g11_example168 : (((bool * heap) * heap) * heap) * int

val g11_example169 : (((bool * heap) * heap) * heap) * int

val g11_example170 : (((bool * heap) * heap) * heap) * int

val g11_example171 : (((bool * heap) * heap) * heap) * int

val g11_example172 : (((bool * heap) * heap) * heap) * int

val g11_example173 : (((bool * heap) * heap) * heap) * int

val g11_example174 : (((bool * heap) * heap) * heap) * int

val g11_example175 : (((bool * heap) * heap) * heap) * int

val g11_example176 : (((bool * heap) * heap) * heap) * int

val g11_example177 : (((bool * heap) * heap) * heap) * int

val g11_example178 : (((bool * heap) * heap) * heap) * int

val g11_example179 : (((bool * heap) * heap) * heap) * int

val g11_example180 : (((bool * heap) * heap) * heap) * int

val g11_example181 : (((bool * heap) * heap) * heap) * int

val g11_example182 : (((bool * heap) * heap) * heap) * int

val g11_example183 : (((bool * heap) * heap) * heap) * int

val g11_example184 : (((bool * heap) * heap) * heap) * int

val g11_example185 : (((bool * heap) * heap) * heap) * int

val g11_example186 : (((bool * heap) * heap) * heap) * int

val g11_example187 : (((bool * heap) * heap) * heap) * int

val g11_example188 : (((bool * heap) * heap) * heap) * int

val g11_example189 : (((bool * heap) * heap) * heap) * int

val g11_example190 : (((bool * heap) * heap) * heap) * int

val g11_example191 : (((bool * heap) * heap) * heap) * int

val g11_example192 : (((bool * heap) * heap) * heap) * int

val g11_example193 : (((bool * heap) * heap) * heap) * int

val g11_example194 : (((bool * heap) * heap) * heap) * int

val g11_example195 : (((bool * heap) * heap) * heap) * int

val g11_example196 : (((bool * heap) * heap) * heap) * int

val g11_example197 : (((bool * heap) * heap) * heap) * int

val g11_example198 : (((bool * heap) * heap) * heap) * int

val g11_example199 : (((bool * heap) * heap) * heap) * int

val g11_example200 : (((bool * heap) * heap) * heap) * int

val g11_example201 : (((bool * heap) * heap) * heap) * int

val g11_example202 : (((bool * heap) * heap) * heap) * int

val g11_example203 : (((bool * heap) * heap) * heap) * int

val g11_example204 : (((bool * heap) * heap) * heap) * int

val g11_example205 : (((bool * heap) * heap) * heap) * int

val g11_example206 : (((bool * heap) * heap) * heap) * int

val g11_example207 : (((bool * heap) * heap) * heap) * int

val g11_example208 : (((bool * heap) * heap) * heap) * int

val g11_example209 : (((bool * heap) * heap) * heap) * int

val g11_example210 : (((bool * heap) * heap) * heap) * int

val g11_example211 : (((bool * heap) * heap) * heap) * int

val g11_example212 : (((bool * heap) * heap) * heap) * int

val g11_example213 : (((bool * heap) * heap) * heap) * int

val g11_example214 : (((bool * heap) * heap) * heap) * int

val g11_example215 : (((bool * heap) * heap) * heap) * int

val g11_example216 : (((bool * heap) * heap) * heap) * int

val g11_example217 : (((bool * heap) * heap) * heap) * int

val g11_example218 : (((bool * heap) * heap) * heap) * int

val g11_example219 : (((bool * heap) * heap) * heap) * int

val g11_example220 : (((bool * heap) * heap) * heap) * int

val g11_example221 : (((bool * heap) * heap) * heap) * int

val g11_example222 : (((bool * heap) * heap) * heap) * int

val g11_example223 : (((bool * heap) * heap) * heap) * int

val g11_example224 : (((bool * heap) * heap) * heap) * int

val g11_example225 : (((bool * heap) * heap) * heap) * int

val g11_example226 : (((bool * heap) * heap) * heap) * int

val g11_example227 : (((bool * heap) * heap) * heap) * int

val g11_example228 : (((bool * heap) * heap) * heap) * int

val g11_example229 : (((bool * heap) * heap) * heap) * int

val g11_example230 : (((bool * heap) * heap) * heap) * int

val g11_example231 : (((bool * heap) * heap) * heap) * int

val g11_example232 : (((bool * heap) * heap) * heap) * int

val g11_example233 : (((bool * heap) * heap) * heap) * int

val g11_example234 : (((bool * heap) * heap) * heap) * int

val g11_example235 : (((bool * heap) * heap) * heap) * int

val g11_example236 : (((bool * heap) * heap) * heap) * int

val g11_example237 : (((bool * heap) * heap) * heap) * int

val g11_example238 : (((bool * heap) * heap) * heap) * int

val g11_example239 : (((bool * heap) * heap) * heap) * int

val g11_example240 : (((bool * heap) * heap) * heap) * int

val g11_example241 : (((bool * heap) * heap) * heap) * int

val g11_example242 : (((bool * heap) * heap) * heap) * int

val g11_example243 : (((bool * heap) * heap) * heap) * int

val g11_example244 : (((bool * heap) * heap) * heap) * int

val g11_example245 : (((bool * heap) * heap) * heap) * int

val g11_example246 : (((bool * heap) * heap) * heap) * int

val g11_example247 : (((bool * heap) * heap) * heap) * int

val g11_example248 : (((bool * heap) * heap) * heap) * int

val g11_example249 : (((bool * heap) * heap) * heap) * int

val g11_example250 : (((bool * heap) * heap) * heap) * int

val g11_example251 : (((bool * heap) * heap) * heap) * int

val g11_example252 : (((bool * heap) * heap) * heap) * int

val g11_example253 : (((bool * heap) * heap) * heap) * int

val g11_example254 : (((bool * heap) * heap) * heap) * int

val g11_example255 : (((bool * heap) * heap) * heap) * int

val g11_example256 : (((bool * heap) * heap) * heap) * int

val g11_example257 : (((bool * heap) * heap) * heap) * int

val g11_example258 : (((bool * heap) * heap) * heap) * int

val g11_example259 : (((bool * heap) * heap) * heap) * int

val g11_example260 : (((bool * heap) * heap) * heap) * int

val g11_example261 : (((bool * heap) * heap) * heap) * int

val g11_example262 : (((bool * heap) * heap) * heap) * int

val g11_example263 : (((bool * heap) * heap) * heap) * int

val g11_example264 : (((bool * heap) * heap) * heap) * int

val g11_example265 : (((bool * heap) * heap) * heap) * int

val g11_example266 : (((bool * heap) * heap) * heap) * int

val g11_example267 : (((bool * heap) * heap) * heap) * int

val g11_example268 : (((bool * heap) * heap) * heap) * int

val g11_example269 : (((bool * heap) * heap) * heap) * int

val g11_example270 : (((bool * heap) * heap) * heap) * int

val g11_example271 : (((bool * heap) * heap) * heap) * int

val g11_example272 : (((bool * heap) * heap) * heap) * int

val g11_example273 : (((bool * heap) * heap) * heap) * int

val g11_example274 : (((bool * heap) * heap) * heap) * int

val g11_example275 : (((bool * heap) * heap) * heap) * int

val g11_example276 : (((bool * heap) * heap) * heap) * int

val g11_example277 : (((bool * heap) * heap) * heap) * int

val g11_example278 : (((bool * heap) * heap) * heap) * int

val g11_example279 : (((bool * heap) * heap) * heap) * int

val g11_example280 : (((bool * heap) * heap) * heap) * int

val g11_example281 : (((bool * heap) * heap) * heap) * int

val g11_example282 : (((bool * heap) * heap) * heap) * int

val g11_example283 : (((bool * heap) * heap) * heap) * int

val g11_example284 : (((bool * heap) * heap) * heap) * int

val g11_example285 : (((bool * heap) * heap) * heap) * int

val g11_example286 : (((bool * heap) * heap) * heap) * int

val g11_example287 : (((bool * heap) * heap) * heap) * int

val g11_example288 : (((bool * heap) * heap) * heap) * int

val g11_example289 : (((bool * heap) * heap) * heap) * int

val g11_example290 : (((bool * heap) * heap) * heap) * int

val g11_example291 : (((bool * heap) * heap) * heap) * int

val g11_example292 : (((bool * heap) * heap) * heap) * int

val g11_example293 : (((bool * heap) * heap) * heap) * int

val g11_example294 : (((bool * heap) * heap) * heap) * int

val g11_example295 : (((bool * heap) * heap) * heap) * int

val g11_example296 : (((bool * heap) * heap) * heap) * int

val g11_example297 : (((bool * heap) * heap) * heap) * int

val g11_example298 : (((bool * heap) * heap) * heap) * int

val g11_example299 : (((bool * heap) * heap) * heap) * int

val g11_example300 : (((bool * heap) * heap) * heap) * int

val g11_example301 : (((bool * heap) * heap) * heap) * int

val g11_example302 : (((bool * heap) * heap) * heap) * int

val g11_example303 : (((bool * heap) * heap) * heap) * int

val g11_example304 : (((bool * heap) * heap) * heap) * int

val g11_example305 : (((bool * heap) * heap) * heap) * int

val g11_example306 : (((bool * heap) * heap) * heap) * int

val g11_example307 : (((bool * heap) * heap) * heap) * int

val g11_example308 : (((bool * heap) * heap) * heap) * int

val g11_example309 : (((bool * heap) * heap) * heap) * int

val g11_example310 : (((bool * heap) * heap) * heap) * int

val g11_example311 : (((bool * heap) * heap) * heap) * int

val g11_example312 : (((bool * heap) * heap) * heap) * int

val g11_example313 : (((bool * heap) * heap) * heap) * int

val g11_example314 : (((bool * heap) * heap) * heap) * int

val g11_example315 : (((bool * heap) * heap) * heap) * int

val g11_example316 : (((bool * heap) * heap) * heap) * int

val g11_example317 : (((bool * heap) * heap) * heap) * int

val g11_example318 : (((bool * heap) * heap) * heap) * int

val g11_example319 : (((bool * heap) * heap) * heap) * int

val g11_example320 : (((bool * heap) * heap) * heap) * int

val g11_example321 : (((bool * heap) * heap) * heap) * int

val g11_example322 : (((bool * heap) * heap) * heap) * int

val g11_example323 : (((bool * heap) * heap) * heap) * int

val g11_example324 : (((bool * heap) * heap) * heap) * int

val g11_example325 : (((bool * heap) * heap) * heap) * int

val g11_example326 : (((bool * heap) * heap) * heap) * int

val g11_example327 : (((bool * heap) * heap) * heap) * int

val g11_example328 : (((bool * heap) * heap) * heap) * int

val g11_example329 : (((bool * heap) * heap) * heap) * int

val g11_example330 : (((bool * heap) * heap) * heap) * int

val g11_example331 : (((bool * heap) * heap) * heap) * int

val g11_example332 : (((bool * heap) * heap) * heap) * int

val g11_example333 : (((bool * heap) * heap) * heap) * int

val g11_example334 : (((bool * heap) * heap) * heap) * int

val g11_example335 : (((bool * heap) * heap) * heap) * int

val g11_example336 : (((bool * heap) * heap) * heap) * int

val g11_example337 : (((bool * heap) * heap) * heap) * int

val g11_example338 : (((bool * heap) * heap) * heap) * int

val g11_example339 : (((bool * heap) * heap) * heap) * int

val g11_example340 : (((bool * heap) * heap) * heap) * int

val g11_example341 : (((bool * heap) * heap) * heap) * int

val g11_example342 : (((bool * heap) * heap) * heap) * int

val g11_example343 : (((bool * heap) * heap) * heap) * int

val g11_example344 : (((bool * heap) * heap) * heap) * int

val g11_example345 : (((bool * heap) * heap) * heap) * int

val g11_example346 : (((bool * heap) * heap) * heap) * int

val g11_example347 : (((bool * heap) * heap) * heap) * int

val g11_example348 : (((bool * heap) * heap) * heap) * int

val g11_example349 : (((bool * heap) * heap) * heap) * int

val g11_example350 : (((bool * heap) * heap) * heap) * int

val g11_example351 : (((bool * heap) * heap) * heap) * int

val g11_example352 : (((bool * heap) * heap) * heap) * int

val g11_example353 : (((bool * heap) * heap) * heap) * int

val g11_example354 : (((bool * heap) * heap) * heap) * int

val g11_example355 : (((bool * heap) * heap) * heap) * int

val g11_example356 : (((bool * heap) * heap) * heap) * int

val g11_example357 : (((bool * heap) * heap) * heap) * int

val g11_example358 : (((bool * heap) * heap) * heap) * int

val g11_example359 : (((bool * heap) * heap) * heap) * int

val g11_example360 : (((bool * heap) * heap) * heap) * int

val g11_example361 : (((bool * heap) * heap) * heap) * int

val g11_example362 : (((bool * heap) * heap) * heap) * int

val g11_example363 : (((bool * heap) * heap) * heap) * int

val g11_example364 : (((bool * heap) * heap) * heap) * int

val g11_example365 : (((bool * heap) * heap) * heap) * int

val g11_example366 : (((bool * heap) * heap) * heap) * int

val g11_example367 : (((bool * heap) * heap) * heap) * int

val g11_example368 : (((bool * heap) * heap) * heap) * int

val g11_example369 : (((bool * heap) * heap) * heap) * int

val g11_example370 : (((bool * heap) * heap) * heap) * int

val g11_example371 : (((bool * heap) * heap) * heap) * int

val g11_example372 : (((bool * heap) * heap) * heap) * int

val g11_example373 : (((bool * heap) * heap) * heap) * int

val g11_example374 : (((bool * heap) * heap) * heap) * int

val g11_example375 : (((bool * heap) * heap) * heap) * int

val g11_example376 : (((bool * heap) * heap) * heap) * int

val g11_example377 : (((bool * heap) * heap) * heap) * int

val g11_example378 : (((bool * heap) * heap) * heap) * int

val g11_example379 : (((bool * heap) * heap) * heap) * int

val g11_example380 : (((bool * heap) * heap) * heap) * int

val g11_example381 : (((bool * heap) * heap) * heap) * int

val g11_example382 : (((bool * heap) * heap) * heap) * int

val g11_example383 : (((bool * heap) * heap) * heap) * int

val g11_example384 : (((bool * heap) * heap) * heap) * int

val g11_example385 : (((bool * heap) * heap) * heap) * int

val g11_example386 : (((bool * heap) * heap) * heap) * int

val g11_example387 : (((bool * heap) * heap) * heap) * int

val g11_example388 : (((bool * heap) * heap) * heap) * int

val g11_example389 : (((bool * heap) * heap) * heap) * int

val g11_example390 : (((bool * heap) * heap) * heap) * int

val g11_example391 : (((bool * heap) * heap) * heap) * int

val g11_example392 : (((bool * heap) * heap) * heap) * int

val g11_example393 : (((bool * heap) * heap) * heap) * int

val g11_example394 : (((bool * heap) * heap) * heap) * int

val g11_example395 : (((bool * heap) * heap) * heap) * int

val g11_example396 : (((bool * heap) * heap) * heap) * int

val g11_example397 : (((bool * heap) * heap) * heap) * int

val g11_example398 : (((bool * heap) * heap) * heap) * int

val g11_example399 : (((bool * heap) * heap) * heap) * int

val g11_example400 : (((bool * heap) * heap) * heap) * int

val g11_example401 : (((bool * heap) * heap) * heap) * int

val g11_example402 : (((bool * heap) * heap) * heap) * int

val g11_example403 : (((bool * heap) * heap) * heap) * int

val g11_example404 : (((bool * heap) * heap) * heap) * int

val g11_example405 : (((bool * heap) * heap) * heap) * int

val g11_example406 : (((bool * heap) * heap) * heap) * int

val g11_example407 : (((bool * heap) * heap) * heap) * int

val g11_example408 : (((bool * heap) * heap) * heap) * int

val g11_example409 : (((bool * heap) * heap) * heap) * int

val g11_example410 : (((bool * heap) * heap) * heap) * int

val g11_example411 : (((bool * heap) * heap) * heap) * int

val g11_example412 : (((bool * heap) * heap) * heap) * int

val g11_example413 : (((bool * heap) * heap) * heap) * int

val g11_example414 : (((bool * heap) * heap) * heap) * int

val g11_example415 : (((bool * heap) * heap) * heap) * int

val g11_example416 : (((bool * heap) * heap) * heap) * int

val g11_example417 : (((bool * heap) * heap) * heap) * int

val g11_example418 : (((bool * heap) * heap) * heap) * int

val g11_example419 : (((bool * heap) * heap) * heap) * int

val g11_example420 : (((bool * heap) * heap) * heap) * int

val g11_example421 : (((bool * heap) * heap) * heap) * int

val g11_example422 : (((bool * heap) * heap) * heap) * int

val g11_example423 : (((bool * heap) * heap) * heap) * int

val g11_example424 : (((bool * heap) * heap) * heap) * int

val g11_example425 : (((bool * heap) * heap) * heap) * int

val g11_example426 : (((bool * heap) * heap) * heap) * int

val g11_example427 : (((bool * heap) * heap) * heap) * int

val g11_example428 : (((bool * heap) * heap) * heap) * int

val g11_example429 : (((bool * heap) * heap) * heap) * int

val g11_example430 : (((bool * heap) * heap) * heap) * int

val g11_example431 : (((bool * heap) * heap) * heap) * int

val g11_example432 : (((bool * heap) * heap) * heap) * int

val g11_example433 : (((bool * heap) * heap) * heap) * int

val g11_example434 : (((bool * heap) * heap) * heap) * int

val g11_example435 : (((bool * heap) * heap) * heap) * int

val g11_example436 : (((bool * heap) * heap) * heap) * int

val g11_example437 : (((bool * heap) * heap) * heap) * int

val g11_example438 : (((bool * heap) * heap) * heap) * int

val g11_example439 : (((bool * heap) * heap) * heap) * int

val g11_example440 : (((bool * heap) * heap) * heap) * int

val g11_example441 : (((bool * heap) * heap) * heap) * int

val g11_example442 : (((bool * heap) * heap) * heap) * int

val g11_example443 : (((bool * heap) * heap) * heap) * int

val g11_example444 : (((bool * heap) * heap) * heap) * int

val g11_example445 : (((bool * heap) * heap) * heap) * int

val g11_example446 : (((bool * heap) * heap) * heap) * int

val g11_example447 : (((bool * heap) * heap) * heap) * int

val g11_example448 : (((bool * heap) * heap) * heap) * int

val g11_example449 : (((bool * heap) * heap) * heap) * int

val g11_example450 : (((bool * heap) * heap) * heap) * int

val g11_example451 : (((bool * heap) * heap) * heap) * int

val g11_example452 : (((bool * heap) * heap) * heap) * int

val g11_example453 : (((bool * heap) * heap) * heap) * int

val g11_example454 : (((bool * heap) * heap) * heap) * int

val g11_example455 : (((bool * heap) * heap) * heap) * int

val g11_example456 : (((bool * heap) * heap) * heap) * int

val g11_example457 : (((bool * heap) * heap) * heap) * int

val g11_example458 : (((bool * heap) * heap) * heap) * int

val g11_example459 : (((bool * heap) * heap) * heap) * int

val g11_example460 : (((bool * heap) * heap) * heap) * int

val g11_example461 : (((bool * heap) * heap) * heap) * int

val g11_example462 : (((bool * heap) * heap) * heap) * int

val g11_example463 : (((bool * heap) * heap) * heap) * int

val g11_example464 : (((bool * heap) * heap) * heap) * int

val g11_example465 : (((bool * heap) * heap) * heap) * int

val g11_example466 : (((bool * heap) * heap) * heap) * int

val g11_example467 : (((bool * heap) * heap) * heap) * int

val g11_example468 : (((bool * heap) * heap) * heap) * int

val g11_example469 : (((bool * heap) * heap) * heap) * int

val g11_example470 : (((bool * heap) * heap) * heap) * int

val g11_example471 : (((bool * heap) * heap) * heap) * int

val g11_example472 : (((bool * heap) * heap) * heap) * int

val g11_example473 : (((bool * heap) * heap) * heap) * int

val g11_example474 : (((bool * heap) * heap) * heap) * int

val g11_example475 : (((bool * heap) * heap) * heap) * int

val g11_example476 : (((bool * heap) * heap) * heap) * int

val g11_example477 : (((bool * heap) * heap) * heap) * int

val g11_example478 : (((bool * heap) * heap) * heap) * int

val g11_example479 : (((bool * heap) * heap) * heap) * int

val g11_example480 : (((bool * heap) * heap) * heap) * int

val g11_example481 : (((bool * heap) * heap) * heap) * int

val g11_example482 : (((bool * heap) * heap) * heap) * int

val g11_example483 : (((bool * heap) * heap) * heap) * int

val g11_example484 : (((bool * heap) * heap) * heap) * int

val g11_example485 : (((bool * heap) * heap) * heap) * int

val g11_example486 : (((bool * heap) * heap) * heap) * int

val g11_example487 : (((bool * heap) * heap) * heap) * int

val g11_example488 : (((bool * heap) * heap) * heap) * int

val g11_example489 : (((bool * heap) * heap) * heap) * int

val g11_example490 : (((bool * heap) * heap) * heap) * int

val g11_example491 : (((bool * heap) * heap) * heap) * int

val g11_example492 : (((bool * heap) * heap) * heap) * int

val g11_example493 : (((bool * heap) * heap) * heap) * int

val g11_example494 : (((bool * heap) * heap) * heap) * int

val g11_example495 : (((bool * heap) * heap) * heap) * int

val g11_example496 : (((bool * heap) * heap) * heap) * int

val g11_example497 : (((bool * heap) * heap) * heap) * int

val g11_example498 : (((bool * heap) * heap) * heap) * int

val g11_example499 : (((bool * heap) * heap) * heap) * int

val g11_example500 : (((bool * heap) * heap) * heap) * int

val g11_example501 : (((bool * heap) * heap) * heap) * int

val g11_example502 : (((bool * heap) * heap) * heap) * int

val g11_example503 : (((bool * heap) * heap) * heap) * int

val g11_example504 : (((bool * heap) * heap) * heap) * int

val g11_example505 : (((bool * heap) * heap) * heap) * int

val g11_example506 : (((bool * heap) * heap) * heap) * int

val g11_example507 : (((bool * heap) * heap) * heap) * int

val g11_example508 : (((bool * heap) * heap) * heap) * int

val g11_example509 : (((bool * heap) * heap) * heap) * int

val g11_example510 : (((bool * heap) * heap) * heap) * int

val g11_example511 : (((bool * heap) * heap) * heap) * int

val g11_example512 : (((bool * heap) * heap) * heap) * int

val g11_example513 : (((bool * heap) * heap) * heap) * int

val g11_example514 : (((bool * heap) * heap) * heap) * int

val g11_example515 : (((bool * heap) * heap) * heap) * int

val g11_example516 : (((bool * heap) * heap) * heap) * int

val g11_example517 : (((bool * heap) * heap) * heap) * int

val g11_example518 : (((bool * heap) * heap) * heap) * int

val g11_example519 : (((bool * heap) * heap) * heap) * int

val g11_example520 : (((bool * heap) * heap) * heap) * int

val g11_example521 : (((bool * heap) * heap) * heap) * int

val g11_example522 : (((bool * heap) * heap) * heap) * int

val g11_example523 : (((bool * heap) * heap) * heap) * int

val g11_example524 : (((bool * heap) * heap) * heap) * int

val g11_example525 : (((bool * heap) * heap) * heap) * int

val g11_example526 : (((bool * heap) * heap) * heap) * int

val g11_example527 : (((bool * heap) * heap) * heap) * int

val g11_example528 : (((bool * heap) * heap) * heap) * int

val g11_example529 : (((bool * heap) * heap) * heap) * int

val g11_example530 : (((bool * heap) * heap) * heap) * int

val g11_example531 : (((bool * heap) * heap) * heap) * int

val g11_example532 : (((bool * heap) * heap) * heap) * int

val g11_example533 : (((bool * heap) * heap) * heap) * int

val g11_example534 : (((bool * heap) * heap) * heap) * int

val g11_example535 : (((bool * heap) * heap) * heap) * int

val g11_example536 : (((bool * heap) * heap) * heap) * int

val g11_example537 : (((bool * heap) * heap) * heap) * int

val g11_example538 : (((bool * heap) * heap) * heap) * int

val g11_example539 : (((bool * heap) * heap) * heap) * int

val g11_example540 : (((bool * heap) * heap) * heap) * int

val g11_example541 : (((bool * heap) * heap) * heap) * int

val g11_example542 : (((bool * heap) * heap) * heap) * int

val g11_example543 : (((bool * heap) * heap) * heap) * int

val g11_example544 : (((bool * heap) * heap) * heap) * int

val g11_example545 : (((bool * heap) * heap) * heap) * int

val g11_example546 : (((bool * heap) * heap) * heap) * int

val g11_example547 : (((bool * heap) * heap) * heap) * int

val g11_example548 : (((bool * heap) * heap) * heap) * int

val g11_example549 : (((bool * heap) * heap) * heap) * int

val g11_example550 : (((bool * heap) * heap) * heap) * int

val g11_example551 : (((bool * heap) * heap) * heap) * int

val g11_example552 : (((bool * heap) * heap) * heap) * int

val g11_example553 : (((bool * heap) * heap) * heap) * int

val g11_example554 : (((bool * heap) * heap) * heap) * int

val g11_example555 : (((bool * heap) * heap) * heap) * int

val g11_example556 : (((bool * heap) * heap) * heap) * int

val g11_example557 : (((bool * heap) * heap) * heap) * int

val g11_example558 : (((bool * heap) * heap) * heap) * int

val g11_example559 : (((bool * heap) * heap) * heap) * int

val g11_example560 : (((bool * heap) * heap) * heap) * int

val g11_example561 : (((bool * heap) * heap) * heap) * int

val g11_example562 : (((bool * heap) * heap) * heap) * int

val g11_example563 : (((bool * heap) * heap) * heap) * int

val g11_example564 : (((bool * heap) * heap) * heap) * int

val g11_example565 : (((bool * heap) * heap) * heap) * int

val g11_example566 : (((bool * heap) * heap) * heap) * int

val g11_example567 : (((bool * heap) * heap) * heap) * int

val g11_example568 : (((bool * heap) * heap) * heap) * int

val g11_example569 : (((bool * heap) * heap) * heap) * int

val g11_example570 : (((bool * heap) * heap) * heap) * int

val g11_example571 : (((bool * heap) * heap) * heap) * int

val g11_example572 : (((bool * heap) * heap) * heap) * int

val g11_example573 : (((bool * heap) * heap) * heap) * int

val g11_example574 : (((bool * heap) * heap) * heap) * int

val g11_example575 : (((bool * heap) * heap) * heap) * int

val g11_example576 : (((bool * heap) * heap) * heap) * int

val g11_example577 : (((bool * heap) * heap) * heap) * int

val g11_example578 : (((bool * heap) * heap) * heap) * int

val g11_example579 : (((bool * heap) * heap) * heap) * int

val g11_example580 : (((bool * heap) * heap) * heap) * int

val g11_example581 : (((bool * heap) * heap) * heap) * int

val g11_example582 : (((bool * heap) * heap) * heap) * int

val g11_example583 : (((bool * heap) * heap) * heap) * int

val g11_example584 : (((bool * heap) * heap) * heap) * int

val g11_example585 : (((bool * heap) * heap) * heap) * int

val g11_example586 : (((bool * heap) * heap) * heap) * int

val g11_example587 : (((bool * heap) * heap) * heap) * int

val g11_example588 : (((bool * heap) * heap) * heap) * int

val g11_example589 : (((bool * heap) * heap) * heap) * int

val g11_example590 : (((bool * heap) * heap) * heap) * int

val g11_example591 : (((bool * heap) * heap) * heap) * int

val g11_example592 : (((bool * heap) * heap) * heap) * int

val g11_example593 : (((bool * heap) * heap) * heap) * int

val g11_example594 : (((bool * heap) * heap) * heap) * int

val g11_example595 : (((bool * heap) * heap) * heap) * int

val g11_example596 : (((bool * heap) * heap) * heap) * int

val g11_example597 : (((bool * heap) * heap) * heap) * int

val g11_example598 : (((bool * heap) * heap) * heap) * int

val g11_example599 : (((bool * heap) * heap) * heap) * int

val g11_example600 : (((bool * heap) * heap) * heap) * int

val g11_example601 : (((bool * heap) * heap) * heap) * int

val g11_example602 : (((bool * heap) * heap) * heap) * int

val g11_example603 : (((bool * heap) * heap) * heap) * int

val g11_example604 : (((bool * heap) * heap) * heap) * int

val g11_example605 : (((bool * heap) * heap) * heap) * int

val g11_example606 : (((bool * heap) * heap) * heap) * int

val g11_example607 : (((bool * heap) * heap) * heap) * int

val g11_example608 : (((bool * heap) * heap) * heap) * int

val g11_example609 : (((bool * heap) * heap) * heap) * int

val g11_example610 : (((bool * heap) * heap) * heap) * int

val g11_example611 : (((bool * heap) * heap) * heap) * int

val g11_example612 : (((bool * heap) * heap) * heap) * int

val g11_example613 : (((bool * heap) * heap) * heap) * int

val g11_example614 : (((bool * heap) * heap) * heap) * int

val g11_example615 : (((bool * heap) * heap) * heap) * int

val g11_example616 : (((bool * heap) * heap) * heap) * int

val g11_example617 : (((bool * heap) * heap) * heap) * int

val g11_example618 : (((bool * heap) * heap) * heap) * int

val g11_example619 : (((bool * heap) * heap) * heap) * int

val g11_example620 : (((bool * heap) * heap) * heap) * int

val g11_example621 : (((bool * heap) * heap) * heap) * int

val g11_example622 : (((bool * heap) * heap) * heap) * int

val g11_example623 : (((bool * heap) * heap) * heap) * int

val g11_example624 : (((bool * heap) * heap) * heap) * int

val g11_example625 : (((bool * heap) * heap) * heap) * int

val g11_example626 : (((bool * heap) * heap) * heap) * int

val g11_example627 : (((bool * heap) * heap) * heap) * int

val g11_example628 : (((bool * heap) * heap) * heap) * int

val g11_example629 : (((bool * heap) * heap) * heap) * int

val g11_example630 : (((bool * heap) * heap) * heap) * int

val g11_example631 : (((bool * heap) * heap) * heap) * int

val g11_example632 : (((bool * heap) * heap) * heap) * int

val g11_example633 : (((bool * heap) * heap) * heap) * int

val g11_example634 : (((bool * heap) * heap) * heap) * int

val g11_example635 : (((bool * heap) * heap) * heap) * int

val g11_example636 : (((bool * heap) * heap) * heap) * int

val g11_example637 : (((bool * heap) * heap) * heap) * int

val g11_example638 : (((bool * heap) * heap) * heap) * int

val g11_example639 : (((bool * heap) * heap) * heap) * int

val g11_example640 : (((bool * heap) * heap) * heap) * int

val g11_example641 : (((bool * heap) * heap) * heap) * int

val g11_example642 : (((bool * heap) * heap) * heap) * int

val g11_example643 : (((bool * heap) * heap) * heap) * int

val g11_example644 : (((bool * heap) * heap) * heap) * int

val g11_example645 : (((bool * heap) * heap) * heap) * int

val g11_example646 : (((bool * heap) * heap) * heap) * int

val g11_example647 : (((bool * heap) * heap) * heap) * int

val g11_example648 : (((bool * heap) * heap) * heap) * int

val g11_example649 : (((bool * heap) * heap) * heap) * int

val g11_example650 : (((bool * heap) * heap) * heap) * int

val g11_example651 : (((bool * heap) * heap) * heap) * int

val g11_example652 : (((bool * heap) * heap) * heap) * int

val g11_example653 : (((bool * heap) * heap) * heap) * int

val g11_example654 : (((bool * heap) * heap) * heap) * int

val g11_example655 : (((bool * heap) * heap) * heap) * int

val g11_example656 : (((bool * heap) * heap) * heap) * int

val g11_example657 : (((bool * heap) * heap) * heap) * int

val g11_example658 : (((bool * heap) * heap) * heap) * int

val g11_example659 : (((bool * heap) * heap) * heap) * int

val g11_example660 : (((bool * heap) * heap) * heap) * int

val g11_example661 : (((bool * heap) * heap) * heap) * int

val g11_example662 : (((bool * heap) * heap) * heap) * int

val g11_example663 : (((bool * heap) * heap) * heap) * int

val g11_example664 : (((bool * heap) * heap) * heap) * int

val g11_example665 : (((bool * heap) * heap) * heap) * int

val g11_example666 : (((bool * heap) * heap) * heap) * int

val g11_example667 : (((bool * heap) * heap) * heap) * int

val g11_example668 : (((bool * heap) * heap) * heap) * int

val g11_example669 : (((bool * heap) * heap) * heap) * int

val g11_example670 : (((bool * heap) * heap) * heap) * int

val g11_example671 : (((bool * heap) * heap) * heap) * int

val g11_example672 : (((bool * heap) * heap) * heap) * int

val g11_example673 : (((bool * heap) * heap) * heap) * int

val g11_example674 : (((bool * heap) * heap) * heap) * int

val g11_example675 : (((bool * heap) * heap) * heap) * int

val g11_example676 : (((bool * heap) * heap) * heap) * int

val g11_example677 : (((bool * heap) * heap) * heap) * int

val g11_example678 : (((bool * heap) * heap) * heap) * int

val g11_example679 : (((bool * heap) * heap) * heap) * int

val g11_example680 : (((bool * heap) * heap) * heap) * int

val g11_example681 : (((bool * heap) * heap) * heap) * int

val g11_example682 : (((bool * heap) * heap) * heap) * int

val g11_example683 : (((bool * heap) * heap) * heap) * int

val g11_example684 : (((bool * heap) * heap) * heap) * int

val g11_example685 : (((bool * heap) * heap) * heap) * int

val g11_example686 : (((bool * heap) * heap) * heap) * int

val g11_example687 : (((bool * heap) * heap) * heap) * int

val g11_example688 : (((bool * heap) * heap) * heap) * int

val g11_example689 : (((bool * heap) * heap) * heap) * int

val g11_example690 : (((bool * heap) * heap) * heap) * int

val g11_example691 : (((bool * heap) * heap) * heap) * int

val g11_example692 : (((bool * heap) * heap) * heap) * int

val g11_example693 : (((bool * heap) * heap) * heap) * int

val g11_example694 : (((bool * heap) * heap) * heap) * int

val g11_example695 : (((bool * heap) * heap) * heap) * int

val g11_example696 : (((bool * heap) * heap) * heap) * int

val g11_example697 : (((bool * heap) * heap) * heap) * int

val g11_example698 : (((bool * heap) * heap) * heap) * int

val g11_example699 : (((bool * heap) * heap) * heap) * int

val g11_example700 : (((bool * heap) * heap) * heap) * int

val g11_example701 : (((bool * heap) * heap) * heap) * int

val g11_example702 : (((bool * heap) * heap) * heap) * int

val g11_example703 : (((bool * heap) * heap) * heap) * int

val g11_example704 : (((bool * heap) * heap) * heap) * int

val g11_example705 : (((bool * heap) * heap) * heap) * int

val g11_example706 : (((bool * heap) * heap) * heap) * int

val g11_example707 : (((bool * heap) * heap) * heap) * int

val g11_example708 : (((bool * heap) * heap) * heap) * int

val g11_example709 : (((bool * heap) * heap) * heap) * int

val g11_example710 : (((bool * heap) * heap) * heap) * int

val g11_example711 : (((bool * heap) * heap) * heap) * int

val g11_example712 : (((bool * heap) * heap) * heap) * int

val g11_example713 : (((bool * heap) * heap) * heap) * int

val g11_example714 : (((bool * heap) * heap) * heap) * int

val g11_example715 : (((bool * heap) * heap) * heap) * int

val g11_example716 : (((bool * heap) * heap) * heap) * int

val g11_example717 : (((bool * heap) * heap) * heap) * int

val g11_example718 : (((bool * heap) * heap) * heap) * int

val g11_example719 : (((bool * heap) * heap) * heap) * int

val g11_example720 : (((bool * heap) * heap) * heap) * int

val g11_example721 : (((bool * heap) * heap) * heap) * int

val g11_example722 : (((bool * heap) * heap) * heap) * int

val g11_example723 : (((bool * heap) * heap) * heap) * int

val g11_example724 : (((bool * heap) * heap) * heap) * int

val g11_example725 : (((bool * heap) * heap) * heap) * int

val g11_example726 : (((bool * heap) * heap) * heap) * int

val g11_example727 : (((bool * heap) * heap) * heap) * int

val g11_example728 : (((bool * heap) * heap) * heap) * int

val g11_example729 : (((bool * heap) * heap) * heap) * int

val g11_example730 : (((bool * heap) * heap) * heap) * int

val g11_example731 : (((bool * heap) * heap) * heap) * int

val g11_example732 : (((bool * heap) * heap) * heap) * int

val g11_example733 : (((bool * heap) * heap) * heap) * int

val g11_example734 : (((bool * heap) * heap) * heap) * int

val g11_example735 : (((bool * heap) * heap) * heap) * int

val g11_example736 : (((bool * heap) * heap) * heap) * int

val g11_example737 : (((bool * heap) * heap) * heap) * int

val g11_example738 : (((bool * heap) * heap) * heap) * int

val g11_example739 : (((bool * heap) * heap) * heap) * int

val g11_example740 : (((bool * heap) * heap) * heap) * int

val g11_example741 : (((bool * heap) * heap) * heap) * int

val g11_example742 : (((bool * heap) * heap) * heap) * int

val g11_example743 : (((bool * heap) * heap) * heap) * int

val g11_example744 : (((bool * heap) * heap) * heap) * int

val g11_example745 : (((bool * heap) * heap) * heap) * int

val g11_example746 : (((bool * heap) * heap) * heap) * int

val g11_example747 : (((bool * heap) * heap) * heap) * int

val g11_example748 : (((bool * heap) * heap) * heap) * int

val g11_example749 : (((bool * heap) * heap) * heap) * int

val g11_example750 : (((bool * heap) * heap) * heap) * int

val g11_example751 : (((bool * heap) * heap) * heap) * int

val g11_example752 : (((bool * heap) * heap) * heap) * int

val g11_example753 : (((bool * heap) * heap) * heap) * int

val g11_example754 : (((bool * heap) * heap) * heap) * int

val g11_example755 : (((bool * heap) * heap) * heap) * int

val g11_example756 : (((bool * heap) * heap) * heap) * int

val g11_example757 : (((bool * heap) * heap) * heap) * int

val g11_example758 : (((bool * heap) * heap) * heap) * int

val g11_example759 : (((bool * heap) * heap) * heap) * int

val g11_example760 : (((bool * heap) * heap) * heap) * int

val g11_example761 : (((bool * heap) * heap) * heap) * int

val g11_example762 : (((bool * heap) * heap) * heap) * int

val g11_example763 : (((bool * heap) * heap) * heap) * int

val g11_example764 : (((bool * heap) * heap) * heap) * int

val g11_example765 : (((bool * heap) * heap) * heap) * int

val g11_example766 : (((bool * heap) * heap) * heap) * int

val g11_example767 : (((bool * heap) * heap) * heap) * int

val g11_example768 : (((bool * heap) * heap) * heap) * int

val g11_example769 : (((bool * heap) * heap) * heap) * int

val g11_example770 : (((bool * heap) * heap) * heap) * int

val g11_example771 : (((bool * heap) * heap) * heap) * int

val g11_example772 : (((bool * heap) * heap) * heap) * int

val g11_example773 : (((bool * heap) * heap) * heap) * int

val g11_example774 : (((bool * heap) * heap) * heap) * int

val g11_example775 : (((bool * heap) * heap) * heap) * int

val g11_example776 : (((bool * heap) * heap) * heap) * int

val g11_example777 : (((bool * heap) * heap) * heap) * int

val g11_example778 : (((bool * heap) * heap) * heap) * int

val g11_example779 : (((bool * heap) * heap) * heap) * int

val g11_example780 : (((bool * heap) * heap) * heap) * int

val g11_example781 : (((bool * heap) * heap) * heap) * int

val g11_example782 : (((bool * heap) * heap) * heap) * int

val g11_example783 : (((bool * heap) * heap) * heap) * int

val g11_example784 : (((bool * heap) * heap) * heap) * int

val g11_example785 : (((bool * heap) * heap) * heap) * int

val g11_example786 : (((bool * heap) * heap) * heap) * int

val g11_example787 : (((bool * heap) * heap) * heap) * int

val g11_example788 : (((bool * heap) * heap) * heap) * int

val g11_example789 : (((bool * heap) * heap) * heap) * int

val g11_example790 : (((bool * heap) * heap) * heap) * int

val g11_example791 : (((bool * heap) * heap) * heap) * int

val g11_example792 : (((bool * heap) * heap) * heap) * int

val g11_example793 : (((bool * heap) * heap) * heap) * int

val g11_example794 : (((bool * heap) * heap) * heap) * int

val g11_example795 : (((bool * heap) * heap) * heap) * int

val g11_example796 : (((bool * heap) * heap) * heap) * int

val g11_example797 : (((bool * heap) * heap) * heap) * int

val g11_example798 : (((bool * heap) * heap) * heap) * int

val g11_example799 : (((bool * heap) * heap) * heap) * int

val g11_example800 : (((bool * heap) * heap) * heap) * int

val g11_example801 : (((bool * heap) * heap) * heap) * int

val g11_example802 : (((bool * heap) * heap) * heap) * int

val g11_example803 : (((bool * heap) * heap) * heap) * int

val g11_example804 : (((bool * heap) * heap) * heap) * int

val g11_example805 : (((bool * heap) * heap) * heap) * int

val g11_example806 : (((bool * heap) * heap) * heap) * int

val g11_example807 : (((bool * heap) * heap) * heap) * int

val g11_example808 : (((bool * heap) * heap) * heap) * int

val g11_example809 : (((bool * heap) * heap) * heap) * int

val g11_example810 : (((bool * heap) * heap) * heap) * int

val g11_example811 : (((bool * heap) * heap) * heap) * int

val g11_example812 : (((bool * heap) * heap) * heap) * int

val g11_example813 : (((bool * heap) * heap) * heap) * int

val g11_example814 : (((bool * heap) * heap) * heap) * int

val g11_example815 : (((bool * heap) * heap) * heap) * int

val g11_example816 : (((bool * heap) * heap) * heap) * int

val g11_example817 : (((bool * heap) * heap) * heap) * int

val g11_example818 : (((bool * heap) * heap) * heap) * int

val g11_example819 : (((bool * heap) * heap) * heap) * int

val g11_example820 : (((bool * heap) * heap) * heap) * int

val g11_example821 : (((bool * heap) * heap) * heap) * int

val g11_example822 : (((bool * heap) * heap) * heap) * int

val g11_example823 : (((bool * heap) * heap) * heap) * int

val g11_example824 : (((bool * heap) * heap) * heap) * int

val g11_example825 : (((bool * heap) * heap) * heap) * int

val g11_example826 : (((bool * heap) * heap) * heap) * int

val g11_example827 : (((bool * heap) * heap) * heap) * int

val g11_example828 : (((bool * heap) * heap) * heap) * int

val g11_example829 : (((bool * heap) * heap) * heap) * int

val g11_example830 : (((bool * heap) * heap) * heap) * int

val g11_example831 : (((bool * heap) * heap) * heap) * int

val g11_example832 : (((bool * heap) * heap) * heap) * int

val g11_example833 : (((bool * heap) * heap) * heap) * int

val g11_example834 : (((bool * heap) * heap) * heap) * int

val g11_example835 : (((bool * heap) * heap) * heap) * int

val g11_example836 : (((bool * heap) * heap) * heap) * int

val g11_example837 : (((bool * heap) * heap) * heap) * int

val g11_example838 : (((bool * heap) * heap) * heap) * int

val g11_example839 : (((bool * heap) * heap) * heap) * int

val g11_example840 : (((bool * heap) * heap) * heap) * int

val g11_example841 : (((bool * heap) * heap) * heap) * int

val g11_example842 : (((bool * heap) * heap) * heap) * int

val g11_example843 : (((bool * heap) * heap) * heap) * int

val g11_example844 : (((bool * heap) * heap) * heap) * int

val g11_example845 : (((bool * heap) * heap) * heap) * int

val g11_example846 : (((bool * heap) * heap) * heap) * int

val g11_example847 : (((bool * heap) * heap) * heap) * int

val g11_example848 : (((bool * heap) * heap) * heap) * int

val g11_example849 : (((bool * heap) * heap) * heap) * int

val g11_example850 : (((bool * heap) * heap) * heap) * int

val g11_example851 : (((bool * heap) * heap) * heap) * int

val g11_example852 : (((bool * heap) * heap) * heap) * int

val g11_example853 : (((bool * heap) * heap) * heap) * int

val g11_example854 : (((bool * heap) * heap) * heap) * int

val g11_example855 : (((bool * heap) * heap) * heap) * int

val g11_example856 : (((bool * heap) * heap) * heap) * int

val g11_example857 : (((bool * heap) * heap) * heap) * int

val g11_example858 : (((bool * heap) * heap) * heap) * int

val g11_example859 : (((bool * heap) * heap) * heap) * int

val g11_example860 : (((bool * heap) * heap) * heap) * int

val g11_example861 : (((bool * heap) * heap) * heap) * int

val g11_example862 : (((bool * heap) * heap) * heap) * int

val g11_example863 : (((bool * heap) * heap) * heap) * int

val g11_example864 : (((bool * heap) * heap) * heap) * int

val g11_example865 : (((bool * heap) * heap) * heap) * int

val g11_example866 : (((bool * heap) * heap) * heap) * int

val g11_example867 : (((bool * heap) * heap) * heap) * int

val g11_example868 : (((bool * heap) * heap) * heap) * int

val g11_example869 : (((bool * heap) * heap) * heap) * int

val g11_example870 : (((bool * heap) * heap) * heap) * int

val g11_example871 : (((bool * heap) * heap) * heap) * int

val g11_example872 : (((bool * heap) * heap) * heap) * int

val g11_example873 : (((bool * heap) * heap) * heap) * int

val g11_example874 : (((bool * heap) * heap) * heap) * int

val g11_example875 : (((bool * heap) * heap) * heap) * int

val g11_example876 : (((bool * heap) * heap) * heap) * int

val g11_example877 : (((bool * heap) * heap) * heap) * int

val g11_example878 : (((bool * heap) * heap) * heap) * int

val g11_example879 : (((bool * heap) * heap) * heap) * int

val g11_example880 : (((bool * heap) * heap) * heap) * int

val g11_example881 : (((bool * heap) * heap) * heap) * int

val g11_example882 : (((bool * heap) * heap) * heap) * int

val g11_example883 : (((bool * heap) * heap) * heap) * int

val g11_example884 : (((bool * heap) * heap) * heap) * int

val g11_example885 : (((bool * heap) * heap) * heap) * int

val g11_example886 : (((bool * heap) * heap) * heap) * int

val g11_example887 : (((bool * heap) * heap) * heap) * int

val g11_example888 : (((bool * heap) * heap) * heap) * int

val g11_example889 : (((bool * heap) * heap) * heap) * int

val g11_example890 : (((bool * heap) * heap) * heap) * int

val g11_example891 : (((bool * heap) * heap) * heap) * int

val g11_example892 : (((bool * heap) * heap) * heap) * int

val g11_example893 : (((bool * heap) * heap) * heap) * int

val g11_example894 : (((bool * heap) * heap) * heap) * int

val g11_example895 : (((bool * heap) * heap) * heap) * int

val g11_example896 : (((bool * heap) * heap) * heap) * int

val g11_example897 : (((bool * heap) * heap) * heap) * int

val g11_example898 : (((bool * heap) * heap) * heap) * int

val g11_example899 : (((bool * heap) * heap) * heap) * int

val g11_example900 : (((bool * heap) * heap) * heap) * int

val g11_example901 : (((bool * heap) * heap) * heap) * int

val g11_example902 : (((bool * heap) * heap) * heap) * int

val g11_example903 : (((bool * heap) * heap) * heap) * int

val g11_example904 : (((bool * heap) * heap) * heap) * int

val g11_example905 : (((bool * heap) * heap) * heap) * int

val g11_example906 : (((bool * heap) * heap) * heap) * int

val g11_example907 : (((bool * heap) * heap) * heap) * int

val g11_example908 : (((bool * heap) * heap) * heap) * int

val g11_example909 : (((bool * heap) * heap) * heap) * int

val g11_example910 : (((bool * heap) * heap) * heap) * int

val g11_example911 : (((bool * heap) * heap) * heap) * int

val g11_example912 : (((bool * heap) * heap) * heap) * int

val g11_example913 : (((bool * heap) * heap) * heap) * int

val g11_example914 : (((bool * heap) * heap) * heap) * int

val g11_example915 : (((bool * heap) * heap) * heap) * int

val g11_example916 : (((bool * heap) * heap) * heap) * int

val g11_example917 : (((bool * heap) * heap) * heap) * int

val g11_example918 : (((bool * heap) * heap) * heap) * int

val g11_example919 : (((bool * heap) * heap) * heap) * int

val g11_example920 : (((bool * heap) * heap) * heap) * int

val g11_example921 : (((bool * heap) * heap) * heap) * int

val g11_example922 : (((bool * heap) * heap) * heap) * int

val g11_example923 : (((bool * heap) * heap) * heap) * int

val g11_example924 : (((bool * heap) * heap) * heap) * int

val g11_example925 : (((bool * heap) * heap) * heap) * int

val g11_example926 : (((bool * heap) * heap) * heap) * int

val g11_example927 : (((bool * heap) * heap) * heap) * int

val g11_example928 : (((bool * heap) * heap) * heap) * int

val g11_example929 : (((bool * heap) * heap) * heap) * int

val g11_example930 : (((bool * heap) * heap) * heap) * int

val g11_example931 : (((bool * heap) * heap) * heap) * int

val g11_example932 : (((bool * heap) * heap) * heap) * int

val g11_example933 : (((bool * heap) * heap) * heap) * int

val g11_example934 : (((bool * heap) * heap) * heap) * int

val g11_example935 : (((bool * heap) * heap) * heap) * int

val g11_example936 : (((bool * heap) * heap) * heap) * int

val g11_example937 : (((bool * heap) * heap) * heap) * int

val g11_example938 : (((bool * heap) * heap) * heap) * int

val g11_example939 : (((bool * heap) * heap) * heap) * int

val g11_example940 : (((bool * heap) * heap) * heap) * int

val g11_example941 : (((bool * heap) * heap) * heap) * int

val g11_example942 : (((bool * heap) * heap) * heap) * int

val g11_example943 : (((bool * heap) * heap) * heap) * int

val g11_example944 : (((bool * heap) * heap) * heap) * int

val g11_example945 : (((bool * heap) * heap) * heap) * int

val g11_example946 : (((bool * heap) * heap) * heap) * int

val g11_example947 : (((bool * heap) * heap) * heap) * int

val g11_example948 : (((bool * heap) * heap) * heap) * int

val g11_example949 : (((bool * heap) * heap) * heap) * int

val g11_example950 : (((bool * heap) * heap) * heap) * int

val g11_example951 : (((bool * heap) * heap) * heap) * int

val g11_example952 : (((bool * heap) * heap) * heap) * int

val g11_example953 : (((bool * heap) * heap) * heap) * int

val g11_example954 : (((bool * heap) * heap) * heap) * int

val g11_example955 : (((bool * heap) * heap) * heap) * int

val g11_example956 : (((bool * heap) * heap) * heap) * int

val g11_example957 : (((bool * heap) * heap) * heap) * int

val g11_example958 : (((bool * heap) * heap) * heap) * int

val g11_example959 : (((bool * heap) * heap) * heap) * int

val g11_example960 : (((bool * heap) * heap) * heap) * int

val g11_example961 : (((bool * heap) * heap) * heap) * int

val g11_example962 : (((bool * heap) * heap) * heap) * int

val g11_example963 : (((bool * heap) * heap) * heap) * int

val g11_example964 : (((bool * heap) * heap) * heap) * int

val g11_example965 : (((bool * heap) * heap) * heap) * int

val g11_example966 : (((bool * heap) * heap) * heap) * int

val g11_example967 : (((bool * heap) * heap) * heap) * int

val g11_example968 : (((bool * heap) * heap) * heap) * int

val g11_example969 : (((bool * heap) * heap) * heap) * int

val g11_example970 : (((bool * heap) * heap) * heap) * int

val g11_example971 : (((bool * heap) * heap) * heap) * int

val g11_example972 : (((bool * heap) * heap) * heap) * int

val g11_example973 : (((bool * heap) * heap) * heap) * int

val g11_example974 : (((bool * heap) * heap) * heap) * int

val g11_example975 : (((bool * heap) * heap) * heap) * int

val g11_example976 : (((bool * heap) * heap) * heap) * int

val g11_example977 : (((bool * heap) * heap) * heap) * int

val g11_example978 : (((bool * heap) * heap) * heap) * int

val g11_example979 : (((bool * heap) * heap) * heap) * int

val g11_example980 : (((bool * heap) * heap) * heap) * int

val g11_example981 : (((bool * heap) * heap) * heap) * int

val g11_example982 : (((bool * heap) * heap) * heap) * int

val g11_example983 : (((bool * heap) * heap) * heap) * int

val g11_example984 : (((bool * heap) * heap) * heap) * int

val g11_example985 : (((bool * heap) * heap) * heap) * int

val g11_example986 : (((bool * heap) * heap) * heap) * int

val g11_example987 : (((bool * heap) * heap) * heap) * int

val g11_example988 : (((bool * heap) * heap) * heap) * int

val g11_example989 : (((bool * heap) * heap) * heap) * int

val g11_example990 : (((bool * heap) * heap) * heap) * int

val g11_example991 : (((bool * heap) * heap) * heap) * int

val g11_example992 : (((bool * heap) * heap) * heap) * int

val g11_example993 : (((bool * heap) * heap) * heap) * int

val g11_example994 : (((bool * heap) * heap) * heap) * int

val g11_example995 : (((bool * heap) * heap) * heap) * int

val g11_example996 : (((bool * heap) * heap) * heap) * int

val g11_example997 : (((bool * heap) * heap) * heap) * int

val g11_example998 : (((bool * heap) * heap) * heap) * int

val g11_example999 : (((bool * heap) * heap) * heap) * int

val g11_example1000 : (((bool * heap) * heap) * heap) * int

val g11_example1001 : (((bool * heap) * heap) * heap) * int

val g11_example1002 : (((bool * heap) * heap) * heap) * int

val g11_example1003 : (((bool * heap) * heap) * heap) * int

val g11_example1004 : (((bool * heap) * heap) * heap) * int

val g11_example1005 : (((bool * heap) * heap) * heap) * int

val g11_example1006 : (((bool * heap) * heap) * heap) * int

val g11_example1007 : (((bool * heap) * heap) * heap) * int

val g11_example1008 : (((bool * heap) * heap) * heap) * int

val g11_example1009 : (((bool * heap) * heap) * heap) * int

val g11_example1010 : (((bool * heap) * heap) * heap) * int

val g11_example1011 : (((bool * heap) * heap) * heap) * int

val g11_example1012 : (((bool * heap) * heap) * heap) * int

val g11_example1013 : (((bool * heap) * heap) * heap) * int

val g11_example1014 : (((bool * heap) * heap) * heap) * int

val g11_example1015 : (((bool * heap) * heap) * heap) * int

val g11_example1016 : (((bool * heap) * heap) * heap) * int

val g11_example1017 : (((bool * heap) * heap) * heap) * int

val g11_example1018 : (((bool * heap) * heap) * heap) * int

val g11_example1019 : (((bool * heap) * heap) * heap) * int

val g11_example1020 : (((bool * heap) * heap) * heap) * int

val g11_example1021 : (((bool * heap) * heap) * heap) * int

val g11_example1022 : (((bool * heap) * heap) * heap) * int

val g11_example1023 : (((bool * heap) * heap) * heap) * int

val g11_example1024 : (((bool * heap) * heap) * heap) * int

val g11_example1025 : (((bool * heap) * heap) * heap) * int

val g11_example1026 : (((bool * heap) * heap) * heap) * int

val g11_example1027 : (((bool * heap) * heap) * heap) * int

val g11_example1028 : (((bool * heap) * heap) * heap) * int

val g11_example1029 : (((bool * heap) * heap) * heap) * int

val g11_example1030 : (((bool * heap) * heap) * heap) * int

val g11_example1031 : (((bool * heap) * heap) * heap) * int

val g11_example1032 : (((bool * heap) * heap) * heap) * int

val g11_example1033 : (((bool * heap) * heap) * heap) * int

val g11_example1034 : (((bool * heap) * heap) * heap) * int

val g11_example1035 : (((bool * heap) * heap) * heap) * int

val g11_example1036 : (((bool * heap) * heap) * heap) * int

val g11_example1037 : (((bool * heap) * heap) * heap) * int

val g11_example1038 : (((bool * heap) * heap) * heap) * int

val g11_example1039 : (((bool * heap) * heap) * heap) * int

val g11_example1040 : (((bool * heap) * heap) * heap) * int

val g11_example1041 : (((bool * heap) * heap) * heap) * int

val g11_example1042 : (((bool * heap) * heap) * heap) * int

val g11_example1043 : (((bool * heap) * heap) * heap) * int

val g11_example1044 : (((bool * heap) * heap) * heap) * int

val g11_example1045 : (((bool * heap) * heap) * heap) * int

val g11_example1046 : (((bool * heap) * heap) * heap) * int

val g11_example1047 : (((bool * heap) * heap) * heap) * int

val g11_example1048 : (((bool * heap) * heap) * heap) * int

val g11_example1049 : (((bool * heap) * heap) * heap) * int

val g11_example1050 : (((bool * heap) * heap) * heap) * int

val g11_example1051 : (((bool * heap) * heap) * heap) * int

val g11_example1052 : (((bool * heap) * heap) * heap) * int

val g11_example1053 : (((bool * heap) * heap) * heap) * int

val g11_example1054 : (((bool * heap) * heap) * heap) * int

val g11_example1055 : (((bool * heap) * heap) * heap) * int

val g11_example1056 : (((bool * heap) * heap) * heap) * int

val g11_example1057 : (((bool * heap) * heap) * heap) * int

val g11_example1058 : (((bool * heap) * heap) * heap) * int

val g11_example1059 : (((bool * heap) * heap) * heap) * int

val g11_example1060 : (((bool * heap) * heap) * heap) * int

val g11_example1061 : (((bool * heap) * heap) * heap) * int

val g11_example1062 : (((bool * heap) * heap) * heap) * int

val g11_example1063 : (((bool * heap) * heap) * heap) * int

val g11_example1064 : (((bool * heap) * heap) * heap) * int

val g11_example1065 : (((bool * heap) * heap) * heap) * int

val g11_example1066 : (((bool * heap) * heap) * heap) * int

val g11_example1067 : (((bool * heap) * heap) * heap) * int

val g11_example1068 : (((bool * heap) * heap) * heap) * int

val g11_example1069 : (((bool * heap) * heap) * heap) * int

val g11_example1070 : (((bool * heap) * heap) * heap) * int

val g11_example1071 : (((bool * heap) * heap) * heap) * int

val g11_example1072 : (((bool * heap) * heap) * heap) * int

val g11_example1073 : (((bool * heap) * heap) * heap) * int

val g11_example1074 : (((bool * heap) * heap) * heap) * int

val g11_example1075 : (((bool * heap) * heap) * heap) * int

val g11_example1076 : (((bool * heap) * heap) * heap) * int

val g11_example1077 : (((bool * heap) * heap) * heap) * int

val g11_example1078 : (((bool * heap) * heap) * heap) * int

val g11_example1079 : (((bool * heap) * heap) * heap) * int

val g11_example1080 : (((bool * heap) * heap) * heap) * int

val g11_example1081 : (((bool * heap) * heap) * heap) * int

val g11_example1082 : (((bool * heap) * heap) * heap) * int

val g11_example1083 : (((bool * heap) * heap) * heap) * int

val g11_example1084 : (((bool * heap) * heap) * heap) * int

val g11_example1085 : (((bool * heap) * heap) * heap) * int

val g11_example1086 : (((bool * heap) * heap) * heap) * int

val g11_example1087 : (((bool * heap) * heap) * heap) * int

val g11_example1088 : (((bool * heap) * heap) * heap) * int

val g11_example1089 : (((bool * heap) * heap) * heap) * int

val g11_example1090 : (((bool * heap) * heap) * heap) * int

val g11_example1091 : (((bool * heap) * heap) * heap) * int

val g11_example1092 : (((bool * heap) * heap) * heap) * int

val g11_example1093 : (((bool * heap) * heap) * heap) * int

val g11_example1094 : (((bool * heap) * heap) * heap) * int

val g11_example1095 : (((bool * heap) * heap) * heap) * int

val g11_example1096 : (((bool * heap) * heap) * heap) * int

val g11_example1097 : (((bool * heap) * heap) * heap) * int

val g11_example1098 : (((bool * heap) * heap) * heap) * int

val g11_example1099 : (((bool * heap) * heap) * heap) * int

val g11_example1100 : (((bool * heap) * heap) * heap) * int

val g11_example1101 : (((bool * heap) * heap) * heap) * int

val g11_example1102 : (((bool * heap) * heap) * heap) * int

val g11_example1103 : (((bool * heap) * heap) * heap) * int

val g11_example1104 : (((bool * heap) * heap) * heap) * int

val g11_example1105 : (((bool * heap) * heap) * heap) * int

val g11_example1106 : (((bool * heap) * heap) * heap) * int

val g11_example1107 : (((bool * heap) * heap) * heap) * int

val g11_example1108 : (((bool * heap) * heap) * heap) * int

val g11_example1109 : (((bool * heap) * heap) * heap) * int

val g11_example1110 : (((bool * heap) * heap) * heap) * int

val g11_example1111 : (((bool * heap) * heap) * heap) * int

val g11_example1112 : (((bool * heap) * heap) * heap) * int

val g11_example1113 : (((bool * heap) * heap) * heap) * int

val g11_example1114 : (((bool * heap) * heap) * heap) * int

val g11_example1115 : (((bool * heap) * heap) * heap) * int

val g11_example1116 : (((bool * heap) * heap) * heap) * int

val g11_example1117 : (((bool * heap) * heap) * heap) * int

val g11_example1118 : (((bool * heap) * heap) * heap) * int

val g11_example1119 : (((bool * heap) * heap) * heap) * int

val g11_example1120 : (((bool * heap) * heap) * heap) * int

val g11_example1121 : (((bool * heap) * heap) * heap) * int

val g11_example1122 : (((bool * heap) * heap) * heap) * int

val g11_example1123 : (((bool * heap) * heap) * heap) * int

val g11_example1124 : (((bool * heap) * heap) * heap) * int

val g11_example1125 : (((bool * heap) * heap) * heap) * int

val g11_example1126 : (((bool * heap) * heap) * heap) * int

val g11_example1127 : (((bool * heap) * heap) * heap) * int

val g11_example1128 : (((bool * heap) * heap) * heap) * int

val g11_example1129 : (((bool * heap) * heap) * heap) * int

val g11_example1130 : (((bool * heap) * heap) * heap) * int

val g11_example1131 : (((bool * heap) * heap) * heap) * int

val g11_example1132 : (((bool * heap) * heap) * heap) * int

val g11_example1133 : (((bool * heap) * heap) * heap) * int

val g11_example1134 : (((bool * heap) * heap) * heap) * int

val g11_example1135 : (((bool * heap) * heap) * heap) * int

val g11_example1136 : (((bool * heap) * heap) * heap) * int

val g11_example1137 : (((bool * heap) * heap) * heap) * int

val g11_example1138 : (((bool * heap) * heap) * heap) * int

val g11_example1139 : (((bool * heap) * heap) * heap) * int

val g11_example1140 : (((bool * heap) * heap) * heap) * int

val g11_example1141 : (((bool * heap) * heap) * heap) * int

val g11_example1142 : (((bool * heap) * heap) * heap) * int

val g11_example1143 : (((bool * heap) * heap) * heap) * int

val g11_example1144 : (((bool * heap) * heap) * heap) * int

val g11_example1145 : (((bool * heap) * heap) * heap) * int

val g11_example1146 : (((bool * heap) * heap) * heap) * int

val g11_example1147 : (((bool * heap) * heap) * heap) * int

val g11_example1148 : (((bool * heap) * heap) * heap) * int

val g11_example1149 : (((bool * heap) * heap) * heap) * int

val g11_example1150 : (((bool * heap) * heap) * heap) * int

val g11_example1151 : (((bool * heap) * heap) * heap) * int

val g11_example1152 : (((bool * heap) * heap) * heap) * int

val g11_example1153 : (((bool * heap) * heap) * heap) * int

val g11_example1154 : (((bool * heap) * heap) * heap) * int

val g11_example1155 : (((bool * heap) * heap) * heap) * int

val g11_example1156 : (((bool * heap) * heap) * heap) * int

val g11_example1157 : (((bool * heap) * heap) * heap) * int

val g11_example1158 : (((bool * heap) * heap) * heap) * int

val g11_example1159 : (((bool * heap) * heap) * heap) * int

val g11_example1160 : (((bool * heap) * heap) * heap) * int

val g11_example1161 : (((bool * heap) * heap) * heap) * int

val g11_example1162 : (((bool * heap) * heap) * heap) * int

val g11_example1163 : (((bool * heap) * heap) * heap) * int

val g11_example1164 : (((bool * heap) * heap) * heap) * int

val g11_example1165 : (((bool * heap) * heap) * heap) * int

val g11_example1166 : (((bool * heap) * heap) * heap) * int

val g11_example1167 : (((bool * heap) * heap) * heap) * int

val g11_example1168 : (((bool * heap) * heap) * heap) * int

val g11_example1169 : (((bool * heap) * heap) * heap) * int

val g11_example1170 : (((bool * heap) * heap) * heap) * int

val g11_example1171 : (((bool * heap) * heap) * heap) * int

val g11_example1172 : (((bool * heap) * heap) * heap) * int

val g11_example1173 : (((bool * heap) * heap) * heap) * int

val g11_example1174 : (((bool * heap) * heap) * heap) * int

val g11_example1175 : (((bool * heap) * heap) * heap) * int

val g11_example1176 : (((bool * heap) * heap) * heap) * int

val g11_example1177 : (((bool * heap) * heap) * heap) * int

val g11_example1178 : (((bool * heap) * heap) * heap) * int

val g11_example1179 : (((bool * heap) * heap) * heap) * int

val g11_example1180 : (((bool * heap) * heap) * heap) * int

val g11_example1181 : (((bool * heap) * heap) * heap) * int

val g11_example1182 : (((bool * heap) * heap) * heap) * int

val g11_example1183 : (((bool * heap) * heap) * heap) * int

val g11_example1184 : (((bool * heap) * heap) * heap) * int

val g11_example1185 : (((bool * heap) * heap) * heap) * int

val g11_example1186 : (((bool * heap) * heap) * heap) * int

val g11_example1187 : (((bool * heap) * heap) * heap) * int

val g11_example1188 : (((bool * heap) * heap) * heap) * int

val g11_example1189 : (((bool * heap) * heap) * heap) * int

val g11_example1190 : (((bool * heap) * heap) * heap) * int

val g11_example1191 : (((bool * heap) * heap) * heap) * int

val g11_example1192 : (((bool * heap) * heap) * heap) * int

val g11_example1193 : (((bool * heap) * heap) * heap) * int

val g11_example1194 : (((bool * heap) * heap) * heap) * int

val g11_example1195 : (((bool * heap) * heap) * heap) * int

val g11_example1196 : (((bool * heap) * heap) * heap) * int

val g11_example1197 : (((bool * heap) * heap) * heap) * int

val g11_example1198 : (((bool * heap) * heap) * heap) * int

val g11_example1199 : (((bool * heap) * heap) * heap) * int

val g11_example1200 : (((bool * heap) * heap) * heap) * int

val g11_example1201 : (((bool * heap) * heap) * heap) * int

val g11_example1202 : (((bool * heap) * heap) * heap) * int

val g11_example1203 : (((bool * heap) * heap) * heap) * int

val g11_example1204 : (((bool * heap) * heap) * heap) * int

val g11_example1205 : (((bool * heap) * heap) * heap) * int

val g11_example1206 : (((bool * heap) * heap) * heap) * int

val g11_example1207 : (((bool * heap) * heap) * heap) * int

val g11_example1208 : (((bool * heap) * heap) * heap) * int

val g11_example1209 : (((bool * heap) * heap) * heap) * int

val g11_example1210 : (((bool * heap) * heap) * heap) * int

val g11_example1211 : (((bool * heap) * heap) * heap) * int

val g11_example1212 : (((bool * heap) * heap) * heap) * int

val g11_example1213 : (((bool * heap) * heap) * heap) * int

val g11_example1214 : (((bool * heap) * heap) * heap) * int

val g11_example1215 : (((bool * heap) * heap) * heap) * int

val g11_example1216 : (((bool * heap) * heap) * heap) * int

val g11_example1217 : (((bool * heap) * heap) * heap) * int

val g11_example1218 : (((bool * heap) * heap) * heap) * int

val g11_example1219 : (((bool * heap) * heap) * heap) * int

val g11_example1220 : (((bool * heap) * heap) * heap) * int

val g11_example1221 : (((bool * heap) * heap) * heap) * int

val g11_example1222 : (((bool * heap) * heap) * heap) * int

val g11_example1223 : (((bool * heap) * heap) * heap) * int

val g11_example1224 : (((bool * heap) * heap) * heap) * int

val g11_example1225 : (((bool * heap) * heap) * heap) * int

val g11_example1226 : (((bool * heap) * heap) * heap) * int

val g11_example1227 : (((bool * heap) * heap) * heap) * int

val g11_example1228 : (((bool * heap) * heap) * heap) * int

val g11_example1229 : (((bool * heap) * heap) * heap) * int

val g11_example1230 : (((bool * heap) * heap) * heap) * int

val g11_example1231 : (((bool * heap) * heap) * heap) * int

val g11_example1232 : (((bool * heap) * heap) * heap) * int

val g11_example1233 : (((bool * heap) * heap) * heap) * int

val g11_example1234 : (((bool * heap) * heap) * heap) * int

val g11_example1235 : (((bool * heap) * heap) * heap) * int

val g11_example1236 : (((bool * heap) * heap) * heap) * int

val g11_example1237 : (((bool * heap) * heap) * heap) * int

val g11_example1238 : (((bool * heap) * heap) * heap) * int

val g11_example1239 : (((bool * heap) * heap) * heap) * int

val g11_example1240 : (((bool * heap) * heap) * heap) * int

val g11_example1241 : (((bool * heap) * heap) * heap) * int

val g11_example1242 : (((bool * heap) * heap) * heap) * int

val g11_example1243 : (((bool * heap) * heap) * heap) * int

val g11_example1244 : (((bool * heap) * heap) * heap) * int

val g11_example1245 : (((bool * heap) * heap) * heap) * int

val g11_example1246 : (((bool * heap) * heap) * heap) * int

val g11_example1247 : (((bool * heap) * heap) * heap) * int

val g11_example1248 : (((bool * heap) * heap) * heap) * int

val g11_example1249 : (((bool * heap) * heap) * heap) * int

val g11_example1250 : (((bool * heap) * heap) * heap) * int

val g11_example1251 : (((bool * heap) * heap) * heap) * int

val g11_example1252 : (((bool * heap) * heap) * heap) * int

val g11_example1253 : (((bool * heap) * heap) * heap) * int

val g11_example1254 : (((bool * heap) * heap) * heap) * int

val g11_example1255 : (((bool * heap) * heap) * heap) * int

val g11_example1256 : (((bool * heap) * heap) * heap) * int

val g11_example1257 : (((bool * heap) * heap) * heap) * int

val g11_example1258 : (((bool * heap) * heap) * heap) * int

val g11_example1259 : (((bool * heap) * heap) * heap) * int

val g11_example1260 : (((bool * heap) * heap) * heap) * int

val g11_example1261 : (((bool * heap) * heap) * heap) * int

val g11_example1262 : (((bool * heap) * heap) * heap) * int

val g11_example1263 : (((bool * heap) * heap) * heap) * int

val g11_example1264 : (((bool * heap) * heap) * heap) * int

val g11_example1265 : (((bool * heap) * heap) * heap) * int

val g11_example1266 : (((bool * heap) * heap) * heap) * int

val g11_example1267 : (((bool * heap) * heap) * heap) * int

val g11_example1268 : (((bool * heap) * heap) * heap) * int

val g11_example1269 : (((bool * heap) * heap) * heap) * int

val g11_example1270 : (((bool * heap) * heap) * heap) * int

val g11_example1271 : (((bool * heap) * heap) * heap) * int

val g11_example1272 : (((bool * heap) * heap) * heap) * int

val g11_example1273 : (((bool * heap) * heap) * heap) * int

val g11_example1274 : (((bool * heap) * heap) * heap) * int

val g11_example1275 : (((bool * heap) * heap) * heap) * int

val g11_example1276 : (((bool * heap) * heap) * heap) * int

val g11_example1277 : (((bool * heap) * heap) * heap) * int

val g11_example1278 : (((bool * heap) * heap) * heap) * int

val g11_example1279 : (((bool * heap) * heap) * heap) * int

val g11_example1280 : (((bool * heap) * heap) * heap) * int

val g11_example1281 : (((bool * heap) * heap) * heap) * int

val g11_example1282 : (((bool * heap) * heap) * heap) * int

val g11_example1283 : (((bool * heap) * heap) * heap) * int

val g11_example1284 : (((bool * heap) * heap) * heap) * int

val g11_example1285 : (((bool * heap) * heap) * heap) * int

val g11_example1286 : (((bool * heap) * heap) * heap) * int

val g11_example1287 : (((bool * heap) * heap) * heap) * int

val g11_example1288 : (((bool * heap) * heap) * heap) * int

val g11_example1289 : (((bool * heap) * heap) * heap) * int

val g11_example1290 : (((bool * heap) * heap) * heap) * int

val g11_example1291 : (((bool * heap) * heap) * heap) * int

val g11_example1292 : (((bool * heap) * heap) * heap) * int

val g11_example1293 : (((bool * heap) * heap) * heap) * int

val g11_example1294 : (((bool * heap) * heap) * heap) * int

val g11_example1295 : (((bool * heap) * heap) * heap) * int

val g11_example1296 : (((bool * heap) * heap) * heap) * int

val g11_example1297 : (((bool * heap) * heap) * heap) * int

val g11_example1298 : (((bool * heap) * heap) * heap) * int

val g11_example1299 : (((bool * heap) * heap) * heap) * int

val g11_example1300 : (((bool * heap) * heap) * heap) * int

val g11_example1301 : (((bool * heap) * heap) * heap) * int

val g11_example1302 : (((bool * heap) * heap) * heap) * int

val g11_example1303 : (((bool * heap) * heap) * heap) * int

val g11_example1304 : (((bool * heap) * heap) * heap) * int

val g11_example1305 : (((bool * heap) * heap) * heap) * int

val g11_example1306 : (((bool * heap) * heap) * heap) * int

val g11_example1307 : (((bool * heap) * heap) * heap) * int

val g11_example1308 : (((bool * heap) * heap) * heap) * int

val g11_example1309 : (((bool * heap) * heap) * heap) * int

val g11_example1310 : (((bool * heap) * heap) * heap) * int

val g11_example1311 : (((bool * heap) * heap) * heap) * int

val g11_example1312 : (((bool * heap) * heap) * heap) * int

val g11_example1313 : (((bool * heap) * heap) * heap) * int

val g11_example1314 : (((bool * heap) * heap) * heap) * int

val g11_example1315 : (((bool * heap) * heap) * heap) * int

val g11_example1316 : (((bool * heap) * heap) * heap) * int

val g11_example1317 : (((bool * heap) * heap) * heap) * int

val g11_example1318 : (((bool * heap) * heap) * heap) * int

val g11_example1319 : (((bool * heap) * heap) * heap) * int

val g11_example1320 : (((bool * heap) * heap) * heap) * int

val g11_example1321 : (((bool * heap) * heap) * heap) * int

val g11_example1322 : (((bool * heap) * heap) * heap) * int

val g11_example1323 : (((bool * heap) * heap) * heap) * int

val g11_example1324 : (((bool * heap) * heap) * heap) * int

val g11_example1325 : (((bool * heap) * heap) * heap) * int

val g11_example1326 : (((bool * heap) * heap) * heap) * int

val g11_example1327 : (((bool * heap) * heap) * heap) * int

val g11_example1328 : (((bool * heap) * heap) * heap) * int

val g11_example1329 : (((bool * heap) * heap) * heap) * int

val g11_example1330 : (((bool * heap) * heap) * heap) * int

val g11_example1331 : (((bool * heap) * heap) * heap) * int

val g11_example1332 : (((bool * heap) * heap) * heap) * int

val g11_example1333 : (((bool * heap) * heap) * heap) * int

val g11_example1334 : (((bool * heap) * heap) * heap) * int

val g11_example1335 : (((bool * heap) * heap) * heap) * int

val g11_example1336 : (((bool * heap) * heap) * heap) * int

val g11_example1337 : (((bool * heap) * heap) * heap) * int

val g11_example1338 : (((bool * heap) * heap) * heap) * int

val g11_example1339 : (((bool * heap) * heap) * heap) * int

val g11_example1340 : (((bool * heap) * heap) * heap) * int

val g11_example1341 : (((bool * heap) * heap) * heap) * int

val g11_example1342 : (((bool * heap) * heap) * heap) * int

val g11_example1343 : (((bool * heap) * heap) * heap) * int

val g11_example1344 : (((bool * heap) * heap) * heap) * int

val g11_example1345 : (((bool * heap) * heap) * heap) * int

val g11_example1346 : (((bool * heap) * heap) * heap) * int

val g11_example1347 : (((bool * heap) * heap) * heap) * int

val g11_example1348 : (((bool * heap) * heap) * heap) * int

val g11_example1349 : (((bool * heap) * heap) * heap) * int

val g11_example1350 : (((bool * heap) * heap) * heap) * int

val g11_example1351 : (((bool * heap) * heap) * heap) * int

val g11_example1352 : (((bool * heap) * heap) * heap) * int

val g11_example1353 : (((bool * heap) * heap) * heap) * int

val g11_example1354 : (((bool * heap) * heap) * heap) * int

val g11_example1355 : (((bool * heap) * heap) * heap) * int

val g11_example1356 : (((bool * heap) * heap) * heap) * int

val g11_example1357 : (((bool * heap) * heap) * heap) * int

val g11_example1358 : (((bool * heap) * heap) * heap) * int

val g11_example1359 : (((bool * heap) * heap) * heap) * int

val g11_example1360 : (((bool * heap) * heap) * heap) * int

val g11_example1361 : (((bool * heap) * heap) * heap) * int

val g11_example1362 : (((bool * heap) * heap) * heap) * int

val g11_example1363 : (((bool * heap) * heap) * heap) * int

val g11_example1364 : (((bool * heap) * heap) * heap) * int

val g11_example1365 : (((bool * heap) * heap) * heap) * int

val g11_example1366 : (((bool * heap) * heap) * heap) * int

val g11_example1367 : (((bool * heap) * heap) * heap) * int

val g11_example1368 : (((bool * heap) * heap) * heap) * int

val g11_example1369 : (((bool * heap) * heap) * heap) * int

val g11_example1370 : (((bool * heap) * heap) * heap) * int

val g11_example1371 : (((bool * heap) * heap) * heap) * int

val g11_example1372 : (((bool * heap) * heap) * heap) * int

val g11_example1373 : (((bool * heap) * heap) * heap) * int

val g11_example1374 : (((bool * heap) * heap) * heap) * int

val g11_example1375 : (((bool * heap) * heap) * heap) * int

val g11_example1376 : (((bool * heap) * heap) * heap) * int

val g11_example1377 : (((bool * heap) * heap) * heap) * int

val g11_example1378 : (((bool * heap) * heap) * heap) * int

val g11_example1379 : (((bool * heap) * heap) * heap) * int

val g11_example1380 : (((bool * heap) * heap) * heap) * int

val g11_example1381 : (((bool * heap) * heap) * heap) * int

val g11_example1382 : (((bool * heap) * heap) * heap) * int

val g11_example1383 : (((bool * heap) * heap) * heap) * int

val g11_example1384 : (((bool * heap) * heap) * heap) * int

val g11_example1385 : (((bool * heap) * heap) * heap) * int

val g11_example1386 : (((bool * heap) * heap) * heap) * int

val g11_example1387 : (((bool * heap) * heap) * heap) * int

val g11_example1388 : (((bool * heap) * heap) * heap) * int

val g11_example1389 : (((bool * heap) * heap) * heap) * int

val g11_example1390 : (((bool * heap) * heap) * heap) * int

val g11_example1391 : (((bool * heap) * heap) * heap) * int

val g11_example1392 : (((bool * heap) * heap) * heap) * int

val g11_example1393 : (((bool * heap) * heap) * heap) * int

val g11_example1394 : (((bool * heap) * heap) * heap) * int

val g11_example1395 : (((bool * heap) * heap) * heap) * int

val g11_example1396 : (((bool * heap) * heap) * heap) * int

val g11_example1397 : (((bool * heap) * heap) * heap) * int

val g11_example1398 : (((bool * heap) * heap) * heap) * int

val g11_example1399 : (((bool * heap) * heap) * heap) * int

val g11_example1400 : (((bool * heap) * heap) * heap) * int

val g11_example1401 : (((bool * heap) * heap) * heap) * int

val g11_example1402 : (((bool * heap) * heap) * heap) * int

val g11_example1403 : (((bool * heap) * heap) * heap) * int

val g11_example1404 : (((bool * heap) * heap) * heap) * int

val g11_example1405 : (((bool * heap) * heap) * heap) * int

val g11_example1406 : (((bool * heap) * heap) * heap) * int

val g11_example1407 : (((bool * heap) * heap) * heap) * int

val g11_example1408 : (((bool * heap) * heap) * heap) * int

val g11_example1409 : (((bool * heap) * heap) * heap) * int

val g11_example1410 : (((bool * heap) * heap) * heap) * int

val g11_example1411 : (((bool * heap) * heap) * heap) * int

val g11_example1412 : (((bool * heap) * heap) * heap) * int

val g11_example1413 : (((bool * heap) * heap) * heap) * int

val g11_example1414 : (((bool * heap) * heap) * heap) * int

val g11_example1415 : (((bool * heap) * heap) * heap) * int

val g11_example1416 : (((bool * heap) * heap) * heap) * int

val g11_example1417 : (((bool * heap) * heap) * heap) * int

val g11_example1418 : (((bool * heap) * heap) * heap) * int

val g11_example1419 : (((bool * heap) * heap) * heap) * int

val g11_example1420 : (((bool * heap) * heap) * heap) * int

val g11_example1421 : (((bool * heap) * heap) * heap) * int

val g11_example1422 : (((bool * heap) * heap) * heap) * int

val g11_example1423 : (((bool * heap) * heap) * heap) * int

val g11_example1424 : (((bool * heap) * heap) * heap) * int

val g11_example1425 : (((bool * heap) * heap) * heap) * int

val g11_example1426 : (((bool * heap) * heap) * heap) * int

val g11_example1427 : (((bool * heap) * heap) * heap) * int

val g11_example1428 : (((bool * heap) * heap) * heap) * int

val g11_example1429 : (((bool * heap) * heap) * heap) * int

val g11_example1430 : (((bool * heap) * heap) * heap) * int

val g11_example1431 : (((bool * heap) * heap) * heap) * int

val g11_example1432 : (((bool * heap) * heap) * heap) * int

val g11_example1433 : (((bool * heap) * heap) * heap) * int

val g11_example1434 : (((bool * heap) * heap) * heap) * int

val g11_example1435 : (((bool * heap) * heap) * heap) * int

val g11_example1436 : (((bool * heap) * heap) * heap) * int

val g11_example1437 : (((bool * heap) * heap) * heap) * int

val g11_example1438 : (((bool * heap) * heap) * heap) * int

val g11_example1439 : (((bool * heap) * heap) * heap) * int

val g11_example1440 : (((bool * heap) * heap) * heap) * int

val g11_example1441 : (((bool * heap) * heap) * heap) * int

val g11_example1442 : (((bool * heap) * heap) * heap) * int

val g11_example1443 : (((bool * heap) * heap) * heap) * int

val g11_example1444 : (((bool * heap) * heap) * heap) * int

val g11_example1445 : (((bool * heap) * heap) * heap) * int

val g11_example1446 : (((bool * heap) * heap) * heap) * int

val g11_example1447 : (((bool * heap) * heap) * heap) * int

val g11_example1448 : (((bool * heap) * heap) * heap) * int

val g11_example1449 : (((bool * heap) * heap) * heap) * int

val g11_example1450 : (((bool * heap) * heap) * heap) * int

val g11_example1451 : (((bool * heap) * heap) * heap) * int

val g11_example1452 : (((bool * heap) * heap) * heap) * int

val g11_example1453 : (((bool * heap) * heap) * heap) * int

val g11_example1454 : (((bool * heap) * heap) * heap) * int

val g11_example1455 : (((bool * heap) * heap) * heap) * int

val g11_example1456 : (((bool * heap) * heap) * heap) * int

val g11_example1457 : (((bool * heap) * heap) * heap) * int

val g11_example1458 : (((bool * heap) * heap) * heap) * int

val g11_example1459 : (((bool * heap) * heap) * heap) * int

val g11_example1460 : (((bool * heap) * heap) * heap) * int

val g11_example1461 : (((bool * heap) * heap) * heap) * int

val g11_example1462 : (((bool * heap) * heap) * heap) * int

val g11_example1463 : (((bool * heap) * heap) * heap) * int

val g11_example1464 : (((bool * heap) * heap) * heap) * int

val g11_example1465 : (((bool * heap) * heap) * heap) * int

val g11_example1466 : (((bool * heap) * heap) * heap) * int

val g11_example1467 : (((bool * heap) * heap) * heap) * int

val g11_example1468 : (((bool * heap) * heap) * heap) * int

val g11_example1469 : (((bool * heap) * heap) * heap) * int

val g11_example1470 : (((bool * heap) * heap) * heap) * int

val g11_example1471 : (((bool * heap) * heap) * heap) * int

val g11_example1472 : (((bool * heap) * heap) * heap) * int

val g11_example1473 : (((bool * heap) * heap) * heap) * int

val g11_example1474 : (((bool * heap) * heap) * heap) * int

val g11_example1475 : (((bool * heap) * heap) * heap) * int

val g11_example1476 : (((bool * heap) * heap) * heap) * int

val g11_example1477 : (((bool * heap) * heap) * heap) * int

val g11_example1478 : (((bool * heap) * heap) * heap) * int

val g11_example1479 : (((bool * heap) * heap) * heap) * int

val g11_example1480 : (((bool * heap) * heap) * heap) * int

val g11_example1481 : (((bool * heap) * heap) * heap) * int

val g11_example1482 : (((bool * heap) * heap) * heap) * int

val g11_example1483 : (((bool * heap) * heap) * heap) * int

val g11_example1484 : (((bool * heap) * heap) * heap) * int

val g11_example1485 : (((bool * heap) * heap) * heap) * int

val g11_example1486 : (((bool * heap) * heap) * heap) * int

val g11_example1487 : (((bool * heap) * heap) * heap) * int

val g11_example1488 : (((bool * heap) * heap) * heap) * int

val g11_example1489 : (((bool * heap) * heap) * heap) * int

val g11_example1490 : (((bool * heap) * heap) * heap) * int

val g11_example1491 : (((bool * heap) * heap) * heap) * int

val g11_example1492 : (((bool * heap) * heap) * heap) * int

val g11_example1493 : (((bool * heap) * heap) * heap) * int

val g11_example1494 : (((bool * heap) * heap) * heap) * int

val g11_example1495 : (((bool * heap) * heap) * heap) * int

val g11_example1496 : (((bool * heap) * heap) * heap) * int

val g11_example1497 : (((bool * heap) * heap) * heap) * int

val g11_example1498 : (((bool * heap) * heap) * heap) * int

val g11_example1499 : (((bool * heap) * heap) * heap) * int

val g11_example1500 : (((bool * heap) * heap) * heap) * int

val g11_example1501 : (((bool * heap) * heap) * heap) * int

val g11_example1502 : (((bool * heap) * heap) * heap) * int

val g11_example1503 : (((bool * heap) * heap) * heap) * int

val g11_example1504 : (((bool * heap) * heap) * heap) * int

val g11_example1505 : (((bool * heap) * heap) * heap) * int

val g11_example1506 : (((bool * heap) * heap) * heap) * int

val g11_example1507 : (((bool * heap) * heap) * heap) * int

val g11_example1508 : (((bool * heap) * heap) * heap) * int

val g11_example1509 : (((bool * heap) * heap) * heap) * int

val g11_example1510 : (((bool * heap) * heap) * heap) * int

val g11_example1511 : (((bool * heap) * heap) * heap) * int

val g11_example1512 : (((bool * heap) * heap) * heap) * int

val g11_example1513 : (((bool * heap) * heap) * heap) * int

val g11_example1514 : (((bool * heap) * heap) * heap) * int

val g11_example1515 : (((bool * heap) * heap) * heap) * int

val g11_example1516 : (((bool * heap) * heap) * heap) * int

val g11_example1517 : (((bool * heap) * heap) * heap) * int

val g11_example1518 : (((bool * heap) * heap) * heap) * int

val g11_example1519 : (((bool * heap) * heap) * heap) * int

val g11_example1520 : (((bool * heap) * heap) * heap) * int

val g11_example1521 : (((bool * heap) * heap) * heap) * int

val g11_example1522 : (((bool * heap) * heap) * heap) * int

val g11_example1523 : (((bool * heap) * heap) * heap) * int

val g11_example1524 : (((bool * heap) * heap) * heap) * int

val g11_example1525 : (((bool * heap) * heap) * heap) * int

val g11_example1526 : (((bool * heap) * heap) * heap) * int

val g11_example1527 : (((bool * heap) * heap) * heap) * int

val g11_example1528 : (((bool * heap) * heap) * heap) * int

val g11_example1529 : (((bool * heap) * heap) * heap) * int

val g11_example1530 : (((bool * heap) * heap) * heap) * int

val g11_example1531 : (((bool * heap) * heap) * heap) * int

val g11_example1532 : (((bool * heap) * heap) * heap) * int

val g11_example1533 : (((bool * heap) * heap) * heap) * int

val g11_example1534 : (((bool * heap) * heap) * heap) * int

val g11_example1535 : (((bool * heap) * heap) * heap) * int

val g11_example1536 : (((bool * heap) * heap) * heap) * int

val g11_example1537 : (((bool * heap) * heap) * heap) * int

val g11_example1538 : (((bool * heap) * heap) * heap) * int

val g11_example1539 : (((bool * heap) * heap) * heap) * int

val g11_example1540 : (((bool * heap) * heap) * heap) * int

val g11_example1541 : (((bool * heap) * heap) * heap) * int

val g11_example1542 : (((bool * heap) * heap) * heap) * int

val g11_example1543 : (((bool * heap) * heap) * heap) * int

val g11_example1544 : (((bool * heap) * heap) * heap) * int

val g11_example1545 : (((bool * heap) * heap) * heap) * int

val g11_example1546 : (((bool * heap) * heap) * heap) * int

val g11_example1547 : (((bool * heap) * heap) * heap) * int

val g11_example1548 : (((bool * heap) * heap) * heap) * int

val g11_example1549 : (((bool * heap) * heap) * heap) * int

val g11_example1550 : (((bool * heap) * heap) * heap) * int

val g11_example1551 : (((bool * heap) * heap) * heap) * int

val g11_example1552 : (((bool * heap) * heap) * heap) * int

val g11_example1553 : (((bool * heap) * heap) * heap) * int

val g11_example1554 : (((bool * heap) * heap) * heap) * int

val g11_example1555 : (((bool * heap) * heap) * heap) * int

val g11_example1556 : (((bool * heap) * heap) * heap) * int

val g11_example1557 : (((bool * heap) * heap) * heap) * int

val g11_example1558 : (((bool * heap) * heap) * heap) * int

val g11_example1559 : (((bool * heap) * heap) * heap) * int

val g11_example1560 : (((bool * heap) * heap) * heap) * int

val g11_example1561 : (((bool * heap) * heap) * heap) * int

val g11_example1562 : (((bool * heap) * heap) * heap) * int

val g11_example1563 : (((bool * heap) * heap) * heap) * int

val g11_example1564 : (((bool * heap) * heap) * heap) * int

val g11_example1565 : (((bool * heap) * heap) * heap) * int

val g11_example1566 : (((bool * heap) * heap) * heap) * int

val g11_example1567 : (((bool * heap) * heap) * heap) * int

val g11_example1568 : (((bool * heap) * heap) * heap) * int

val g11_example1569 : (((bool * heap) * heap) * heap) * int

val g11_example1570 : (((bool * heap) * heap) * heap) * int

val g11_example1571 : (((bool * heap) * heap) * heap) * int

val g11_example1572 : (((bool * heap) * heap) * heap) * int

val g11_example1573 : (((bool * heap) * heap) * heap) * int

val g11_example1574 : (((bool * heap) * heap) * heap) * int

val g11_example1575 : (((bool * heap) * heap) * heap) * int

val g11_example1576 : (((bool * heap) * heap) * heap) * int

val g11_example1577 : (((bool * heap) * heap) * heap) * int

val g11_example1578 : (((bool * heap) * heap) * heap) * int

val g11_example1579 : (((bool * heap) * heap) * heap) * int

val g11_example1580 : (((bool * heap) * heap) * heap) * int

val g11_example1581 : (((bool * heap) * heap) * heap) * int

val g11_example1582 : (((bool * heap) * heap) * heap) * int

val g11_example1583 : (((bool * heap) * heap) * heap) * int

val g11_example1584 : (((bool * heap) * heap) * heap) * int

val g11_example1585 : (((bool * heap) * heap) * heap) * int

val g11_example1586 : (((bool * heap) * heap) * heap) * int

val g11_example1587 : (((bool * heap) * heap) * heap) * int

val g11_example1588 : (((bool * heap) * heap) * heap) * int

val g11_example1589 : (((bool * heap) * heap) * heap) * int

val g11_example1590 : (((bool * heap) * heap) * heap) * int

val g11_example1591 : (((bool * heap) * heap) * heap) * int

val g11_example1592 : (((bool * heap) * heap) * heap) * int

val g11_example1593 : (((bool * heap) * heap) * heap) * int

val g11_example1594 : (((bool * heap) * heap) * heap) * int

val g11_example1595 : (((bool * heap) * heap) * heap) * int

val g11_example1596 : (((bool * heap) * heap) * heap) * int

val g11_example1597 : (((bool * heap) * heap) * heap) * int

val g11_example1598 : (((bool * heap) * heap) * heap) * int

val g11_example1599 : (((bool * heap) * heap) * heap) * int

val g11_example1600 : (((bool * heap) * heap) * heap) * int

val g11_example1601 : (((bool * heap) * heap) * heap) * int

val g11_example1602 : (((bool * heap) * heap) * heap) * int

val g11_example1603 : (((bool * heap) * heap) * heap) * int

val g11_example1604 : (((bool * heap) * heap) * heap) * int

val g11_example1605 : (((bool * heap) * heap) * heap) * int

val g11_example1606 : (((bool * heap) * heap) * heap) * int

val g11_example1607 : (((bool * heap) * heap) * heap) * int

val g11_example1608 : (((bool * heap) * heap) * heap) * int

val g11_example1609 : (((bool * heap) * heap) * heap) * int

val g11_example1610 : (((bool * heap) * heap) * heap) * int

val g11_example1611 : (((bool * heap) * heap) * heap) * int

val g11_example1612 : (((bool * heap) * heap) * heap) * int

val g11_example1613 : (((bool * heap) * heap) * heap) * int

val g11_example1614 : (((bool * heap) * heap) * heap) * int

val g11_example1615 : (((bool * heap) * heap) * heap) * int

val g11_example1616 : (((bool * heap) * heap) * heap) * int

val g11_example1617 : (((bool * heap) * heap) * heap) * int

val g11_example1618 : (((bool * heap) * heap) * heap) * int

val g11_example1619 : (((bool * heap) * heap) * heap) * int

val g11_example1620 : (((bool * heap) * heap) * heap) * int

val g11_example1621 : (((bool * heap) * heap) * heap) * int

val g11_example1622 : (((bool * heap) * heap) * heap) * int

val g11_example1623 : (((bool * heap) * heap) * heap) * int

val g11_example1624 : (((bool * heap) * heap) * heap) * int

val g11_example1625 : (((bool * heap) * heap) * heap) * int

val g11_example1626 : (((bool * heap) * heap) * heap) * int

val g11_example1627 : (((bool * heap) * heap) * heap) * int

val g11_example1628 : (((bool * heap) * heap) * heap) * int

val g11_example1629 : (((bool * heap) * heap) * heap) * int

val g11_example1630 : (((bool * heap) * heap) * heap) * int

val g11_example1631 : (((bool * heap) * heap) * heap) * int

val g11_example1632 : (((bool * heap) * heap) * heap) * int

val g11_example1633 : (((bool * heap) * heap) * heap) * int

val g11_example1634 : (((bool * heap) * heap) * heap) * int

val g11_example1635 : (((bool * heap) * heap) * heap) * int

val g11_example1636 : (((bool * heap) * heap) * heap) * int

val g11_example1637 : (((bool * heap) * heap) * heap) * int

val g11_example1638 : (((bool * heap) * heap) * heap) * int

val g11_example1639 : (((bool * heap) * heap) * heap) * int

val g11_example1640 : (((bool * heap) * heap) * heap) * int

val g11_example1641 : (((bool * heap) * heap) * heap) * int

val g11_example1642 : (((bool * heap) * heap) * heap) * int

val g11_example1643 : (((bool * heap) * heap) * heap) * int

val g11_example1644 : (((bool * heap) * heap) * heap) * int

val g11_example1645 : (((bool * heap) * heap) * heap) * int

val g11_example1646 : (((bool * heap) * heap) * heap) * int

val g11_example1647 : (((bool * heap) * heap) * heap) * int

val g11_example1648 : (((bool * heap) * heap) * heap) * int

val g11_example1649 : (((bool * heap) * heap) * heap) * int

val g11_example1650 : (((bool * heap) * heap) * heap) * int

val g11_example1651 : (((bool * heap) * heap) * heap) * int

val g11_example1652 : (((bool * heap) * heap) * heap) * int

val g11_example1653 : (((bool * heap) * heap) * heap) * int

val g11_example1654 : (((bool * heap) * heap) * heap) * int

val g11_example1655 : (((bool * heap) * heap) * heap) * int

val g11_example1656 : (((bool * heap) * heap) * heap) * int

val g11_example1657 : (((bool * heap) * heap) * heap) * int

val g11_example1658 : (((bool * heap) * heap) * heap) * int

val g11_example1659 : (((bool * heap) * heap) * heap) * int

val g11_example1660 : (((bool * heap) * heap) * heap) * int

val g11_example1661 : (((bool * heap) * heap) * heap) * int

val g11_example1662 : (((bool * heap) * heap) * heap) * int

val g11_example1663 : (((bool * heap) * heap) * heap) * int

val g11_example1664 : (((bool * heap) * heap) * heap) * int

val g11_example1665 : (((bool * heap) * heap) * heap) * int

val g11_example1666 : (((bool * heap) * heap) * heap) * int

val g11_example1667 : (((bool * heap) * heap) * heap) * int

val g11_example1668 : (((bool * heap) * heap) * heap) * int

val g11_example1669 : (((bool * heap) * heap) * heap) * int

val g11_example1670 : (((bool * heap) * heap) * heap) * int

val g11_example1671 : (((bool * heap) * heap) * heap) * int

val g11_example1672 : (((bool * heap) * heap) * heap) * int

val g11_example1673 : (((bool * heap) * heap) * heap) * int

val g11_example1674 : (((bool * heap) * heap) * heap) * int

val g11_example1675 : (((bool * heap) * heap) * heap) * int

val g11_example1676 : (((bool * heap) * heap) * heap) * int

val g11_example1677 : (((bool * heap) * heap) * heap) * int

val g11_example1678 : (((bool * heap) * heap) * heap) * int

val g11_example1679 : (((bool * heap) * heap) * heap) * int

val g11_example1680 : (((bool * heap) * heap) * heap) * int

val g11_example1681 : (((bool * heap) * heap) * heap) * int

val g11_example1682 : (((bool * heap) * heap) * heap) * int

val g11_example1683 : (((bool * heap) * heap) * heap) * int

val g11_example1684 : (((bool * heap) * heap) * heap) * int

val g11_example1685 : (((bool * heap) * heap) * heap) * int

val g11_example1686 : (((bool * heap) * heap) * heap) * int

val g11_example1687 : (((bool * heap) * heap) * heap) * int

val g11_example1688 : (((bool * heap) * heap) * heap) * int

val g11_example1689 : (((bool * heap) * heap) * heap) * int

val g11_example1690 : (((bool * heap) * heap) * heap) * int

val g11_example1691 : (((bool * heap) * heap) * heap) * int

val g11_example1692 : (((bool * heap) * heap) * heap) * int

val g11_example1693 : (((bool * heap) * heap) * heap) * int

val g11_example1694 : (((bool * heap) * heap) * heap) * int

val g11_example1695 : (((bool * heap) * heap) * heap) * int

val g11_example1696 : (((bool * heap) * heap) * heap) * int

val g11_example1697 : (((bool * heap) * heap) * heap) * int

val g11_example1698 : (((bool * heap) * heap) * heap) * int

val g11_example1699 : (((bool * heap) * heap) * heap) * int

val g11_example1700 : (((bool * heap) * heap) * heap) * int

val g11_example1701 : (((bool * heap) * heap) * heap) * int

val g11_example1702 : (((bool * heap) * heap) * heap) * int

val g11_example1703 : (((bool * heap) * heap) * heap) * int

val g11_example1704 : (((bool * heap) * heap) * heap) * int

val g11_example1705 : (((bool * heap) * heap) * heap) * int

val g11_example1706 : (((bool * heap) * heap) * heap) * int

val g11_example1707 : (((bool * heap) * heap) * heap) * int

val g11_example1708 : (((bool * heap) * heap) * heap) * int

val g11_example1709 : (((bool * heap) * heap) * heap) * int

val g11_example1710 : (((bool * heap) * heap) * heap) * int

val g11_example1711 : (((bool * heap) * heap) * heap) * int

val g11_example1712 : (((bool * heap) * heap) * heap) * int

val g11_example1713 : (((bool * heap) * heap) * heap) * int

val g11_example1714 : (((bool * heap) * heap) * heap) * int

val g11_example1715 : (((bool * heap) * heap) * heap) * int

val g11_example1716 : (((bool * heap) * heap) * heap) * int

val g11_example1717 : (((bool * heap) * heap) * heap) * int

val g11_example1718 : (((bool * heap) * heap) * heap) * int

val g11_example1719 : (((bool * heap) * heap) * heap) * int

val g11_example1720 : (((bool * heap) * heap) * heap) * int

val g11_example1721 : (((bool * heap) * heap) * heap) * int

val g11_example1722 : (((bool * heap) * heap) * heap) * int

val g11_example1723 : (((bool * heap) * heap) * heap) * int

val g11_example1724 : (((bool * heap) * heap) * heap) * int

val g11_example1725 : (((bool * heap) * heap) * heap) * int

val g11_example1726 : (((bool * heap) * heap) * heap) * int

val g11_example1727 : (((bool * heap) * heap) * heap) * int

val g11_example1728 : (((bool * heap) * heap) * heap) * int

val g11_example1729 : (((bool * heap) * heap) * heap) * int

val g11_example1730 : (((bool * heap) * heap) * heap) * int

val g11_example1731 : (((bool * heap) * heap) * heap) * int

val g11_example1732 : (((bool * heap) * heap) * heap) * int

val g11_example1733 : (((bool * heap) * heap) * heap) * int

val g11_example1734 : (((bool * heap) * heap) * heap) * int

val g11_example1735 : (((bool * heap) * heap) * heap) * int

val g11_example1736 : (((bool * heap) * heap) * heap) * int

val g11_example1737 : (((bool * heap) * heap) * heap) * int

val g11_example1738 : (((bool * heap) * heap) * heap) * int

val g11_example1739 : (((bool * heap) * heap) * heap) * int

val g11_example1740 : (((bool * heap) * heap) * heap) * int

val g11_example1741 : (((bool * heap) * heap) * heap) * int

val g11_example1742 : (((bool * heap) * heap) * heap) * int

val g11_example1743 : (((bool * heap) * heap) * heap) * int

val g11_example1744 : (((bool * heap) * heap) * heap) * int

val g11_example1745 : (((bool * heap) * heap) * heap) * int

val g11_example1746 : (((bool * heap) * heap) * heap) * int

val g11_example1747 : (((bool * heap) * heap) * heap) * int

val g11_example1748 : (((bool * heap) * heap) * heap) * int

val g11_example1749 : (((bool * heap) * heap) * heap) * int

val g11_example1750 : (((bool * heap) * heap) * heap) * int

val g11_example1751 : (((bool * heap) * heap) * heap) * int

val g11_example1752 : (((bool * heap) * heap) * heap) * int

val g11_example1753 : (((bool * heap) * heap) * heap) * int

val g11_example1754 : (((bool * heap) * heap) * heap) * int

val g11_example1755 : (((bool * heap) * heap) * heap) * int

val g11_example1756 : (((bool * heap) * heap) * heap) * int

val g11_example1757 : (((bool * heap) * heap) * heap) * int

val g11_example1758 : (((bool * heap) * heap) * heap) * int

val g11_example1759 : (((bool * heap) * heap) * heap) * int

val g11_example1760 : (((bool * heap) * heap) * heap) * int

val g11_example1761 : (((bool * heap) * heap) * heap) * int

val g11_example1762 : (((bool * heap) * heap) * heap) * int

val g11_example1763 : (((bool * heap) * heap) * heap) * int

val g11_example1764 : (((bool * heap) * heap) * heap) * int

val g11_example1765 : (((bool * heap) * heap) * heap) * int

val g11_example1766 : (((bool * heap) * heap) * heap) * int

val g11_example1767 : (((bool * heap) * heap) * heap) * int

val g11_example1768 : (((bool * heap) * heap) * heap) * int

val g11_example1769 : (((bool * heap) * heap) * heap) * int

val g11_example1770 : (((bool * heap) * heap) * heap) * int

val g11_example1771 : (((bool * heap) * heap) * heap) * int

val g11_example1772 : (((bool * heap) * heap) * heap) * int

val g11_example1773 : (((bool * heap) * heap) * heap) * int

val g11_example1774 : (((bool * heap) * heap) * heap) * int

val g11_example1775 : (((bool * heap) * heap) * heap) * int

val g11_example1776 : (((bool * heap) * heap) * heap) * int

val g11_example1777 : (((bool * heap) * heap) * heap) * int

val g11_example1778 : (((bool * heap) * heap) * heap) * int

val g11_example1779 : (((bool * heap) * heap) * heap) * int

val g11_example1780 : (((bool * heap) * heap) * heap) * int

val g11_example1781 : (((bool * heap) * heap) * heap) * int

val g11_example1782 : (((bool * heap) * heap) * heap) * int

val g11_example1783 : (((bool * heap) * heap) * heap) * int

val g11_example1784 : (((bool * heap) * heap) * heap) * int

val g11_example1785 : (((bool * heap) * heap) * heap) * int

val g11_example1786 : (((bool * heap) * heap) * heap) * int

val g11_example1787 : (((bool * heap) * heap) * heap) * int

val g11_example1788 : (((bool * heap) * heap) * heap) * int

val g11_example1789 : (((bool * heap) * heap) * heap) * int

val g11_example1790 : (((bool * heap) * heap) * heap) * int

val g11_example1791 : (((bool * heap) * heap) * heap) * int

val g11_example1792 : (((bool * heap) * heap) * heap) * int

val g11_example1793 : (((bool * heap) * heap) * heap) * int

val g11_example1794 : (((bool * heap) * heap) * heap) * int

val g11_example1795 : (((bool * heap) * heap) * heap) * int

val g11_example1796 : (((bool * heap) * heap) * heap) * int

val g11_example1797 : (((bool * heap) * heap) * heap) * int

val g11_example1798 : (((bool * heap) * heap) * heap) * int

val g11_example1799 : (((bool * heap) * heap) * heap) * int

val g11_example1800 : (((bool * heap) * heap) * heap) * int

val g11_example1801 : (((bool * heap) * heap) * heap) * int

val g11_example1802 : (((bool * heap) * heap) * heap) * int

val g11_example1803 : (((bool * heap) * heap) * heap) * int

val g11_example1804 : (((bool * heap) * heap) * heap) * int

val g11_example1805 : (((bool * heap) * heap) * heap) * int

val g11_example1806 : (((bool * heap) * heap) * heap) * int

val g11_example1807 : (((bool * heap) * heap) * heap) * int

val g11_example1808 : (((bool * heap) * heap) * heap) * int

val g11_example1809 : (((bool * heap) * heap) * heap) * int

val g11_example1810 : (((bool * heap) * heap) * heap) * int

val g11_example1811 : (((bool * heap) * heap) * heap) * int

val g11_example1812 : (((bool * heap) * heap) * heap) * int

val g11_example1813 : (((bool * heap) * heap) * heap) * int

val g11_example1814 : (((bool * heap) * heap) * heap) * int

val g11_example1815 : (((bool * heap) * heap) * heap) * int

val g11_example1816 : (((bool * heap) * heap) * heap) * int

val g11_example1817 : (((bool * heap) * heap) * heap) * int

val g11_example1818 : (((bool * heap) * heap) * heap) * int

val g11_example1819 : (((bool * heap) * heap) * heap) * int

val g11_example1820 : (((bool * heap) * heap) * heap) * int

val g11_example1821 : (((bool * heap) * heap) * heap) * int

val g11_example1822 : (((bool * heap) * heap) * heap) * int

val g11_example1823 : (((bool * heap) * heap) * heap) * int

val g11_example1824 : (((bool * heap) * heap) * heap) * int

val g11_example1825 : (((bool * heap) * heap) * heap) * int

val g11_example1826 : (((bool * heap) * heap) * heap) * int

val g11_example1827 : (((bool * heap) * heap) * heap) * int

val g11_example1828 : (((bool * heap) * heap) * heap) * int

val g11_example1829 : (((bool * heap) * heap) * heap) * int

val g11_example1830 : (((bool * heap) * heap) * heap) * int

val g11_example1831 : (((bool * heap) * heap) * heap) * int

val g11_example1832 : (((bool * heap) * heap) * heap) * int

val g11_example1833 : (((bool * heap) * heap) * heap) * int

val g11_example1834 : (((bool * heap) * heap) * heap) * int

val g11_example1835 : (((bool * heap) * heap) * heap) * int

val g11_example1836 : (((bool * heap) * heap) * heap) * int

val g11_example1837 : (((bool * heap) * heap) * heap) * int

val g11_example1838 : (((bool * heap) * heap) * heap) * int

val g11_example1839 : (((bool * heap) * heap) * heap) * int

val g11_example1840 : (((bool * heap) * heap) * heap) * int

val g11_example1841 : (((bool * heap) * heap) * heap) * int

val g11_example1842 : (((bool * heap) * heap) * heap) * int

val g11_example1843 : (((bool * heap) * heap) * heap) * int

val g11_example1844 : (((bool * heap) * heap) * heap) * int

val g11_example1845 : (((bool * heap) * heap) * heap) * int

val g11_example1846 : (((bool * heap) * heap) * heap) * int

val g11_example1847 : (((bool * heap) * heap) * heap) * int

val g11_example1848 : (((bool * heap) * heap) * heap) * int

val g11_example1849 : (((bool * heap) * heap) * heap) * int

val g11_example1850 : (((bool * heap) * heap) * heap) * int

val g11_example1851 : (((bool * heap) * heap) * heap) * int

val g11_example1852 : (((bool * heap) * heap) * heap) * int

val g11_example1853 : (((bool * heap) * heap) * heap) * int

val g11_example1854 : (((bool * heap) * heap) * heap) * int

val g11_example1855 : (((bool * heap) * heap) * heap) * int

val g11_example1856 : (((bool * heap) * heap) * heap) * int

val g11_example1857 : (((bool * heap) * heap) * heap) * int

val g11_example1858 : (((bool * heap) * heap) * heap) * int

val g11_example1859 : (((bool * heap) * heap) * heap) * int

val g11_example1860 : (((bool * heap) * heap) * heap) * int

val g11_example1861 : (((bool * heap) * heap) * heap) * int

val g11_example1862 : (((bool * heap) * heap) * heap) * int

val g11_example1863 : (((bool * heap) * heap) * heap) * int

val g11_example1864 : (((bool * heap) * heap) * heap) * int

val g11_example1865 : (((bool * heap) * heap) * heap) * int

val g11_example1866 : (((bool * heap) * heap) * heap) * int

val g11_example1867 : (((bool * heap) * heap) * heap) * int

val g11_example1868 : (((bool * heap) * heap) * heap) * int

val g11_example1869 : (((bool * heap) * heap) * heap) * int

val g11_example1870 : (((bool * heap) * heap) * heap) * int

val g11_example1871 : (((bool * heap) * heap) * heap) * int

val g11_example1872 : (((bool * heap) * heap) * heap) * int

val g11_example1873 : (((bool * heap) * heap) * heap) * int

val g11_example1874 : (((bool * heap) * heap) * heap) * int

val g11_example1875 : (((bool * heap) * heap) * heap) * int

val g11_example1876 : (((bool * heap) * heap) * heap) * int

val g11_example1877 : (((bool * heap) * heap) * heap) * int

val g11_example1878 : (((bool * heap) * heap) * heap) * int

val g11_example1879 : (((bool * heap) * heap) * heap) * int

val g11_example1880 : (((bool * heap) * heap) * heap) * int

val g11_example1881 : (((bool * heap) * heap) * heap) * int

val g11_example1882 : (((bool * heap) * heap) * heap) * int

val g11_example1883 : (((bool * heap) * heap) * heap) * int

val g11_example1884 : (((bool * heap) * heap) * heap) * int

val g11_example1885 : (((bool * heap) * heap) * heap) * int

val g11_example1886 : (((bool * heap) * heap) * heap) * int

val g11_example1887 : (((bool * heap) * heap) * heap) * int

val g11_example1888 : (((bool * heap) * heap) * heap) * int

val g11_example1889 : (((bool * heap) * heap) * heap) * int

val g11_example1890 : (((bool * heap) * heap) * heap) * int

val g11_example1891 : (((bool * heap) * heap) * heap) * int

val g11_example1892 : (((bool * heap) * heap) * heap) * int

val g11_example1893 : (((bool * heap) * heap) * heap) * int

val g11_example1894 : (((bool * heap) * heap) * heap) * int

val g11_example1895 : (((bool * heap) * heap) * heap) * int

val g11_example1896 : (((bool * heap) * heap) * heap) * int

val g11_example1897 : (((bool * heap) * heap) * heap) * int

val g11_example1898 : (((bool * heap) * heap) * heap) * int

val g11_example1899 : (((bool * heap) * heap) * heap) * int

val g11_example1900 : (((bool * heap) * heap) * heap) * int

val g11_example1901 : (((bool * heap) * heap) * heap) * int

val g11_example1902 : (((bool * heap) * heap) * heap) * int

val g11_example1903 : (((bool * heap) * heap) * heap) * int

val g11_example1904 : (((bool * heap) * heap) * heap) * int

val g11_example1905 : (((bool * heap) * heap) * heap) * int

val g11_example1906 : (((bool * heap) * heap) * heap) * int

val g11_example1907 : (((bool * heap) * heap) * heap) * int

val g11_example1908 : (((bool * heap) * heap) * heap) * int

val g11_example1909 : (((bool * heap) * heap) * heap) * int

val g11_example1910 : (((bool * heap) * heap) * heap) * int

val g11_example1911 : (((bool * heap) * heap) * heap) * int

val g11_example1912 : (((bool * heap) * heap) * heap) * int

val g11_example1913 : (((bool * heap) * heap) * heap) * int

val g11_example1914 : (((bool * heap) * heap) * heap) * int

val g11_example1915 : (((bool * heap) * heap) * heap) * int

val g11_example1916 : (((bool * heap) * heap) * heap) * int

val g11_example1917 : (((bool * heap) * heap) * heap) * int

val g11_example1918 : (((bool * heap) * heap) * heap) * int

val g11_example1919 : (((bool * heap) * heap) * heap) * int

val g11_example1920 : (((bool * heap) * heap) * heap) * int

val g11_example1921 : (((bool * heap) * heap) * heap) * int

val g11_example1922 : (((bool * heap) * heap) * heap) * int

val g11_example1923 : (((bool * heap) * heap) * heap) * int

val g11_example1924 : (((bool * heap) * heap) * heap) * int

val g11_example1925 : (((bool * heap) * heap) * heap) * int

val g11_example1926 : (((bool * heap) * heap) * heap) * int

val g11_example1927 : (((bool * heap) * heap) * heap) * int

val g11_example1928 : (((bool * heap) * heap) * heap) * int

val g11_example1929 : (((bool * heap) * heap) * heap) * int

val g11_example1930 : (((bool * heap) * heap) * heap) * int

val g11_example1931 : (((bool * heap) * heap) * heap) * int

val g11_example1932 : (((bool * heap) * heap) * heap) * int

val g11_example1933 : (((bool * heap) * heap) * heap) * int

val g11_example1934 : (((bool * heap) * heap) * heap) * int

val g11_example1935 : (((bool * heap) * heap) * heap) * int

val g11_example1936 : (((bool * heap) * heap) * heap) * int

val g11_example1937 : (((bool * heap) * heap) * heap) * int

val g11_example1938 : (((bool * heap) * heap) * heap) * int

val g11_example1939 : (((bool * heap) * heap) * heap) * int

val g11_example1940 : (((bool * heap) * heap) * heap) * int

val g11_example1941 : (((bool * heap) * heap) * heap) * int

val g11_example1942 : (((bool * heap) * heap) * heap) * int

val g11_example1943 : (((bool * heap) * heap) * heap) * int

val g11_example1944 : (((bool * heap) * heap) * heap) * int

val g11_example1945 : (((bool * heap) * heap) * heap) * int

val g11_example1946 : (((bool * heap) * heap) * heap) * int

val g11_example1947 : (((bool * heap) * heap) * heap) * int

val g11_example1948 : (((bool * heap) * heap) * heap) * int

val g11_example1949 : (((bool * heap) * heap) * heap) * int

val g11_example1950 : (((bool * heap) * heap) * heap) * int

val g11_example1951 : (((bool * heap) * heap) * heap) * int

val g11_example1952 : (((bool * heap) * heap) * heap) * int

val g11_example1953 : (((bool * heap) * heap) * heap) * int

val g11_example1954 : (((bool * heap) * heap) * heap) * int

val g11_example1955 : (((bool * heap) * heap) * heap) * int

val g11_example1956 : (((bool * heap) * heap) * heap) * int

val g11_example1957 : (((bool * heap) * heap) * heap) * int

val g11_example1958 : (((bool * heap) * heap) * heap) * int

val g11_example1959 : (((bool * heap) * heap) * heap) * int

val g11_example1960 : (((bool * heap) * heap) * heap) * int

val g11_example1961 : (((bool * heap) * heap) * heap) * int

val g11_example1962 : (((bool * heap) * heap) * heap) * int

val g11_example1963 : (((bool * heap) * heap) * heap) * int

val g11_example1964 : (((bool * heap) * heap) * heap) * int

val g11_example1965 : (((bool * heap) * heap) * heap) * int

val g11_example1966 : (((bool * heap) * heap) * heap) * int

val g11_example1967 : (((bool * heap) * heap) * heap) * int

val g11_example1968 : (((bool * heap) * heap) * heap) * int

val g11_example1969 : (((bool * heap) * heap) * heap) * int

val g11_example1970 : (((bool * heap) * heap) * heap) * int

val g11_example1971 : (((bool * heap) * heap) * heap) * int

val g11_example1972 : (((bool * heap) * heap) * heap) * int

val g11_example1973 : (((bool * heap) * heap) * heap) * int

val g11_example1974 : (((bool * heap) * heap) * heap) * int

val g11_example1975 : (((bool * heap) * heap) * heap) * int

val g11_example1976 : (((bool * heap) * heap) * heap) * int

val g11_example1977 : (((bool * heap) * heap) * heap) * int

val g11_example1978 : (((bool * heap) * heap) * heap) * int

val g11_example1979 : (((bool * heap) * heap) * heap) * int

val g11_example1980 : (((bool * heap) * heap) * heap) * int

val g11_example1981 : (((bool * heap) * heap) * heap) * int

val g11_example1982 : (((bool * heap) * heap) * heap) * int

val g11_example1983 : (((bool * heap) * heap) * heap) * int

val g11_example1984 : (((bool * heap) * heap) * heap) * int

val g11_example1985 : (((bool * heap) * heap) * heap) * int

val g11_example1986 : (((bool * heap) * heap) * heap) * int

val g11_example1987 : (((bool * heap) * heap) * heap) * int

val g11_example1988 : (((bool * heap) * heap) * heap) * int

val g11_example1989 : (((bool * heap) * heap) * heap) * int

val g11_example1990 : (((bool * heap) * heap) * heap) * int

val g11_example1991 : (((bool * heap) * heap) * heap) * int

val g11_example1992 : (((bool * heap) * heap) * heap) * int

val g11_example1993 : (((bool * heap) * heap) * heap) * int

val g11_example1994 : (((bool * heap) * heap) * heap) * int

val g11_example1995 : (((bool * heap) * heap) * heap) * int

val g11_example1996 : (((bool * heap) * heap) * heap) * int

val g11_example1997 : (((bool * heap) * heap) * heap) * int

val g11_example1998 : (((bool * heap) * heap) * heap) * int

val g11_example1999 : (((bool * heap) * heap) * heap) * int

val g11_example2000 : (((bool * heap) * heap) * heap) * int

val g11_example2001 : (((bool * heap) * heap) * heap) * int

val g11_example2002 : (((bool * heap) * heap) * heap) * int

val g11_example2003 : (((bool * heap) * heap) * heap) * int

val g11_example2004 : (((bool * heap) * heap) * heap) * int

val g11_example2005 : (((bool * heap) * heap) * heap) * int

val g11_example2006 : (((bool * heap) * heap) * heap) * int

val g11_example2007 : (((bool * heap) * heap) * heap) * int

val g11_example2008 : (((bool * heap) * heap) * heap) * int

val g11_example2009 : (((bool * heap) * heap) * heap) * int

val g11_example2010 : (((bool * heap) * heap) * heap) * int

val g11_example2011 : (((bool * heap) * heap) * heap) * int

val g11_example2012 : (((bool * heap) * heap) * heap) * int

val g11_example2013 : (((bool * heap) * heap) * heap) * int

val g11_example2014 : (((bool * heap) * heap) * heap) * int

val g11_example2015 : (((bool * heap) * heap) * heap) * int

val g11_example2016 : (((bool * heap) * heap) * heap) * int

val g11_example2017 : (((bool * heap) * heap) * heap) * int

val g11_example2018 : (((bool * heap) * heap) * heap) * int

val g11_example2019 : (((bool * heap) * heap) * heap) * int

val g11_example2020 : (((bool * heap) * heap) * heap) * int

val g11_example2021 : (((bool * heap) * heap) * heap) * int

val g11_example2022 : (((bool * heap) * heap) * heap) * int

val g11_example2023 : (((bool * heap) * heap) * heap) * int

val g11_example2024 : (((bool * heap) * heap) * heap) * int

val g11_example2025 : (((bool * heap) * heap) * heap) * int

val g11_example2026 : (((bool * heap) * heap) * heap) * int

val g11_example2027 : (((bool * heap) * heap) * heap) * int

val g11_example2028 : (((bool * heap) * heap) * heap) * int

val g11_example2029 : (((bool * heap) * heap) * heap) * int

val g11_example2030 : (((bool * heap) * heap) * heap) * int

val g11_example2031 : (((bool * heap) * heap) * heap) * int

val g11_example2032 : (((bool * heap) * heap) * heap) * int

val g11_example2033 : (((bool * heap) * heap) * heap) * int

val g11_example2034 : (((bool * heap) * heap) * heap) * int

val g11_example2035 : (((bool * heap) * heap) * heap) * int

val g11_example2036 : (((bool * heap) * heap) * heap) * int

val g11_example2037 : (((bool * heap) * heap) * heap) * int

val g11_example2038 : (((bool * heap) * heap) * heap) * int

val g11_example2039 : (((bool * heap) * heap) * heap) * int

val g11_example2040 : (((bool * heap) * heap) * heap) * int

val g11_example2041 : (((bool * heap) * heap) * heap) * int

val g11_example2042 : (((bool * heap) * heap) * heap) * int

val g11_example2043 : (((bool * heap) * heap) * heap) * int

val g11_example2044 : (((bool * heap) * heap) * heap) * int

val g11_example2045 : (((bool * heap) * heap) * heap) * int

val g11_example2046 : (((bool * heap) * heap) * heap) * int

val g11_example2047 : (((bool * heap) * heap) * heap) * int

val g11_example2048 : (((bool * heap) * heap) * heap) * int

val g11_example2049 : (((bool * heap) * heap) * heap) * int

val g11_example2050 : (((bool * heap) * heap) * heap) * int

val g11_example2051 : (((bool * heap) * heap) * heap) * int

val g11_example2052 : (((bool * heap) * heap) * heap) * int

val g11_example2053 : (((bool * heap) * heap) * heap) * int

val g11_example2054 : (((bool * heap) * heap) * heap) * int

val g11_example2055 : (((bool * heap) * heap) * heap) * int

val g11_example2056 : (((bool * heap) * heap) * heap) * int

val g11_example2057 : (((bool * heap) * heap) * heap) * int

val g11_example2058 : (((bool * heap) * heap) * heap) * int

val g11_example2059 : (((bool * heap) * heap) * heap) * int

val g11_example2060 : (((bool * heap) * heap) * heap) * int

val g11_example2061 : (((bool * heap) * heap) * heap) * int

val g11_example2062 : (((bool * heap) * heap) * heap) * int

val g11_example2063 : (((bool * heap) * heap) * heap) * int

val g11_example2064 : (((bool * heap) * heap) * heap) * int

val g11_example2065 : (((bool * heap) * heap) * heap) * int

val g11_example2066 : (((bool * heap) * heap) * heap) * int

val g11_example2067 : (((bool * heap) * heap) * heap) * int

val g11_example2068 : (((bool * heap) * heap) * heap) * int

val g11_example2069 : (((bool * heap) * heap) * heap) * int

val g11_example2070 : (((bool * heap) * heap) * heap) * int

val g11_example2071 : (((bool * heap) * heap) * heap) * int

val g11_example2072 : (((bool * heap) * heap) * heap) * int

val g11_example2073 : (((bool * heap) * heap) * heap) * int

val g11_example2074 : (((bool * heap) * heap) * heap) * int

val g11_example2075 : (((bool * heap) * heap) * heap) * int

val g11_example2076 : (((bool * heap) * heap) * heap) * int

val g11_example2077 : (((bool * heap) * heap) * heap) * int

val g11_example2078 : (((bool * heap) * heap) * heap) * int

val g11_example2079 : (((bool * heap) * heap) * heap) * int

val g11_example2080 : (((bool * heap) * heap) * heap) * int

val g11_example2081 : (((bool * heap) * heap) * heap) * int

val g11_example2082 : (((bool * heap) * heap) * heap) * int

val g11_example2083 : (((bool * heap) * heap) * heap) * int

val g11_example2084 : (((bool * heap) * heap) * heap) * int

val g11_example2085 : (((bool * heap) * heap) * heap) * int

val g11_example2086 : (((bool * heap) * heap) * heap) * int

val g11_example2087 : (((bool * heap) * heap) * heap) * int

val g11_example2088 : (((bool * heap) * heap) * heap) * int

val g11_example2089 : (((bool * heap) * heap) * heap) * int

val g11_example2090 : (((bool * heap) * heap) * heap) * int

val g11_example2091 : (((bool * heap) * heap) * heap) * int

val g11_example2092 : (((bool * heap) * heap) * heap) * int

val g11_example2093 : (((bool * heap) * heap) * heap) * int

val g11_example2094 : (((bool * heap) * heap) * heap) * int

val g11_example2095 : (((bool * heap) * heap) * heap) * int

val g11_example2096 : (((bool * heap) * heap) * heap) * int

val g11_example2097 : (((bool * heap) * heap) * heap) * int

val g11_example2098 : (((bool * heap) * heap) * heap) * int

val g11_example2099 : (((bool * heap) * heap) * heap) * int

val g11_example2100 : (((bool * heap) * heap) * heap) * int

val g11_example2101 : (((bool * heap) * heap) * heap) * int

val g11_example2102 : (((bool * heap) * heap) * heap) * int

val g11_example2103 : (((bool * heap) * heap) * heap) * int

val g11_example2104 : (((bool * heap) * heap) * heap) * int

val g11_example2105 : (((bool * heap) * heap) * heap) * int

val g11_example2106 : (((bool * heap) * heap) * heap) * int

val g11_example2107 : (((bool * heap) * heap) * heap) * int

val g11_example2108 : (((bool * heap) * heap) * heap) * int

val g11_example2109 : (((bool * heap) * heap) * heap) * int

val g11_example2110 : (((bool * heap) * heap) * heap) * int

val g11_example2111 : (((bool * heap) * heap) * heap) * int

val g11_example2112 : (((bool * heap) * heap) * heap) * int

val g11_example2113 : (((bool * heap) * heap) * heap) * int

val g11_example2114 : (((bool * heap) * heap) * heap) * int

val g11_example2115 : (((bool * heap) * heap) * heap) * int

val g11_example2116 : (((bool * heap) * heap) * heap) * int

val g11_example2117 : (((bool * heap) * heap) * heap) * int

val g11_example2118 : (((bool * heap) * heap) * heap) * int

val g11_example2119 : (((bool * heap) * heap) * heap) * int

val g11_example2120 : (((bool * heap) * heap) * heap) * int

val g11_example2121 : (((bool * heap) * heap) * heap) * int

val g11_example2122 : (((bool * heap) * heap) * heap) * int

val g11_example2123 : (((bool * heap) * heap) * heap) * int

val g11_example2124 : (((bool * heap) * heap) * heap) * int

val g11_example2125 : (((bool * heap) * heap) * heap) * int

val g11_example2126 : (((bool * heap) * heap) * heap) * int

val g11_example2127 : (((bool * heap) * heap) * heap) * int

val g11_example2128 : (((bool * heap) * heap) * heap) * int

val g11_example2129 : (((bool * heap) * heap) * heap) * int

val g11_example2130 : (((bool * heap) * heap) * heap) * int

val g11_example2131 : (((bool * heap) * heap) * heap) * int

val g11_example2132 : (((bool * heap) * heap) * heap) * int

val g11_example2133 : (((bool * heap) * heap) * heap) * int

val g11_example2134 : (((bool * heap) * heap) * heap) * int

val g11_example2135 : (((bool * heap) * heap) * heap) * int

val g11_example2136 : (((bool * heap) * heap) * heap) * int

val g11_example2137 : (((bool * heap) * heap) * heap) * int

val g11_example2138 : (((bool * heap) * heap) * heap) * int

val g11_example2139 : (((bool * heap) * heap) * heap) * int

val g11_example2140 : (((bool * heap) * heap) * heap) * int

val g11_example2141 : (((bool * heap) * heap) * heap) * int

val g11_example2142 : (((bool * heap) * heap) * heap) * int

val g11_example2143 : (((bool * heap) * heap) * heap) * int

val g11_example2144 : (((bool * heap) * heap) * heap) * int

val g11_example2145 : (((bool * heap) * heap) * heap) * int

val g11_example2146 : (((bool * heap) * heap) * heap) * int

val g11_example2147 : (((bool * heap) * heap) * heap) * int

val g11_example2148 : (((bool * heap) * heap) * heap) * int

val g11_example2149 : (((bool * heap) * heap) * heap) * int

val g11_example2150 : (((bool * heap) * heap) * heap) * int

val g11_example2151 : (((bool * heap) * heap) * heap) * int

val g11_example2152 : (((bool * heap) * heap) * heap) * int

val g11_example2153 : (((bool * heap) * heap) * heap) * int

val g11_example2154 : (((bool * heap) * heap) * heap) * int

val g11_example2155 : (((bool * heap) * heap) * heap) * int

val g11_example2156 : (((bool * heap) * heap) * heap) * int

val g11_example2157 : (((bool * heap) * heap) * heap) * int

val g11_example2158 : (((bool * heap) * heap) * heap) * int

val g11_example2159 : (((bool * heap) * heap) * heap) * int

val g11_example2160 : (((bool * heap) * heap) * heap) * int

val g11_example2161 : (((bool * heap) * heap) * heap) * int

val g11_example2162 : (((bool * heap) * heap) * heap) * int

val g11_example2163 : (((bool * heap) * heap) * heap) * int

val g11_example2164 : (((bool * heap) * heap) * heap) * int

val g11_example2165 : (((bool * heap) * heap) * heap) * int

val g11_example2166 : (((bool * heap) * heap) * heap) * int

val g11_example2167 : (((bool * heap) * heap) * heap) * int

val g11_example2168 : (((bool * heap) * heap) * heap) * int

val g11_example2169 : (((bool * heap) * heap) * heap) * int

val g11_example2170 : (((bool * heap) * heap) * heap) * int

val g11_example2171 : (((bool * heap) * heap) * heap) * int

val g11_example2172 : (((bool * heap) * heap) * heap) * int

val g11_example2173 : (((bool * heap) * heap) * heap) * int

val g11_example2174 : (((bool * heap) * heap) * heap) * int

val g11_example2175 : (((bool * heap) * heap) * heap) * int

val g11_example2176 : (((bool * heap) * heap) * heap) * int

val g11_example2177 : (((bool * heap) * heap) * heap) * int

val g11_example2178 : (((bool * heap) * heap) * heap) * int

val g11_example2179 : (((bool * heap) * heap) * heap) * int

val g11_example2180 : (((bool * heap) * heap) * heap) * int

val g11_example2181 : (((bool * heap) * heap) * heap) * int

val g11_example2182 : (((bool * heap) * heap) * heap) * int

val g11_example2183 : (((bool * heap) * heap) * heap) * int

val g11_example2184 : (((bool * heap) * heap) * heap) * int

val g11_example2185 : (((bool * heap) * heap) * heap) * int

val g11_example2186 : (((bool * heap) * heap) * heap) * int

val g11_example2187 : (((bool * heap) * heap) * heap) * int

val g11_example2188 : (((bool * heap) * heap) * heap) * int

val g11_example2189 : (((bool * heap) * heap) * heap) * int

val g11_example2190 : (((bool * heap) * heap) * heap) * int

val g11_example2191 : (((bool * heap) * heap) * heap) * int

val g11_example2192 : (((bool * heap) * heap) * heap) * int

val g11_example2193 : (((bool * heap) * heap) * heap) * int

val g11_example2194 : (((bool * heap) * heap) * heap) * int

val g11_example2195 : (((bool * heap) * heap) * heap) * int

val g11_example2196 : (((bool * heap) * heap) * heap) * int

val g11_example2197 : (((bool * heap) * heap) * heap) * int

val g11_example2198 : (((bool * heap) * heap) * heap) * int

val g11_example2199 : (((bool * heap) * heap) * heap) * int

val g11_example2200 : (((bool * heap) * heap) * heap) * int

val g11_example2201 : (((bool * heap) * heap) * heap) * int

val g11_example2202 : (((bool * heap) * heap) * heap) * int

val g11_example2203 : (((bool * heap) * heap) * heap) * int

val g11_example2204 : (((bool * heap) * heap) * heap) * int

val g11_example2205 : (((bool * heap) * heap) * heap) * int

val g11_example2206 : (((bool * heap) * heap) * heap) * int

val g11_example2207 : (((bool * heap) * heap) * heap) * int

val g11_example2208 : (((bool * heap) * heap) * heap) * int

val g11_example2209 : (((bool * heap) * heap) * heap) * int

val g11_example2210 : (((bool * heap) * heap) * heap) * int

val g11_example2211 : (((bool * heap) * heap) * heap) * int

val g11_example2212 : (((bool * heap) * heap) * heap) * int

val g11_example2213 : (((bool * heap) * heap) * heap) * int

val g11_example2214 : (((bool * heap) * heap) * heap) * int

val g11_example2215 : (((bool * heap) * heap) * heap) * int

val g11_example2216 : (((bool * heap) * heap) * heap) * int

val g11_example2217 : (((bool * heap) * heap) * heap) * int

val g11_example2218 : (((bool * heap) * heap) * heap) * int

val g11_example2219 : (((bool * heap) * heap) * heap) * int

val g11_example2220 : (((bool * heap) * heap) * heap) * int

val g11_example2221 : (((bool * heap) * heap) * heap) * int

val g11_example2222 : (((bool * heap) * heap) * heap) * int

val g11_example2223 : (((bool * heap) * heap) * heap) * int

val g11_example2224 : (((bool * heap) * heap) * heap) * int

val g11_example2225 : (((bool * heap) * heap) * heap) * int

val g11_example2226 : (((bool * heap) * heap) * heap) * int

val g11_example2227 : (((bool * heap) * heap) * heap) * int

val g11_example2228 : (((bool * heap) * heap) * heap) * int

val g11_example2229 : (((bool * heap) * heap) * heap) * int

val g11_example2230 : (((bool * heap) * heap) * heap) * int

val g11_example2231 : (((bool * heap) * heap) * heap) * int

val g11_example2232 : (((bool * heap) * heap) * heap) * int

val g11_example2233 : (((bool * heap) * heap) * heap) * int

val g11_example2234 : (((bool * heap) * heap) * heap) * int

val g11_example2235 : (((bool * heap) * heap) * heap) * int

val g11_example2236 : (((bool * heap) * heap) * heap) * int

val g11_example2237 : (((bool * heap) * heap) * heap) * int

val g11_example2238 : (((bool * heap) * heap) * heap) * int

val g11_example2239 : (((bool * heap) * heap) * heap) * int

val g11_example2240 : (((bool * heap) * heap) * heap) * int

val g11_example2241 : (((bool * heap) * heap) * heap) * int

val g11_example2242 : (((bool * heap) * heap) * heap) * int

val g11_example2243 : (((bool * heap) * heap) * heap) * int

val g11_example2244 : (((bool * heap) * heap) * heap) * int

val g11_example2245 : (((bool * heap) * heap) * heap) * int

val g11_example2246 : (((bool * heap) * heap) * heap) * int

val g11_example2247 : (((bool * heap) * heap) * heap) * int

val g11_example2248 : (((bool * heap) * heap) * heap) * int

val g11_example2249 : (((bool * heap) * heap) * heap) * int

val g11_example2250 : (((bool * heap) * heap) * heap) * int

val g11_example2251 : (((bool * heap) * heap) * heap) * int

val g11_example2252 : (((bool * heap) * heap) * heap) * int

val g11_example2253 : (((bool * heap) * heap) * heap) * int

val g11_example2254 : (((bool * heap) * heap) * heap) * int

val g11_example2255 : (((bool * heap) * heap) * heap) * int

val g11_example2256 : (((bool * heap) * heap) * heap) * int

val g11_example2257 : (((bool * heap) * heap) * heap) * int

val g11_example2258 : (((bool * heap) * heap) * heap) * int

val g11_example2259 : (((bool * heap) * heap) * heap) * int

val g11_example2260 : (((bool * heap) * heap) * heap) * int

val g11_example2261 : (((bool * heap) * heap) * heap) * int

val g11_example2262 : (((bool * heap) * heap) * heap) * int

val g11_example2263 : (((bool * heap) * heap) * heap) * int

val g11_example2264 : (((bool * heap) * heap) * heap) * int

val g11_example2265 : (((bool * heap) * heap) * heap) * int

val g11_example2266 : (((bool * heap) * heap) * heap) * int

val g11_example2267 : (((bool * heap) * heap) * heap) * int

val g11_example2268 : (((bool * heap) * heap) * heap) * int

val g11_example2269 : (((bool * heap) * heap) * heap) * int

val g11_example2270 : (((bool * heap) * heap) * heap) * int

val g11_example2271 : (((bool * heap) * heap) * heap) * int

val g11_example2272 : (((bool * heap) * heap) * heap) * int

val g11_example2273 : (((bool * heap) * heap) * heap) * int

val g11_example2274 : (((bool * heap) * heap) * heap) * int

val g11_example2275 : (((bool * heap) * heap) * heap) * int

val g11_example2276 : (((bool * heap) * heap) * heap) * int

val g11_example2277 : (((bool * heap) * heap) * heap) * int

val g11_example2278 : (((bool * heap) * heap) * heap) * int

val g11_example2279 : (((bool * heap) * heap) * heap) * int

val g11_example2280 : (((bool * heap) * heap) * heap) * int

val g11_example2281 : (((bool * heap) * heap) * heap) * int

val g11_example2282 : (((bool * heap) * heap) * heap) * int

val g11_example2283 : (((bool * heap) * heap) * heap) * int

val g11_example2284 : (((bool * heap) * heap) * heap) * int

val g11_example2285 : (((bool * heap) * heap) * heap) * int

val g11_example2286 : (((bool * heap) * heap) * heap) * int

val g11_example2287 : (((bool * heap) * heap) * heap) * int

val g11_example2288 : (((bool * heap) * heap) * heap) * int

val g11_example2289 : (((bool * heap) * heap) * heap) * int

val g11_example2290 : (((bool * heap) * heap) * heap) * int

val g11_example2291 : (((bool * heap) * heap) * heap) * int

val g11_example2292 : (((bool * heap) * heap) * heap) * int

val g11_example2293 : (((bool * heap) * heap) * heap) * int

val g11_example2294 : (((bool * heap) * heap) * heap) * int

val g11_example2295 : (((bool * heap) * heap) * heap) * int

val g11_example2296 : (((bool * heap) * heap) * heap) * int

val g11_example2297 : (((bool * heap) * heap) * heap) * int

val g11_example2298 : (((bool * heap) * heap) * heap) * int

val g11_example2299 : (((bool * heap) * heap) * heap) * int

val g11_example2300 : (((bool * heap) * heap) * heap) * int

val g11_example2301 : (((bool * heap) * heap) * heap) * int

val g11_example2302 : (((bool * heap) * heap) * heap) * int

val g11_example2303 : (((bool * heap) * heap) * heap) * int

val g11_example2304 : (((bool * heap) * heap) * heap) * int

val g11_example2305 : (((bool * heap) * heap) * heap) * int

val g11_example2306 : (((bool * heap) * heap) * heap) * int

val g11_example2307 : (((bool * heap) * heap) * heap) * int

val g11_example2308 : (((bool * heap) * heap) * heap) * int

val g11_example2309 : (((bool * heap) * heap) * heap) * int

val g11_example2310 : (((bool * heap) * heap) * heap) * int

val g11_example2311 : (((bool * heap) * heap) * heap) * int

val g11_example2312 : (((bool * heap) * heap) * heap) * int

val g11_example2313 : (((bool * heap) * heap) * heap) * int

val g11_example2314 : (((bool * heap) * heap) * heap) * int

val g11_example2315 : (((bool * heap) * heap) * heap) * int

val g11_example2316 : (((bool * heap) * heap) * heap) * int

val g11_example2317 : (((bool * heap) * heap) * heap) * int

val g11_example2318 : (((bool * heap) * heap) * heap) * int

val g11_example2319 : (((bool * heap) * heap) * heap) * int

val g11_example2320 : (((bool * heap) * heap) * heap) * int

val g11_example2321 : (((bool * heap) * heap) * heap) * int

val g11_example2322 : (((bool * heap) * heap) * heap) * int

val g11_example2323 : (((bool * heap) * heap) * heap) * int

val g11_example2324 : (((bool * heap) * heap) * heap) * int

val g11_example2325 : (((bool * heap) * heap) * heap) * int

val g11_example2326 : (((bool * heap) * heap) * heap) * int

val g11_example2327 : (((bool * heap) * heap) * heap) * int

val g11_example2328 : (((bool * heap) * heap) * heap) * int

val g11_example2329 : (((bool * heap) * heap) * heap) * int

val g11_example2330 : (((bool * heap) * heap) * heap) * int

val g11_example2331 : (((bool * heap) * heap) * heap) * int

val g11_example2332 : (((bool * heap) * heap) * heap) * int

val g11_example2333 : (((bool * heap) * heap) * heap) * int

val g11_example2334 : (((bool * heap) * heap) * heap) * int

val g11_example2335 : (((bool * heap) * heap) * heap) * int

val g11_example2336 : (((bool * heap) * heap) * heap) * int

val g11_example2337 : (((bool * heap) * heap) * heap) * int

val g11_example2338 : (((bool * heap) * heap) * heap) * int

val g11_example2339 : (((bool * heap) * heap) * heap) * int

val g11_example2340 : (((bool * heap) * heap) * heap) * int

val g11_example2341 : (((bool * heap) * heap) * heap) * int

val g11_example2342 : (((bool * heap) * heap) * heap) * int

val g11_example2343 : (((bool * heap) * heap) * heap) * int

val g11_example2344 : (((bool * heap) * heap) * heap) * int

val g11_example2345 : (((bool * heap) * heap) * heap) * int

val g11_example2346 : (((bool * heap) * heap) * heap) * int

val g11_example2347 : (((bool * heap) * heap) * heap) * int

val g11_example2348 : (((bool * heap) * heap) * heap) * int

val g11_example2349 : (((bool * heap) * heap) * heap) * int

val g11_example2350 : (((bool * heap) * heap) * heap) * int

val g11_example2351 : (((bool * heap) * heap) * heap) * int

val g11_example2352 : (((bool * heap) * heap) * heap) * int

val g11_example2353 : (((bool * heap) * heap) * heap) * int

val g11_example2354 : (((bool * heap) * heap) * heap) * int

val g11_example2355 : (((bool * heap) * heap) * heap) * int

val g11_example2356 : (((bool * heap) * heap) * heap) * int

val g11_example2357 : (((bool * heap) * heap) * heap) * int

val g11_example2358 : (((bool * heap) * heap) * heap) * int

val g11_example2359 : (((bool * heap) * heap) * heap) * int

val g11_example2360 : (((bool * heap) * heap) * heap) * int

val g11_example2361 : (((bool * heap) * heap) * heap) * int

val g11_example2362 : (((bool * heap) * heap) * heap) * int

val g11_example2363 : (((bool * heap) * heap) * heap) * int

val g11_example2364 : (((bool * heap) * heap) * heap) * int

val g11_example2365 : (((bool * heap) * heap) * heap) * int

val g11_example2366 : (((bool * heap) * heap) * heap) * int

val g11_example2367 : (((bool * heap) * heap) * heap) * int

val g11_example2368 : (((bool * heap) * heap) * heap) * int

val g11_example2369 : (((bool * heap) * heap) * heap) * int

val g11_example2370 : (((bool * heap) * heap) * heap) * int

val g11_example2371 : (((bool * heap) * heap) * heap) * int

val g11_example2372 : (((bool * heap) * heap) * heap) * int

val g11_example2373 : (((bool * heap) * heap) * heap) * int

val g11_example2374 : (((bool * heap) * heap) * heap) * int

val g11_example2375 : (((bool * heap) * heap) * heap) * int

val g11_example2376 : (((bool * heap) * heap) * heap) * int

val g11_example2377 : (((bool * heap) * heap) * heap) * int

val g11_example2378 : (((bool * heap) * heap) * heap) * int

val g11_example2379 : (((bool * heap) * heap) * heap) * int

val g11_example2380 : (((bool * heap) * heap) * heap) * int

val g11_example2381 : (((bool * heap) * heap) * heap) * int

val g11_example2382 : (((bool * heap) * heap) * heap) * int

val g11_example2383 : (((bool * heap) * heap) * heap) * int

val g11_example2384 : (((bool * heap) * heap) * heap) * int

val g11_example2385 : (((bool * heap) * heap) * heap) * int

val g11_example2386 : (((bool * heap) * heap) * heap) * int

val g11_example2387 : (((bool * heap) * heap) * heap) * int

val g11_example2388 : (((bool * heap) * heap) * heap) * int

val g11_example2389 : (((bool * heap) * heap) * heap) * int

val g11_example2390 : (((bool * heap) * heap) * heap) * int

val g11_example2391 : (((bool * heap) * heap) * heap) * int

val g11_example2392 : (((bool * heap) * heap) * heap) * int

val g11_example2393 : (((bool * heap) * heap) * heap) * int

val g11_example2394 : (((bool * heap) * heap) * heap) * int

val g11_example2395 : (((bool * heap) * heap) * heap) * int

val g11_example2396 : (((bool * heap) * heap) * heap) * int

val g11_example2397 : (((bool * heap) * heap) * heap) * int

val g11_example2398 : (((bool * heap) * heap) * heap) * int

val g11_example2399 : (((bool * heap) * heap) * heap) * int

val g11_example2400 : (((bool * heap) * heap) * heap) * int

val g11_example2401 : (((bool * heap) * heap) * heap) * int

val g11_example2402 : (((bool * heap) * heap) * heap) * int

val g11_example2403 : (((bool * heap) * heap) * heap) * int

val g11_example2404 : (((bool * heap) * heap) * heap) * int

val g11_example2405 : (((bool * heap) * heap) * heap) * int

val g11_example2406 : (((bool * heap) * heap) * heap) * int

val g11_example2407 : (((bool * heap) * heap) * heap) * int

val g11_example2408 : (((bool * heap) * heap) * heap) * int

val g11_example2409 : (((bool * heap) * heap) * heap) * int

val g11_example2410 : (((bool * heap) * heap) * heap) * int

val g11_example2411 : (((bool * heap) * heap) * heap) * int

val g11_example2412 : (((bool * heap) * heap) * heap) * int

val g11_example2413 : (((bool * heap) * heap) * heap) * int

val g11_example2414 : (((bool * heap) * heap) * heap) * int

val g11_example2415 : (((bool * heap) * heap) * heap) * int

val g11_example2416 : (((bool * heap) * heap) * heap) * int

val g11_example2417 : (((bool * heap) * heap) * heap) * int

val g11_example2418 : (((bool * heap) * heap) * heap) * int

val g11_example2419 : (((bool * heap) * heap) * heap) * int

val g11_example2420 : (((bool * heap) * heap) * heap) * int

val g11_example2421 : (((bool * heap) * heap) * heap) * int

val g11_example2422 : (((bool * heap) * heap) * heap) * int

val g11_example2423 : (((bool * heap) * heap) * heap) * int

val g11_example2424 : (((bool * heap) * heap) * heap) * int

val g11_example2425 : (((bool * heap) * heap) * heap) * int

val g11_example2426 : (((bool * heap) * heap) * heap) * int

val g11_example2427 : (((bool * heap) * heap) * heap) * int

val g11_example2428 : (((bool * heap) * heap) * heap) * int

val g11_example2429 : (((bool * heap) * heap) * heap) * int

val g11_example2430 : (((bool * heap) * heap) * heap) * int

val g11_example2431 : (((bool * heap) * heap) * heap) * int

val g11_example2432 : (((bool * heap) * heap) * heap) * int

val g11_example2433 : (((bool * heap) * heap) * heap) * int

val g11_example2434 : (((bool * heap) * heap) * heap) * int

val g11_example2435 : (((bool * heap) * heap) * heap) * int

val g11_example2436 : (((bool * heap) * heap) * heap) * int

val g11_example2437 : (((bool * heap) * heap) * heap) * int

val g11_example2438 : (((bool * heap) * heap) * heap) * int

val g11_example2439 : (((bool * heap) * heap) * heap) * int

val g11_example2440 : (((bool * heap) * heap) * heap) * int

val g11_example2441 : (((bool * heap) * heap) * heap) * int

val g11_example2442 : (((bool * heap) * heap) * heap) * int

val g11_example2443 : (((bool * heap) * heap) * heap) * int

val g11_example2444 : (((bool * heap) * heap) * heap) * int

val g11_example2445 : (((bool * heap) * heap) * heap) * int

val g11_example2446 : (((bool * heap) * heap) * heap) * int

val g11_example2447 : (((bool * heap) * heap) * heap) * int

val g11_example2448 : (((bool * heap) * heap) * heap) * int

val g11_example2449 : (((bool * heap) * heap) * heap) * int

val g11_example2450 : (((bool * heap) * heap) * heap) * int

val g11_example2451 : (((bool * heap) * heap) * heap) * int

val g11_example2452 : (((bool * heap) * heap) * heap) * int

val g11_example2453 : (((bool * heap) * heap) * heap) * int

val g11_example2454 : (((bool * heap) * heap) * heap) * int

val g11_example2455 : (((bool * heap) * heap) * heap) * int

val g11_example2456 : (((bool * heap) * heap) * heap) * int

val g11_example2457 : (((bool * heap) * heap) * heap) * int

val g11_example2458 : (((bool * heap) * heap) * heap) * int

val g11_example2459 : (((bool * heap) * heap) * heap) * int

val g11_example2460 : (((bool * heap) * heap) * heap) * int

val g11_example2461 : (((bool * heap) * heap) * heap) * int

val g11_example2462 : (((bool * heap) * heap) * heap) * int

val g11_example2463 : (((bool * heap) * heap) * heap) * int

val g11_example2464 : (((bool * heap) * heap) * heap) * int

val g11_example2465 : (((bool * heap) * heap) * heap) * int

val g11_example2466 : (((bool * heap) * heap) * heap) * int

val g11_example2467 : (((bool * heap) * heap) * heap) * int

val g11_example2468 : (((bool * heap) * heap) * heap) * int

val g11_example2469 : (((bool * heap) * heap) * heap) * int

val g11_example2470 : (((bool * heap) * heap) * heap) * int

val g11_example2471 : (((bool * heap) * heap) * heap) * int

val g11_example2472 : (((bool * heap) * heap) * heap) * int

val g11_example2473 : (((bool * heap) * heap) * heap) * int

val g11_example2474 : (((bool * heap) * heap) * heap) * int

val g11_example2475 : (((bool * heap) * heap) * heap) * int

val g11_example2476 : (((bool * heap) * heap) * heap) * int

val g11_example2477 : (((bool * heap) * heap) * heap) * int

val g11_example2478 : (((bool * heap) * heap) * heap) * int

val g11_example2479 : (((bool * heap) * heap) * heap) * int

val g11_example2480 : (((bool * heap) * heap) * heap) * int

val g11_example2481 : (((bool * heap) * heap) * heap) * int

val g11_example2482 : (((bool * heap) * heap) * heap) * int

val g11_example2483 : (((bool * heap) * heap) * heap) * int

val g11_example2484 : (((bool * heap) * heap) * heap) * int

val g11_example2485 : (((bool * heap) * heap) * heap) * int

val g11_example2486 : (((bool * heap) * heap) * heap) * int

val g11_example2487 : (((bool * heap) * heap) * heap) * int

val g11_example2488 : (((bool * heap) * heap) * heap) * int

val g11_example2489 : (((bool * heap) * heap) * heap) * int

val g11_example2490 : (((bool * heap) * heap) * heap) * int

val g11_example2491 : (((bool * heap) * heap) * heap) * int

val g11_example2492 : (((bool * heap) * heap) * heap) * int

val g11_example2493 : (((bool * heap) * heap) * heap) * int

val g11_example2494 : (((bool * heap) * heap) * heap) * int

val g11_example2495 : (((bool * heap) * heap) * heap) * int

val g11_example2496 : (((bool * heap) * heap) * heap) * int

val g11_example2497 : (((bool * heap) * heap) * heap) * int

val g11_example2498 : (((bool * heap) * heap) * heap) * int

val g11_example2499 : (((bool * heap) * heap) * heap) * int

val g11_example2500 : (((bool * heap) * heap) * heap) * int

val g11_example2501 : (((bool * heap) * heap) * heap) * int

val g11_example2502 : (((bool * heap) * heap) * heap) * int

val g11_example2503 : (((bool * heap) * heap) * heap) * int

val g11_example2504 : (((bool * heap) * heap) * heap) * int

val g11_example2505 : (((bool * heap) * heap) * heap) * int

val g11_example2506 : (((bool * heap) * heap) * heap) * int

val g11_example2507 : (((bool * heap) * heap) * heap) * int

val g11_example2508 : (((bool * heap) * heap) * heap) * int

val g11_example2509 : (((bool * heap) * heap) * heap) * int

val g11_example2510 : (((bool * heap) * heap) * heap) * int

val g11_example2511 : (((bool * heap) * heap) * heap) * int

val g11_example2512 : (((bool * heap) * heap) * heap) * int

val g11_example2513 : (((bool * heap) * heap) * heap) * int

val g11_example2514 : (((bool * heap) * heap) * heap) * int

val g11_example2515 : (((bool * heap) * heap) * heap) * int

val g11_example2516 : (((bool * heap) * heap) * heap) * int

val g11_example2517 : (((bool * heap) * heap) * heap) * int

val g11_example2518 : (((bool * heap) * heap) * heap) * int

val g11_example2519 : (((bool * heap) * heap) * heap) * int

val g11_example2520 : (((bool * heap) * heap) * heap) * int

val g11_example2521 : (((bool * heap) * heap) * heap) * int

val g11_example2522 : (((bool * heap) * heap) * heap) * int

val g11_example2523 : (((bool * heap) * heap) * heap) * int

val g11_example2524 : (((bool * heap) * heap) * heap) * int

val g11_example2525 : (((bool * heap) * heap) * heap) * int

val g11_example2526 : (((bool * heap) * heap) * heap) * int

val g11_example2527 : (((bool * heap) * heap) * heap) * int

val g11_example2528 : (((bool * heap) * heap) * heap) * int

val g11_example2529 : (((bool * heap) * heap) * heap) * int

val g11_example2530 : (((bool * heap) * heap) * heap) * int

val g11_example2531 : (((bool * heap) * heap) * heap) * int

val g11_example2532 : (((bool * heap) * heap) * heap) * int

val g11_example2533 : (((bool * heap) * heap) * heap) * int

val g11_example2534 : (((bool * heap) * heap) * heap) * int

val g11_example2535 : (((bool * heap) * heap) * heap) * int

val g11_example2536 : (((bool * heap) * heap) * heap) * int

val g11_example2537 : (((bool * heap) * heap) * heap) * int

val g11_example2538 : (((bool * heap) * heap) * heap) * int

val g11_example2539 : (((bool * heap) * heap) * heap) * int

val g11_example2540 : (((bool * heap) * heap) * heap) * int

val g11_example2541 : (((bool * heap) * heap) * heap) * int

val g11_example2542 : (((bool * heap) * heap) * heap) * int

val g11_example2543 : (((bool * heap) * heap) * heap) * int

val g11_example2544 : (((bool * heap) * heap) * heap) * int

val g11_example2545 : (((bool * heap) * heap) * heap) * int

val g11_example2546 : (((bool * heap) * heap) * heap) * int

val g11_example2547 : (((bool * heap) * heap) * heap) * int

val g11_example2548 : (((bool * heap) * heap) * heap) * int

val g11_example2549 : (((bool * heap) * heap) * heap) * int

val g11_example2550 : (((bool * heap) * heap) * heap) * int

val g11_example2551 : (((bool * heap) * heap) * heap) * int

val g11_example2552 : (((bool * heap) * heap) * heap) * int

val g11_example2553 : (((bool * heap) * heap) * heap) * int

val g11_example2554 : (((bool * heap) * heap) * heap) * int

val g11_example2555 : (((bool * heap) * heap) * heap) * int

val g11_example2556 : (((bool * heap) * heap) * heap) * int

val g11_example2557 : (((bool * heap) * heap) * heap) * int

val g11_example2558 : (((bool * heap) * heap) * heap) * int

val g11_example2559 : (((bool * heap) * heap) * heap) * int

val g11_example2560 : (((bool * heap) * heap) * heap) * int

val g11_example2561 : (((bool * heap) * heap) * heap) * int

val g11_example2562 : (((bool * heap) * heap) * heap) * int

val g11_example2563 : (((bool * heap) * heap) * heap) * int

val g11_example2564 : (((bool * heap) * heap) * heap) * int

val g11_example2565 : (((bool * heap) * heap) * heap) * int

val g11_example2566 : (((bool * heap) * heap) * heap) * int

val g11_example2567 : (((bool * heap) * heap) * heap) * int

val g11_example2568 : (((bool * heap) * heap) * heap) * int

val g11_example2569 : (((bool * heap) * heap) * heap) * int

val g11_example2570 : (((bool * heap) * heap) * heap) * int

val g11_example2571 : (((bool * heap) * heap) * heap) * int

val g11_example2572 : (((bool * heap) * heap) * heap) * int

val g11_example2573 : (((bool * heap) * heap) * heap) * int

val g11_example2574 : (((bool * heap) * heap) * heap) * int

val g11_example2575 : (((bool * heap) * heap) * heap) * int

val g11_example2576 : (((bool * heap) * heap) * heap) * int

val g11_example2577 : (((bool * heap) * heap) * heap) * int

val g11_example2578 : (((bool * heap) * heap) * heap) * int

val g11_example2579 : (((bool * heap) * heap) * heap) * int

val g11_example2580 : (((bool * heap) * heap) * heap) * int

val g11_example2581 : (((bool * heap) * heap) * heap) * int

val g11_example2582 : (((bool * heap) * heap) * heap) * int

val g11_example2583 : (((bool * heap) * heap) * heap) * int

val g11_example2584 : (((bool * heap) * heap) * heap) * int

val g11_example2585 : (((bool * heap) * heap) * heap) * int

val g11_example2586 : (((bool * heap) * heap) * heap) * int

val g11_example2587 : (((bool * heap) * heap) * heap) * int

val g11_example2588 : (((bool * heap) * heap) * heap) * int

val g11_example2589 : (((bool * heap) * heap) * heap) * int

val g11_example2590 : (((bool * heap) * heap) * heap) * int

val g11_example2591 : (((bool * heap) * heap) * heap) * int

val g11_example2592 : (((bool * heap) * heap) * heap) * int

val g11_example2593 : (((bool * heap) * heap) * heap) * int

val g11_example2594 : (((bool * heap) * heap) * heap) * int

val g11_example2595 : (((bool * heap) * heap) * heap) * int

val g11_example2596 : (((bool * heap) * heap) * heap) * int

val g11_example2597 : (((bool * heap) * heap) * heap) * int

val g11_example2598 : (((bool * heap) * heap) * heap) * int

val g11_example2599 : (((bool * heap) * heap) * heap) * int

val g11_example2600 : (((bool * heap) * heap) * heap) * int

val g11_example2601 : (((bool * heap) * heap) * heap) * int

val g11_example2602 : (((bool * heap) * heap) * heap) * int

val g11_example2603 : (((bool * heap) * heap) * heap) * int

val g11_example2604 : (((bool * heap) * heap) * heap) * int

val g11_example2605 : (((bool * heap) * heap) * heap) * int

val g11_example2606 : (((bool * heap) * heap) * heap) * int

val g11_example2607 : (((bool * heap) * heap) * heap) * int

val g11_example2608 : (((bool * heap) * heap) * heap) * int

val g11_example2609 : (((bool * heap) * heap) * heap) * int

val g11_example2610 : (((bool * heap) * heap) * heap) * int

val g11_example2611 : (((bool * heap) * heap) * heap) * int

val g11_example2612 : (((bool * heap) * heap) * heap) * int

val g11_example2613 : (((bool * heap) * heap) * heap) * int

val g11_example2614 : (((bool * heap) * heap) * heap) * int

val g11_example2615 : (((bool * heap) * heap) * heap) * int

val g11_example2616 : (((bool * heap) * heap) * heap) * int

val g11_example2617 : (((bool * heap) * heap) * heap) * int

val g11_example2618 : (((bool * heap) * heap) * heap) * int

val g11_example2619 : (((bool * heap) * heap) * heap) * int

val g11_example2620 : (((bool * heap) * heap) * heap) * int

val g11_example2621 : (((bool * heap) * heap) * heap) * int

val g11_example2622 : (((bool * heap) * heap) * heap) * int

val g11_example2623 : (((bool * heap) * heap) * heap) * int

val g11_example2624 : (((bool * heap) * heap) * heap) * int

val g11_example2625 : (((bool * heap) * heap) * heap) * int

val g11_example2626 : (((bool * heap) * heap) * heap) * int

val g11_example2627 : (((bool * heap) * heap) * heap) * int

val g11_example2628 : (((bool * heap) * heap) * heap) * int

val g11_example2629 : (((bool * heap) * heap) * heap) * int

val g11_example2630 : (((bool * heap) * heap) * heap) * int

val g11_example2631 : (((bool * heap) * heap) * heap) * int

val g11_example2632 : (((bool * heap) * heap) * heap) * int

val g11_example2633 : (((bool * heap) * heap) * heap) * int

val g11_example2634 : (((bool * heap) * heap) * heap) * int

val g11_example2635 : (((bool * heap) * heap) * heap) * int

val g11_example2636 : (((bool * heap) * heap) * heap) * int

val g11_example2637 : (((bool * heap) * heap) * heap) * int

val g11_example2638 : (((bool * heap) * heap) * heap) * int

val g11_example2639 : (((bool * heap) * heap) * heap) * int

val g11_example2640 : (((bool * heap) * heap) * heap) * int

val g11_example2641 : (((bool * heap) * heap) * heap) * int

val g11_example2642 : (((bool * heap) * heap) * heap) * int

val g11_example2643 : (((bool * heap) * heap) * heap) * int

val g11_example2644 : (((bool * heap) * heap) * heap) * int

val g11_example2645 : (((bool * heap) * heap) * heap) * int

val g11_example2646 : (((bool * heap) * heap) * heap) * int

val g11_example2647 : (((bool * heap) * heap) * heap) * int

val g11_example2648 : (((bool * heap) * heap) * heap) * int

val g11_example2649 : (((bool * heap) * heap) * heap) * int

val g11_example2650 : (((bool * heap) * heap) * heap) * int

val g11_example2651 : (((bool * heap) * heap) * heap) * int

val g11_example2652 : (((bool * heap) * heap) * heap) * int

val g11_example2653 : (((bool * heap) * heap) * heap) * int

val g11_example2654 : (((bool * heap) * heap) * heap) * int

val g11_example2655 : (((bool * heap) * heap) * heap) * int

val g11_example2656 : (((bool * heap) * heap) * heap) * int

val g11_example2657 : (((bool * heap) * heap) * heap) * int

val g11_example2658 : (((bool * heap) * heap) * heap) * int

val g11_example2659 : (((bool * heap) * heap) * heap) * int

val g11_example2660 : (((bool * heap) * heap) * heap) * int

val g11_example2661 : (((bool * heap) * heap) * heap) * int

val g11_example2662 : (((bool * heap) * heap) * heap) * int

val g11_example2663 : (((bool * heap) * heap) * heap) * int

val g11_example2664 : (((bool * heap) * heap) * heap) * int

val g11_example2665 : (((bool * heap) * heap) * heap) * int

val g11_example2666 : (((bool * heap) * heap) * heap) * int

val g11_example2667 : (((bool * heap) * heap) * heap) * int

val g11_example2668 : (((bool * heap) * heap) * heap) * int

val g11_example2669 : (((bool * heap) * heap) * heap) * int

val g11_example2670 : (((bool * heap) * heap) * heap) * int

val g11_example2671 : (((bool * heap) * heap) * heap) * int

val g11_example2672 : (((bool * heap) * heap) * heap) * int

val g11_example2673 : (((bool * heap) * heap) * heap) * int

val g11_example2674 : (((bool * heap) * heap) * heap) * int

val g11_example2675 : (((bool * heap) * heap) * heap) * int

val g11_example2676 : (((bool * heap) * heap) * heap) * int

val g11_example2677 : (((bool * heap) * heap) * heap) * int

val g11_example2678 : (((bool * heap) * heap) * heap) * int

val g11_example2679 : (((bool * heap) * heap) * heap) * int

val g11_example2680 : (((bool * heap) * heap) * heap) * int

val g11_example2681 : (((bool * heap) * heap) * heap) * int

val g11_example2682 : (((bool * heap) * heap) * heap) * int

val g11_example2683 : (((bool * heap) * heap) * heap) * int

val g11_example2684 : (((bool * heap) * heap) * heap) * int

val g11_example2685 : (((bool * heap) * heap) * heap) * int

val g11_example2686 : (((bool * heap) * heap) * heap) * int

val g11_example2687 : (((bool * heap) * heap) * heap) * int

val g11_example2688 : (((bool * heap) * heap) * heap) * int

val g11_example2689 : (((bool * heap) * heap) * heap) * int

val g11_example2690 : (((bool * heap) * heap) * heap) * int

val g11_example2691 : (((bool * heap) * heap) * heap) * int

val g11_example2692 : (((bool * heap) * heap) * heap) * int

val g11_example2693 : (((bool * heap) * heap) * heap) * int

val g11_example2694 : (((bool * heap) * heap) * heap) * int

val g11_example2695 : (((bool * heap) * heap) * heap) * int

val g11_example2696 : (((bool * heap) * heap) * heap) * int

val g11_example2697 : (((bool * heap) * heap) * heap) * int

val g11_example2698 : (((bool * heap) * heap) * heap) * int

val g11_example2699 : (((bool * heap) * heap) * heap) * int

val g11_example2700 : (((bool * heap) * heap) * heap) * int

val g11_example2701 : (((bool * heap) * heap) * heap) * int

val g11_example2702 : (((bool * heap) * heap) * heap) * int

val g11_example2703 : (((bool * heap) * heap) * heap) * int

val g11_example2704 : (((bool * heap) * heap) * heap) * int

val g11_example2705 : (((bool * heap) * heap) * heap) * int

val g11_example2706 : (((bool * heap) * heap) * heap) * int

val g11_example2707 : (((bool * heap) * heap) * heap) * int

val g11_example2708 : (((bool * heap) * heap) * heap) * int

val g11_example2709 : (((bool * heap) * heap) * heap) * int

val g11_example2710 : (((bool * heap) * heap) * heap) * int

val g11_example2711 : (((bool * heap) * heap) * heap) * int

val g11_example2712 : (((bool * heap) * heap) * heap) * int

val g11_example2713 : (((bool * heap) * heap) * heap) * int

val g11_example2714 : (((bool * heap) * heap) * heap) * int

val g11_example2715 : (((bool * heap) * heap) * heap) * int

val g11_example2716 : (((bool * heap) * heap) * heap) * int

val g11_example2717 : (((bool * heap) * heap) * heap) * int

val g11_example2718 : (((bool * heap) * heap) * heap) * int

val g11_example2719 : (((bool * heap) * heap) * heap) * int

val g11_example2720 : (((bool * heap) * heap) * heap) * int

val g11_example2721 : (((bool * heap) * heap) * heap) * int

val g11_example2722 : (((bool * heap) * heap) * heap) * int

val g11_example2723 : (((bool * heap) * heap) * heap) * int

val g11_example2724 : (((bool * heap) * heap) * heap) * int

val g11_example2725 : (((bool * heap) * heap) * heap) * int

val g11_example2726 : (((bool * heap) * heap) * heap) * int

val g11_example2727 : (((bool * heap) * heap) * heap) * int

val g11_example2728 : (((bool * heap) * heap) * heap) * int

val g11_example2729 : (((bool * heap) * heap) * heap) * int

val g11_example2730 : (((bool * heap) * heap) * heap) * int

val g11_example2731 : (((bool * heap) * heap) * heap) * int

val g11_example2732 : (((bool * heap) * heap) * heap) * int

val g11_example2733 : (((bool * heap) * heap) * heap) * int

val g11_example2734 : (((bool * heap) * heap) * heap) * int

val g11_example2735 : (((bool * heap) * heap) * heap) * int

val g11_example2736 : (((bool * heap) * heap) * heap) * int

val g11_example2737 : (((bool * heap) * heap) * heap) * int

val g11_example2738 : (((bool * heap) * heap) * heap) * int

val g11_example2739 : (((bool * heap) * heap) * heap) * int

val g11_example2740 : (((bool * heap) * heap) * heap) * int

val g11_example2741 : (((bool * heap) * heap) * heap) * int

val g11_example2742 : (((bool * heap) * heap) * heap) * int

val g11_example2743 : (((bool * heap) * heap) * heap) * int

val g11_example2744 : (((bool * heap) * heap) * heap) * int

val g11_example2745 : (((bool * heap) * heap) * heap) * int

val g11_example2746 : (((bool * heap) * heap) * heap) * int

val g11_example2747 : (((bool * heap) * heap) * heap) * int

val g11_example2748 : (((bool * heap) * heap) * heap) * int

val g11_example2749 : (((bool * heap) * heap) * heap) * int

val g11_example2750 : (((bool * heap) * heap) * heap) * int

val g11_example2751 : (((bool * heap) * heap) * heap) * int

val g11_example2752 : (((bool * heap) * heap) * heap) * int

val g11_example2753 : (((bool * heap) * heap) * heap) * int

val g11_example2754 : (((bool * heap) * heap) * heap) * int

val g11_example2755 : (((bool * heap) * heap) * heap) * int

val g11_example2756 : (((bool * heap) * heap) * heap) * int

val g11_example2757 : (((bool * heap) * heap) * heap) * int

val g11_example2758 : (((bool * heap) * heap) * heap) * int

val g11_example2759 : (((bool * heap) * heap) * heap) * int

val g11_example2760 : (((bool * heap) * heap) * heap) * int

val g11_example2761 : (((bool * heap) * heap) * heap) * int

val g11_example2762 : (((bool * heap) * heap) * heap) * int

val g11_example2763 : (((bool * heap) * heap) * heap) * int

val g11_example2764 : (((bool * heap) * heap) * heap) * int

val g11_example2765 : (((bool * heap) * heap) * heap) * int

val g11_example2766 : (((bool * heap) * heap) * heap) * int

val g11_example2767 : (((bool * heap) * heap) * heap) * int

val g11_example2768 : (((bool * heap) * heap) * heap) * int

val g11_example2769 : (((bool * heap) * heap) * heap) * int

val g11_example2770 : (((bool * heap) * heap) * heap) * int

val g11_example2771 : (((bool * heap) * heap) * heap) * int

val g11_example2772 : (((bool * heap) * heap) * heap) * int

val g11_example2773 : (((bool * heap) * heap) * heap) * int

val g11_example2774 : (((bool * heap) * heap) * heap) * int

val g11_example2775 : (((bool * heap) * heap) * heap) * int

val g11_example2776 : (((bool * heap) * heap) * heap) * int

val g11_example2777 : (((bool * heap) * heap) * heap) * int

val g11_example2778 : (((bool * heap) * heap) * heap) * int

val g11_example2779 : (((bool * heap) * heap) * heap) * int

val g11_example2780 : (((bool * heap) * heap) * heap) * int

val g11_example2781 : (((bool * heap) * heap) * heap) * int

val g11_example2782 : (((bool * heap) * heap) * heap) * int

val g11_example2783 : (((bool * heap) * heap) * heap) * int

val g11_example2784 : (((bool * heap) * heap) * heap) * int

val g11_example2785 : (((bool * heap) * heap) * heap) * int

val g11_example2786 : (((bool * heap) * heap) * heap) * int

val g11_example2787 : (((bool * heap) * heap) * heap) * int

val g11_example2788 : (((bool * heap) * heap) * heap) * int

val g11_example2789 : (((bool * heap) * heap) * heap) * int

val g11_example2790 : (((bool * heap) * heap) * heap) * int

val g11_example2791 : (((bool * heap) * heap) * heap) * int

val g11_example2792 : (((bool * heap) * heap) * heap) * int

val g11_example2793 : (((bool * heap) * heap) * heap) * int

val g11_example2794 : (((bool * heap) * heap) * heap) * int

val g11_example2795 : (((bool * heap) * heap) * heap) * int

val g11_example2796 : (((bool * heap) * heap) * heap) * int

val g11_example2797 : (((bool * heap) * heap) * heap) * int

val g11_example2798 : (((bool * heap) * heap) * heap) * int

val g11_example2799 : (((bool * heap) * heap) * heap) * int

val g11_example2800 : (((bool * heap) * heap) * heap) * int

val g11_example2801 : (((bool * heap) * heap) * heap) * int

val g11_example2802 : (((bool * heap) * heap) * heap) * int

val g11_example2803 : (((bool * heap) * heap) * heap) * int

val g11_example2804 : (((bool * heap) * heap) * heap) * int

val g11_example2805 : (((bool * heap) * heap) * heap) * int

val g11_example2806 : (((bool * heap) * heap) * heap) * int

val g11_example2807 : (((bool * heap) * heap) * heap) * int

val g11_example2808 : (((bool * heap) * heap) * heap) * int

val g11_example2809 : (((bool * heap) * heap) * heap) * int

val g11_example2810 : (((bool * heap) * heap) * heap) * int

val g11_example2811 : (((bool * heap) * heap) * heap) * int

val g11_example2812 : (((bool * heap) * heap) * heap) * int

val g11_example2813 : (((bool * heap) * heap) * heap) * int

val g11_example2814 : (((bool * heap) * heap) * heap) * int

val g11_example2815 : (((bool * heap) * heap) * heap) * int

val g11_example2816 : (((bool * heap) * heap) * heap) * int

val g11_example2817 : (((bool * heap) * heap) * heap) * int

val g11_example2818 : (((bool * heap) * heap) * heap) * int

val g11_example2819 : (((bool * heap) * heap) * heap) * int

val g11_example2820 : (((bool * heap) * heap) * heap) * int

val g11_example2821 : (((bool * heap) * heap) * heap) * int

val g11_example2822 : (((bool * heap) * heap) * heap) * int

val g11_example2823 : (((bool * heap) * heap) * heap) * int

val g11_example2824 : (((bool * heap) * heap) * heap) * int

val g11_example2825 : (((bool * heap) * heap) * heap) * int

val g11_example2826 : (((bool * heap) * heap) * heap) * int

val g11_example2827 : (((bool * heap) * heap) * heap) * int

val g11_example2828 : (((bool * heap) * heap) * heap) * int

val g11_example2829 : (((bool * heap) * heap) * heap) * int

val g11_example2830 : (((bool * heap) * heap) * heap) * int

val g11_example2831 : (((bool * heap) * heap) * heap) * int

val g11_example2832 : (((bool * heap) * heap) * heap) * int

val g11_example2833 : (((bool * heap) * heap) * heap) * int

val g11_example2834 : (((bool * heap) * heap) * heap) * int

val g11_example2835 : (((bool * heap) * heap) * heap) * int

val g11_example2836 : (((bool * heap) * heap) * heap) * int

val g11_example2837 : (((bool * heap) * heap) * heap) * int

val g11_example2838 : (((bool * heap) * heap) * heap) * int

val g11_example2839 : (((bool * heap) * heap) * heap) * int

val g11_example2840 : (((bool * heap) * heap) * heap) * int

val g11_example2841 : (((bool * heap) * heap) * heap) * int

val g11_example2842 : (((bool * heap) * heap) * heap) * int

val g11_example2843 : (((bool * heap) * heap) * heap) * int

val g11_example2844 : (((bool * heap) * heap) * heap) * int

val g11_example2845 : (((bool * heap) * heap) * heap) * int

val g11_example2846 : (((bool * heap) * heap) * heap) * int

val g11_example2847 : (((bool * heap) * heap) * heap) * int

val g11_example2848 : (((bool * heap) * heap) * heap) * int

val g11_example2849 : (((bool * heap) * heap) * heap) * int

val g11_example2850 : (((bool * heap) * heap) * heap) * int

val g11_example2851 : (((bool * heap) * heap) * heap) * int

val g11_example2852 : (((bool * heap) * heap) * heap) * int

val g11_example2853 : (((bool * heap) * heap) * heap) * int

val g11_example2854 : (((bool * heap) * heap) * heap) * int

val g11_example2855 : (((bool * heap) * heap) * heap) * int

val g11_example2856 : (((bool * heap) * heap) * heap) * int

val g11_example2857 : (((bool * heap) * heap) * heap) * int

val g11_example2858 : (((bool * heap) * heap) * heap) * int

val g11_example2859 : (((bool * heap) * heap) * heap) * int

val g11_example2860 : (((bool * heap) * heap) * heap) * int

val g11_example2861 : (((bool * heap) * heap) * heap) * int

val g11_example2862 : (((bool * heap) * heap) * heap) * int

val g11_example2863 : (((bool * heap) * heap) * heap) * int

val g11_example2864 : (((bool * heap) * heap) * heap) * int

val g11_example2865 : (((bool * heap) * heap) * heap) * int

val g11_example2866 : (((bool * heap) * heap) * heap) * int

val g11_example2867 : (((bool * heap) * heap) * heap) * int

val g11_example2868 : (((bool * heap) * heap) * heap) * int

val g11_example2869 : (((bool * heap) * heap) * heap) * int

val g11_example2870 : (((bool * heap) * heap) * heap) * int

val g11_example2871 : (((bool * heap) * heap) * heap) * int

val g11_example2872 : (((bool * heap) * heap) * heap) * int

val g11_example2873 : (((bool * heap) * heap) * heap) * int

val g11_example2874 : (((bool * heap) * heap) * heap) * int

val g11_example2875 : (((bool * heap) * heap) * heap) * int

val g11_example2876 : (((bool * heap) * heap) * heap) * int

val g11_example2877 : (((bool * heap) * heap) * heap) * int

val g11_example2878 : (((bool * heap) * heap) * heap) * int

val g11_example2879 : (((bool * heap) * heap) * heap) * int

val g11_example2880 : (((bool * heap) * heap) * heap) * int

val g11_example2881 : (((bool * heap) * heap) * heap) * int

val g11_example2882 : (((bool * heap) * heap) * heap) * int

val g11_example2883 : (((bool * heap) * heap) * heap) * int

val g11_example2884 : (((bool * heap) * heap) * heap) * int

val g11_example2885 : (((bool * heap) * heap) * heap) * int

val g11_example2886 : (((bool * heap) * heap) * heap) * int

val g11_example2887 : (((bool * heap) * heap) * heap) * int

val g11_example2888 : (((bool * heap) * heap) * heap) * int

val g11_example2889 : (((bool * heap) * heap) * heap) * int

val g11_example2890 : (((bool * heap) * heap) * heap) * int

val g11_example2891 : (((bool * heap) * heap) * heap) * int

val g11_example2892 : (((bool * heap) * heap) * heap) * int

val g11_example2893 : (((bool * heap) * heap) * heap) * int

val g11_example2894 : (((bool * heap) * heap) * heap) * int

val g11_example2895 : (((bool * heap) * heap) * heap) * int

val g11_example2896 : (((bool * heap) * heap) * heap) * int

val g11_example2897 : (((bool * heap) * heap) * heap) * int

val g11_example2898 : (((bool * heap) * heap) * heap) * int

val g11_example2899 : (((bool * heap) * heap) * heap) * int

val g11_example2900 : (((bool * heap) * heap) * heap) * int

val g11_example2901 : (((bool * heap) * heap) * heap) * int

val g11_example2902 : (((bool * heap) * heap) * heap) * int

val g11_example2903 : (((bool * heap) * heap) * heap) * int

val g11_example2904 : (((bool * heap) * heap) * heap) * int

val g11_example2905 : (((bool * heap) * heap) * heap) * int

val g11_example2906 : (((bool * heap) * heap) * heap) * int

val g11_example2907 : (((bool * heap) * heap) * heap) * int

val g11_example2908 : (((bool * heap) * heap) * heap) * int

val g11_example2909 : (((bool * heap) * heap) * heap) * int

val g11_example2910 : (((bool * heap) * heap) * heap) * int

val g11_example2911 : (((bool * heap) * heap) * heap) * int

val g11_example2912 : (((bool * heap) * heap) * heap) * int

val g11_example2913 : (((bool * heap) * heap) * heap) * int

val g11_example2914 : (((bool * heap) * heap) * heap) * int

val g11_example2915 : (((bool * heap) * heap) * heap) * int

val g11_example2916 : (((bool * heap) * heap) * heap) * int

val g11_example2917 : (((bool * heap) * heap) * heap) * int

val g11_example2918 : (((bool * heap) * heap) * heap) * int

val g11_example2919 : (((bool * heap) * heap) * heap) * int

val g11_example2920 : (((bool * heap) * heap) * heap) * int

val g11_example2921 : (((bool * heap) * heap) * heap) * int

val g11_example2922 : (((bool * heap) * heap) * heap) * int

val g11_example2923 : (((bool * heap) * heap) * heap) * int

val g11_example2924 : (((bool * heap) * heap) * heap) * int

val g11_example2925 : (((bool * heap) * heap) * heap) * int

val g11_example2926 : (((bool * heap) * heap) * heap) * int

val g11_example2927 : (((bool * heap) * heap) * heap) * int

val g11_example2928 : (((bool * heap) * heap) * heap) * int

val g11_example2929 : (((bool * heap) * heap) * heap) * int

val g11_example2930 : (((bool * heap) * heap) * heap) * int

val g11_example2931 : (((bool * heap) * heap) * heap) * int

val g11_example2932 : (((bool * heap) * heap) * heap) * int

val g11_example2933 : (((bool * heap) * heap) * heap) * int

val g11_example2934 : (((bool * heap) * heap) * heap) * int

val g11_example2935 : (((bool * heap) * heap) * heap) * int

val g11_example2936 : (((bool * heap) * heap) * heap) * int

val g11_example2937 : (((bool * heap) * heap) * heap) * int

val g11_example2938 : (((bool * heap) * heap) * heap) * int

val g11_example2939 : (((bool * heap) * heap) * heap) * int

val g11_example2940 : (((bool * heap) * heap) * heap) * int

val g11_example2941 : (((bool * heap) * heap) * heap) * int

val g11_example2942 : (((bool * heap) * heap) * heap) * int

val g11_example2943 : (((bool * heap) * heap) * heap) * int

val g11_example2944 : (((bool * heap) * heap) * heap) * int

val g11_example2945 : (((bool * heap) * heap) * heap) * int

val g11_example2946 : (((bool * heap) * heap) * heap) * int

val g11_example2947 : (((bool * heap) * heap) * heap) * int

val g11_example2948 : (((bool * heap) * heap) * heap) * int

val g11_example2949 : (((bool * heap) * heap) * heap) * int

val g11_example2950 : (((bool * heap) * heap) * heap) * int

val g11_example2951 : (((bool * heap) * heap) * heap) * int

val g11_example2952 : (((bool * heap) * heap) * heap) * int

val g11_example2953 : (((bool * heap) * heap) * heap) * int

val g11_example2954 : (((bool * heap) * heap) * heap) * int

val g11_example2955 : (((bool * heap) * heap) * heap) * int

val g11_example2956 : (((bool * heap) * heap) * heap) * int

val g11_example2957 : (((bool * heap) * heap) * heap) * int

val g11_example2958 : (((bool * heap) * heap) * heap) * int

val g11_example2959 : (((bool * heap) * heap) * heap) * int

val g11_example2960 : (((bool * heap) * heap) * heap) * int

val g11_example2961 : (((bool * heap) * heap) * heap) * int

val g11_example2962 : (((bool * heap) * heap) * heap) * int

val g11_example2963 : (((bool * heap) * heap) * heap) * int

val g11_example2964 : (((bool * heap) * heap) * heap) * int

val g11_example2965 : (((bool * heap) * heap) * heap) * int

val g11_example2966 : (((bool * heap) * heap) * heap) * int

val g11_example2967 : (((bool * heap) * heap) * heap) * int

val g11_example2968 : (((bool * heap) * heap) * heap) * int

val g11_example2969 : (((bool * heap) * heap) * heap) * int

val g11_example2970 : (((bool * heap) * heap) * heap) * int

val g11_example2971 : (((bool * heap) * heap) * heap) * int

val g11_example2972 : (((bool * heap) * heap) * heap) * int

val g11_example2973 : (((bool * heap) * heap) * heap) * int

val g11_example2974 : (((bool * heap) * heap) * heap) * int

val g11_example2975 : (((bool * heap) * heap) * heap) * int

val g11_example2976 : (((bool * heap) * heap) * heap) * int

val g11_example2977 : (((bool * heap) * heap) * heap) * int

val g11_example2978 : (((bool * heap) * heap) * heap) * int

val g11_example2979 : (((bool * heap) * heap) * heap) * int

val g11_example2980 : (((bool * heap) * heap) * heap) * int

val g11_example2981 : (((bool * heap) * heap) * heap) * int

val g11_example2982 : (((bool * heap) * heap) * heap) * int

val g11_example2983 : (((bool * heap) * heap) * heap) * int

val g11_example2984 : (((bool * heap) * heap) * heap) * int

val g11_example2985 : (((bool * heap) * heap) * heap) * int

val g11_example2986 : (((bool * heap) * heap) * heap) * int

val g11_example2987 : (((bool * heap) * heap) * heap) * int

val g11_example2988 : (((bool * heap) * heap) * heap) * int

val g11_example2989 : (((bool * heap) * heap) * heap) * int

val g11_example2990 : (((bool * heap) * heap) * heap) * int

val g11_example2991 : (((bool * heap) * heap) * heap) * int

val g11_example2992 : (((bool * heap) * heap) * heap) * int

val g11_example2993 : (((bool * heap) * heap) * heap) * int

val g11_example2994 : (((bool * heap) * heap) * heap) * int

val g11_example2995 : (((bool * heap) * heap) * heap) * int

val g11_example2996 : (((bool * heap) * heap) * heap) * int

val g11_example2997 : (((bool * heap) * heap) * heap) * int

val g11_example2998 : (((bool * heap) * heap) * heap) * int

val g11_example2999 : (((bool * heap) * heap) * heap) * int

val g11_example3000 : (((bool * heap) * heap) * heap) * int

val g11_example3001 : (((bool * heap) * heap) * heap) * int

val g11_example3002 : (((bool * heap) * heap) * heap) * int

val g11_example3003 : (((bool * heap) * heap) * heap) * int

val g11_example3004 : (((bool * heap) * heap) * heap) * int

val g11_example3005 : (((bool * heap) * heap) * heap) * int

val g11_example3006 : (((bool * heap) * heap) * heap) * int

val g11_example3007 : (((bool * heap) * heap) * heap) * int

val g11_example3008 : (((bool * heap) * heap) * heap) * int

val g11_example3009 : (((bool * heap) * heap) * heap) * int

val g11_example3010 : (((bool * heap) * heap) * heap) * int

val g11_example3011 : (((bool * heap) * heap) * heap) * int

val g11_example3012 : (((bool * heap) * heap) * heap) * int

val g11_example3013 : (((bool * heap) * heap) * heap) * int

val g11_example3014 : (((bool * heap) * heap) * heap) * int

val g11_example3015 : (((bool * heap) * heap) * heap) * int

val g11_example3016 : (((bool * heap) * heap) * heap) * int

val g11_example3017 : (((bool * heap) * heap) * heap) * int

val g11_example3018 : (((bool * heap) * heap) * heap) * int

val g11_example3019 : (((bool * heap) * heap) * heap) * int

val g11_example3020 : (((bool * heap) * heap) * heap) * int

val g11_example3021 : (((bool * heap) * heap) * heap) * int

val g11_example3022 : (((bool * heap) * heap) * heap) * int

val g11_example3023 : (((bool * heap) * heap) * heap) * int

val g11_example3024 : (((bool * heap) * heap) * heap) * int

val g11_example3025 : (((bool * heap) * heap) * heap) * int

val g11_example3026 : (((bool * heap) * heap) * heap) * int

val g11_example3027 : (((bool * heap) * heap) * heap) * int

val g11_example3028 : (((bool * heap) * heap) * heap) * int

val g11_example3029 : (((bool * heap) * heap) * heap) * int

val g11_example3030 : (((bool * heap) * heap) * heap) * int

val g11_example3031 : (((bool * heap) * heap) * heap) * int

val g11_example3032 : (((bool * heap) * heap) * heap) * int

val g11_example3033 : (((bool * heap) * heap) * heap) * int

val g11_example3034 : (((bool * heap) * heap) * heap) * int

val g11_example3035 : (((bool * heap) * heap) * heap) * int

val g11_example3036 : (((bool * heap) * heap) * heap) * int

val g11_example3037 : (((bool * heap) * heap) * heap) * int

val g11_example3038 : (((bool * heap) * heap) * heap) * int

val g11_example3039 : (((bool * heap) * heap) * heap) * int

val g11_example3040 : (((bool * heap) * heap) * heap) * int

val g11_example3041 : (((bool * heap) * heap) * heap) * int

val g11_example3042 : (((bool * heap) * heap) * heap) * int

val g11_example3043 : (((bool * heap) * heap) * heap) * int

val g11_example3044 : (((bool * heap) * heap) * heap) * int

val g11_example3045 : (((bool * heap) * heap) * heap) * int

val g11_example3046 : (((bool * heap) * heap) * heap) * int

val g11_example3047 : (((bool * heap) * heap) * heap) * int

val g11_example3048 : (((bool * heap) * heap) * heap) * int

val g11_example3049 : (((bool * heap) * heap) * heap) * int

val g11_example3050 : (((bool * heap) * heap) * heap) * int

val g11_example3051 : (((bool * heap) * heap) * heap) * int

val g11_example3052 : (((bool * heap) * heap) * heap) * int

val g11_example3053 : (((bool * heap) * heap) * heap) * int

val g11_example3054 : (((bool * heap) * heap) * heap) * int

val g11_example3055 : (((bool * heap) * heap) * heap) * int

val g11_example3056 : (((bool * heap) * heap) * heap) * int

val g11_example3057 : (((bool * heap) * heap) * heap) * int

val g11_example3058 : (((bool * heap) * heap) * heap) * int

val g11_example3059 : (((bool * heap) * heap) * heap) * int

val g11_example3060 : (((bool * heap) * heap) * heap) * int

val g11_example3061 : (((bool * heap) * heap) * heap) * int

val g11_example3062 : (((bool * heap) * heap) * heap) * int

val g11_example3063 : (((bool * heap) * heap) * heap) * int

val g11_example3064 : (((bool * heap) * heap) * heap) * int

val g11_example3065 : (((bool * heap) * heap) * heap) * int

val g11_example3066 : (((bool * heap) * heap) * heap) * int

val g11_example3067 : (((bool * heap) * heap) * heap) * int

val g11_example3068 : (((bool * heap) * heap) * heap) * int

val g11_example3069 : (((bool * heap) * heap) * heap) * int

val g11_example3070 : (((bool * heap) * heap) * heap) * int

val g11_example3071 : (((bool * heap) * heap) * heap) * int

val g11_example3072 : (((bool * heap) * heap) * heap) * int

val g11_example3073 : (((bool * heap) * heap) * heap) * int

val g11_example3074 : (((bool * heap) * heap) * heap) * int

val g11_example3075 : (((bool * heap) * heap) * heap) * int

val g11_example3076 : (((bool * heap) * heap) * heap) * int

val g11_example3077 : (((bool * heap) * heap) * heap) * int

val g11_example3078 : (((bool * heap) * heap) * heap) * int

val g11_example3079 : (((bool * heap) * heap) * heap) * int

val g11_example3080 : (((bool * heap) * heap) * heap) * int

val g11_example3081 : (((bool * heap) * heap) * heap) * int

val g11_example3082 : (((bool * heap) * heap) * heap) * int

val g11_example3083 : (((bool * heap) * heap) * heap) * int

val g11_example3084 : (((bool * heap) * heap) * heap) * int

val g11_example3085 : (((bool * heap) * heap) * heap) * int

val g11_example3086 : (((bool * heap) * heap) * heap) * int

val g11_example3087 : (((bool * heap) * heap) * heap) * int

val g11_example3088 : (((bool * heap) * heap) * heap) * int

val g11_example3089 : (((bool * heap) * heap) * heap) * int

val g11_example3090 : (((bool * heap) * heap) * heap) * int

val g11_example3091 : (((bool * heap) * heap) * heap) * int

val g11_example3092 : (((bool * heap) * heap) * heap) * int

val g11_example3093 : (((bool * heap) * heap) * heap) * int

val g11_example3094 : (((bool * heap) * heap) * heap) * int

val g11_example3095 : (((bool * heap) * heap) * heap) * int

val g11_example3096 : (((bool * heap) * heap) * heap) * int

val g11_example3097 : (((bool * heap) * heap) * heap) * int

val g11_example3098 : (((bool * heap) * heap) * heap) * int

val g11_example3099 : (((bool * heap) * heap) * heap) * int

val g11_example3100 : (((bool * heap) * heap) * heap) * int

val g11_example3101 : (((bool * heap) * heap) * heap) * int

val g11_example3102 : (((bool * heap) * heap) * heap) * int

val g11_example3103 : (((bool * heap) * heap) * heap) * int

val g11_example3104 : (((bool * heap) * heap) * heap) * int

val g11_example3105 : (((bool * heap) * heap) * heap) * int

val g11_example3106 : (((bool * heap) * heap) * heap) * int

val g11_example3107 : (((bool * heap) * heap) * heap) * int

val g11_example3108 : (((bool * heap) * heap) * heap) * int

val g11_example3109 : (((bool * heap) * heap) * heap) * int

val g11_example3110 : (((bool * heap) * heap) * heap) * int

val g11_example3111 : (((bool * heap) * heap) * heap) * int

val g11_example3112 : (((bool * heap) * heap) * heap) * int

val g11_example3113 : (((bool * heap) * heap) * heap) * int

val g11_example3114 : (((bool * heap) * heap) * heap) * int

val g11_example3115 : (((bool * heap) * heap) * heap) * int

val g11_example3116 : (((bool * heap) * heap) * heap) * int

val g11_example3117 : (((bool * heap) * heap) * heap) * int

val g11_example3118 : (((bool * heap) * heap) * heap) * int

val g11_example3119 : (((bool * heap) * heap) * heap) * int

val g11_example3120 : (((bool * heap) * heap) * heap) * int

val g11_example3121 : (((bool * heap) * heap) * heap) * int

val g11_example3122 : (((bool * heap) * heap) * heap) * int

val g11_example3123 : (((bool * heap) * heap) * heap) * int

val g11_example3124 : (((bool * heap) * heap) * heap) * int

val g11_example3125 : (((bool * heap) * heap) * heap) * int

val g11_example3126 : (((bool * heap) * heap) * heap) * int

val g11_example3127 : (((bool * heap) * heap) * heap) * int

val g11_example3128 : (((bool * heap) * heap) * heap) * int

val g11_example3129 : (((bool * heap) * heap) * heap) * int

val g11_example3130 : (((bool * heap) * heap) * heap) * int

val g11_example3131 : (((bool * heap) * heap) * heap) * int

val g11_example3132 : (((bool * heap) * heap) * heap) * int

val g11_example3133 : (((bool * heap) * heap) * heap) * int

val g11_example3134 : (((bool * heap) * heap) * heap) * int

val g11_example3135 : (((bool * heap) * heap) * heap) * int

val g11_example3136 : (((bool * heap) * heap) * heap) * int

val g11_example3137 : (((bool * heap) * heap) * heap) * int

val g11_example3138 : (((bool * heap) * heap) * heap) * int

val g11_example3139 : (((bool * heap) * heap) * heap) * int

val g11_example3140 : (((bool * heap) * heap) * heap) * int

val g11_example3141 : (((bool * heap) * heap) * heap) * int

val g11_example3142 : (((bool * heap) * heap) * heap) * int

val g11_example3143 : (((bool * heap) * heap) * heap) * int

val g11_example3144 : (((bool * heap) * heap) * heap) * int

val g11_example3145 : (((bool * heap) * heap) * heap) * int

val g11_example3146 : (((bool * heap) * heap) * heap) * int

val g11_example3147 : (((bool * heap) * heap) * heap) * int

val g11_example3148 : (((bool * heap) * heap) * heap) * int

val g11_example3149 : (((bool * heap) * heap) * heap) * int

val g11_example3150 : (((bool * heap) * heap) * heap) * int

val g11_example3151 : (((bool * heap) * heap) * heap) * int

val g11_example3152 : (((bool * heap) * heap) * heap) * int

val g11_example3153 : (((bool * heap) * heap) * heap) * int

val g11_example3154 : (((bool * heap) * heap) * heap) * int

val g11_example3155 : (((bool * heap) * heap) * heap) * int

val g11_example3156 : (((bool * heap) * heap) * heap) * int

val g11_example3157 : (((bool * heap) * heap) * heap) * int

val g11_example3158 : (((bool * heap) * heap) * heap) * int

val g11_example3159 : (((bool * heap) * heap) * heap) * int

val g11_example3160 : (((bool * heap) * heap) * heap) * int

val g11_example3161 : (((bool * heap) * heap) * heap) * int

val g11_example3162 : (((bool * heap) * heap) * heap) * int

val g11_example3163 : (((bool * heap) * heap) * heap) * int

val g11_example3164 : (((bool * heap) * heap) * heap) * int

val g11_example3165 : (((bool * heap) * heap) * heap) * int

val g11_example3166 : (((bool * heap) * heap) * heap) * int

val g11_example3167 : (((bool * heap) * heap) * heap) * int

val g11_example3168 : (((bool * heap) * heap) * heap) * int

val g11_example3169 : (((bool * heap) * heap) * heap) * int

val g11_example3170 : (((bool * heap) * heap) * heap) * int

val g11_example3171 : (((bool * heap) * heap) * heap) * int

val g11_example3172 : (((bool * heap) * heap) * heap) * int

val g11_example3173 : (((bool * heap) * heap) * heap) * int

val g11_example3174 : (((bool * heap) * heap) * heap) * int

val g11_example3175 : (((bool * heap) * heap) * heap) * int

val g11_example3176 : (((bool * heap) * heap) * heap) * int

val g11_example3177 : (((bool * heap) * heap) * heap) * int

val g11_example3178 : (((bool * heap) * heap) * heap) * int

val g11_example3179 : (((bool * heap) * heap) * heap) * int

val g11_example3180 : (((bool * heap) * heap) * heap) * int

val g11_example3181 : (((bool * heap) * heap) * heap) * int

val g11_example3182 : (((bool * heap) * heap) * heap) * int

val g11_example3183 : (((bool * heap) * heap) * heap) * int

val g11_example3184 : (((bool * heap) * heap) * heap) * int

val g11_example3185 : (((bool * heap) * heap) * heap) * int

val g11_example3186 : (((bool * heap) * heap) * heap) * int

val g11_example3187 : (((bool * heap) * heap) * heap) * int

val g11_example3188 : (((bool * heap) * heap) * heap) * int

val g11_example3189 : (((bool * heap) * heap) * heap) * int

val g11_example3190 : (((bool * heap) * heap) * heap) * int

val g11_example3191 : (((bool * heap) * heap) * heap) * int

val g11_example3192 : (((bool * heap) * heap) * heap) * int

val g11_example3193 : (((bool * heap) * heap) * heap) * int

val g11_example3194 : (((bool * heap) * heap) * heap) * int

val g11_example3195 : (((bool * heap) * heap) * heap) * int

val g11_example3196 : (((bool * heap) * heap) * heap) * int

val g11_example3197 : (((bool * heap) * heap) * heap) * int

val g11_example3198 : (((bool * heap) * heap) * heap) * int

val g11_example3199 : (((bool * heap) * heap) * heap) * int

val g11_example3200 : (((bool * heap) * heap) * heap) * int

val g11_example3201 : (((bool * heap) * heap) * heap) * int

val g11_example3202 : (((bool * heap) * heap) * heap) * int

val g11_example3203 : (((bool * heap) * heap) * heap) * int

val g11_example3204 : (((bool * heap) * heap) * heap) * int

val g11_example3205 : (((bool * heap) * heap) * heap) * int

val g11_example3206 : (((bool * heap) * heap) * heap) * int

val g11_example3207 : (((bool * heap) * heap) * heap) * int

val g11_example3208 : (((bool * heap) * heap) * heap) * int

val g11_example3209 : (((bool * heap) * heap) * heap) * int

val g11_example3210 : (((bool * heap) * heap) * heap) * int

val g11_example3211 : (((bool * heap) * heap) * heap) * int

val g11_example3212 : (((bool * heap) * heap) * heap) * int

val g11_example3213 : (((bool * heap) * heap) * heap) * int

val g11_example3214 : (((bool * heap) * heap) * heap) * int

val g11_example3215 : (((bool * heap) * heap) * heap) * int

val g11_example3216 : (((bool * heap) * heap) * heap) * int

val g11_example3217 : (((bool * heap) * heap) * heap) * int

val g11_example3218 : (((bool * heap) * heap) * heap) * int

val g11_example3219 : (((bool * heap) * heap) * heap) * int

val g11_example3220 : (((bool * heap) * heap) * heap) * int

val g11_example3221 : (((bool * heap) * heap) * heap) * int

val g11_example3222 : (((bool * heap) * heap) * heap) * int

val g11_example3223 : (((bool * heap) * heap) * heap) * int

val g11_example3224 : (((bool * heap) * heap) * heap) * int

val g11_example3225 : (((bool * heap) * heap) * heap) * int

val g11_example3226 : (((bool * heap) * heap) * heap) * int

val g11_example3227 : (((bool * heap) * heap) * heap) * int

val g11_example3228 : (((bool * heap) * heap) * heap) * int

val g11_example3229 : (((bool * heap) * heap) * heap) * int

val g11_example3230 : (((bool * heap) * heap) * heap) * int

val g11_example3231 : (((bool * heap) * heap) * heap) * int

val g11_example3232 : (((bool * heap) * heap) * heap) * int

val g11_example3233 : (((bool * heap) * heap) * heap) * int

val g11_example3234 : (((bool * heap) * heap) * heap) * int

val g11_example3235 : (((bool * heap) * heap) * heap) * int

val g11_example3236 : (((bool * heap) * heap) * heap) * int

val g11_example3237 : (((bool * heap) * heap) * heap) * int

val g11_example3238 : (((bool * heap) * heap) * heap) * int

val g11_example3239 : (((bool * heap) * heap) * heap) * int

val g11_example3240 : (((bool * heap) * heap) * heap) * int

val g11_example3241 : (((bool * heap) * heap) * heap) * int

val g11_example3242 : (((bool * heap) * heap) * heap) * int

val g11_example3243 : (((bool * heap) * heap) * heap) * int

val g11_example3244 : (((bool * heap) * heap) * heap) * int

val g11_example3245 : (((bool * heap) * heap) * heap) * int

val g11_example3246 : (((bool * heap) * heap) * heap) * int

val g11_example3247 : (((bool * heap) * heap) * heap) * int

val g11_example3248 : (((bool * heap) * heap) * heap) * int

val g11_example3249 : (((bool * heap) * heap) * heap) * int

val g11_example3250 : (((bool * heap) * heap) * heap) * int

val g11_example3251 : (((bool * heap) * heap) * heap) * int

val g11_example3252 : (((bool * heap) * heap) * heap) * int

val g11_example3253 : (((bool * heap) * heap) * heap) * int

val g11_example3254 : (((bool * heap) * heap) * heap) * int

val g11_example3255 : (((bool * heap) * heap) * heap) * int

val g11_example3256 : (((bool * heap) * heap) * heap) * int

val g11_example3257 : (((bool * heap) * heap) * heap) * int

val g11_example3258 : (((bool * heap) * heap) * heap) * int

val g11_example3259 : (((bool * heap) * heap) * heap) * int

val g11_example3260 : (((bool * heap) * heap) * heap) * int

val g11_example3261 : (((bool * heap) * heap) * heap) * int

val g11_example3262 : (((bool * heap) * heap) * heap) * int

val g11_example3263 : (((bool * heap) * heap) * heap) * int

val g11_example3264 : (((bool * heap) * heap) * heap) * int

val g11_example3265 : (((bool * heap) * heap) * heap) * int

val g11_example3266 : (((bool * heap) * heap) * heap) * int

val g11_example3267 : (((bool * heap) * heap) * heap) * int

val g11_example3268 : (((bool * heap) * heap) * heap) * int

val g11_example3269 : (((bool * heap) * heap) * heap) * int

val g11_example3270 : (((bool * heap) * heap) * heap) * int

val g11_example3271 : (((bool * heap) * heap) * heap) * int

val g11_example3272 : (((bool * heap) * heap) * heap) * int

val g11_example3273 : (((bool * heap) * heap) * heap) * int

val g11_example3274 : (((bool * heap) * heap) * heap) * int

val g11_example3275 : (((bool * heap) * heap) * heap) * int

val g11_example3276 : (((bool * heap) * heap) * heap) * int

val g11_example3277 : (((bool * heap) * heap) * heap) * int

val g11_example3278 : (((bool * heap) * heap) * heap) * int

val g11_example3279 : (((bool * heap) * heap) * heap) * int

val g11_example3280 : (((bool * heap) * heap) * heap) * int

val g11_example3281 : (((bool * heap) * heap) * heap) * int

val g11_example3282 : (((bool * heap) * heap) * heap) * int

val g11_example3283 : (((bool * heap) * heap) * heap) * int

val g11_example3284 : (((bool * heap) * heap) * heap) * int

val g11_example3285 : (((bool * heap) * heap) * heap) * int

val g11_example3286 : (((bool * heap) * heap) * heap) * int

val g11_example3287 : (((bool * heap) * heap) * heap) * int

val g11_example3288 : (((bool * heap) * heap) * heap) * int

val g11_example3289 : (((bool * heap) * heap) * heap) * int

val g11_example3290 : (((bool * heap) * heap) * heap) * int

val g11_example3291 : (((bool * heap) * heap) * heap) * int

val g11_example3292 : (((bool * heap) * heap) * heap) * int

val g11_example3293 : (((bool * heap) * heap) * heap) * int

val g11_example3294 : (((bool * heap) * heap) * heap) * int

val g11_example3295 : (((bool * heap) * heap) * heap) * int

val g11_example3296 : (((bool * heap) * heap) * heap) * int

val g11_example3297 : (((bool * heap) * heap) * heap) * int

val g11_example3298 : (((bool * heap) * heap) * heap) * int

val g11_example3299 : (((bool * heap) * heap) * heap) * int

val g11_example3300 : (((bool * heap) * heap) * heap) * int

val g11_example3301 : (((bool * heap) * heap) * heap) * int

val g11_example3302 : (((bool * heap) * heap) * heap) * int

val g11_example3303 : (((bool * heap) * heap) * heap) * int

val g11_example3304 : (((bool * heap) * heap) * heap) * int

val g11_example3305 : (((bool * heap) * heap) * heap) * int

val g11_example3306 : (((bool * heap) * heap) * heap) * int

val g11_example3307 : (((bool * heap) * heap) * heap) * int

val g11_example3308 : (((bool * heap) * heap) * heap) * int

val g11_example3309 : (((bool * heap) * heap) * heap) * int

val g11_example3310 : (((bool * heap) * heap) * heap) * int

val g11_example3311 : (((bool * heap) * heap) * heap) * int

val g11_example3312 : (((bool * heap) * heap) * heap) * int

val g11_example3313 : (((bool * heap) * heap) * heap) * int

val g11_example3314 : (((bool * heap) * heap) * heap) * int

val g11_example3315 : (((bool * heap) * heap) * heap) * int

val g11_example3316 : (((bool * heap) * heap) * heap) * int

val g11_example3317 : (((bool * heap) * heap) * heap) * int

val g11_example3318 : (((bool * heap) * heap) * heap) * int

val g11_example3319 : (((bool * heap) * heap) * heap) * int

val g11_example3320 : (((bool * heap) * heap) * heap) * int

val g11_example3321 : (((bool * heap) * heap) * heap) * int

val g11_example3322 : (((bool * heap) * heap) * heap) * int

val g11_example3323 : (((bool * heap) * heap) * heap) * int

val g11_example3324 : (((bool * heap) * heap) * heap) * int

val g11_example3325 : (((bool * heap) * heap) * heap) * int

val g11_example3326 : (((bool * heap) * heap) * heap) * int

val g11_example3327 : (((bool * heap) * heap) * heap) * int

val g11_example3328 : (((bool * heap) * heap) * heap) * int

val g11_example3329 : (((bool * heap) * heap) * heap) * int

val g11_example3330 : (((bool * heap) * heap) * heap) * int

val g11_example3331 : (((bool * heap) * heap) * heap) * int

val g11_example3332 : (((bool * heap) * heap) * heap) * int

val g11_example3333 : (((bool * heap) * heap) * heap) * int

val g11_example3334 : (((bool * heap) * heap) * heap) * int

val g11_example3335 : (((bool * heap) * heap) * heap) * int

val g11_example3336 : (((bool * heap) * heap) * heap) * int

val g11_example3337 : (((bool * heap) * heap) * heap) * int

val g11_example3338 : (((bool * heap) * heap) * heap) * int

val g11_example3339 : (((bool * heap) * heap) * heap) * int

val g11_example3340 : (((bool * heap) * heap) * heap) * int

val g11_example3341 : (((bool * heap) * heap) * heap) * int

val g11_example3342 : (((bool * heap) * heap) * heap) * int

val g11_example3343 : (((bool * heap) * heap) * heap) * int

val g11_example3344 : (((bool * heap) * heap) * heap) * int

val g11_example3345 : (((bool * heap) * heap) * heap) * int

val g11_example3346 : (((bool * heap) * heap) * heap) * int

val g11_example3347 : (((bool * heap) * heap) * heap) * int

val g11_example3348 : (((bool * heap) * heap) * heap) * int

val g11_example3349 : (((bool * heap) * heap) * heap) * int

val g11_example3350 : (((bool * heap) * heap) * heap) * int

val g11_example3351 : (((bool * heap) * heap) * heap) * int

val g11_example3352 : (((bool * heap) * heap) * heap) * int

val g11_example3353 : (((bool * heap) * heap) * heap) * int

val g11_example3354 : (((bool * heap) * heap) * heap) * int

val g11_example3355 : (((bool * heap) * heap) * heap) * int

val g11_example3356 : (((bool * heap) * heap) * heap) * int

val g11_example3357 : (((bool * heap) * heap) * heap) * int

val g11_example3358 : (((bool * heap) * heap) * heap) * int

val g11_example3359 : (((bool * heap) * heap) * heap) * int

val g11_example3360 : (((bool * heap) * heap) * heap) * int

val g11_example3361 : (((bool * heap) * heap) * heap) * int

val g11_example3362 : (((bool * heap) * heap) * heap) * int

val g11_example3363 : (((bool * heap) * heap) * heap) * int

val g11_example3364 : (((bool * heap) * heap) * heap) * int

val g11_example3365 : (((bool * heap) * heap) * heap) * int

val g11_example3366 : (((bool * heap) * heap) * heap) * int

val g11_example3367 : (((bool * heap) * heap) * heap) * int

val g11_example3368 : (((bool * heap) * heap) * heap) * int

val g11_example3369 : (((bool * heap) * heap) * heap) * int

val g11_example3370 : (((bool * heap) * heap) * heap) * int

val g11_example3371 : (((bool * heap) * heap) * heap) * int

val g11_example3372 : (((bool * heap) * heap) * heap) * int

val g11_example3373 : (((bool * heap) * heap) * heap) * int

val g11_example3374 : (((bool * heap) * heap) * heap) * int

val g11_example3375 : (((bool * heap) * heap) * heap) * int

val g11_example3376 : (((bool * heap) * heap) * heap) * int

val g11_example3377 : (((bool * heap) * heap) * heap) * int

val g11_example3378 : (((bool * heap) * heap) * heap) * int

val g11_example3379 : (((bool * heap) * heap) * heap) * int

val g11_example3380 : (((bool * heap) * heap) * heap) * int

val g11_example3381 : (((bool * heap) * heap) * heap) * int

val g11_example3382 : (((bool * heap) * heap) * heap) * int

val g11_example3383 : (((bool * heap) * heap) * heap) * int

val g11_example3384 : (((bool * heap) * heap) * heap) * int

val g11_example3385 : (((bool * heap) * heap) * heap) * int

val g11_example3386 : (((bool * heap) * heap) * heap) * int

val g11_example3387 : (((bool * heap) * heap) * heap) * int

val g11_example3388 : (((bool * heap) * heap) * heap) * int

val g11_example3389 : (((bool * heap) * heap) * heap) * int

val g11_example3390 : (((bool * heap) * heap) * heap) * int

val g11_example3391 : (((bool * heap) * heap) * heap) * int

val g11_example3392 : (((bool * heap) * heap) * heap) * int

val g11_example3393 : (((bool * heap) * heap) * heap) * int

val g11_example3394 : (((bool * heap) * heap) * heap) * int

val g11_example3395 : (((bool * heap) * heap) * heap) * int

val g11_example3396 : (((bool * heap) * heap) * heap) * int

val g11_example3397 : (((bool * heap) * heap) * heap) * int

val g11_example3398 : (((bool * heap) * heap) * heap) * int

val g11_example3399 : (((bool * heap) * heap) * heap) * int

val g11_example3400 : (((bool * heap) * heap) * heap) * int

val g11_example3401 : (((bool * heap) * heap) * heap) * int

val g11_example3402 : (((bool * heap) * heap) * heap) * int

val g11_example3403 : (((bool * heap) * heap) * heap) * int

val g11_example3404 : (((bool * heap) * heap) * heap) * int

val g11_example3405 : (((bool * heap) * heap) * heap) * int

val g11_example3406 : (((bool * heap) * heap) * heap) * int

val g11_example3407 : (((bool * heap) * heap) * heap) * int

val g11_example3408 : (((bool * heap) * heap) * heap) * int

val g11_example3409 : (((bool * heap) * heap) * heap) * int

val g11_example3410 : (((bool * heap) * heap) * heap) * int

val g11_example3411 : (((bool * heap) * heap) * heap) * int

val g11_example3412 : (((bool * heap) * heap) * heap) * int

val g11_example3413 : (((bool * heap) * heap) * heap) * int

val g11_example3414 : (((bool * heap) * heap) * heap) * int

val g11_example3415 : (((bool * heap) * heap) * heap) * int

val g11_example3416 : (((bool * heap) * heap) * heap) * int

val g11_example3417 : (((bool * heap) * heap) * heap) * int

val g11_example3418 : (((bool * heap) * heap) * heap) * int

val g11_example3419 : (((bool * heap) * heap) * heap) * int

val g11_example3420 : (((bool * heap) * heap) * heap) * int

val g11_example3421 : (((bool * heap) * heap) * heap) * int

val g11_example3422 : (((bool * heap) * heap) * heap) * int

val g11_example3423 : (((bool * heap) * heap) * heap) * int

val g11_example3424 : (((bool * heap) * heap) * heap) * int

val g11_example3425 : (((bool * heap) * heap) * heap) * int

val g11_example3426 : (((bool * heap) * heap) * heap) * int

val g11_example3427 : (((bool * heap) * heap) * heap) * int

val g11_example3428 : (((bool * heap) * heap) * heap) * int

val g11_example3429 : (((bool * heap) * heap) * heap) * int

val g11_example3430 : (((bool * heap) * heap) * heap) * int

val g11_example3431 : (((bool * heap) * heap) * heap) * int

val g11_example3432 : (((bool * heap) * heap) * heap) * int

val g11_example3433 : (((bool * heap) * heap) * heap) * int

val g11_example3434 : (((bool * heap) * heap) * heap) * int

val g11_example3435 : (((bool * heap) * heap) * heap) * int

val g11_example3436 : (((bool * heap) * heap) * heap) * int

val g11_example3437 : (((bool * heap) * heap) * heap) * int

val g11_example3438 : (((bool * heap) * heap) * heap) * int

val g11_example3439 : (((bool * heap) * heap) * heap) * int

val g11_example3440 : (((bool * heap) * heap) * heap) * int

val g11_example3441 : (((bool * heap) * heap) * heap) * int

val g11_example3442 : (((bool * heap) * heap) * heap) * int

val g11_example3443 : (((bool * heap) * heap) * heap) * int

val g11_example3444 : (((bool * heap) * heap) * heap) * int

val g11_example3445 : (((bool * heap) * heap) * heap) * int

val g11_example3446 : (((bool * heap) * heap) * heap) * int

val g11_example3447 : (((bool * heap) * heap) * heap) * int

val g11_example3448 : (((bool * heap) * heap) * heap) * int

val g11_example3449 : (((bool * heap) * heap) * heap) * int

val g11_example3450 : (((bool * heap) * heap) * heap) * int

val g11_example3451 : (((bool * heap) * heap) * heap) * int

val g11_example3452 : (((bool * heap) * heap) * heap) * int

val g11_example3453 : (((bool * heap) * heap) * heap) * int

val g11_example3454 : (((bool * heap) * heap) * heap) * int

val g11_example3455 : (((bool * heap) * heap) * heap) * int

val g11_example3456 : (((bool * heap) * heap) * heap) * int

val g11_example3457 : (((bool * heap) * heap) * heap) * int

val g11_example3458 : (((bool * heap) * heap) * heap) * int

val g11_example3459 : (((bool * heap) * heap) * heap) * int

val g11_example3460 : (((bool * heap) * heap) * heap) * int

val g11_example3461 : (((bool * heap) * heap) * heap) * int

val g11_example3462 : (((bool * heap) * heap) * heap) * int

val g11_example3463 : (((bool * heap) * heap) * heap) * int

val g11_example3464 : (((bool * heap) * heap) * heap) * int

val g11_example3465 : (((bool * heap) * heap) * heap) * int

val g11_example3466 : (((bool * heap) * heap) * heap) * int

val g11_example3467 : (((bool * heap) * heap) * heap) * int

val g11_example3468 : (((bool * heap) * heap) * heap) * int

val g11_example3469 : (((bool * heap) * heap) * heap) * int

val g11_example3470 : (((bool * heap) * heap) * heap) * int

val g11_example3471 : (((bool * heap) * heap) * heap) * int

val g11_example3472 : (((bool * heap) * heap) * heap) * int

val g11_example3473 : (((bool * heap) * heap) * heap) * int

val g11_example3474 : (((bool * heap) * heap) * heap) * int

val g11_example3475 : (((bool * heap) * heap) * heap) * int

val g11_example3476 : (((bool * heap) * heap) * heap) * int

val g11_example3477 : (((bool * heap) * heap) * heap) * int

val g11_example3478 : (((bool * heap) * heap) * heap) * int

val g11_example3479 : (((bool * heap) * heap) * heap) * int

val g11_example3480 : (((bool * heap) * heap) * heap) * int

val g11_example3481 : (((bool * heap) * heap) * heap) * int

val g11_example3482 : (((bool * heap) * heap) * heap) * int

val g11_example3483 : (((bool * heap) * heap) * heap) * int

val g11_example3484 : (((bool * heap) * heap) * heap) * int

val g11_example3485 : (((bool * heap) * heap) * heap) * int

val g11_example3486 : (((bool * heap) * heap) * heap) * int

val g11_example3487 : (((bool * heap) * heap) * heap) * int

val g11_example3488 : (((bool * heap) * heap) * heap) * int

val g11_example3489 : (((bool * heap) * heap) * heap) * int

val g11_example3490 : (((bool * heap) * heap) * heap) * int

val g11_example3491 : (((bool * heap) * heap) * heap) * int

val g11_example3492 : (((bool * heap) * heap) * heap) * int

val g11_example3493 : (((bool * heap) * heap) * heap) * int

val g11_example3494 : (((bool * heap) * heap) * heap) * int

val g11_example3495 : (((bool * heap) * heap) * heap) * int

val g11_example3496 : (((bool * heap) * heap) * heap) * int

val g11_example3497 : (((bool * heap) * heap) * heap) * int

val g11_example3498 : (((bool * heap) * heap) * heap) * int

val g11_example3499 : (((bool * heap) * heap) * heap) * int

val g11_example3500 : (((bool * heap) * heap) * heap) * int

val g11_example3501 : (((bool * heap) * heap) * heap) * int

val g11_example3502 : (((bool * heap) * heap) * heap) * int

val g11_example3503 : (((bool * heap) * heap) * heap) * int

val g11_example3504 : (((bool * heap) * heap) * heap) * int

val g11_example3505 : (((bool * heap) * heap) * heap) * int

val g11_example3506 : (((bool * heap) * heap) * heap) * int

val g11_example3507 : (((bool * heap) * heap) * heap) * int

val g11_example3508 : (((bool * heap) * heap) * heap) * int

val g11_example3509 : (((bool * heap) * heap) * heap) * int

val g11_example3510 : (((bool * heap) * heap) * heap) * int

val g11_example3511 : (((bool * heap) * heap) * heap) * int

val g11_example3512 : (((bool * heap) * heap) * heap) * int

val g11_example3513 : (((bool * heap) * heap) * heap) * int

val g11_example3514 : (((bool * heap) * heap) * heap) * int

val g11_example3515 : (((bool * heap) * heap) * heap) * int

val g11_example3516 : (((bool * heap) * heap) * heap) * int

val g11_example3517 : (((bool * heap) * heap) * heap) * int

val g11_example3518 : (((bool * heap) * heap) * heap) * int

val g11_example3519 : (((bool * heap) * heap) * heap) * int

val g11_example3520 : (((bool * heap) * heap) * heap) * int

val g11_example3521 : (((bool * heap) * heap) * heap) * int

val g11_example3522 : (((bool * heap) * heap) * heap) * int

val g11_example3523 : (((bool * heap) * heap) * heap) * int

val g11_example3524 : (((bool * heap) * heap) * heap) * int

val g11_example3525 : (((bool * heap) * heap) * heap) * int

val g11_example3526 : (((bool * heap) * heap) * heap) * int

val g11_example3527 : (((bool * heap) * heap) * heap) * int

val g11_example3528 : (((bool * heap) * heap) * heap) * int

val g11_example3529 : (((bool * heap) * heap) * heap) * int

val g11_example3530 : (((bool * heap) * heap) * heap) * int

val g11_example3531 : (((bool * heap) * heap) * heap) * int

val g11_example3532 : (((bool * heap) * heap) * heap) * int

val g11_example3533 : (((bool * heap) * heap) * heap) * int

val g11_example3534 : (((bool * heap) * heap) * heap) * int

val g11_example3535 : (((bool * heap) * heap) * heap) * int

val g11_example3536 : (((bool * heap) * heap) * heap) * int

val g11_example3537 : (((bool * heap) * heap) * heap) * int

val g11_example3538 : (((bool * heap) * heap) * heap) * int

val g11_example3539 : (((bool * heap) * heap) * heap) * int

val g11_example3540 : (((bool * heap) * heap) * heap) * int

val g11_example3541 : (((bool * heap) * heap) * heap) * int

val g11_example3542 : (((bool * heap) * heap) * heap) * int

val g11_example3543 : (((bool * heap) * heap) * heap) * int

val g11_example3544 : (((bool * heap) * heap) * heap) * int

val g11_example3545 : (((bool * heap) * heap) * heap) * int

val g11_example3546 : (((bool * heap) * heap) * heap) * int

val g11_example3547 : (((bool * heap) * heap) * heap) * int

val g11_example3548 : (((bool * heap) * heap) * heap) * int

val g11_example3549 : (((bool * heap) * heap) * heap) * int

val g11_example3550 : (((bool * heap) * heap) * heap) * int

val g11_example3551 : (((bool * heap) * heap) * heap) * int

val g11_example3552 : (((bool * heap) * heap) * heap) * int

val g11_example3553 : (((bool * heap) * heap) * heap) * int

val g11_example3554 : (((bool * heap) * heap) * heap) * int

val g11_example3555 : (((bool * heap) * heap) * heap) * int

val g11_example3556 : (((bool * heap) * heap) * heap) * int

val g11_example3557 : (((bool * heap) * heap) * heap) * int

val g11_example3558 : (((bool * heap) * heap) * heap) * int

val g11_example3559 : (((bool * heap) * heap) * heap) * int

val g11_example3560 : (((bool * heap) * heap) * heap) * int

val g11_example3561 : (((bool * heap) * heap) * heap) * int

val g11_example3562 : (((bool * heap) * heap) * heap) * int

val g11_example3563 : (((bool * heap) * heap) * heap) * int

val g11_example3564 : (((bool * heap) * heap) * heap) * int

val g11_example3565 : (((bool * heap) * heap) * heap) * int

val g11_example3566 : (((bool * heap) * heap) * heap) * int

val g11_example3567 : (((bool * heap) * heap) * heap) * int

val g11_example3568 : (((bool * heap) * heap) * heap) * int

val g11_example3569 : (((bool * heap) * heap) * heap) * int

val g11_example3570 : (((bool * heap) * heap) * heap) * int

val g11_example3571 : (((bool * heap) * heap) * heap) * int

val g11_example3572 : (((bool * heap) * heap) * heap) * int

val g11_example3573 : (((bool * heap) * heap) * heap) * int

val g11_example3574 : (((bool * heap) * heap) * heap) * int

val g11_example3575 : (((bool * heap) * heap) * heap) * int

val g11_example3576 : (((bool * heap) * heap) * heap) * int

val g11_example3577 : (((bool * heap) * heap) * heap) * int

val g11_example3578 : (((bool * heap) * heap) * heap) * int

val g11_example3579 : (((bool * heap) * heap) * heap) * int

val g11_example3580 : (((bool * heap) * heap) * heap) * int

val g11_example3581 : (((bool * heap) * heap) * heap) * int

val g11_example3582 : (((bool * heap) * heap) * heap) * int

val g11_example3583 : (((bool * heap) * heap) * heap) * int

val g11_example3584 : (((bool * heap) * heap) * heap) * int

val g11_example3585 : (((bool * heap) * heap) * heap) * int

val g11_example3586 : (((bool * heap) * heap) * heap) * int

val g11_example3587 : (((bool * heap) * heap) * heap) * int

val g11_example3588 : (((bool * heap) * heap) * heap) * int

val g11_example3589 : (((bool * heap) * heap) * heap) * int

val g11_example3590 : (((bool * heap) * heap) * heap) * int

val g11_example3591 : (((bool * heap) * heap) * heap) * int

val g11_example3592 : (((bool * heap) * heap) * heap) * int

val g11_example3593 : (((bool * heap) * heap) * heap) * int

val g11_example3594 : (((bool * heap) * heap) * heap) * int

val g11_example3595 : (((bool * heap) * heap) * heap) * int

val g11_example3596 : (((bool * heap) * heap) * heap) * int

val g11_example3597 : (((bool * heap) * heap) * heap) * int

val g11_example3598 : (((bool * heap) * heap) * heap) * int

val g11_example3599 : (((bool * heap) * heap) * heap) * int

val g11_example3600 : (((bool * heap) * heap) * heap) * int

val g11_example3601 : (((bool * heap) * heap) * heap) * int

val g11_example3602 : (((bool * heap) * heap) * heap) * int

val g11_example3603 : (((bool * heap) * heap) * heap) * int

val g11_example3604 : (((bool * heap) * heap) * heap) * int

val g11_example3605 : (((bool * heap) * heap) * heap) * int

val g11_example3606 : (((bool * heap) * heap) * heap) * int

val g11_example3607 : (((bool * heap) * heap) * heap) * int

val g11_example3608 : (((bool * heap) * heap) * heap) * int

val g11_example3609 : (((bool * heap) * heap) * heap) * int

val g11_example3610 : (((bool * heap) * heap) * heap) * int

val g11_example3611 : (((bool * heap) * heap) * heap) * int

val g11_example3612 : (((bool * heap) * heap) * heap) * int

val g11_example3613 : (((bool * heap) * heap) * heap) * int

val g11_example3614 : (((bool * heap) * heap) * heap) * int

val g11_example3615 : (((bool * heap) * heap) * heap) * int

val g11_example3616 : (((bool * heap) * heap) * heap) * int

val g11_example3617 : (((bool * heap) * heap) * heap) * int

val g11_example3618 : (((bool * heap) * heap) * heap) * int

val g11_example3619 : (((bool * heap) * heap) * heap) * int

val g11_example3620 : (((bool * heap) * heap) * heap) * int

val g11_example3621 : (((bool * heap) * heap) * heap) * int

val g11_example3622 : (((bool * heap) * heap) * heap) * int

val g11_example3623 : (((bool * heap) * heap) * heap) * int

val g11_example3624 : (((bool * heap) * heap) * heap) * int

val g11_example3625 : (((bool * heap) * heap) * heap) * int

val g11_example3626 : (((bool * heap) * heap) * heap) * int

val g11_example3627 : (((bool * heap) * heap) * heap) * int

val g11_example3628 : (((bool * heap) * heap) * heap) * int

val g11_example3629 : (((bool * heap) * heap) * heap) * int

val g11_example3630 : (((bool * heap) * heap) * heap) * int

val g11_example3631 : (((bool * heap) * heap) * heap) * int

val g11_example3632 : (((bool * heap) * heap) * heap) * int

val g11_example3633 : (((bool * heap) * heap) * heap) * int

val g11_example3634 : (((bool * heap) * heap) * heap) * int

val g11_example3635 : (((bool * heap) * heap) * heap) * int

val g11_example3636 : (((bool * heap) * heap) * heap) * int

val g11_example3637 : (((bool * heap) * heap) * heap) * int

val g11_example3638 : (((bool * heap) * heap) * heap) * int

val g11_example3639 : (((bool * heap) * heap) * heap) * int

val g11_example3640 : (((bool * heap) * heap) * heap) * int

val g11_example3641 : (((bool * heap) * heap) * heap) * int

val g11_example3642 : (((bool * heap) * heap) * heap) * int

val g11_example3643 : (((bool * heap) * heap) * heap) * int

val g11_example3644 : (((bool * heap) * heap) * heap) * int

val g11_example3645 : (((bool * heap) * heap) * heap) * int

val g11_example3646 : (((bool * heap) * heap) * heap) * int

val g11_example3647 : (((bool * heap) * heap) * heap) * int

val g11_example3648 : (((bool * heap) * heap) * heap) * int

val g11_example3649 : (((bool * heap) * heap) * heap) * int

val g11_example3650 : (((bool * heap) * heap) * heap) * int

val g11_example3651 : (((bool * heap) * heap) * heap) * int

val g11_example3652 : (((bool * heap) * heap) * heap) * int

val g11_example3653 : (((bool * heap) * heap) * heap) * int

val g11_example3654 : (((bool * heap) * heap) * heap) * int

val g11_example3655 : (((bool * heap) * heap) * heap) * int

val g11_example3656 : (((bool * heap) * heap) * heap) * int

val g11_example3657 : (((bool * heap) * heap) * heap) * int

val g11_example3658 : (((bool * heap) * heap) * heap) * int

val g11_example3659 : (((bool * heap) * heap) * heap) * int

val g11_example3660 : (((bool * heap) * heap) * heap) * int

val g11_example3661 : (((bool * heap) * heap) * heap) * int

val g11_example3662 : (((bool * heap) * heap) * heap) * int

val g11_example3663 : (((bool * heap) * heap) * heap) * int

val g11_example3664 : (((bool * heap) * heap) * heap) * int

val g11_example3665 : (((bool * heap) * heap) * heap) * int

val g11_example3666 : (((bool * heap) * heap) * heap) * int

val g11_example3667 : (((bool * heap) * heap) * heap) * int

val g11_example3668 : (((bool * heap) * heap) * heap) * int

val g11_example3669 : (((bool * heap) * heap) * heap) * int

val g11_example3670 : (((bool * heap) * heap) * heap) * int

val g11_example3671 : (((bool * heap) * heap) * heap) * int

val g11_example3672 : (((bool * heap) * heap) * heap) * int

val g11_example3673 : (((bool * heap) * heap) * heap) * int

val g11_example3674 : (((bool * heap) * heap) * heap) * int

val g11_example3675 : (((bool * heap) * heap) * heap) * int

val g11_example3676 : (((bool * heap) * heap) * heap) * int

val g11_example3677 : (((bool * heap) * heap) * heap) * int

val g11_example3678 : (((bool * heap) * heap) * heap) * int

val g11_example3679 : (((bool * heap) * heap) * heap) * int

val g11_example3680 : (((bool * heap) * heap) * heap) * int

val g11_example3681 : (((bool * heap) * heap) * heap) * int

val g11_example3682 : (((bool * heap) * heap) * heap) * int

val g11_example3683 : (((bool * heap) * heap) * heap) * int

val g11_example3684 : (((bool * heap) * heap) * heap) * int

val g11_example3685 : (((bool * heap) * heap) * heap) * int

val g11_example3686 : (((bool * heap) * heap) * heap) * int

val g11_example3687 : (((bool * heap) * heap) * heap) * int

val g11_example3688 : (((bool * heap) * heap) * heap) * int

val g11_example3689 : (((bool * heap) * heap) * heap) * int

val g11_example3690 : (((bool * heap) * heap) * heap) * int

val g11_example3691 : (((bool * heap) * heap) * heap) * int

val g11_example3692 : (((bool * heap) * heap) * heap) * int

val g11_example3693 : (((bool * heap) * heap) * heap) * int

val g11_example3694 : (((bool * heap) * heap) * heap) * int

val g11_example3695 : (((bool * heap) * heap) * heap) * int

val g11_example3696 : (((bool * heap) * heap) * heap) * int

val g11_example3697 : (((bool * heap) * heap) * heap) * int

val g11_example3698 : (((bool * heap) * heap) * heap) * int

val g11_example3699 : (((bool * heap) * heap) * heap) * int

val g11_example3700 : (((bool * heap) * heap) * heap) * int

val g11_example3701 : (((bool * heap) * heap) * heap) * int

val g11_example3702 : (((bool * heap) * heap) * heap) * int

val g11_example3703 : (((bool * heap) * heap) * heap) * int

val g11_example3704 : (((bool * heap) * heap) * heap) * int

val g11_example3705 : (((bool * heap) * heap) * heap) * int

val g11_example3706 : (((bool * heap) * heap) * heap) * int

val g11_example3707 : (((bool * heap) * heap) * heap) * int

val g11_example3708 : (((bool * heap) * heap) * heap) * int

val g11_example3709 : (((bool * heap) * heap) * heap) * int

val g11_example3710 : (((bool * heap) * heap) * heap) * int

val g11_example3711 : (((bool * heap) * heap) * heap) * int

val g11_example3712 : (((bool * heap) * heap) * heap) * int

val g11_example3713 : (((bool * heap) * heap) * heap) * int

val g11_example3714 : (((bool * heap) * heap) * heap) * int

val g11_example3715 : (((bool * heap) * heap) * heap) * int

val g11_example3716 : (((bool * heap) * heap) * heap) * int

val g11_example3717 : (((bool * heap) * heap) * heap) * int

val g11_example3718 : (((bool * heap) * heap) * heap) * int

val g11_example3719 : (((bool * heap) * heap) * heap) * int

val g11_example3720 : (((bool * heap) * heap) * heap) * int

val g11_example3721 : (((bool * heap) * heap) * heap) * int

val g11_example3722 : (((bool * heap) * heap) * heap) * int

val g11_example3723 : (((bool * heap) * heap) * heap) * int

val g11_example3724 : (((bool * heap) * heap) * heap) * int

val g11_example3725 : (((bool * heap) * heap) * heap) * int

val g11_example3726 : (((bool * heap) * heap) * heap) * int

val g11_example3727 : (((bool * heap) * heap) * heap) * int

val g11_example3728 : (((bool * heap) * heap) * heap) * int

val g11_example3729 : (((bool * heap) * heap) * heap) * int

val g11_example3730 : (((bool * heap) * heap) * heap) * int

val g11_example3731 : (((bool * heap) * heap) * heap) * int

val g11_example3732 : (((bool * heap) * heap) * heap) * int

val g11_example3733 : (((bool * heap) * heap) * heap) * int

val g11_example3734 : (((bool * heap) * heap) * heap) * int

val g11_example3735 : (((bool * heap) * heap) * heap) * int

val g11_example3736 : (((bool * heap) * heap) * heap) * int

val g11_example3737 : (((bool * heap) * heap) * heap) * int

val g11_example3738 : (((bool * heap) * heap) * heap) * int

val g11_example3739 : (((bool * heap) * heap) * heap) * int

val g11_example3740 : (((bool * heap) * heap) * heap) * int

val g11_example3741 : (((bool * heap) * heap) * heap) * int

val g11_example3742 : (((bool * heap) * heap) * heap) * int

val g11_example3743 : (((bool * heap) * heap) * heap) * int

val g11_example3744 : (((bool * heap) * heap) * heap) * int

val g11_example3745 : (((bool * heap) * heap) * heap) * int

val g11_example3746 : (((bool * heap) * heap) * heap) * int

val g11_example3747 : (((bool * heap) * heap) * heap) * int

val g11_example3748 : (((bool * heap) * heap) * heap) * int

val g11_example3749 : (((bool * heap) * heap) * heap) * int

val g11_example3750 : (((bool * heap) * heap) * heap) * int

val g11_example3751 : (((bool * heap) * heap) * heap) * int

val g11_example3752 : (((bool * heap) * heap) * heap) * int

val g11_example3753 : (((bool * heap) * heap) * heap) * int

val g11_example3754 : (((bool * heap) * heap) * heap) * int

val g11_example3755 : (((bool * heap) * heap) * heap) * int

val g11_example3756 : (((bool * heap) * heap) * heap) * int

val g11_example3757 : (((bool * heap) * heap) * heap) * int

val g11_example3758 : (((bool * heap) * heap) * heap) * int

val g11_example3759 : (((bool * heap) * heap) * heap) * int

val g11_example3760 : (((bool * heap) * heap) * heap) * int

val g11_example3761 : (((bool * heap) * heap) * heap) * int

val g11_example3762 : (((bool * heap) * heap) * heap) * int

val g11_example3763 : (((bool * heap) * heap) * heap) * int

val g11_example3764 : (((bool * heap) * heap) * heap) * int

val g11_example3765 : (((bool * heap) * heap) * heap) * int

val g11_example3766 : (((bool * heap) * heap) * heap) * int

val g11_example3767 : (((bool * heap) * heap) * heap) * int

val g11_example3768 : (((bool * heap) * heap) * heap) * int

val g11_example3769 : (((bool * heap) * heap) * heap) * int

val g11_example3770 : (((bool * heap) * heap) * heap) * int

val g11_example3771 : (((bool * heap) * heap) * heap) * int

val g11_example3772 : (((bool * heap) * heap) * heap) * int

val g11_example3773 : (((bool * heap) * heap) * heap) * int

val g11_example3774 : (((bool * heap) * heap) * heap) * int

val g11_example3775 : (((bool * heap) * heap) * heap) * int

val g11_example3776 : (((bool * heap) * heap) * heap) * int

val g11_example3777 : (((bool * heap) * heap) * heap) * int

val g11_example3778 : (((bool * heap) * heap) * heap) * int

val g11_example3779 : (((bool * heap) * heap) * heap) * int

val g11_example3780 : (((bool * heap) * heap) * heap) * int

val g11_example3781 : (((bool * heap) * heap) * heap) * int

val g11_example3782 : (((bool * heap) * heap) * heap) * int

val g11_example3783 : (((bool * heap) * heap) * heap) * int

val g11_example3784 : (((bool * heap) * heap) * heap) * int

val g11_example3785 : (((bool * heap) * heap) * heap) * int

val g11_example3786 : (((bool * heap) * heap) * heap) * int

val g11_example3787 : (((bool * heap) * heap) * heap) * int

val g11_example3788 : (((bool * heap) * heap) * heap) * int

val g11_example3789 : (((bool * heap) * heap) * heap) * int

val g11_example3790 : (((bool * heap) * heap) * heap) * int

val g11_example3791 : (((bool * heap) * heap) * heap) * int

val g11_example3792 : (((bool * heap) * heap) * heap) * int

val g11_example3793 : (((bool * heap) * heap) * heap) * int

val g11_example3794 : (((bool * heap) * heap) * heap) * int

val g11_example3795 : (((bool * heap) * heap) * heap) * int

val g11_example3796 : (((bool * heap) * heap) * heap) * int

val g11_example3797 : (((bool * heap) * heap) * heap) * int

val g11_example3798 : (((bool * heap) * heap) * heap) * int

val g11_example3799 : (((bool * heap) * heap) * heap) * int

val g11_example3800 : (((bool * heap) * heap) * heap) * int

val g11_example3801 : (((bool * heap) * heap) * heap) * int

val g11_example3802 : (((bool * heap) * heap) * heap) * int

val g11_example3803 : (((bool * heap) * heap) * heap) * int

val g11_example3804 : (((bool * heap) * heap) * heap) * int

val g11_example3805 : (((bool * heap) * heap) * heap) * int

val g11_example3806 : (((bool * heap) * heap) * heap) * int

val g11_example3807 : (((bool * heap) * heap) * heap) * int

val g11_example3808 : (((bool * heap) * heap) * heap) * int

val g11_example3809 : (((bool * heap) * heap) * heap) * int

val g11_example3810 : (((bool * heap) * heap) * heap) * int

val g11_example3811 : (((bool * heap) * heap) * heap) * int

val g11_example3812 : (((bool * heap) * heap) * heap) * int

val g11_example3813 : (((bool * heap) * heap) * heap) * int

val g11_example3814 : (((bool * heap) * heap) * heap) * int

val g11_example3815 : (((bool * heap) * heap) * heap) * int

val g11_example3816 : (((bool * heap) * heap) * heap) * int

val g11_example3817 : (((bool * heap) * heap) * heap) * int

val g11_example3818 : (((bool * heap) * heap) * heap) * int

val g11_example3819 : (((bool * heap) * heap) * heap) * int

val g11_example3820 : (((bool * heap) * heap) * heap) * int

val g11_example3821 : (((bool * heap) * heap) * heap) * int

val g11_example3822 : (((bool * heap) * heap) * heap) * int

val g11_example3823 : (((bool * heap) * heap) * heap) * int

val g11_example3824 : (((bool * heap) * heap) * heap) * int

val g11_example3825 : (((bool * heap) * heap) * heap) * int

val g11_example3826 : (((bool * heap) * heap) * heap) * int

val g11_example3827 : (((bool * heap) * heap) * heap) * int

val g11_example3828 : (((bool * heap) * heap) * heap) * int

val g11_example3829 : (((bool * heap) * heap) * heap) * int

val g11_example3830 : (((bool * heap) * heap) * heap) * int

val g11_example3831 : (((bool * heap) * heap) * heap) * int

val g11_example3832 : (((bool * heap) * heap) * heap) * int

val g11_example3833 : (((bool * heap) * heap) * heap) * int

val g11_example3834 : (((bool * heap) * heap) * heap) * int

val g11_example3835 : (((bool * heap) * heap) * heap) * int

val g11_example3836 : (((bool * heap) * heap) * heap) * int

val g11_example3837 : (((bool * heap) * heap) * heap) * int

val g11_example3838 : (((bool * heap) * heap) * heap) * int

val g11_example3839 : (((bool * heap) * heap) * heap) * int

val g11_example3840 : (((bool * heap) * heap) * heap) * int

val g11_example3841 : (((bool * heap) * heap) * heap) * int

val g11_example3842 : (((bool * heap) * heap) * heap) * int

val g11_example3843 : (((bool * heap) * heap) * heap) * int

val g11_example3844 : (((bool * heap) * heap) * heap) * int

val g11_example3845 : (((bool * heap) * heap) * heap) * int

val g11_example3846 : (((bool * heap) * heap) * heap) * int

val g11_example3847 : (((bool * heap) * heap) * heap) * int

val g11_example3848 : (((bool * heap) * heap) * heap) * int

val g11_example3849 : (((bool * heap) * heap) * heap) * int

val g11_example3850 : (((bool * heap) * heap) * heap) * int

val g11_example3851 : (((bool * heap) * heap) * heap) * int

val g11_example3852 : (((bool * heap) * heap) * heap) * int

val g11_example3853 : (((bool * heap) * heap) * heap) * int

val g11_example3854 : (((bool * heap) * heap) * heap) * int

val g11_example3855 : (((bool * heap) * heap) * heap) * int

val g11_example3856 : (((bool * heap) * heap) * heap) * int

val g11_example3857 : (((bool * heap) * heap) * heap) * int

val g11_example3858 : (((bool * heap) * heap) * heap) * int

val g11_example3859 : (((bool * heap) * heap) * heap) * int

val g11_example3860 : (((bool * heap) * heap) * heap) * int

val g11_example3861 : (((bool * heap) * heap) * heap) * int

val g11_example3862 : (((bool * heap) * heap) * heap) * int

val g11_example3863 : (((bool * heap) * heap) * heap) * int

val g11_example3864 : (((bool * heap) * heap) * heap) * int

val g11_example3865 : (((bool * heap) * heap) * heap) * int

val g11_example3866 : (((bool * heap) * heap) * heap) * int

val g11_example3867 : (((bool * heap) * heap) * heap) * int

val g11_example3868 : (((bool * heap) * heap) * heap) * int

val g11_example3869 : (((bool * heap) * heap) * heap) * int

val g11_example3870 : (((bool * heap) * heap) * heap) * int

val g11_example3871 : (((bool * heap) * heap) * heap) * int

val g11_example3872 : (((bool * heap) * heap) * heap) * int

val g11_example3873 : (((bool * heap) * heap) * heap) * int

val g11_example3874 : (((bool * heap) * heap) * heap) * int

val g11_example3875 : (((bool * heap) * heap) * heap) * int

val g11_example3876 : (((bool * heap) * heap) * heap) * int

val g11_example3877 : (((bool * heap) * heap) * heap) * int

val g11_example3878 : (((bool * heap) * heap) * heap) * int

val g11_example3879 : (((bool * heap) * heap) * heap) * int

val g11_example3880 : (((bool * heap) * heap) * heap) * int

val g11_example3881 : (((bool * heap) * heap) * heap) * int

val g11_example3882 : (((bool * heap) * heap) * heap) * int

val g11_example3883 : (((bool * heap) * heap) * heap) * int

val g11_example3884 : (((bool * heap) * heap) * heap) * int

val g11_example3885 : (((bool * heap) * heap) * heap) * int

val g11_example3886 : (((bool * heap) * heap) * heap) * int

val g11_example3887 : (((bool * heap) * heap) * heap) * int

val g11_example3888 : (((bool * heap) * heap) * heap) * int

val g11_example3889 : (((bool * heap) * heap) * heap) * int

val g11_example3890 : (((bool * heap) * heap) * heap) * int

val g11_example3891 : (((bool * heap) * heap) * heap) * int

val g11_example3892 : (((bool * heap) * heap) * heap) * int

val g11_example3893 : (((bool * heap) * heap) * heap) * int

val g11_example3894 : (((bool * heap) * heap) * heap) * int

val g11_example3895 : (((bool * heap) * heap) * heap) * int

val g11_example3896 : (((bool * heap) * heap) * heap) * int

val g11_example3897 : (((bool * heap) * heap) * heap) * int

val g11_example3898 : (((bool * heap) * heap) * heap) * int

val g11_example3899 : (((bool * heap) * heap) * heap) * int

val g11_example3900 : (((bool * heap) * heap) * heap) * int

val g11_example3901 : (((bool * heap) * heap) * heap) * int

val g11_example3902 : (((bool * heap) * heap) * heap) * int

val g11_example3903 : (((bool * heap) * heap) * heap) * int

val g11_example3904 : (((bool * heap) * heap) * heap) * int

val g11_example3905 : (((bool * heap) * heap) * heap) * int

val g11_example3906 : (((bool * heap) * heap) * heap) * int

val g11_example3907 : (((bool * heap) * heap) * heap) * int

val g11_example3908 : (((bool * heap) * heap) * heap) * int

val g11_example3909 : (((bool * heap) * heap) * heap) * int

val g11_example3910 : (((bool * heap) * heap) * heap) * int

val g11_example3911 : (((bool * heap) * heap) * heap) * int

val g11_example3912 : (((bool * heap) * heap) * heap) * int

val g11_example3913 : (((bool * heap) * heap) * heap) * int

val g11_example3914 : (((bool * heap) * heap) * heap) * int

val g11_example3915 : (((bool * heap) * heap) * heap) * int

val g11_example3916 : (((bool * heap) * heap) * heap) * int

val g11_example3917 : (((bool * heap) * heap) * heap) * int

val g11_example3918 : (((bool * heap) * heap) * heap) * int

val g11_example3919 : (((bool * heap) * heap) * heap) * int

val g11_example3920 : (((bool * heap) * heap) * heap) * int

val g11_example3921 : (((bool * heap) * heap) * heap) * int

val g11_example3922 : (((bool * heap) * heap) * heap) * int

val g11_example3923 : (((bool * heap) * heap) * heap) * int

val g11_example3924 : (((bool * heap) * heap) * heap) * int

val g11_example3925 : (((bool * heap) * heap) * heap) * int

val g11_example3926 : (((bool * heap) * heap) * heap) * int

val g11_example3927 : (((bool * heap) * heap) * heap) * int

val g11_example3928 : (((bool * heap) * heap) * heap) * int

val g11_example3929 : (((bool * heap) * heap) * heap) * int

val g11_example3930 : (((bool * heap) * heap) * heap) * int

val g11_example3931 : (((bool * heap) * heap) * heap) * int

val g11_example3932 : (((bool * heap) * heap) * heap) * int

val g11_example3933 : (((bool * heap) * heap) * heap) * int

val g11_example3934 : (((bool * heap) * heap) * heap) * int

val g11_example3935 : (((bool * heap) * heap) * heap) * int

val g11_example3936 : (((bool * heap) * heap) * heap) * int

val g11_example3937 : (((bool * heap) * heap) * heap) * int

val g11_example3938 : (((bool * heap) * heap) * heap) * int

val g11_example3939 : (((bool * heap) * heap) * heap) * int

val g11_example3940 : (((bool * heap) * heap) * heap) * int

val g11_example3941 : (((bool * heap) * heap) * heap) * int

val g11_example3942 : (((bool * heap) * heap) * heap) * int

val g11_example3943 : (((bool * heap) * heap) * heap) * int

val g11_example3944 : (((bool * heap) * heap) * heap) * int

val g11_example3945 : (((bool * heap) * heap) * heap) * int

val g11_example3946 : (((bool * heap) * heap) * heap) * int

val g11_example3947 : (((bool * heap) * heap) * heap) * int

val g11_example3948 : (((bool * heap) * heap) * heap) * int

val g11_example3949 : (((bool * heap) * heap) * heap) * int

val g11_example3950 : (((bool * heap) * heap) * heap) * int

val g11_example3951 : (((bool * heap) * heap) * heap) * int

val g11_example3952 : (((bool * heap) * heap) * heap) * int

val g11_example3953 : (((bool * heap) * heap) * heap) * int

val g11_example3954 : (((bool * heap) * heap) * heap) * int

val g11_example3955 : (((bool * heap) * heap) * heap) * int

val g11_example3956 : (((bool * heap) * heap) * heap) * int

val g11_example3957 : (((bool * heap) * heap) * heap) * int

val g11_example3958 : (((bool * heap) * heap) * heap) * int

val g11_example3959 : (((bool * heap) * heap) * heap) * int

val g11_example3960 : (((bool * heap) * heap) * heap) * int

val g11_example3961 : (((bool * heap) * heap) * heap) * int

val g11_example3962 : (((bool * heap) * heap) * heap) * int

val g11_example3963 : (((bool * heap) * heap) * heap) * int

val g11_example3964 : (((bool * heap) * heap) * heap) * int

val g11_example3965 : (((bool * heap) * heap) * heap) * int

val g11_example3966 : (((bool * heap) * heap) * heap) * int

val g11_example3967 : (((bool * heap) * heap) * heap) * int

val g11_example3968 : (((bool * heap) * heap) * heap) * int

val g11_example3969 : (((bool * heap) * heap) * heap) * int

val g11_example3970 : (((bool * heap) * heap) * heap) * int

val g11_example3971 : (((bool * heap) * heap) * heap) * int

val g11_example3972 : (((bool * heap) * heap) * heap) * int

val g11_example3973 : (((bool * heap) * heap) * heap) * int

val g11_example3974 : (((bool * heap) * heap) * heap) * int

val g11_example3975 : (((bool * heap) * heap) * heap) * int

val g11_example3976 : (((bool * heap) * heap) * heap) * int

val g11_example3977 : (((bool * heap) * heap) * heap) * int

val g11_example3978 : (((bool * heap) * heap) * heap) * int

val g11_example3979 : (((bool * heap) * heap) * heap) * int

val g11_example3980 : (((bool * heap) * heap) * heap) * int

val g11_example3981 : (((bool * heap) * heap) * heap) * int

val g11_example3982 : (((bool * heap) * heap) * heap) * int

val g11_example3983 : (((bool * heap) * heap) * heap) * int

val g11_example3984 : (((bool * heap) * heap) * heap) * int

val g11_example3985 : (((bool * heap) * heap) * heap) * int

val g11_example3986 : (((bool * heap) * heap) * heap) * int

val g11_example3987 : (((bool * heap) * heap) * heap) * int

val g11_example3988 : (((bool * heap) * heap) * heap) * int

val g11_example3989 : (((bool * heap) * heap) * heap) * int

val g11_example3990 : (((bool * heap) * heap) * heap) * int

val g11_example3991 : (((bool * heap) * heap) * heap) * int

val g11_example3992 : (((bool * heap) * heap) * heap) * int

val g11_example3993 : (((bool * heap) * heap) * heap) * int

val g11_example3994 : (((bool * heap) * heap) * heap) * int

val g11_example3995 : (((bool * heap) * heap) * heap) * int

val g11_example3996 : (((bool * heap) * heap) * heap) * int

val g11_example3997 : (((bool * heap) * heap) * heap) * int

val g11_example3998 : (((bool * heap) * heap) * heap) * int

val g11_example3999 : (((bool * heap) * heap) * heap) * int

val g11_example4000 : (((bool * heap) * heap) * heap) * int

val g11_example4001 : (((bool * heap) * heap) * heap) * int

val g11_example4002 : (((bool * heap) * heap) * heap) * int

val g11_example4003 : (((bool * heap) * heap) * heap) * int

val g11_example4004 : (((bool * heap) * heap) * heap) * int

val g11_example4005 : (((bool * heap) * heap) * heap) * int

val g11_example4006 : (((bool * heap) * heap) * heap) * int

val g11_example4007 : (((bool * heap) * heap) * heap) * int

val g11_example4008 : (((bool * heap) * heap) * heap) * int

val g11_example4009 : (((bool * heap) * heap) * heap) * int

val g11_example4010 : (((bool * heap) * heap) * heap) * int

val g11_example4011 : (((bool * heap) * heap) * heap) * int

val g11_example4012 : (((bool * heap) * heap) * heap) * int

val g11_example4013 : (((bool * heap) * heap) * heap) * int

val g11_example4014 : (((bool * heap) * heap) * heap) * int

val g11_example4015 : (((bool * heap) * heap) * heap) * int

val g11_example4016 : (((bool * heap) * heap) * heap) * int

val g11_example4017 : (((bool * heap) * heap) * heap) * int

val g11_example4018 : (((bool * heap) * heap) * heap) * int

val g11_example4019 : (((bool * heap) * heap) * heap) * int

val g11_example4020 : (((bool * heap) * heap) * heap) * int

val g11_example4021 : (((bool * heap) * heap) * heap) * int

val g11_example4022 : (((bool * heap) * heap) * heap) * int

val g11_example4023 : (((bool * heap) * heap) * heap) * int

val g11_example4024 : (((bool * heap) * heap) * heap) * int

val g11_example4025 : (((bool * heap) * heap) * heap) * int

val g11_example4026 : (((bool * heap) * heap) * heap) * int

val g11_example4027 : (((bool * heap) * heap) * heap) * int

val g11_example4028 : (((bool * heap) * heap) * heap) * int

val g11_example4029 : (((bool * heap) * heap) * heap) * int

val g11_example4030 : (((bool * heap) * heap) * heap) * int

val g11_example4031 : (((bool * heap) * heap) * heap) * int

val g11_example4032 : (((bool * heap) * heap) * heap) * int

val g11_example4033 : (((bool * heap) * heap) * heap) * int

val g11_example4034 : (((bool * heap) * heap) * heap) * int

val g11_example4035 : (((bool * heap) * heap) * heap) * int

val g11_example4036 : (((bool * heap) * heap) * heap) * int

val g11_example4037 : (((bool * heap) * heap) * heap) * int

val g11_example4038 : (((bool * heap) * heap) * heap) * int

val g11_example4039 : (((bool * heap) * heap) * heap) * int

val g11_example4040 : (((bool * heap) * heap) * heap) * int

val g11_example4041 : (((bool * heap) * heap) * heap) * int

val g11_example4042 : (((bool * heap) * heap) * heap) * int

val g11_example4043 : (((bool * heap) * heap) * heap) * int

val g11_example4044 : (((bool * heap) * heap) * heap) * int

val g11_example4045 : (((bool * heap) * heap) * heap) * int

val g11_example4046 : (((bool * heap) * heap) * heap) * int

val g11_example4047 : (((bool * heap) * heap) * heap) * int

val g11_example4048 : (((bool * heap) * heap) * heap) * int

val g11_example4049 : (((bool * heap) * heap) * heap) * int

val g11_example4050 : (((bool * heap) * heap) * heap) * int

val g11_example4051 : (((bool * heap) * heap) * heap) * int

val g11_example4052 : (((bool * heap) * heap) * heap) * int

val g11_example4053 : (((bool * heap) * heap) * heap) * int

val g11_example4054 : (((bool * heap) * heap) * heap) * int

val g11_example4055 : (((bool * heap) * heap) * heap) * int

val g11_example4056 : (((bool * heap) * heap) * heap) * int

val g11_example4057 : (((bool * heap) * heap) * heap) * int

val g11_example4058 : (((bool * heap) * heap) * heap) * int

val g11_example4059 : (((bool * heap) * heap) * heap) * int

val g11_example4060 : (((bool * heap) * heap) * heap) * int

val g11_example4061 : (((bool * heap) * heap) * heap) * int

val g11_example4062 : (((bool * heap) * heap) * heap) * int

val g11_example4063 : (((bool * heap) * heap) * heap) * int

val g11_example4064 : (((bool * heap) * heap) * heap) * int

val g11_example4065 : (((bool * heap) * heap) * heap) * int

val g11_example4066 : (((bool * heap) * heap) * heap) * int

val g11_example4067 : (((bool * heap) * heap) * heap) * int

val g11_example4068 : (((bool * heap) * heap) * heap) * int

val g11_example4069 : (((bool * heap) * heap) * heap) * int

val g11_example4070 : (((bool * heap) * heap) * heap) * int

val g11_example4071 : (((bool * heap) * heap) * heap) * int

val g11_example4072 : (((bool * heap) * heap) * heap) * int

val g11_example4073 : (((bool * heap) * heap) * heap) * int

val g11_example4074 : (((bool * heap) * heap) * heap) * int

val g11_example4075 : (((bool * heap) * heap) * heap) * int

val g11_example4076 : (((bool * heap) * heap) * heap) * int

val g11_example4077 : (((bool * heap) * heap) * heap) * int

val g11_example4078 : (((bool * heap) * heap) * heap) * int

val g11_example4079 : (((bool * heap) * heap) * heap) * int

val g11_example4080 : (((bool * heap) * heap) * heap) * int

val g11_example4081 : (((bool * heap) * heap) * heap) * int

val g11_example4082 : (((bool * heap) * heap) * heap) * int

val g11_example4083 : (((bool * heap) * heap) * heap) * int

val g11_example4084 : (((bool * heap) * heap) * heap) * int

val g11_example4085 : (((bool * heap) * heap) * heap) * int

val g11_example4086 : (((bool * heap) * heap) * heap) * int

val g11_example4087 : (((bool * heap) * heap) * heap) * int

val g11_example4088 : (((bool * heap) * heap) * heap) * int

val g11_example4089 : (((bool * heap) * heap) * heap) * int

val g11_example4090 : (((bool * heap) * heap) * heap) * int

val g11_example4091 : (((bool * heap) * heap) * heap) * int

val g11_example4092 : (((bool * heap) * heap) * heap) * int

val g11_example4093 : (((bool * heap) * heap) * heap) * int

val g11_example4094 : (((bool * heap) * heap) * heap) * int

val g11_example4095 : (((bool * heap) * heap) * heap) * int

val g11_example4096 : (((bool * heap) * heap) * heap) * int

val g11_example4097 : (((bool * heap) * heap) * heap) * int

val g11_example4098 : (((bool * heap) * heap) * heap) * int

val g11_example4099 : (((bool * heap) * heap) * heap) * int

val g11_example4100 : (((bool * heap) * heap) * heap) * int

val g11_example4101 : (((bool * heap) * heap) * heap) * int

val g11_example4102 : (((bool * heap) * heap) * heap) * int

val g11_example4103 : (((bool * heap) * heap) * heap) * int

val g11_example4104 : (((bool * heap) * heap) * heap) * int

val g11_example4105 : (((bool * heap) * heap) * heap) * int

val g11_example4106 : (((bool * heap) * heap) * heap) * int

val g11_example4107 : (((bool * heap) * heap) * heap) * int

val g11_example4108 : (((bool * heap) * heap) * heap) * int

val g11_example4109 : (((bool * heap) * heap) * heap) * int

val g11_example4110 : (((bool * heap) * heap) * heap) * int

val g11_example4111 : (((bool * heap) * heap) * heap) * int

val g11_example4112 : (((bool * heap) * heap) * heap) * int

val g11_example4113 : (((bool * heap) * heap) * heap) * int

val g11_example4114 : (((bool * heap) * heap) * heap) * int

val g11_example4115 : (((bool * heap) * heap) * heap) * int

val g11_example4116 : (((bool * heap) * heap) * heap) * int

val g11_example4117 : (((bool * heap) * heap) * heap) * int

val g11_example4118 : (((bool * heap) * heap) * heap) * int

val g11_example4119 : (((bool * heap) * heap) * heap) * int

val g11_example4120 : (((bool * heap) * heap) * heap) * int

val g11_example4121 : (((bool * heap) * heap) * heap) * int

val g11_example4122 : (((bool * heap) * heap) * heap) * int

val g11_example4123 : (((bool * heap) * heap) * heap) * int

val g11_example4124 : (((bool * heap) * heap) * heap) * int

val g11_example4125 : (((bool * heap) * heap) * heap) * int

val g11_example4126 : (((bool * heap) * heap) * heap) * int

val g11_example4127 : (((bool * heap) * heap) * heap) * int

val g11_example4128 : (((bool * heap) * heap) * heap) * int

val g11_example4129 : (((bool * heap) * heap) * heap) * int

val g11_example4130 : (((bool * heap) * heap) * heap) * int

val g11_example4131 : (((bool * heap) * heap) * heap) * int

val g11_example4132 : (((bool * heap) * heap) * heap) * int

val g11_example4133 : (((bool * heap) * heap) * heap) * int

val g11_example4134 : (((bool * heap) * heap) * heap) * int

val g11_example4135 : (((bool * heap) * heap) * heap) * int

val g11_example4136 : (((bool * heap) * heap) * heap) * int

val g11_example4137 : (((bool * heap) * heap) * heap) * int

val g11_example4138 : (((bool * heap) * heap) * heap) * int

val g11_example4139 : (((bool * heap) * heap) * heap) * int

val g11_example4140 : (((bool * heap) * heap) * heap) * int

val g11_example4141 : (((bool * heap) * heap) * heap) * int

val g11_example4142 : (((bool * heap) * heap) * heap) * int

val g11_example4143 : (((bool * heap) * heap) * heap) * int

val g11_example4144 : (((bool * heap) * heap) * heap) * int

val g11_example4145 : (((bool * heap) * heap) * heap) * int

val g11_example4146 : (((bool * heap) * heap) * heap) * int

val g11_example4147 : (((bool * heap) * heap) * heap) * int

val g11_example4148 : (((bool * heap) * heap) * heap) * int

val g11_example4149 : (((bool * heap) * heap) * heap) * int

val g11_example4150 : (((bool * heap) * heap) * heap) * int

val g11_example4151 : (((bool * heap) * heap) * heap) * int

val g11_example4152 : (((bool * heap) * heap) * heap) * int

val g11_example4153 : (((bool * heap) * heap) * heap) * int

val g11_example4154 : (((bool * heap) * heap) * heap) * int

val g11_example4155 : (((bool * heap) * heap) * heap) * int

val g11_example4156 : (((bool * heap) * heap) * heap) * int

val g11_example4157 : (((bool * heap) * heap) * heap) * int

val g11_example4158 : (((bool * heap) * heap) * heap) * int

val g11_example4159 : (((bool * heap) * heap) * heap) * int

val g11_example4160 : (((bool * heap) * heap) * heap) * int

val g11_example4161 : (((bool * heap) * heap) * heap) * int

val g11_example4162 : (((bool * heap) * heap) * heap) * int

val g11_example4163 : (((bool * heap) * heap) * heap) * int

val g11_example4164 : (((bool * heap) * heap) * heap) * int

val g11_example4165 : (((bool * heap) * heap) * heap) * int

val g11_example4166 : (((bool * heap) * heap) * heap) * int

val g11_example4167 : (((bool * heap) * heap) * heap) * int

val g11_example4168 : (((bool * heap) * heap) * heap) * int

val g11_example4169 : (((bool * heap) * heap) * heap) * int

val g11_example4170 : (((bool * heap) * heap) * heap) * int

val g11_example4171 : (((bool * heap) * heap) * heap) * int

val g11_example4172 : (((bool * heap) * heap) * heap) * int

val g11_example4173 : (((bool * heap) * heap) * heap) * int

val g11_example4174 : (((bool * heap) * heap) * heap) * int

val g11_example4175 : (((bool * heap) * heap) * heap) * int

val g11_example4176 : (((bool * heap) * heap) * heap) * int

val g11_example4177 : (((bool * heap) * heap) * heap) * int

val g11_example4178 : (((bool * heap) * heap) * heap) * int

val g11_example4179 : (((bool * heap) * heap) * heap) * int

val g11_example4180 : (((bool * heap) * heap) * heap) * int

val g11_example4181 : (((bool * heap) * heap) * heap) * int

val g11_example4182 : (((bool * heap) * heap) * heap) * int

val g11_example4183 : (((bool * heap) * heap) * heap) * int

val g11_example4184 : (((bool * heap) * heap) * heap) * int

val g11_example4185 : (((bool * heap) * heap) * heap) * int

val g11_example4186 : (((bool * heap) * heap) * heap) * int

val g11_example4187 : (((bool * heap) * heap) * heap) * int

val g11_example4188 : (((bool * heap) * heap) * heap) * int

val g11_example4189 : (((bool * heap) * heap) * heap) * int

val g11_example4190 : (((bool * heap) * heap) * heap) * int

val g11_example4191 : (((bool * heap) * heap) * heap) * int

val g11_example4192 : (((bool * heap) * heap) * heap) * int

val g11_example4193 : (((bool * heap) * heap) * heap) * int

val g11_example4194 : (((bool * heap) * heap) * heap) * int

val g11_example4195 : (((bool * heap) * heap) * heap) * int

val g11_example4196 : (((bool * heap) * heap) * heap) * int

val g11_example4197 : (((bool * heap) * heap) * heap) * int

val g11_example4198 : (((bool * heap) * heap) * heap) * int

val g11_example4199 : (((bool * heap) * heap) * heap) * int

val g11_example4200 : (((bool * heap) * heap) * heap) * int

val g11_example4201 : (((bool * heap) * heap) * heap) * int

val g11_example4202 : (((bool * heap) * heap) * heap) * int

val g11_example4203 : (((bool * heap) * heap) * heap) * int

val g11_example4204 : (((bool * heap) * heap) * heap) * int

val g11_example4205 : (((bool * heap) * heap) * heap) * int

val g11_example4206 : (((bool * heap) * heap) * heap) * int

val g11_example4207 : (((bool * heap) * heap) * heap) * int

val g11_example4208 : (((bool * heap) * heap) * heap) * int

val g11_example4209 : (((bool * heap) * heap) * heap) * int

val g11_example4210 : (((bool * heap) * heap) * heap) * int

val g11_example4211 : (((bool * heap) * heap) * heap) * int

val g11_example4212 : (((bool * heap) * heap) * heap) * int

val g11_example4213 : (((bool * heap) * heap) * heap) * int

val g11_example4214 : (((bool * heap) * heap) * heap) * int

val g11_example4215 : (((bool * heap) * heap) * heap) * int

val g11_example4216 : (((bool * heap) * heap) * heap) * int

val g11_example4217 : (((bool * heap) * heap) * heap) * int

val g11_example4218 : (((bool * heap) * heap) * heap) * int

val g11_example4219 : (((bool * heap) * heap) * heap) * int

val g11_example4220 : (((bool * heap) * heap) * heap) * int

val g11_example4221 : (((bool * heap) * heap) * heap) * int

val g11_example4222 : (((bool * heap) * heap) * heap) * int

val g11_example4223 : (((bool * heap) * heap) * heap) * int

val g11_example4224 : (((bool * heap) * heap) * heap) * int

val g11_example4225 : (((bool * heap) * heap) * heap) * int

val g11_example4226 : (((bool * heap) * heap) * heap) * int

val g11_example4227 : (((bool * heap) * heap) * heap) * int

val g11_example4228 : (((bool * heap) * heap) * heap) * int

val g11_example4229 : (((bool * heap) * heap) * heap) * int

val g11_example4230 : (((bool * heap) * heap) * heap) * int

val g11_example4231 : (((bool * heap) * heap) * heap) * int

val g11_example4232 : (((bool * heap) * heap) * heap) * int

val g11_example4233 : (((bool * heap) * heap) * heap) * int

val g11_example4234 : (((bool * heap) * heap) * heap) * int

val g11_example4235 : (((bool * heap) * heap) * heap) * int

val g11_example4236 : (((bool * heap) * heap) * heap) * int

val g11_example4237 : (((bool * heap) * heap) * heap) * int

val g11_example4238 : (((bool * heap) * heap) * heap) * int

val g11_example4239 : (((bool * heap) * heap) * heap) * int

val g11_example4240 : (((bool * heap) * heap) * heap) * int

val g11_example4241 : (((bool * heap) * heap) * heap) * int

val g11_example4242 : (((bool * heap) * heap) * heap) * int

val g11_example4243 : (((bool * heap) * heap) * heap) * int

val g11_example4244 : (((bool * heap) * heap) * heap) * int

val g11_example4245 : (((bool * heap) * heap) * heap) * int

val g11_example4246 : (((bool * heap) * heap) * heap) * int

val g11_example4247 : (((bool * heap) * heap) * heap) * int

val g11_example4248 : (((bool * heap) * heap) * heap) * int

val g11_example4249 : (((bool * heap) * heap) * heap) * int

val g11_example4250 : (((bool * heap) * heap) * heap) * int

val g11_example4251 : (((bool * heap) * heap) * heap) * int

val g11_example4252 : (((bool * heap) * heap) * heap) * int

val g11_example4253 : (((bool * heap) * heap) * heap) * int

val g11_example4254 : (((bool * heap) * heap) * heap) * int

val g11_example4255 : (((bool * heap) * heap) * heap) * int

val g11_example4256 : (((bool * heap) * heap) * heap) * int

val g11_example4257 : (((bool * heap) * heap) * heap) * int

val g11_example4258 : (((bool * heap) * heap) * heap) * int

val g11_example4259 : (((bool * heap) * heap) * heap) * int

val g11_example4260 : (((bool * heap) * heap) * heap) * int

val g11_example4261 : (((bool * heap) * heap) * heap) * int

val g11_example4262 : (((bool * heap) * heap) * heap) * int

val g11_example4263 : (((bool * heap) * heap) * heap) * int

val g11_example4264 : (((bool * heap) * heap) * heap) * int

val g11_example4265 : (((bool * heap) * heap) * heap) * int

val g11_example4266 : (((bool * heap) * heap) * heap) * int

val g11_example4267 : (((bool * heap) * heap) * heap) * int

val g11_example4268 : (((bool * heap) * heap) * heap) * int

val g11_example4269 : (((bool * heap) * heap) * heap) * int

val g11_example4270 : (((bool * heap) * heap) * heap) * int

val g11_example4271 : (((bool * heap) * heap) * heap) * int

val g11_example4272 : (((bool * heap) * heap) * heap) * int

val g11_example4273 : (((bool * heap) * heap) * heap) * int

val g11_example4274 : (((bool * heap) * heap) * heap) * int

val g11_example4275 : (((bool * heap) * heap) * heap) * int

val g11_example4276 : (((bool * heap) * heap) * heap) * int

val g11_example4277 : (((bool * heap) * heap) * heap) * int

val g11_example4278 : (((bool * heap) * heap) * heap) * int

val g11_example4279 : (((bool * heap) * heap) * heap) * int

val g11_example4280 : (((bool * heap) * heap) * heap) * int

val g11_example4281 : (((bool * heap) * heap) * heap) * int

val g11_example4282 : (((bool * heap) * heap) * heap) * int

val g11_example4283 : (((bool * heap) * heap) * heap) * int

val g11_example4284 : (((bool * heap) * heap) * heap) * int

val g11_example4285 : (((bool * heap) * heap) * heap) * int

val g11_example4286 : (((bool * heap) * heap) * heap) * int

val g11_example4287 : (((bool * heap) * heap) * heap) * int

val g11_example4288 : (((bool * heap) * heap) * heap) * int

val g11_example4289 : (((bool * heap) * heap) * heap) * int

val g11_example4290 : (((bool * heap) * heap) * heap) * int

val g11_example4291 : (((bool * heap) * heap) * heap) * int

val g11_example4292 : (((bool * heap) * heap) * heap) * int

val g11_example4293 : (((bool * heap) * heap) * heap) * int

val g11_example4294 : (((bool * heap) * heap) * heap) * int

val g11_example4295 : (((bool * heap) * heap) * heap) * int

val g11_example4296 : (((bool * heap) * heap) * heap) * int

val g11_example4297 : (((bool * heap) * heap) * heap) * int

val g11_example4298 : (((bool * heap) * heap) * heap) * int

val g11_example4299 : (((bool * heap) * heap) * heap) * int

val g11_example4300 : (((bool * heap) * heap) * heap) * int

val g11_example4301 : (((bool * heap) * heap) * heap) * int

val g11_example4302 : (((bool * heap) * heap) * heap) * int

val g11_example4303 : (((bool * heap) * heap) * heap) * int

val g11_example4304 : (((bool * heap) * heap) * heap) * int

val g11_example4305 : (((bool * heap) * heap) * heap) * int

val g11_example4306 : (((bool * heap) * heap) * heap) * int

val g11_example4307 : (((bool * heap) * heap) * heap) * int

val g11_example4308 : (((bool * heap) * heap) * heap) * int

val g11_example4309 : (((bool * heap) * heap) * heap) * int

val g11_example4310 : (((bool * heap) * heap) * heap) * int

val g11_example4311 : (((bool * heap) * heap) * heap) * int

val g11_example4312 : (((bool * heap) * heap) * heap) * int

val g11_example4313 : (((bool * heap) * heap) * heap) * int

val g11_example4314 : (((bool * heap) * heap) * heap) * int

val g11_example4315 : (((bool * heap) * heap) * heap) * int

val g11_example4316 : (((bool * heap) * heap) * heap) * int

val g11_example4317 : (((bool * heap) * heap) * heap) * int

val g11_example4318 : (((bool * heap) * heap) * heap) * int

val g11_example4319 : (((bool * heap) * heap) * heap) * int

val g11_example4320 : (((bool * heap) * heap) * heap) * int

val g11_example4321 : (((bool * heap) * heap) * heap) * int

val g11_example4322 : (((bool * heap) * heap) * heap) * int

val g11_example4323 : (((bool * heap) * heap) * heap) * int

val g11_example4324 : (((bool * heap) * heap) * heap) * int

val g11_example4325 : (((bool * heap) * heap) * heap) * int

val g11_example4326 : (((bool * heap) * heap) * heap) * int

val g11_example4327 : (((bool * heap) * heap) * heap) * int

val g11_example4328 : (((bool * heap) * heap) * heap) * int

val g11_example4329 : (((bool * heap) * heap) * heap) * int

val g11_example4330 : (((bool * heap) * heap) * heap) * int

val g11_example4331 : (((bool * heap) * heap) * heap) * int

val g11_example4332 : (((bool * heap) * heap) * heap) * int

val g11_example4333 : (((bool * heap) * heap) * heap) * int

val g11_example4334 : (((bool * heap) * heap) * heap) * int

val g11_example4335 : (((bool * heap) * heap) * heap) * int

val g11_example4336 : (((bool * heap) * heap) * heap) * int

val g11_example4337 : (((bool * heap) * heap) * heap) * int

val g11_example4338 : (((bool * heap) * heap) * heap) * int

val g11_example4339 : (((bool * heap) * heap) * heap) * int

val g11_example4340 : (((bool * heap) * heap) * heap) * int

val g11_example4341 : (((bool * heap) * heap) * heap) * int

val g11_example4342 : (((bool * heap) * heap) * heap) * int

val g11_example4343 : (((bool * heap) * heap) * heap) * int

val g11_example4344 : (((bool * heap) * heap) * heap) * int

val g11_example4345 : (((bool * heap) * heap) * heap) * int

val g11_example4346 : (((bool * heap) * heap) * heap) * int

val g11_example4347 : (((bool * heap) * heap) * heap) * int

val g11_example4348 : (((bool * heap) * heap) * heap) * int

val g11_example4349 : (((bool * heap) * heap) * heap) * int

val g11_example4350 : (((bool * heap) * heap) * heap) * int

val g11_example4351 : (((bool * heap) * heap) * heap) * int

val g11_example4352 : (((bool * heap) * heap) * heap) * int

val g11_example4353 : (((bool * heap) * heap) * heap) * int

val g11_example4354 : (((bool * heap) * heap) * heap) * int

val g11_example4355 : (((bool * heap) * heap) * heap) * int

val g11_example4356 : (((bool * heap) * heap) * heap) * int

val g11_example4357 : (((bool * heap) * heap) * heap) * int

val g11_example4358 : (((bool * heap) * heap) * heap) * int

val g11_example4359 : (((bool * heap) * heap) * heap) * int

val g11_example4360 : (((bool * heap) * heap) * heap) * int

val g11_example4361 : (((bool * heap) * heap) * heap) * int

val g11_example4362 : (((bool * heap) * heap) * heap) * int

val g11_example4363 : (((bool * heap) * heap) * heap) * int

val g11_example4364 : (((bool * heap) * heap) * heap) * int

val g11_example4365 : (((bool * heap) * heap) * heap) * int

val g11_example4366 : (((bool * heap) * heap) * heap) * int

val g11_example4367 : (((bool * heap) * heap) * heap) * int

val g11_example4368 : (((bool * heap) * heap) * heap) * int

val g11_example4369 : (((bool * heap) * heap) * heap) * int

val g11_example4370 : (((bool * heap) * heap) * heap) * int

val g11_example4371 : (((bool * heap) * heap) * heap) * int

val g11_example4372 : (((bool * heap) * heap) * heap) * int

val g11_example4373 : (((bool * heap) * heap) * heap) * int

val g11_example4374 : (((bool * heap) * heap) * heap) * int

val g11_example4375 : (((bool * heap) * heap) * heap) * int

val g11_example4376 : (((bool * heap) * heap) * heap) * int

val g11_example4377 : (((bool * heap) * heap) * heap) * int

val g11_example4378 : (((bool * heap) * heap) * heap) * int

val g11_example4379 : (((bool * heap) * heap) * heap) * int

val g11_example4380 : (((bool * heap) * heap) * heap) * int

val g11_example4381 : (((bool * heap) * heap) * heap) * int

val g11_example4382 : (((bool * heap) * heap) * heap) * int

val g11_example4383 : (((bool * heap) * heap) * heap) * int

val g11_example4384 : (((bool * heap) * heap) * heap) * int

val g11_example4385 : (((bool * heap) * heap) * heap) * int

val g11_example4386 : (((bool * heap) * heap) * heap) * int

val g11_example4387 : (((bool * heap) * heap) * heap) * int

val g11_example4388 : (((bool * heap) * heap) * heap) * int

val g11_example4389 : (((bool * heap) * heap) * heap) * int

val g11_example4390 : (((bool * heap) * heap) * heap) * int

val g11_example4391 : (((bool * heap) * heap) * heap) * int

val g11_example4392 : (((bool * heap) * heap) * heap) * int

val g11_example4393 : (((bool * heap) * heap) * heap) * int

val g11_example4394 : (((bool * heap) * heap) * heap) * int

val g11_example4395 : (((bool * heap) * heap) * heap) * int

val g11_example4396 : (((bool * heap) * heap) * heap) * int

val g11_example4397 : (((bool * heap) * heap) * heap) * int

val g11_example4398 : (((bool * heap) * heap) * heap) * int

val g11_example4399 : (((bool * heap) * heap) * heap) * int

val g11_example4400 : (((bool * heap) * heap) * heap) * int

val g11_example4401 : (((bool * heap) * heap) * heap) * int

val g11_example4402 : (((bool * heap) * heap) * heap) * int

val g11_example4403 : (((bool * heap) * heap) * heap) * int

val g11_example4404 : (((bool * heap) * heap) * heap) * int

val g11_example4405 : (((bool * heap) * heap) * heap) * int

val g11_example4406 : (((bool * heap) * heap) * heap) * int

val g11_example4407 : (((bool * heap) * heap) * heap) * int

val g11_example4408 : (((bool * heap) * heap) * heap) * int

val g11_example4409 : (((bool * heap) * heap) * heap) * int

val g11_example4410 : (((bool * heap) * heap) * heap) * int

val g11_example4411 : (((bool * heap) * heap) * heap) * int

val g11_example4412 : (((bool * heap) * heap) * heap) * int

val g11_example4413 : (((bool * heap) * heap) * heap) * int

val g11_example4414 : (((bool * heap) * heap) * heap) * int

val g11_example4415 : (((bool * heap) * heap) * heap) * int

val g11_example4416 : (((bool * heap) * heap) * heap) * int

val g11_example4417 : (((bool * heap) * heap) * heap) * int

val g11_example4418 : (((bool * heap) * heap) * heap) * int

val g11_example4419 : (((bool * heap) * heap) * heap) * int

val g11_example4420 : (((bool * heap) * heap) * heap) * int

val g11_example4421 : (((bool * heap) * heap) * heap) * int

val g11_example4422 : (((bool * heap) * heap) * heap) * int

val g11_example4423 : (((bool * heap) * heap) * heap) * int

val g11_example4424 : (((bool * heap) * heap) * heap) * int

val g11_example4425 : (((bool * heap) * heap) * heap) * int

val g11_example4426 : (((bool * heap) * heap) * heap) * int

val g11_example4427 : (((bool * heap) * heap) * heap) * int

val g11_example4428 : (((bool * heap) * heap) * heap) * int

val g11_example4429 : (((bool * heap) * heap) * heap) * int

val g11_example4430 : (((bool * heap) * heap) * heap) * int

val g11_example4431 : (((bool * heap) * heap) * heap) * int

val g11_example4432 : (((bool * heap) * heap) * heap) * int

val g11_example4433 : (((bool * heap) * heap) * heap) * int

val g11_example4434 : (((bool * heap) * heap) * heap) * int

val g11_example4435 : (((bool * heap) * heap) * heap) * int

val g11_example4436 : (((bool * heap) * heap) * heap) * int

val g11_example4437 : (((bool * heap) * heap) * heap) * int

val g11_example4438 : (((bool * heap) * heap) * heap) * int

val g11_example4439 : (((bool * heap) * heap) * heap) * int

val g11_example4440 : (((bool * heap) * heap) * heap) * int

val g11_example4441 : (((bool * heap) * heap) * heap) * int

val g11_example4442 : (((bool * heap) * heap) * heap) * int

val g11_example4443 : (((bool * heap) * heap) * heap) * int

val g11_example4444 : (((bool * heap) * heap) * heap) * int

val g11_example4445 : (((bool * heap) * heap) * heap) * int

val g11_example4446 : (((bool * heap) * heap) * heap) * int

val g11_example4447 : (((bool * heap) * heap) * heap) * int

val g11_example4448 : (((bool * heap) * heap) * heap) * int

val g11_example4449 : (((bool * heap) * heap) * heap) * int

val g11_example4450 : (((bool * heap) * heap) * heap) * int

val g11_example4451 : (((bool * heap) * heap) * heap) * int

val g11_example4452 : (((bool * heap) * heap) * heap) * int

val g11_example4453 : (((bool * heap) * heap) * heap) * int

val g11_example4454 : (((bool * heap) * heap) * heap) * int

val g11_example4455 : (((bool * heap) * heap) * heap) * int

val g11_example4456 : (((bool * heap) * heap) * heap) * int

val g11_example4457 : (((bool * heap) * heap) * heap) * int

val g11_example4458 : (((bool * heap) * heap) * heap) * int

val g11_example4459 : (((bool * heap) * heap) * heap) * int

val g11_example4460 : (((bool * heap) * heap) * heap) * int

val g11_example4461 : (((bool * heap) * heap) * heap) * int

val g11_example4462 : (((bool * heap) * heap) * heap) * int

val g11_example4463 : (((bool * heap) * heap) * heap) * int

val g11_example4464 : (((bool * heap) * heap) * heap) * int

val g11_example4465 : (((bool * heap) * heap) * heap) * int

val g11_example4466 : (((bool * heap) * heap) * heap) * int

val g11_example4467 : (((bool * heap) * heap) * heap) * int

val g11_example4468 : (((bool * heap) * heap) * heap) * int

val g11_example4469 : (((bool * heap) * heap) * heap) * int

val g11_example4470 : (((bool * heap) * heap) * heap) * int

val g11_example4471 : (((bool * heap) * heap) * heap) * int

val g11_example4472 : (((bool * heap) * heap) * heap) * int

val g11_example4473 : (((bool * heap) * heap) * heap) * int

val g11_example4474 : (((bool * heap) * heap) * heap) * int

val g11_example4475 : (((bool * heap) * heap) * heap) * int

val g11_example4476 : (((bool * heap) * heap) * heap) * int

val g11_example4477 : (((bool * heap) * heap) * heap) * int

val g11_example4478 : (((bool * heap) * heap) * heap) * int

val g11_example4479 : (((bool * heap) * heap) * heap) * int

val g11_example4480 : (((bool * heap) * heap) * heap) * int

val g11_example4481 : (((bool * heap) * heap) * heap) * int

val g11_example4482 : (((bool * heap) * heap) * heap) * int

val g11_example4483 : (((bool * heap) * heap) * heap) * int

val g11_example4484 : (((bool * heap) * heap) * heap) * int

val g11_example4485 : (((bool * heap) * heap) * heap) * int

val g11_example4486 : (((bool * heap) * heap) * heap) * int

val g11_example4487 : (((bool * heap) * heap) * heap) * int

val g11_example4488 : (((bool * heap) * heap) * heap) * int

val g11_example4489 : (((bool * heap) * heap) * heap) * int

val g11_example4490 : (((bool * heap) * heap) * heap) * int

val g11_example4491 : (((bool * heap) * heap) * heap) * int

val g11_example4492 : (((bool * heap) * heap) * heap) * int

val g11_example4493 : (((bool * heap) * heap) * heap) * int

val g11_example4494 : (((bool * heap) * heap) * heap) * int

val g11_example4495 : (((bool * heap) * heap) * heap) * int

val g11_example4496 : (((bool * heap) * heap) * heap) * int

val g11_example4497 : (((bool * heap) * heap) * heap) * int

val g11_example4498 : (((bool * heap) * heap) * heap) * int

val g11_example4499 : (((bool * heap) * heap) * heap) * int

val g11_example4500 : (((bool * heap) * heap) * heap) * int

val g11_example4501 : (((bool * heap) * heap) * heap) * int

val g11_example4502 : (((bool * heap) * heap) * heap) * int

val g11_example4503 : (((bool * heap) * heap) * heap) * int

val g11_example4504 : (((bool * heap) * heap) * heap) * int

val g11_example4505 : (((bool * heap) * heap) * heap) * int

val g11_example4506 : (((bool * heap) * heap) * heap) * int

val g11_example4507 : (((bool * heap) * heap) * heap) * int

val g11_example4508 : (((bool * heap) * heap) * heap) * int

val g11_example4509 : (((bool * heap) * heap) * heap) * int

val g11_example4510 : (((bool * heap) * heap) * heap) * int

val g11_example4511 : (((bool * heap) * heap) * heap) * int

val g11_example4512 : (((bool * heap) * heap) * heap) * int

val g11_example4513 : (((bool * heap) * heap) * heap) * int

val g11_example4514 : (((bool * heap) * heap) * heap) * int

val g11_example4515 : (((bool * heap) * heap) * heap) * int

val g11_example4516 : (((bool * heap) * heap) * heap) * int

val g11_example4517 : (((bool * heap) * heap) * heap) * int

val g11_example4518 : (((bool * heap) * heap) * heap) * int

val g11_example4519 : (((bool * heap) * heap) * heap) * int

val g11_example4520 : (((bool * heap) * heap) * heap) * int

val g11_example4521 : (((bool * heap) * heap) * heap) * int

val g11_example4522 : (((bool * heap) * heap) * heap) * int

val g11_example4523 : (((bool * heap) * heap) * heap) * int

val g11_example4524 : (((bool * heap) * heap) * heap) * int

val g11_example4525 : (((bool * heap) * heap) * heap) * int

val g11_example4526 : (((bool * heap) * heap) * heap) * int

val g11_example4527 : (((bool * heap) * heap) * heap) * int

val g11_example4528 : (((bool * heap) * heap) * heap) * int

val g11_example4529 : (((bool * heap) * heap) * heap) * int

val g11_example4530 : (((bool * heap) * heap) * heap) * int

val g11_example4531 : (((bool * heap) * heap) * heap) * int

val g11_example4532 : (((bool * heap) * heap) * heap) * int

val g11_example4533 : (((bool * heap) * heap) * heap) * int

val g11_example4534 : (((bool * heap) * heap) * heap) * int

val g11_example4535 : (((bool * heap) * heap) * heap) * int

val g11_example4536 : (((bool * heap) * heap) * heap) * int

val g11_example4537 : (((bool * heap) * heap) * heap) * int

val g11_example4538 : (((bool * heap) * heap) * heap) * int

val g11_example4539 : (((bool * heap) * heap) * heap) * int

val g11_example4540 : (((bool * heap) * heap) * heap) * int

val g11_example4541 : (((bool * heap) * heap) * heap) * int

val g11_example4542 : (((bool * heap) * heap) * heap) * int

val g11_example4543 : (((bool * heap) * heap) * heap) * int

val g11_example4544 : (((bool * heap) * heap) * heap) * int

val g11_example4545 : (((bool * heap) * heap) * heap) * int

val g11_example4546 : (((bool * heap) * heap) * heap) * int

val g11_example4547 : (((bool * heap) * heap) * heap) * int

val g11_example4548 : (((bool * heap) * heap) * heap) * int

val g11_example4549 : (((bool * heap) * heap) * heap) * int

val g11_example4550 : (((bool * heap) * heap) * heap) * int

val g11_example4551 : (((bool * heap) * heap) * heap) * int

val g11_example4552 : (((bool * heap) * heap) * heap) * int

val g11_example4553 : (((bool * heap) * heap) * heap) * int

val g11_example4554 : (((bool * heap) * heap) * heap) * int

val g11_example4555 : (((bool * heap) * heap) * heap) * int

val g11_example4556 : (((bool * heap) * heap) * heap) * int

val g11_example4557 : (((bool * heap) * heap) * heap) * int

val g11_example4558 : (((bool * heap) * heap) * heap) * int

val g11_example4559 : (((bool * heap) * heap) * heap) * int

val g11_example4560 : (((bool * heap) * heap) * heap) * int

val g11_example4561 : (((bool * heap) * heap) * heap) * int

val g11_example4562 : (((bool * heap) * heap) * heap) * int

val g11_example4563 : (((bool * heap) * heap) * heap) * int

val g11_example4564 : (((bool * heap) * heap) * heap) * int

val g11_example4565 : (((bool * heap) * heap) * heap) * int

val g11_example4566 : (((bool * heap) * heap) * heap) * int

val g11_example4567 : (((bool * heap) * heap) * heap) * int

val g11_example4568 : (((bool * heap) * heap) * heap) * int

val g11_example4569 : (((bool * heap) * heap) * heap) * int

val g11_example4570 : (((bool * heap) * heap) * heap) * int

val g11_example4571 : (((bool * heap) * heap) * heap) * int

val g11_example4572 : (((bool * heap) * heap) * heap) * int

val g11_example4573 : (((bool * heap) * heap) * heap) * int

val g11_example4574 : (((bool * heap) * heap) * heap) * int

val g11_example4575 : (((bool * heap) * heap) * heap) * int

val g11_example4576 : (((bool * heap) * heap) * heap) * int

val g11_example4577 : (((bool * heap) * heap) * heap) * int

val g11_example4578 : (((bool * heap) * heap) * heap) * int

val g11_example4579 : (((bool * heap) * heap) * heap) * int

val g11_example4580 : (((bool * heap) * heap) * heap) * int

val g11_example4581 : (((bool * heap) * heap) * heap) * int

val g11_example4582 : (((bool * heap) * heap) * heap) * int

val g11_example4583 : (((bool * heap) * heap) * heap) * int

val g11_example4584 : (((bool * heap) * heap) * heap) * int

val g11_example4585 : (((bool * heap) * heap) * heap) * int

val g11_example4586 : (((bool * heap) * heap) * heap) * int

val g11_example4587 : (((bool * heap) * heap) * heap) * int

val g11_example4588 : (((bool * heap) * heap) * heap) * int

val g11_example4589 : (((bool * heap) * heap) * heap) * int

val g11_example4590 : (((bool * heap) * heap) * heap) * int

val g11_example4591 : (((bool * heap) * heap) * heap) * int

val g11_example4592 : (((bool * heap) * heap) * heap) * int

val g11_example4593 : (((bool * heap) * heap) * heap) * int

val g11_example4594 : (((bool * heap) * heap) * heap) * int

val g11_example4595 : (((bool * heap) * heap) * heap) * int

val g11_example4596 : (((bool * heap) * heap) * heap) * int

val g11_example4597 : (((bool * heap) * heap) * heap) * int

val g11_example4598 : (((bool * heap) * heap) * heap) * int

val g11_example4599 : (((bool * heap) * heap) * heap) * int

val g11_example4600 : (((bool * heap) * heap) * heap) * int

val g11_example4601 : (((bool * heap) * heap) * heap) * int

val g11_example4602 : (((bool * heap) * heap) * heap) * int

val g11_example4603 : (((bool * heap) * heap) * heap) * int

val g11_example4604 : (((bool * heap) * heap) * heap) * int

val g11_example4605 : (((bool * heap) * heap) * heap) * int

val g11_example4606 : (((bool * heap) * heap) * heap) * int

val g11_example4607 : (((bool * heap) * heap) * heap) * int

val g11_example4608 : (((bool * heap) * heap) * heap) * int

val g11_example4609 : (((bool * heap) * heap) * heap) * int

val g11_example4610 : (((bool * heap) * heap) * heap) * int

val g11_example4611 : (((bool * heap) * heap) * heap) * int

val g11_example4612 : (((bool * heap) * heap) * heap) * int

val g11_example4613 : (((bool * heap) * heap) * heap) * int

val g11_example4614 : (((bool * heap) * heap) * heap) * int

val g11_example4615 : (((bool * heap) * heap) * heap) * int

val g11_example4616 : (((bool * heap) * heap) * heap) * int

val g11_example4617 : (((bool * heap) * heap) * heap) * int

val g11_example4618 : (((bool * heap) * heap) * heap) * int

val g11_example4619 : (((bool * heap) * heap) * heap) * int

val g11_example4620 : (((bool * heap) * heap) * heap) * int

val g11_example4621 : (((bool * heap) * heap) * heap) * int

val g11_example4622 : (((bool * heap) * heap) * heap) * int

val g11_example4623 : (((bool * heap) * heap) * heap) * int

val g11_example4624 : (((bool * heap) * heap) * heap) * int

val g11_example4625 : (((bool * heap) * heap) * heap) * int

val g11_example4626 : (((bool * heap) * heap) * heap) * int

val g11_example4627 : (((bool * heap) * heap) * heap) * int

val g11_example4628 : (((bool * heap) * heap) * heap) * int

val g11_example4629 : (((bool * heap) * heap) * heap) * int

val g11_example4630 : (((bool * heap) * heap) * heap) * int

val g11_example4631 : (((bool * heap) * heap) * heap) * int

val g11_example4632 : (((bool * heap) * heap) * heap) * int

val g11_example4633 : (((bool * heap) * heap) * heap) * int

val g11_example4634 : (((bool * heap) * heap) * heap) * int

val g11_example4635 : (((bool * heap) * heap) * heap) * int

val g11_example4636 : (((bool * heap) * heap) * heap) * int

val g11_example4637 : (((bool * heap) * heap) * heap) * int

val g11_example4638 : (((bool * heap) * heap) * heap) * int

val g11_example4639 : (((bool * heap) * heap) * heap) * int

val g11_example4640 : (((bool * heap) * heap) * heap) * int

val g11_example4641 : (((bool * heap) * heap) * heap) * int

val g11_example4642 : (((bool * heap) * heap) * heap) * int

val g11_example4643 : (((bool * heap) * heap) * heap) * int

val g11_example4644 : (((bool * heap) * heap) * heap) * int

val g11_example4645 : (((bool * heap) * heap) * heap) * int

val g11_example4646 : (((bool * heap) * heap) * heap) * int

val g11_example4647 : (((bool * heap) * heap) * heap) * int

val g11_example4648 : (((bool * heap) * heap) * heap) * int

val g11_example4649 : (((bool * heap) * heap) * heap) * int

val g11_example4650 : (((bool * heap) * heap) * heap) * int

val g11_example4651 : (((bool * heap) * heap) * heap) * int

val g11_example4652 : (((bool * heap) * heap) * heap) * int

val g11_example4653 : (((bool * heap) * heap) * heap) * int

val g11_example4654 : (((bool * heap) * heap) * heap) * int

val g11_example4655 : (((bool * heap) * heap) * heap) * int

val g11_example4656 : (((bool * heap) * heap) * heap) * int

val g11_example4657 : (((bool * heap) * heap) * heap) * int

val g11_example4658 : (((bool * heap) * heap) * heap) * int

val g11_example4659 : (((bool * heap) * heap) * heap) * int

val g11_example4660 : (((bool * heap) * heap) * heap) * int

val g11_example4661 : (((bool * heap) * heap) * heap) * int

val g11_example4662 : (((bool * heap) * heap) * heap) * int

val g11_example4663 : (((bool * heap) * heap) * heap) * int

val g11_example4664 : (((bool * heap) * heap) * heap) * int

val g11_example4665 : (((bool * heap) * heap) * heap) * int

val g11_example4666 : (((bool * heap) * heap) * heap) * int

val g11_example4667 : (((bool * heap) * heap) * heap) * int

val g11_example4668 : (((bool * heap) * heap) * heap) * int

val g11_example4669 : (((bool * heap) * heap) * heap) * int

val g11_example4670 : (((bool * heap) * heap) * heap) * int

val g11_example4671 : (((bool * heap) * heap) * heap) * int

val g11_example4672 : (((bool * heap) * heap) * heap) * int

val g11_example4673 : (((bool * heap) * heap) * heap) * int

val g11_example4674 : (((bool * heap) * heap) * heap) * int

val g11_example4675 : (((bool * heap) * heap) * heap) * int

val g11_example4676 : (((bool * heap) * heap) * heap) * int

val g11_example4677 : (((bool * heap) * heap) * heap) * int

val g11_example4678 : (((bool * heap) * heap) * heap) * int

val g11_example4679 : (((bool * heap) * heap) * heap) * int

val g11_example4680 : (((bool * heap) * heap) * heap) * int

val g11_example4681 : (((bool * heap) * heap) * heap) * int

val g11_example4682 : (((bool * heap) * heap) * heap) * int

val g11_example4683 : (((bool * heap) * heap) * heap) * int

val g11_example4684 : (((bool * heap) * heap) * heap) * int

val g11_example4685 : (((bool * heap) * heap) * heap) * int

val g11_example4686 : (((bool * heap) * heap) * heap) * int

val g11_example4687 : (((bool * heap) * heap) * heap) * int

val g11_example4688 : (((bool * heap) * heap) * heap) * int

val g11_example4689 : (((bool * heap) * heap) * heap) * int

val g11_example4690 : (((bool * heap) * heap) * heap) * int

val g11_example4691 : (((bool * heap) * heap) * heap) * int

val g11_example4692 : (((bool * heap) * heap) * heap) * int

val g11_example4693 : (((bool * heap) * heap) * heap) * int

val g11_example4694 : (((bool * heap) * heap) * heap) * int

val g11_example4695 : (((bool * heap) * heap) * heap) * int

val g11_example4696 : (((bool * heap) * heap) * heap) * int

val g11_example4697 : (((bool * heap) * heap) * heap) * int

val g11_example4698 : (((bool * heap) * heap) * heap) * int

val g11_example4699 : (((bool * heap) * heap) * heap) * int

val g11_example4700 : (((bool * heap) * heap) * heap) * int

val g11_example4701 : (((bool * heap) * heap) * heap) * int

val g11_example4702 : (((bool * heap) * heap) * heap) * int

val g11_example4703 : (((bool * heap) * heap) * heap) * int

val g11_example4704 : (((bool * heap) * heap) * heap) * int

val g11_example4705 : (((bool * heap) * heap) * heap) * int

val g11_example4706 : (((bool * heap) * heap) * heap) * int

val g11_example4707 : (((bool * heap) * heap) * heap) * int

val g11_example4708 : (((bool * heap) * heap) * heap) * int

val g11_example4709 : (((bool * heap) * heap) * heap) * int

val g11_example4710 : (((bool * heap) * heap) * heap) * int

val g11_example4711 : (((bool * heap) * heap) * heap) * int

val g11_example4712 : (((bool * heap) * heap) * heap) * int

val g11_example4713 : (((bool * heap) * heap) * heap) * int

val g11_example4714 : (((bool * heap) * heap) * heap) * int

val g11_example4715 : (((bool * heap) * heap) * heap) * int

val g11_example4716 : (((bool * heap) * heap) * heap) * int

val g11_example4717 : (((bool * heap) * heap) * heap) * int

val g11_example4718 : (((bool * heap) * heap) * heap) * int

val g11_example4719 : (((bool * heap) * heap) * heap) * int

val g11_example4720 : (((bool * heap) * heap) * heap) * int

val g11_example4721 : (((bool * heap) * heap) * heap) * int

val g11_example4722 : (((bool * heap) * heap) * heap) * int

val g11_example4723 : (((bool * heap) * heap) * heap) * int

val g11_example4724 : (((bool * heap) * heap) * heap) * int

val g11_example4725 : (((bool * heap) * heap) * heap) * int

val g11_example4726 : (((bool * heap) * heap) * heap) * int

val g11_example4727 : (((bool * heap) * heap) * heap) * int

val g11_example4728 : (((bool * heap) * heap) * heap) * int

val g11_example4729 : (((bool * heap) * heap) * heap) * int

val g11_example4730 : (((bool * heap) * heap) * heap) * int

val g11_example4731 : (((bool * heap) * heap) * heap) * int

val g11_example4732 : (((bool * heap) * heap) * heap) * int

val g11_example4733 : (((bool * heap) * heap) * heap) * int

val g11_example4734 : (((bool * heap) * heap) * heap) * int

val g11_example4735 : (((bool * heap) * heap) * heap) * int

val g11_example4736 : (((bool * heap) * heap) * heap) * int

val g11_example4737 : (((bool * heap) * heap) * heap) * int

val g11_example4738 : (((bool * heap) * heap) * heap) * int

val g11_example4739 : (((bool * heap) * heap) * heap) * int

val g11_example4740 : (((bool * heap) * heap) * heap) * int

val g11_example4741 : (((bool * heap) * heap) * heap) * int

val g11_example4742 : (((bool * heap) * heap) * heap) * int

val g11_example4743 : (((bool * heap) * heap) * heap) * int

val g11_example4744 : (((bool * heap) * heap) * heap) * int

val g11_example4745 : (((bool * heap) * heap) * heap) * int

val g11_example4746 : (((bool * heap) * heap) * heap) * int

val g11_example4747 : (((bool * heap) * heap) * heap) * int

val g11_example4748 : (((bool * heap) * heap) * heap) * int

val g11_example4749 : (((bool * heap) * heap) * heap) * int

val g11_example4750 : (((bool * heap) * heap) * heap) * int

val g11_example4751 : (((bool * heap) * heap) * heap) * int

val g11_example4752 : (((bool * heap) * heap) * heap) * int

val g11_example4753 : (((bool * heap) * heap) * heap) * int

val g11_example4754 : (((bool * heap) * heap) * heap) * int

val g11_example4755 : (((bool * heap) * heap) * heap) * int

val g11_example4756 : (((bool * heap) * heap) * heap) * int

val g11_example4757 : (((bool * heap) * heap) * heap) * int

val g11_example4758 : (((bool * heap) * heap) * heap) * int

val g11_example4759 : (((bool * heap) * heap) * heap) * int

val g11_example4760 : (((bool * heap) * heap) * heap) * int

val g11_example4761 : (((bool * heap) * heap) * heap) * int

val g11_example4762 : (((bool * heap) * heap) * heap) * int

val g11_example4763 : (((bool * heap) * heap) * heap) * int

val g11_example4764 : (((bool * heap) * heap) * heap) * int

val g11_example4765 : (((bool * heap) * heap) * heap) * int

val g11_example4766 : (((bool * heap) * heap) * heap) * int

val g11_example4767 : (((bool * heap) * heap) * heap) * int

val g11_example4768 : (((bool * heap) * heap) * heap) * int

val g11_example4769 : (((bool * heap) * heap) * heap) * int

val g11_example4770 : (((bool * heap) * heap) * heap) * int

val g11_example4771 : (((bool * heap) * heap) * heap) * int

val g11_example4772 : (((bool * heap) * heap) * heap) * int

val g11_example4773 : (((bool * heap) * heap) * heap) * int

val g11_example4774 : (((bool * heap) * heap) * heap) * int

val g11_example4775 : (((bool * heap) * heap) * heap) * int

val g11_example4776 : (((bool * heap) * heap) * heap) * int

val g11_example4777 : (((bool * heap) * heap) * heap) * int

val g11_example4778 : (((bool * heap) * heap) * heap) * int

val g11_example4779 : (((bool * heap) * heap) * heap) * int

val g11_example4780 : (((bool * heap) * heap) * heap) * int

val g11_example4781 : (((bool * heap) * heap) * heap) * int

val g11_example4782 : (((bool * heap) * heap) * heap) * int

val g11_example4783 : (((bool * heap) * heap) * heap) * int

val g11_example4784 : (((bool * heap) * heap) * heap) * int

val g11_example4785 : (((bool * heap) * heap) * heap) * int

val g11_example4786 : (((bool * heap) * heap) * heap) * int

val g11_example4787 : (((bool * heap) * heap) * heap) * int

val g11_example4788 : (((bool * heap) * heap) * heap) * int

val g11_example4789 : (((bool * heap) * heap) * heap) * int

val g11_example4790 : (((bool * heap) * heap) * heap) * int

val g11_example4791 : (((bool * heap) * heap) * heap) * int

val g11_example4792 : (((bool * heap) * heap) * heap) * int

val g11_example4793 : (((bool * heap) * heap) * heap) * int

val g11_example4794 : (((bool * heap) * heap) * heap) * int

val g11_example4795 : (((bool * heap) * heap) * heap) * int

val g11_example4796 : (((bool * heap) * heap) * heap) * int

val g11_example4797 : (((bool * heap) * heap) * heap) * int

val g11_example4798 : (((bool * heap) * heap) * heap) * int

val g11_example4799 : (((bool * heap) * heap) * heap) * int

val g11_example4800 : (((bool * heap) * heap) * heap) * int

val g11_example4801 : (((bool * heap) * heap) * heap) * int

val g11_example4802 : (((bool * heap) * heap) * heap) * int

val g11_example4803 : (((bool * heap) * heap) * heap) * int

val g11_example4804 : (((bool * heap) * heap) * heap) * int

val g11_example4805 : (((bool * heap) * heap) * heap) * int

val g11_example4806 : (((bool * heap) * heap) * heap) * int

val g11_example4807 : (((bool * heap) * heap) * heap) * int

val g11_example4808 : (((bool * heap) * heap) * heap) * int

val g11_example4809 : (((bool * heap) * heap) * heap) * int

val g11_example4810 : (((bool * heap) * heap) * heap) * int

val g11_example4811 : (((bool * heap) * heap) * heap) * int

val g11_example4812 : (((bool * heap) * heap) * heap) * int

val g11_example4813 : (((bool * heap) * heap) * heap) * int

val g11_example4814 : (((bool * heap) * heap) * heap) * int

val g11_example4815 : (((bool * heap) * heap) * heap) * int

val g11_example4816 : (((bool * heap) * heap) * heap) * int

val g11_example4817 : (((bool * heap) * heap) * heap) * int

val g11_example4818 : (((bool * heap) * heap) * heap) * int

val g11_example4819 : (((bool * heap) * heap) * heap) * int

val g11_example4820 : (((bool * heap) * heap) * heap) * int

val g11_example4821 : (((bool * heap) * heap) * heap) * int

val g11_example4822 : (((bool * heap) * heap) * heap) * int

val g11_example4823 : (((bool * heap) * heap) * heap) * int

val g11_example4824 : (((bool * heap) * heap) * heap) * int

val g11_example4825 : (((bool * heap) * heap) * heap) * int

val g11_example4826 : (((bool * heap) * heap) * heap) * int

val g11_example4827 : (((bool * heap) * heap) * heap) * int

val g11_example4828 : (((bool * heap) * heap) * heap) * int

val g11_example4829 : (((bool * heap) * heap) * heap) * int

val g11_example4830 : (((bool * heap) * heap) * heap) * int

val g11_example4831 : (((bool * heap) * heap) * heap) * int

val g11_example4832 : (((bool * heap) * heap) * heap) * int

val g11_example4833 : (((bool * heap) * heap) * heap) * int

val g11_example4834 : (((bool * heap) * heap) * heap) * int

val g11_example4835 : (((bool * heap) * heap) * heap) * int

val g11_example4836 : (((bool * heap) * heap) * heap) * int

val g11_example4837 : (((bool * heap) * heap) * heap) * int

val g11_example4838 : (((bool * heap) * heap) * heap) * int

val g11_example4839 : (((bool * heap) * heap) * heap) * int

val g11_example4840 : (((bool * heap) * heap) * heap) * int

val g11_example4841 : (((bool * heap) * heap) * heap) * int

val g11_example4842 : (((bool * heap) * heap) * heap) * int

val g11_example4843 : (((bool * heap) * heap) * heap) * int

val g11_example4844 : (((bool * heap) * heap) * heap) * int

val g11_example4845 : (((bool * heap) * heap) * heap) * int

val g11_example4846 : (((bool * heap) * heap) * heap) * int

val g11_example4847 : (((bool * heap) * heap) * heap) * int

val g11_example4848 : (((bool * heap) * heap) * heap) * int

val g11_example4849 : (((bool * heap) * heap) * heap) * int

val g11_example4850 : (((bool * heap) * heap) * heap) * int

val g11_example4851 : (((bool * heap) * heap) * heap) * int

val g11_example4852 : (((bool * heap) * heap) * heap) * int

val g11_example4853 : (((bool * heap) * heap) * heap) * int

val g11_example4854 : (((bool * heap) * heap) * heap) * int

val g11_example4855 : (((bool * heap) * heap) * heap) * int

val g11_example4856 : (((bool * heap) * heap) * heap) * int

val g11_example4857 : (((bool * heap) * heap) * heap) * int

val g11_example4858 : (((bool * heap) * heap) * heap) * int

val g11_example4859 : (((bool * heap) * heap) * heap) * int

val g11_example4860 : (((bool * heap) * heap) * heap) * int

val g11_example4861 : (((bool * heap) * heap) * heap) * int

val g11_example4862 : (((bool * heap) * heap) * heap) * int

val g11_example4863 : (((bool * heap) * heap) * heap) * int

val g11_example4864 : (((bool * heap) * heap) * heap) * int

val g11_example4865 : (((bool * heap) * heap) * heap) * int

val g11_example4866 : (((bool * heap) * heap) * heap) * int

val g11_example4867 : (((bool * heap) * heap) * heap) * int

val g11_example4868 : (((bool * heap) * heap) * heap) * int

val g11_example4869 : (((bool * heap) * heap) * heap) * int

val g11_example4870 : (((bool * heap) * heap) * heap) * int

val g11_example4871 : (((bool * heap) * heap) * heap) * int

val g11_example4872 : (((bool * heap) * heap) * heap) * int

val g11_example4873 : (((bool * heap) * heap) * heap) * int

val g11_example4874 : (((bool * heap) * heap) * heap) * int

val g11_example4875 : (((bool * heap) * heap) * heap) * int

val g11_example4876 : (((bool * heap) * heap) * heap) * int

val g11_example4877 : (((bool * heap) * heap) * heap) * int

val g11_example4878 : (((bool * heap) * heap) * heap) * int

val g11_example4879 : (((bool * heap) * heap) * heap) * int

val g11_example4880 : (((bool * heap) * heap) * heap) * int

val g11_example4881 : (((bool * heap) * heap) * heap) * int

val g11_example4882 : (((bool * heap) * heap) * heap) * int

val g11_example4883 : (((bool * heap) * heap) * heap) * int

val g11_example4884 : (((bool * heap) * heap) * heap) * int

val g11_example4885 : (((bool * heap) * heap) * heap) * int

val g11_example4886 : (((bool * heap) * heap) * heap) * int

val g11_example4887 : (((bool * heap) * heap) * heap) * int

val g11_example4888 : (((bool * heap) * heap) * heap) * int

val g11_example4889 : (((bool * heap) * heap) * heap) * int

val g11_example4890 : (((bool * heap) * heap) * heap) * int

val g11_example4891 : (((bool * heap) * heap) * heap) * int

val g11_example4892 : (((bool * heap) * heap) * heap) * int

val g11_example4893 : (((bool * heap) * heap) * heap) * int

val g11_example4894 : (((bool * heap) * heap) * heap) * int

val g11_example4895 : (((bool * heap) * heap) * heap) * int

val g11_example4896 : (((bool * heap) * heap) * heap) * int

val g11_example4897 : (((bool * heap) * heap) * heap) * int

val g11_example4898 : (((bool * heap) * heap) * heap) * int

val g11_example4899 : (((bool * heap) * heap) * heap) * int

val g11_example4900 : (((bool * heap) * heap) * heap) * int

val g11_example4901 : (((bool * heap) * heap) * heap) * int

val g11_example4902 : (((bool * heap) * heap) * heap) * int

val g11_example4903 : (((bool * heap) * heap) * heap) * int

val g11_example4904 : (((bool * heap) * heap) * heap) * int

val g11_example4905 : (((bool * heap) * heap) * heap) * int

val g11_example4906 : (((bool * heap) * heap) * heap) * int

val g11_example4907 : (((bool * heap) * heap) * heap) * int

val g11_example4908 : (((bool * heap) * heap) * heap) * int

val g11_example4909 : (((bool * heap) * heap) * heap) * int

val g11_example4910 : (((bool * heap) * heap) * heap) * int

val g11_example4911 : (((bool * heap) * heap) * heap) * int

val g11_example4912 : (((bool * heap) * heap) * heap) * int

val g11_example4913 : (((bool * heap) * heap) * heap) * int

val g11_example4914 : (((bool * heap) * heap) * heap) * int

val g11_example4915 : (((bool * heap) * heap) * heap) * int

val g11_example4916 : (((bool * heap) * heap) * heap) * int

val g11_example4917 : (((bool * heap) * heap) * heap) * int

val g11_example4918 : (((bool * heap) * heap) * heap) * int

val g11_example4919 : (((bool * heap) * heap) * heap) * int

val g11_example4920 : (((bool * heap) * heap) * heap) * int

val g11_example4921 : (((bool * heap) * heap) * heap) * int

val g11_example4922 : (((bool * heap) * heap) * heap) * int

val g11_example4923 : (((bool * heap) * heap) * heap) * int

val g11_example4924 : (((bool * heap) * heap) * heap) * int

val g11_example4925 : (((bool * heap) * heap) * heap) * int

val g11_example4926 : (((bool * heap) * heap) * heap) * int

val g11_example4927 : (((bool * heap) * heap) * heap) * int

val g11_example4928 : (((bool * heap) * heap) * heap) * int

val g11_example4929 : (((bool * heap) * heap) * heap) * int

val g11_example4930 : (((bool * heap) * heap) * heap) * int

val g11_example4931 : (((bool * heap) * heap) * heap) * int

val g11_example4932 : (((bool * heap) * heap) * heap) * int

val g11_example4933 : (((bool * heap) * heap) * heap) * int

val g11_example4934 : (((bool * heap) * heap) * heap) * int

val g11_example4935 : (((bool * heap) * heap) * heap) * int

val g11_example4936 : (((bool * heap) * heap) * heap) * int

val g11_example4937 : (((bool * heap) * heap) * heap) * int

val g11_example4938 : (((bool * heap) * heap) * heap) * int

val g11_example4939 : (((bool * heap) * heap) * heap) * int

val g11_example4940 : (((bool * heap) * heap) * heap) * int

val g11_example4941 : (((bool * heap) * heap) * heap) * int

val g11_example4942 : (((bool * heap) * heap) * heap) * int

val g11_example4943 : (((bool * heap) * heap) * heap) * int

val g11_example4944 : (((bool * heap) * heap) * heap) * int

val g11_example4945 : (((bool * heap) * heap) * heap) * int

val g11_example4946 : (((bool * heap) * heap) * heap) * int

val g11_example4947 : (((bool * heap) * heap) * heap) * int

val g11_example4948 : (((bool * heap) * heap) * heap) * int

val g11_example4949 : (((bool * heap) * heap) * heap) * int

val g11_example4950 : (((bool * heap) * heap) * heap) * int

val g11_example4951 : (((bool * heap) * heap) * heap) * int

val g11_example4952 : (((bool * heap) * heap) * heap) * int

val g11_example4953 : (((bool * heap) * heap) * heap) * int

val g11_example4954 : (((bool * heap) * heap) * heap) * int

val g11_example4955 : (((bool * heap) * heap) * heap) * int

val g11_example4956 : (((bool * heap) * heap) * heap) * int

val g11_example4957 : (((bool * heap) * heap) * heap) * int

val g11_example4958 : (((bool * heap) * heap) * heap) * int

val g11_example4959 : (((bool * heap) * heap) * heap) * int

val g11_example4960 : (((bool * heap) * heap) * heap) * int

val g11_example4961 : (((bool * heap) * heap) * heap) * int

val g11_example4962 : (((bool * heap) * heap) * heap) * int

val g11_example4963 : (((bool * heap) * heap) * heap) * int

val g11_example4964 : (((bool * heap) * heap) * heap) * int

val g11_example4965 : (((bool * heap) * heap) * heap) * int

val g11_example4966 : (((bool * heap) * heap) * heap) * int

val g11_example4967 : (((bool * heap) * heap) * heap) * int

val g11_example4968 : (((bool * heap) * heap) * heap) * int

val g11_example4969 : (((bool * heap) * heap) * heap) * int

val g11_example4970 : (((bool * heap) * heap) * heap) * int

val g11_example4971 : (((bool * heap) * heap) * heap) * int

val g11_example4972 : (((bool * heap) * heap) * heap) * int

val g11_example4973 : (((bool * heap) * heap) * heap) * int

val g11_example4974 : (((bool * heap) * heap) * heap) * int

val g11_example4975 : (((bool * heap) * heap) * heap) * int

val g11_example4976 : (((bool * heap) * heap) * heap) * int

val g11_example4977 : (((bool * heap) * heap) * heap) * int

val g11_example4978 : (((bool * heap) * heap) * heap) * int

val g11_example4979 : (((bool * heap) * heap) * heap) * int

val g11_example4980 : (((bool * heap) * heap) * heap) * int

val g11_example4981 : (((bool * heap) * heap) * heap) * int

val g11_example4982 : (((bool * heap) * heap) * heap) * int

val g11_example4983 : (((bool * heap) * heap) * heap) * int

val g11_example4984 : (((bool * heap) * heap) * heap) * int

val g11_example4985 : (((bool * heap) * heap) * heap) * int

val g11_example4986 : (((bool * heap) * heap) * heap) * int

val g11_example4987 : (((bool * heap) * heap) * heap) * int

val g11_example4988 : (((bool * heap) * heap) * heap) * int

val g11_example4989 : (((bool * heap) * heap) * heap) * int

val g11_example4990 : (((bool * heap) * heap) * heap) * int

val g11_example4991 : (((bool * heap) * heap) * heap) * int

val g11_example4992 : (((bool * heap) * heap) * heap) * int

val g11_example4993 : (((bool * heap) * heap) * heap) * int

val g11_example4994 : (((bool * heap) * heap) * heap) * int

val g11_example4995 : (((bool * heap) * heap) * heap) * int

val g11_example4996 : (((bool * heap) * heap) * heap) * int

val g11_example4997 : (((bool * heap) * heap) * heap) * int

val g11_example4998 : (((bool * heap) * heap) * heap) * int

val g11_example4999 : (((bool * heap) * heap) * heap) * int

val g11_example5000 : (((bool * heap) * heap) * heap) * int

val g11_example5001 : (((bool * heap) * heap) * heap) * int

val g11_example5002 : (((bool * heap) * heap) * heap) * int

val g11_example5003 : (((bool * heap) * heap) * heap) * int

val g11_example5004 : (((bool * heap) * heap) * heap) * int

val g11_example5005 : (((bool * heap) * heap) * heap) * int

val g11_example5006 : (((bool * heap) * heap) * heap) * int

val g11_example5007 : (((bool * heap) * heap) * heap) * int

val g11_example5008 : (((bool * heap) * heap) * heap) * int

val g11_example5009 : (((bool * heap) * heap) * heap) * int

val g11_example5010 : (((bool * heap) * heap) * heap) * int

val g11_example5011 : (((bool * heap) * heap) * heap) * int

val g11_example5012 : (((bool * heap) * heap) * heap) * int

val g11_example5013 : (((bool * heap) * heap) * heap) * int

val g11_example5014 : (((bool * heap) * heap) * heap) * int

val g11_example5015 : (((bool * heap) * heap) * heap) * int

val g11_example5016 : (((bool * heap) * heap) * heap) * int

val g11_example5017 : (((bool * heap) * heap) * heap) * int

val g11_example5018 : (((bool * heap) * heap) * heap) * int

val g11_example5019 : (((bool * heap) * heap) * heap) * int

val g11_example5020 : (((bool * heap) * heap) * heap) * int

val g11_example5021 : (((bool * heap) * heap) * heap) * int

val g11_example5022 : (((bool * heap) * heap) * heap) * int

val g11_example5023 : (((bool * heap) * heap) * heap) * int

val g11_example5024 : (((bool * heap) * heap) * heap) * int

val g11_example5025 : (((bool * heap) * heap) * heap) * int

val g11_example5026 : (((bool * heap) * heap) * heap) * int

val g11_example5027 : (((bool * heap) * heap) * heap) * int

val g11_example5028 : (((bool * heap) * heap) * heap) * int

val g11_example5029 : (((bool * heap) * heap) * heap) * int

val g11_example5030 : (((bool * heap) * heap) * heap) * int

val g11_example5031 : (((bool * heap) * heap) * heap) * int

val g11_example5032 : (((bool * heap) * heap) * heap) * int

val g11_example5033 : (((bool * heap) * heap) * heap) * int

val g11_example5034 : (((bool * heap) * heap) * heap) * int

val g11_example5035 : (((bool * heap) * heap) * heap) * int

val g11_example5036 : (((bool * heap) * heap) * heap) * int

val g11_example5037 : (((bool * heap) * heap) * heap) * int

val g11_example5038 : (((bool * heap) * heap) * heap) * int

val g11_example5039 : (((bool * heap) * heap) * heap) * int

val g11_example5040 : (((bool * heap) * heap) * heap) * int

val g11_example5041 : (((bool * heap) * heap) * heap) * int

val g11_example5042 : (((bool * heap) * heap) * heap) * int

val g11_example5043 : (((bool * heap) * heap) * heap) * int

val g11_example5044 : (((bool * heap) * heap) * heap) * int

val g11_example5045 : (((bool * heap) * heap) * heap) * int

val g11_example5046 : (((bool * heap) * heap) * heap) * int

val g11_example5047 : (((bool * heap) * heap) * heap) * int

val g11_example5048 : (((bool * heap) * heap) * heap) * int

val g11_example5049 : (((bool * heap) * heap) * heap) * int

val g11_example5050 : (((bool * heap) * heap) * heap) * int

val g11_example5051 : (((bool * heap) * heap) * heap) * int

val g11_example5052 : (((bool * heap) * heap) * heap) * int

val g11_example5053 : (((bool * heap) * heap) * heap) * int

val g11_example5054 : (((bool * heap) * heap) * heap) * int

val g11_example5055 : (((bool * heap) * heap) * heap) * int

val g11_example5056 : (((bool * heap) * heap) * heap) * int

val g11_example5057 : (((bool * heap) * heap) * heap) * int

val g11_example5058 : (((bool * heap) * heap) * heap) * int

val g11_example5059 : (((bool * heap) * heap) * heap) * int

val g11_example5060 : (((bool * heap) * heap) * heap) * int

val g11_example5061 : (((bool * heap) * heap) * heap) * int

val g11_example5062 : (((bool * heap) * heap) * heap) * int

val g11_example5063 : (((bool * heap) * heap) * heap) * int

val g11_example5064 : (((bool * heap) * heap) * heap) * int

val g11_example5065 : (((bool * heap) * heap) * heap) * int

val g11_example5066 : (((bool * heap) * heap) * heap) * int

val g11_example5067 : (((bool * heap) * heap) * heap) * int

val g11_example5068 : (((bool * heap) * heap) * heap) * int

val g11_example5069 : (((bool * heap) * heap) * heap) * int

val g11_example5070 : (((bool * heap) * heap) * heap) * int

val g11_example5071 : (((bool * heap) * heap) * heap) * int

val g11_example5072 : (((bool * heap) * heap) * heap) * int

val g11_example5073 : (((bool * heap) * heap) * heap) * int

val g11_example5074 : (((bool * heap) * heap) * heap) * int

val g11_example5075 : (((bool * heap) * heap) * heap) * int

val g11_example5076 : (((bool * heap) * heap) * heap) * int

val g11_example5077 : (((bool * heap) * heap) * heap) * int

val g11_example5078 : (((bool * heap) * heap) * heap) * int

val g11_example5079 : (((bool * heap) * heap) * heap) * int

val g11_example5080 : (((bool * heap) * heap) * heap) * int

val g11_example5081 : (((bool * heap) * heap) * heap) * int

val g11_example5082 : (((bool * heap) * heap) * heap) * int

val g11_example5083 : (((bool * heap) * heap) * heap) * int

val g11_example5084 : (((bool * heap) * heap) * heap) * int

val g11_example5085 : (((bool * heap) * heap) * heap) * int

val g11_example5086 : (((bool * heap) * heap) * heap) * int

val g11_example5087 : (((bool * heap) * heap) * heap) * int

val g11_example5088 : (((bool * heap) * heap) * heap) * int

val g11_example5089 : (((bool * heap) * heap) * heap) * int

val g11_example5090 : (((bool * heap) * heap) * heap) * int

val g11_example5091 : (((bool * heap) * heap) * heap) * int

val g11_example5092 : (((bool * heap) * heap) * heap) * int

val g11_example5093 : (((bool * heap) * heap) * heap) * int

val g11_example5094 : (((bool * heap) * heap) * heap) * int

val g11_example5095 : (((bool * heap) * heap) * heap) * int

val g11_example5096 : (((bool * heap) * heap) * heap) * int

val g11_example5097 : (((bool * heap) * heap) * heap) * int

val g11_example5098 : (((bool * heap) * heap) * heap) * int

val g11_example5099 : (((bool * heap) * heap) * heap) * int

val g11_example5100 : (((bool * heap) * heap) * heap) * int

val g11_example5101 : (((bool * heap) * heap) * heap) * int

val g11_example5102 : (((bool * heap) * heap) * heap) * int

val g11_example5103 : (((bool * heap) * heap) * heap) * int

val g11_example5104 : (((bool * heap) * heap) * heap) * int

val g11_example5105 : (((bool * heap) * heap) * heap) * int

val g11_example5106 : (((bool * heap) * heap) * heap) * int

val g11_example5107 : (((bool * heap) * heap) * heap) * int

val g11_example5108 : (((bool * heap) * heap) * heap) * int

val g11_example5109 : (((bool * heap) * heap) * heap) * int

val g11_example5110 : (((bool * heap) * heap) * heap) * int

val g11_example5111 : (((bool * heap) * heap) * heap) * int

val g11_example5112 : (((bool * heap) * heap) * heap) * int

val g11_example5113 : (((bool * heap) * heap) * heap) * int

val g11_example5114 : (((bool * heap) * heap) * heap) * int

val g11_example5115 : (((bool * heap) * heap) * heap) * int

val g11_example5116 : (((bool * heap) * heap) * heap) * int

val g11_example5117 : (((bool * heap) * heap) * heap) * int

val g11_example5118 : (((bool * heap) * heap) * heap) * int

val g11_example5119 : (((bool * heap) * heap) * heap) * int

val g11_example5120 : (((bool * heap) * heap) * heap) * int

val g11_example5121 : (((bool * heap) * heap) * heap) * int

val g11_example5122 : (((bool * heap) * heap) * heap) * int

val g11_example5123 : (((bool * heap) * heap) * heap) * int

val g11_example5124 : (((bool * heap) * heap) * heap) * int

val g11_example5125 : (((bool * heap) * heap) * heap) * int

val g11_example5126 : (((bool * heap) * heap) * heap) * int

val g11_example5127 : (((bool * heap) * heap) * heap) * int

val g11_example5128 : (((bool * heap) * heap) * heap) * int

val g11_example5129 : (((bool * heap) * heap) * heap) * int

val g11_example5130 : (((bool * heap) * heap) * heap) * int

val g11_example5131 : (((bool * heap) * heap) * heap) * int

val g11_example5132 : (((bool * heap) * heap) * heap) * int

val g11_example5133 : (((bool * heap) * heap) * heap) * int

val g11_example5134 : (((bool * heap) * heap) * heap) * int

val g11_example5135 : (((bool * heap) * heap) * heap) * int

val g11_example5136 : (((bool * heap) * heap) * heap) * int

val g11_example5137 : (((bool * heap) * heap) * heap) * int

val g11_example5138 : (((bool * heap) * heap) * heap) * int

val g11_example5139 : (((bool * heap) * heap) * heap) * int

val g11_example5140 : (((bool * heap) * heap) * heap) * int

val g11_example5141 : (((bool * heap) * heap) * heap) * int

val g11_example5142 : (((bool * heap) * heap) * heap) * int

val g11_example5143 : (((bool * heap) * heap) * heap) * int

val g11_example5144 : (((bool * heap) * heap) * heap) * int

val g11_example5145 : (((bool * heap) * heap) * heap) * int

val g11_example5146 : (((bool * heap) * heap) * heap) * int

val g11_example5147 : (((bool * heap) * heap) * heap) * int

val g11_example5148 : (((bool * heap) * heap) * heap) * int

val g11_example5149 : (((bool * heap) * heap) * heap) * int

val g11_example5150 : (((bool * heap) * heap) * heap) * int

val g11_example5151 : (((bool * heap) * heap) * heap) * int

val g11_example5152 : (((bool * heap) * heap) * heap) * int

val g11_example5153 : (((bool * heap) * heap) * heap) * int

val g11_example5154 : (((bool * heap) * heap) * heap) * int

val g11_example5155 : (((bool * heap) * heap) * heap) * int

val g11_example5156 : (((bool * heap) * heap) * heap) * int

val g11_example5157 : (((bool * heap) * heap) * heap) * int

val g11_example5158 : (((bool * heap) * heap) * heap) * int

val g11_example5159 : (((bool * heap) * heap) * heap) * int

val g11_example5160 : (((bool * heap) * heap) * heap) * int

val g11_example5161 : (((bool * heap) * heap) * heap) * int

val g11_example5162 : (((bool * heap) * heap) * heap) * int

val g11_example5163 : (((bool * heap) * heap) * heap) * int

val g11_example5164 : (((bool * heap) * heap) * heap) * int

val g11_example5165 : (((bool * heap) * heap) * heap) * int

val g11_example5166 : (((bool * heap) * heap) * heap) * int

val g11_example5167 : (((bool * heap) * heap) * heap) * int

val g11_example5168 : (((bool * heap) * heap) * heap) * int

val g11_example5169 : (((bool * heap) * heap) * heap) * int

val g11_example5170 : (((bool * heap) * heap) * heap) * int

val g11_example5171 : (((bool * heap) * heap) * heap) * int

val g11_example5172 : (((bool * heap) * heap) * heap) * int

val g11_example5173 : (((bool * heap) * heap) * heap) * int

val g11_example5174 : (((bool * heap) * heap) * heap) * int

val g11_example5175 : (((bool * heap) * heap) * heap) * int

val g11_example5176 : (((bool * heap) * heap) * heap) * int

val g11_example5177 : (((bool * heap) * heap) * heap) * int

val g11_example5178 : (((bool * heap) * heap) * heap) * int

val g11_example5179 : (((bool * heap) * heap) * heap) * int

val g11_example5180 : (((bool * heap) * heap) * heap) * int

val g11_example5181 : (((bool * heap) * heap) * heap) * int

val g11_example5182 : (((bool * heap) * heap) * heap) * int

val g11_example5183 : (((bool * heap) * heap) * heap) * int

val g11_example5184 : (((bool * heap) * heap) * heap) * int

val g11_example5185 : (((bool * heap) * heap) * heap) * int

val g11_example5186 : (((bool * heap) * heap) * heap) * int

val g11_example5187 : (((bool * heap) * heap) * heap) * int

val g11_example5188 : (((bool * heap) * heap) * heap) * int

val g11_example5189 : (((bool * heap) * heap) * heap) * int

val g11_example5190 : (((bool * heap) * heap) * heap) * int

val g11_example5191 : (((bool * heap) * heap) * heap) * int

val g11_example5192 : (((bool * heap) * heap) * heap) * int

val g11_example5193 : (((bool * heap) * heap) * heap) * int

val g11_example5194 : (((bool * heap) * heap) * heap) * int

val g11_example5195 : (((bool * heap) * heap) * heap) * int

val g11_example5196 : (((bool * heap) * heap) * heap) * int

val g11_example5197 : (((bool * heap) * heap) * heap) * int

val g11_example5198 : (((bool * heap) * heap) * heap) * int

val g11_example5199 : (((bool * heap) * heap) * heap) * int

val g11_example5200 : (((bool * heap) * heap) * heap) * int

val g11_example5201 : (((bool * heap) * heap) * heap) * int

val g11_example5202 : (((bool * heap) * heap) * heap) * int

val g11_example5203 : (((bool * heap) * heap) * heap) * int

val g11_example5204 : (((bool * heap) * heap) * heap) * int

val g11_example5205 : (((bool * heap) * heap) * heap) * int

val g11_example5206 : (((bool * heap) * heap) * heap) * int

val g11_example5207 : (((bool * heap) * heap) * heap) * int

val g11_example5208 : (((bool * heap) * heap) * heap) * int

val g11_example5209 : (((bool * heap) * heap) * heap) * int

val g11_example5210 : (((bool * heap) * heap) * heap) * int

val g11_example5211 : (((bool * heap) * heap) * heap) * int

val g11_example5212 : (((bool * heap) * heap) * heap) * int

val g11_example5213 : (((bool * heap) * heap) * heap) * int

val g11_example5214 : (((bool * heap) * heap) * heap) * int

val g11_example5215 : (((bool * heap) * heap) * heap) * int

val g11_example5216 : (((bool * heap) * heap) * heap) * int

val g11_example5217 : (((bool * heap) * heap) * heap) * int

val g11_example5218 : (((bool * heap) * heap) * heap) * int

val g11_example5219 : (((bool * heap) * heap) * heap) * int

val g11_example5220 : (((bool * heap) * heap) * heap) * int

val g11_example5221 : (((bool * heap) * heap) * heap) * int

val g11_example5222 : (((bool * heap) * heap) * heap) * int

val g11_example5223 : (((bool * heap) * heap) * heap) * int

val g11_example5224 : (((bool * heap) * heap) * heap) * int

val g11_example5225 : (((bool * heap) * heap) * heap) * int

val g11_example5226 : (((bool * heap) * heap) * heap) * int

val g11_example5227 : (((bool * heap) * heap) * heap) * int

val g11_example5228 : (((bool * heap) * heap) * heap) * int

val g11_example5229 : (((bool * heap) * heap) * heap) * int

val g11_example5230 : (((bool * heap) * heap) * heap) * int

val g11_example5231 : (((bool * heap) * heap) * heap) * int

val g11_example5232 : (((bool * heap) * heap) * heap) * int

val g11_example5233 : (((bool * heap) * heap) * heap) * int

val g11_example5234 : (((bool * heap) * heap) * heap) * int

val g11_example5235 : (((bool * heap) * heap) * heap) * int

val g11_example5236 : (((bool * heap) * heap) * heap) * int

val g11_example5237 : (((bool * heap) * heap) * heap) * int

val g11_example5238 : (((bool * heap) * heap) * heap) * int

val g11_example5239 : (((bool * heap) * heap) * heap) * int

val g11_example5240 : (((bool * heap) * heap) * heap) * int

val g11_example5241 : (((bool * heap) * heap) * heap) * int

val g11_example5242 : (((bool * heap) * heap) * heap) * int

val g11_example5243 : (((bool * heap) * heap) * heap) * int

val g11_example5244 : (((bool * heap) * heap) * heap) * int

val g11_example5245 : (((bool * heap) * heap) * heap) * int

val g11_example5246 : (((bool * heap) * heap) * heap) * int

val g11_example5247 : (((bool * heap) * heap) * heap) * int

val g11_example5248 : (((bool * heap) * heap) * heap) * int

val g11_example5249 : (((bool * heap) * heap) * heap) * int

val g11_example5250 : (((bool * heap) * heap) * heap) * int

val g11_example5251 : (((bool * heap) * heap) * heap) * int

val g11_example5252 : (((bool * heap) * heap) * heap) * int

val g11_example5253 : (((bool * heap) * heap) * heap) * int

val g11_example5254 : (((bool * heap) * heap) * heap) * int

val g11_example5255 : (((bool * heap) * heap) * heap) * int

val g11_example5256 : (((bool * heap) * heap) * heap) * int

val g11_example5257 : (((bool * heap) * heap) * heap) * int

val g11_example5258 : (((bool * heap) * heap) * heap) * int

val g11_example5259 : (((bool * heap) * heap) * heap) * int

val g11_example5260 : (((bool * heap) * heap) * heap) * int

val g11_example5261 : (((bool * heap) * heap) * heap) * int

val g11_example5262 : (((bool * heap) * heap) * heap) * int

val g11_example5263 : (((bool * heap) * heap) * heap) * int

val g11_example5264 : (((bool * heap) * heap) * heap) * int

val g11_example5265 : (((bool * heap) * heap) * heap) * int

val g11_example5266 : (((bool * heap) * heap) * heap) * int

val g11_example5267 : (((bool * heap) * heap) * heap) * int

val g11_example5268 : (((bool * heap) * heap) * heap) * int

val g11_example5269 : (((bool * heap) * heap) * heap) * int

val g11_example5270 : (((bool * heap) * heap) * heap) * int

val g11_example5271 : (((bool * heap) * heap) * heap) * int

val g11_example5272 : (((bool * heap) * heap) * heap) * int

val g11_example5273 : (((bool * heap) * heap) * heap) * int

val g11_example5274 : (((bool * heap) * heap) * heap) * int

val g11_example5275 : (((bool * heap) * heap) * heap) * int

val g11_example5276 : (((bool * heap) * heap) * heap) * int

val g11_example5277 : (((bool * heap) * heap) * heap) * int

val g11_example5278 : (((bool * heap) * heap) * heap) * int

val g11_example5279 : (((bool * heap) * heap) * heap) * int

val g11_example5280 : (((bool * heap) * heap) * heap) * int

val g11_example5281 : (((bool * heap) * heap) * heap) * int

val g11_example5282 : (((bool * heap) * heap) * heap) * int

val g11_example5283 : (((bool * heap) * heap) * heap) * int

val g11_example5284 : (((bool * heap) * heap) * heap) * int

val g11_example5285 : (((bool * heap) * heap) * heap) * int

val g11_example5286 : (((bool * heap) * heap) * heap) * int

val g11_example5287 : (((bool * heap) * heap) * heap) * int

val g11_example5288 : (((bool * heap) * heap) * heap) * int

val g11_example5289 : (((bool * heap) * heap) * heap) * int

val g11_example5290 : (((bool * heap) * heap) * heap) * int

val g11_example5291 : (((bool * heap) * heap) * heap) * int

val g11_example5292 : (((bool * heap) * heap) * heap) * int

val g11_example5293 : (((bool * heap) * heap) * heap) * int

val g11_example5294 : (((bool * heap) * heap) * heap) * int

val g11_example5295 : (((bool * heap) * heap) * heap) * int

val g11_example5296 : (((bool * heap) * heap) * heap) * int

val g11_example5297 : (((bool * heap) * heap) * heap) * int

val g11_example5298 : (((bool * heap) * heap) * heap) * int

val g11_example5299 : (((bool * heap) * heap) * heap) * int

val g11_example5300 : (((bool * heap) * heap) * heap) * int

val g11_example5301 : (((bool * heap) * heap) * heap) * int

val g11_example5302 : (((bool * heap) * heap) * heap) * int

val g11_example5303 : (((bool * heap) * heap) * heap) * int

val g11_example5304 : (((bool * heap) * heap) * heap) * int

val g11_example5305 : (((bool * heap) * heap) * heap) * int

val g11_example5306 : (((bool * heap) * heap) * heap) * int

val g11_example5307 : (((bool * heap) * heap) * heap) * int

val g11_example5308 : (((bool * heap) * heap) * heap) * int

val g11_example5309 : (((bool * heap) * heap) * heap) * int

val g11_example5310 : (((bool * heap) * heap) * heap) * int

val g11_example5311 : (((bool * heap) * heap) * heap) * int

val g11_example5312 : (((bool * heap) * heap) * heap) * int

val g11_example5313 : (((bool * heap) * heap) * heap) * int

val g11_example5314 : (((bool * heap) * heap) * heap) * int

val g11_example5315 : (((bool * heap) * heap) * heap) * int

val g11_example5316 : (((bool * heap) * heap) * heap) * int

val g11_example5317 : (((bool * heap) * heap) * heap) * int

val g11_example5318 : (((bool * heap) * heap) * heap) * int

val g11_example5319 : (((bool * heap) * heap) * heap) * int

val g11_example5320 : (((bool * heap) * heap) * heap) * int

val g11_example5321 : (((bool * heap) * heap) * heap) * int

val g11_example5322 : (((bool * heap) * heap) * heap) * int

val g11_example5323 : (((bool * heap) * heap) * heap) * int

val g11_example5324 : (((bool * heap) * heap) * heap) * int

val g11_example5325 : (((bool * heap) * heap) * heap) * int

val g11_example5326 : (((bool * heap) * heap) * heap) * int

val g11_example5327 : (((bool * heap) * heap) * heap) * int

val g11_example5328 : (((bool * heap) * heap) * heap) * int

val g11_example5329 : (((bool * heap) * heap) * heap) * int

val g11_example5330 : (((bool * heap) * heap) * heap) * int

val g11_example5331 : (((bool * heap) * heap) * heap) * int

val g11_example5332 : (((bool * heap) * heap) * heap) * int

val g11_example5333 : (((bool * heap) * heap) * heap) * int

val g11_example5334 : (((bool * heap) * heap) * heap) * int

val g11_example5335 : (((bool * heap) * heap) * heap) * int

val g11_example5336 : (((bool * heap) * heap) * heap) * int

val g11_example5337 : (((bool * heap) * heap) * heap) * int

val g11_example5338 : (((bool * heap) * heap) * heap) * int

val g11_example5339 : (((bool * heap) * heap) * heap) * int

val g11_example5340 : (((bool * heap) * heap) * heap) * int

val g11_example5341 : (((bool * heap) * heap) * heap) * int

val g11_example5342 : (((bool * heap) * heap) * heap) * int

val g11_example5343 : (((bool * heap) * heap) * heap) * int

val g11_example5344 : (((bool * heap) * heap) * heap) * int

val g11_example5345 : (((bool * heap) * heap) * heap) * int

val g11_example5346 : (((bool * heap) * heap) * heap) * int

val g11_example5347 : (((bool * heap) * heap) * heap) * int

val g11_example5348 : (((bool * heap) * heap) * heap) * int

val g11_example5349 : (((bool * heap) * heap) * heap) * int

val g11_example5350 : (((bool * heap) * heap) * heap) * int

val g11_example5351 : (((bool * heap) * heap) * heap) * int

val g11_example5352 : (((bool * heap) * heap) * heap) * int

val g11_example5353 : (((bool * heap) * heap) * heap) * int

val g11_example5354 : (((bool * heap) * heap) * heap) * int

val g11_example5355 : (((bool * heap) * heap) * heap) * int

val g11_example5356 : (((bool * heap) * heap) * heap) * int

val g11_example5357 : (((bool * heap) * heap) * heap) * int

val g11_example5358 : (((bool * heap) * heap) * heap) * int

val g11_example5359 : (((bool * heap) * heap) * heap) * int

val g11_example5360 : (((bool * heap) * heap) * heap) * int

val g11_example5361 : (((bool * heap) * heap) * heap) * int

val g11_example5362 : (((bool * heap) * heap) * heap) * int

val g11_example5363 : (((bool * heap) * heap) * heap) * int

val g11_example5364 : (((bool * heap) * heap) * heap) * int

val g11_example5365 : (((bool * heap) * heap) * heap) * int

val g11_example5366 : (((bool * heap) * heap) * heap) * int

val g11_example5367 : (((bool * heap) * heap) * heap) * int

val g11_example5368 : (((bool * heap) * heap) * heap) * int

val g11_example5369 : (((bool * heap) * heap) * heap) * int

val g11_example5370 : (((bool * heap) * heap) * heap) * int

val g11_example5371 : (((bool * heap) * heap) * heap) * int

val g11_example5372 : (((bool * heap) * heap) * heap) * int

val g11_example5373 : (((bool * heap) * heap) * heap) * int

val g11_example5374 : (((bool * heap) * heap) * heap) * int

val g11_example5375 : (((bool * heap) * heap) * heap) * int

val g11_example5376 : (((bool * heap) * heap) * heap) * int

val g11_example5377 : (((bool * heap) * heap) * heap) * int

val g11_example5378 : (((bool * heap) * heap) * heap) * int

val g11_example5379 : (((bool * heap) * heap) * heap) * int

val g11_example5380 : (((bool * heap) * heap) * heap) * int

val g11_example5381 : (((bool * heap) * heap) * heap) * int

val g11_example5382 : (((bool * heap) * heap) * heap) * int

val g11_example5383 : (((bool * heap) * heap) * heap) * int

val g11_example5384 : (((bool * heap) * heap) * heap) * int

val g11_example5385 : (((bool * heap) * heap) * heap) * int

val g11_example5386 : (((bool * heap) * heap) * heap) * int

val g11_example5387 : (((bool * heap) * heap) * heap) * int

val g11_example5388 : (((bool * heap) * heap) * heap) * int

val g11_example5389 : (((bool * heap) * heap) * heap) * int

val g11_example5390 : (((bool * heap) * heap) * heap) * int

val g11_example5391 : (((bool * heap) * heap) * heap) * int

val g11_example5392 : (((bool * heap) * heap) * heap) * int

val g11_example5393 : (((bool * heap) * heap) * heap) * int

val g11_example5394 : (((bool * heap) * heap) * heap) * int

val g11_example5395 : (((bool * heap) * heap) * heap) * int

val g11_example5396 : (((bool * heap) * heap) * heap) * int

val g11_example5397 : (((bool * heap) * heap) * heap) * int

val g11_example5398 : (((bool * heap) * heap) * heap) * int

val g11_example5399 : (((bool * heap) * heap) * heap) * int

val g11_example5400 : (((bool * heap) * heap) * heap) * int

val g11_example5401 : (((bool * heap) * heap) * heap) * int

val g11_example5402 : (((bool * heap) * heap) * heap) * int

val g11_example5403 : (((bool * heap) * heap) * heap) * int

val g11_example5404 : (((bool * heap) * heap) * heap) * int

val g11_example5405 : (((bool * heap) * heap) * heap) * int

val g11_example5406 : (((bool * heap) * heap) * heap) * int

val g11_example5407 : (((bool * heap) * heap) * heap) * int

val g11_example5408 : (((bool * heap) * heap) * heap) * int

val g11_example5409 : (((bool * heap) * heap) * heap) * int

val g11_example5410 : (((bool * heap) * heap) * heap) * int

val g11_example5411 : (((bool * heap) * heap) * heap) * int

val g11_example5412 : (((bool * heap) * heap) * heap) * int

val g11_example5413 : (((bool * heap) * heap) * heap) * int

val g11_example5414 : (((bool * heap) * heap) * heap) * int

val g11_example5415 : (((bool * heap) * heap) * heap) * int

val g11_example5416 : (((bool * heap) * heap) * heap) * int

val g11_example5417 : (((bool * heap) * heap) * heap) * int

val g11_example5418 : (((bool * heap) * heap) * heap) * int

val g11_example5419 : (((bool * heap) * heap) * heap) * int

val g11_example5420 : (((bool * heap) * heap) * heap) * int

val g11_example5421 : (((bool * heap) * heap) * heap) * int

val g11_example5422 : (((bool * heap) * heap) * heap) * int

val g11_example5423 : (((bool * heap) * heap) * heap) * int

val g11_example5424 : (((bool * heap) * heap) * heap) * int

val g11_example5425 : (((bool * heap) * heap) * heap) * int

val g11_example5426 : (((bool * heap) * heap) * heap) * int

val g11_example5427 : (((bool * heap) * heap) * heap) * int

val g11_example5428 : (((bool * heap) * heap) * heap) * int

val g11_example5429 : (((bool * heap) * heap) * heap) * int

val g11_example5430 : (((bool * heap) * heap) * heap) * int

val g11_example5431 : (((bool * heap) * heap) * heap) * int

val g11_example5432 : (((bool * heap) * heap) * heap) * int

val g11_example5433 : (((bool * heap) * heap) * heap) * int

val g11_example5434 : (((bool * heap) * heap) * heap) * int

val g11_example5435 : (((bool * heap) * heap) * heap) * int

val g11_example5436 : (((bool * heap) * heap) * heap) * int

val g11_example5437 : (((bool * heap) * heap) * heap) * int

val g11_example5438 : (((bool * heap) * heap) * heap) * int

val g11_example5439 : (((bool * heap) * heap) * heap) * int

val g11_example5440 : (((bool * heap) * heap) * heap) * int

val g11_example5441 : (((bool * heap) * heap) * heap) * int

val g11_example5442 : (((bool * heap) * heap) * heap) * int

val g11_example5443 : (((bool * heap) * heap) * heap) * int

val g11_example5444 : (((bool * heap) * heap) * heap) * int

val g11_example5445 : (((bool * heap) * heap) * heap) * int

val g11_example5446 : (((bool * heap) * heap) * heap) * int

val g11_example5447 : (((bool * heap) * heap) * heap) * int

val g11_example5448 : (((bool * heap) * heap) * heap) * int

val g11_example5449 : (((bool * heap) * heap) * heap) * int

val g11_example5450 : (((bool * heap) * heap) * heap) * int

val g11_example5451 : (((bool * heap) * heap) * heap) * int

val g11_example5452 : (((bool * heap) * heap) * heap) * int

val g11_example5453 : (((bool * heap) * heap) * heap) * int

val g11_example5454 : (((bool * heap) * heap) * heap) * int

val g11_example5455 : (((bool * heap) * heap) * heap) * int

val g11_example5456 : (((bool * heap) * heap) * heap) * int

val g11_example5457 : (((bool * heap) * heap) * heap) * int

val g11_example5458 : (((bool * heap) * heap) * heap) * int

val g11_example5459 : (((bool * heap) * heap) * heap) * int

val g11_example5460 : (((bool * heap) * heap) * heap) * int

val g11_example5461 : (((bool * heap) * heap) * heap) * int

val g11_example5462 : (((bool * heap) * heap) * heap) * int

val g11_example5463 : (((bool * heap) * heap) * heap) * int

val g11_example5464 : (((bool * heap) * heap) * heap) * int

val g11_example5465 : (((bool * heap) * heap) * heap) * int

val g11_example5466 : (((bool * heap) * heap) * heap) * int

val g11_example5467 : (((bool * heap) * heap) * heap) * int

val g11_example5468 : (((bool * heap) * heap) * heap) * int

val g11_example5469 : (((bool * heap) * heap) * heap) * int

val g11_example5470 : (((bool * heap) * heap) * heap) * int

val g11_example5471 : (((bool * heap) * heap) * heap) * int

val g11_example5472 : (((bool * heap) * heap) * heap) * int

val g11_example5473 : (((bool * heap) * heap) * heap) * int

val g11_example5474 : (((bool * heap) * heap) * heap) * int

val g11_example5475 : (((bool * heap) * heap) * heap) * int

val g11_example5476 : (((bool * heap) * heap) * heap) * int

val g11_example5477 : (((bool * heap) * heap) * heap) * int

val g11_example5478 : (((bool * heap) * heap) * heap) * int

val g11_example5479 : (((bool * heap) * heap) * heap) * int

val g11_example5480 : (((bool * heap) * heap) * heap) * int

val g11_example5481 : (((bool * heap) * heap) * heap) * int

val g11_example5482 : (((bool * heap) * heap) * heap) * int

val g11_example5483 : (((bool * heap) * heap) * heap) * int

val g11_example5484 : (((bool * heap) * heap) * heap) * int

val g11_example5485 : (((bool * heap) * heap) * heap) * int

val g11_example5486 : (((bool * heap) * heap) * heap) * int

val g11_example5487 : (((bool * heap) * heap) * heap) * int

val g11_example5488 : (((bool * heap) * heap) * heap) * int

val g11_example5489 : (((bool * heap) * heap) * heap) * int

val g11_example5490 : (((bool * heap) * heap) * heap) * int

val g11_example5491 : (((bool * heap) * heap) * heap) * int

val g11_example5492 : (((bool * heap) * heap) * heap) * int

val g11_example5493 : (((bool * heap) * heap) * heap) * int

val g11_example5494 : (((bool * heap) * heap) * heap) * int

val g11_example5495 : (((bool * heap) * heap) * heap) * int

val g11_example5496 : (((bool * heap) * heap) * heap) * int

val g11_example5497 : (((bool * heap) * heap) * heap) * int

val g11_example5498 : (((bool * heap) * heap) * heap) * int

val g11_example5499 : (((bool * heap) * heap) * heap) * int

val g11_example5500 : (((bool * heap) * heap) * heap) * int

val g11_example5501 : (((bool * heap) * heap) * heap) * int

val g11_example5502 : (((bool * heap) * heap) * heap) * int

val g11_example5503 : (((bool * heap) * heap) * heap) * int

val g11_example5504 : (((bool * heap) * heap) * heap) * int

val g11_example5505 : (((bool * heap) * heap) * heap) * int

val g11_example5506 : (((bool * heap) * heap) * heap) * int

val g11_example5507 : (((bool * heap) * heap) * heap) * int

val g11_example5508 : (((bool * heap) * heap) * heap) * int

val g11_example5509 : (((bool * heap) * heap) * heap) * int

val g11_example5510 : (((bool * heap) * heap) * heap) * int

val g11_example5511 : (((bool * heap) * heap) * heap) * int

val g11_example5512 : (((bool * heap) * heap) * heap) * int

val g11_example5513 : (((bool * heap) * heap) * heap) * int

val g11_example5514 : (((bool * heap) * heap) * heap) * int

val g11_example5515 : (((bool * heap) * heap) * heap) * int

val g11_example5516 : (((bool * heap) * heap) * heap) * int

val g11_example5517 : (((bool * heap) * heap) * heap) * int

val g11_example5518 : (((bool * heap) * heap) * heap) * int

val g11_example5519 : (((bool * heap) * heap) * heap) * int

val g11_example5520 : (((bool * heap) * heap) * heap) * int

val g11_example5521 : (((bool * heap) * heap) * heap) * int

val g11_example5522 : (((bool * heap) * heap) * heap) * int

val g11_example5523 : (((bool * heap) * heap) * heap) * int

val g11_example5524 : (((bool * heap) * heap) * heap) * int

val g11_example5525 : (((bool * heap) * heap) * heap) * int

val g11_example5526 : (((bool * heap) * heap) * heap) * int

val g11_example5527 : (((bool * heap) * heap) * heap) * int

val g11_example5528 : (((bool * heap) * heap) * heap) * int

val g11_example5529 : (((bool * heap) * heap) * heap) * int

val g11_example5530 : (((bool * heap) * heap) * heap) * int

val g11_example5531 : (((bool * heap) * heap) * heap) * int

val g11_example5532 : (((bool * heap) * heap) * heap) * int

val g11_example5533 : (((bool * heap) * heap) * heap) * int

val g11_example5534 : (((bool * heap) * heap) * heap) * int

val g11_example5535 : (((bool * heap) * heap) * heap) * int

val g11_example5536 : (((bool * heap) * heap) * heap) * int

val g11_example5537 : (((bool * heap) * heap) * heap) * int

val g11_example5538 : (((bool * heap) * heap) * heap) * int

val g11_example5539 : (((bool * heap) * heap) * heap) * int

val g11_example5540 : (((bool * heap) * heap) * heap) * int

val g11_example5541 : (((bool * heap) * heap) * heap) * int

val g11_example5542 : (((bool * heap) * heap) * heap) * int

val g11_example5543 : (((bool * heap) * heap) * heap) * int

val g11_example5544 : (((bool * heap) * heap) * heap) * int

val g11_example5545 : (((bool * heap) * heap) * heap) * int

val g11_example5546 : (((bool * heap) * heap) * heap) * int

val g11_example5547 : (((bool * heap) * heap) * heap) * int

val g11_example5548 : (((bool * heap) * heap) * heap) * int

val g11_example5549 : (((bool * heap) * heap) * heap) * int

val g11_example5550 : (((bool * heap) * heap) * heap) * int

val g11_example5551 : (((bool * heap) * heap) * heap) * int

val g11_example5552 : (((bool * heap) * heap) * heap) * int

val g11_example5553 : (((bool * heap) * heap) * heap) * int

val g11_example5554 : (((bool * heap) * heap) * heap) * int

val g11_example5555 : (((bool * heap) * heap) * heap) * int

val g11_example5556 : (((bool * heap) * heap) * heap) * int

val g11_example5557 : (((bool * heap) * heap) * heap) * int

val g11_example5558 : (((bool * heap) * heap) * heap) * int

val g11_example5559 : (((bool * heap) * heap) * heap) * int

val g11_example5560 : (((bool * heap) * heap) * heap) * int

val g11_example5561 : (((bool * heap) * heap) * heap) * int

val g11_example5562 : (((bool * heap) * heap) * heap) * int

val g11_example5563 : (((bool * heap) * heap) * heap) * int

val g11_example5564 : (((bool * heap) * heap) * heap) * int

val g11_example5565 : (((bool * heap) * heap) * heap) * int

val g11_example5566 : (((bool * heap) * heap) * heap) * int

val g11_example5567 : (((bool * heap) * heap) * heap) * int

val g11_example5568 : (((bool * heap) * heap) * heap) * int

val g11_example5569 : (((bool * heap) * heap) * heap) * int

val g11_example5570 : (((bool * heap) * heap) * heap) * int

val g11_example5571 : (((bool * heap) * heap) * heap) * int

val g11_example5572 : (((bool * heap) * heap) * heap) * int

val g11_example5573 : (((bool * heap) * heap) * heap) * int

val g11_example5574 : (((bool * heap) * heap) * heap) * int

val g11_example5575 : (((bool * heap) * heap) * heap) * int

val g11_example5576 : (((bool * heap) * heap) * heap) * int

val g11_example5577 : (((bool * heap) * heap) * heap) * int

val g11_example5578 : (((bool * heap) * heap) * heap) * int

val g11_example5579 : (((bool * heap) * heap) * heap) * int

val g11_example5580 : (((bool * heap) * heap) * heap) * int

val g11_example5581 : (((bool * heap) * heap) * heap) * int

val g11_example5582 : (((bool * heap) * heap) * heap) * int

val g11_example5583 : (((bool * heap) * heap) * heap) * int

val g11_example5584 : (((bool * heap) * heap) * heap) * int

val g11_example5585 : (((bool * heap) * heap) * heap) * int

val g11_example5586 : (((bool * heap) * heap) * heap) * int

val g11_example5587 : (((bool * heap) * heap) * heap) * int

val g11_example5588 : (((bool * heap) * heap) * heap) * int

val g11_example5589 : (((bool * heap) * heap) * heap) * int

val g11_example5590 : (((bool * heap) * heap) * heap) * int

val g11_example5591 : (((bool * heap) * heap) * heap) * int

val g11_example5592 : (((bool * heap) * heap) * heap) * int

val g11_example5593 : (((bool * heap) * heap) * heap) * int

val g11_example5594 : (((bool * heap) * heap) * heap) * int

val g11_example5595 : (((bool * heap) * heap) * heap) * int

val g11_example5596 : (((bool * heap) * heap) * heap) * int

val g11_example5597 : (((bool * heap) * heap) * heap) * int

val g11_example5598 : (((bool * heap) * heap) * heap) * int

val g11_example5599 : (((bool * heap) * heap) * heap) * int

val g11_example5600 : (((bool * heap) * heap) * heap) * int

val g11_example5601 : (((bool * heap) * heap) * heap) * int

val g11_example5602 : (((bool * heap) * heap) * heap) * int

val g11_example5603 : (((bool * heap) * heap) * heap) * int

val g11_example5604 : (((bool * heap) * heap) * heap) * int

val g11_example5605 : (((bool * heap) * heap) * heap) * int

val g11_example5606 : (((bool * heap) * heap) * heap) * int

val g11_example5607 : (((bool * heap) * heap) * heap) * int

val g11_example5608 : (((bool * heap) * heap) * heap) * int

val g11_example5609 : (((bool * heap) * heap) * heap) * int

val g11_example5610 : (((bool * heap) * heap) * heap) * int

val g11_example5611 : (((bool * heap) * heap) * heap) * int

val g11_example5612 : (((bool * heap) * heap) * heap) * int

val g11_example5613 : (((bool * heap) * heap) * heap) * int

val g11_example5614 : (((bool * heap) * heap) * heap) * int

val g11_example5615 : (((bool * heap) * heap) * heap) * int

val g11_example5616 : (((bool * heap) * heap) * heap) * int

val g11_example5617 : (((bool * heap) * heap) * heap) * int

val g11_example5618 : (((bool * heap) * heap) * heap) * int

val g11_example5619 : (((bool * heap) * heap) * heap) * int

val g11_example5620 : (((bool * heap) * heap) * heap) * int

val g11_example5621 : (((bool * heap) * heap) * heap) * int

val g11_example5622 : (((bool * heap) * heap) * heap) * int

val g11_example5623 : (((bool * heap) * heap) * heap) * int

val g11_example5624 : (((bool * heap) * heap) * heap) * int

val g11_example5625 : (((bool * heap) * heap) * heap) * int

val g11_example5626 : (((bool * heap) * heap) * heap) * int

val g11_example5627 : (((bool * heap) * heap) * heap) * int

val g11_example5628 : (((bool * heap) * heap) * heap) * int

val g11_example5629 : (((bool * heap) * heap) * heap) * int

val g11_example5630 : (((bool * heap) * heap) * heap) * int

val g11_example5631 : (((bool * heap) * heap) * heap) * int

val g11_example5632 : (((bool * heap) * heap) * heap) * int

val g11_example5633 : (((bool * heap) * heap) * heap) * int

val g11_example5634 : (((bool * heap) * heap) * heap) * int

val g11_example5635 : (((bool * heap) * heap) * heap) * int

val g11_example5636 : (((bool * heap) * heap) * heap) * int

val g11_example5637 : (((bool * heap) * heap) * heap) * int

val g11_example5638 : (((bool * heap) * heap) * heap) * int

val g11_example5639 : (((bool * heap) * heap) * heap) * int

val g11_example5640 : (((bool * heap) * heap) * heap) * int

val g11_example5641 : (((bool * heap) * heap) * heap) * int

val g11_example5642 : (((bool * heap) * heap) * heap) * int

val g11_example5643 : (((bool * heap) * heap) * heap) * int

val g11_example5644 : (((bool * heap) * heap) * heap) * int

val g11_example5645 : (((bool * heap) * heap) * heap) * int

val g11_example5646 : (((bool * heap) * heap) * heap) * int

val g11_example5647 : (((bool * heap) * heap) * heap) * int

val g11_example5648 : (((bool * heap) * heap) * heap) * int

val g11_example5649 : (((bool * heap) * heap) * heap) * int

val g11_example5650 : (((bool * heap) * heap) * heap) * int

val g11_example5651 : (((bool * heap) * heap) * heap) * int

val g11_example5652 : (((bool * heap) * heap) * heap) * int

val g11_example5653 : (((bool * heap) * heap) * heap) * int

val g11_example5654 : (((bool * heap) * heap) * heap) * int

val g11_example5655 : (((bool * heap) * heap) * heap) * int

val g11_example5656 : (((bool * heap) * heap) * heap) * int

val g11_example5657 : (((bool * heap) * heap) * heap) * int

val g11_example5658 : (((bool * heap) * heap) * heap) * int

val g11_example5659 : (((bool * heap) * heap) * heap) * int

val g11_example5660 : (((bool * heap) * heap) * heap) * int

val g11_example5661 : (((bool * heap) * heap) * heap) * int

val g11_example5662 : (((bool * heap) * heap) * heap) * int

val g11_example5663 : (((bool * heap) * heap) * heap) * int

val g11_example5664 : (((bool * heap) * heap) * heap) * int

val g11_example5665 : (((bool * heap) * heap) * heap) * int

val g11_example5666 : (((bool * heap) * heap) * heap) * int

val g11_example5667 : (((bool * heap) * heap) * heap) * int

val g11_example5668 : (((bool * heap) * heap) * heap) * int

val g11_example5669 : (((bool * heap) * heap) * heap) * int

val g11_example5670 : (((bool * heap) * heap) * heap) * int

val g11_example5671 : (((bool * heap) * heap) * heap) * int

val g11_example5672 : (((bool * heap) * heap) * heap) * int

val g11_example5673 : (((bool * heap) * heap) * heap) * int

val g11_example5674 : (((bool * heap) * heap) * heap) * int

val g11_example5675 : (((bool * heap) * heap) * heap) * int

val g11_example5676 : (((bool * heap) * heap) * heap) * int

val g11_example5677 : (((bool * heap) * heap) * heap) * int

val g11_example5678 : (((bool * heap) * heap) * heap) * int

val g11_example5679 : (((bool * heap) * heap) * heap) * int

val g11_example5680 : (((bool * heap) * heap) * heap) * int

val g11_example5681 : (((bool * heap) * heap) * heap) * int

val g11_example5682 : (((bool * heap) * heap) * heap) * int

val g11_example5683 : (((bool * heap) * heap) * heap) * int

val g11_example5684 : (((bool * heap) * heap) * heap) * int

val g11_example5685 : (((bool * heap) * heap) * heap) * int

val g11_example5686 : (((bool * heap) * heap) * heap) * int

val g11_example5687 : (((bool * heap) * heap) * heap) * int

val g11_example5688 : (((bool * heap) * heap) * heap) * int

val g11_example5689 : (((bool * heap) * heap) * heap) * int

val g11_example5690 : (((bool * heap) * heap) * heap) * int

val g11_example5691 : (((bool * heap) * heap) * heap) * int

val g11_example5692 : (((bool * heap) * heap) * heap) * int

val g11_example5693 : (((bool * heap) * heap) * heap) * int

val g11_example5694 : (((bool * heap) * heap) * heap) * int

val g11_example5695 : (((bool * heap) * heap) * heap) * int

val g11_example5696 : (((bool * heap) * heap) * heap) * int

val g11_example5697 : (((bool * heap) * heap) * heap) * int

val g11_example5698 : (((bool * heap) * heap) * heap) * int

val g11_example5699 : (((bool * heap) * heap) * heap) * int

val g11_example5700 : (((bool * heap) * heap) * heap) * int

val g11_example5701 : (((bool * heap) * heap) * heap) * int

val g11_example5702 : (((bool * heap) * heap) * heap) * int

val g11_example5703 : (((bool * heap) * heap) * heap) * int

val g11_example5704 : (((bool * heap) * heap) * heap) * int

val g11_example5705 : (((bool * heap) * heap) * heap) * int

val g11_example5706 : (((bool * heap) * heap) * heap) * int

val g11_example5707 : (((bool * heap) * heap) * heap) * int

val g11_example5708 : (((bool * heap) * heap) * heap) * int

val g11_example5709 : (((bool * heap) * heap) * heap) * int

val g11_example5710 : (((bool * heap) * heap) * heap) * int

val g11_example5711 : (((bool * heap) * heap) * heap) * int

val g11_example5712 : (((bool * heap) * heap) * heap) * int

val g11_example5713 : (((bool * heap) * heap) * heap) * int

val g11_example5714 : (((bool * heap) * heap) * heap) * int

val g11_example5715 : (((bool * heap) * heap) * heap) * int

val g11_example5716 : (((bool * heap) * heap) * heap) * int

val g11_example5717 : (((bool * heap) * heap) * heap) * int

val g11_example5718 : (((bool * heap) * heap) * heap) * int

val g11_example5719 : (((bool * heap) * heap) * heap) * int

val g11_example5720 : (((bool * heap) * heap) * heap) * int

val g11_example5721 : (((bool * heap) * heap) * heap) * int

val g11_example5722 : (((bool * heap) * heap) * heap) * int

val g11_example5723 : (((bool * heap) * heap) * heap) * int

val g11_example5724 : (((bool * heap) * heap) * heap) * int

val g11_example5725 : (((bool * heap) * heap) * heap) * int

val g11_example5726 : (((bool * heap) * heap) * heap) * int

val g11_example5727 : (((bool * heap) * heap) * heap) * int

val g11_example5728 : (((bool * heap) * heap) * heap) * int

val g11_example5729 : (((bool * heap) * heap) * heap) * int

val g11_example5730 : (((bool * heap) * heap) * heap) * int

val g11_example5731 : (((bool * heap) * heap) * heap) * int

val g11_example5732 : (((bool * heap) * heap) * heap) * int

val g11_example5733 : (((bool * heap) * heap) * heap) * int

val g11_example5734 : (((bool * heap) * heap) * heap) * int

val g11_example5735 : (((bool * heap) * heap) * heap) * int

val g11_example5736 : (((bool * heap) * heap) * heap) * int

val g11_example5737 : (((bool * heap) * heap) * heap) * int

val g11_example5738 : (((bool * heap) * heap) * heap) * int

val g11_example5739 : (((bool * heap) * heap) * heap) * int

val g11_example5740 : (((bool * heap) * heap) * heap) * int

val g11_example5741 : (((bool * heap) * heap) * heap) * int

val g11_example5742 : (((bool * heap) * heap) * heap) * int

val g11_example5743 : (((bool * heap) * heap) * heap) * int

val g11_example5744 : (((bool * heap) * heap) * heap) * int

val g11_example5745 : (((bool * heap) * heap) * heap) * int

val g11_example5746 : (((bool * heap) * heap) * heap) * int

val g11_example5747 : (((bool * heap) * heap) * heap) * int

val g11_example5748 : (((bool * heap) * heap) * heap) * int

val g11_example5749 : (((bool * heap) * heap) * heap) * int

val g11_example5750 : (((bool * heap) * heap) * heap) * int

val g11_example5751 : (((bool * heap) * heap) * heap) * int

val g11_example5752 : (((bool * heap) * heap) * heap) * int

val g11_example5753 : (((bool * heap) * heap) * heap) * int

val g11_example5754 : (((bool * heap) * heap) * heap) * int

val g11_example5755 : (((bool * heap) * heap) * heap) * int

val g11_example5756 : (((bool * heap) * heap) * heap) * int

val g11_example5757 : (((bool * heap) * heap) * heap) * int

val g11_example5758 : (((bool * heap) * heap) * heap) * int

val g11_example5759 : (((bool * heap) * heap) * heap) * int

val g11_example5760 : (((bool * heap) * heap) * heap) * int

val g11_example5761 : (((bool * heap) * heap) * heap) * int

val g11_example5762 : (((bool * heap) * heap) * heap) * int

val g11_example5763 : (((bool * heap) * heap) * heap) * int

val g11_example5764 : (((bool * heap) * heap) * heap) * int

val g11_example5765 : (((bool * heap) * heap) * heap) * int

val g11_example5766 : (((bool * heap) * heap) * heap) * int

val g11_example5767 : (((bool * heap) * heap) * heap) * int

val g11_example5768 : (((bool * heap) * heap) * heap) * int

val g11_example5769 : (((bool * heap) * heap) * heap) * int

val g11_example5770 : (((bool * heap) * heap) * heap) * int

val g11_example5771 : (((bool * heap) * heap) * heap) * int

val g11_example5772 : (((bool * heap) * heap) * heap) * int

val g11_example5773 : (((bool * heap) * heap) * heap) * int

val g11_example5774 : (((bool * heap) * heap) * heap) * int

val g11_example5775 : (((bool * heap) * heap) * heap) * int

val g11_example5776 : (((bool * heap) * heap) * heap) * int

val g11_example5777 : (((bool * heap) * heap) * heap) * int

val g11_example5778 : (((bool * heap) * heap) * heap) * int

val g11_example5779 : (((bool * heap) * heap) * heap) * int

val g11_example5780 : (((bool * heap) * heap) * heap) * int

val g11_example5781 : (((bool * heap) * heap) * heap) * int

val g11_example5782 : (((bool * heap) * heap) * heap) * int

val g11_example5783 : (((bool * heap) * heap) * heap) * int

val g11_example5784 : (((bool * heap) * heap) * heap) * int

val g11_example5785 : (((bool * heap) * heap) * heap) * int

val g11_example5786 : (((bool * heap) * heap) * heap) * int

val g11_example5787 : (((bool * heap) * heap) * heap) * int

val g11_example5788 : (((bool * heap) * heap) * heap) * int

val g11_example5789 : (((bool * heap) * heap) * heap) * int

val g11_example5790 : (((bool * heap) * heap) * heap) * int

val g11_example5791 : (((bool * heap) * heap) * heap) * int

val g11_example5792 : (((bool * heap) * heap) * heap) * int

val g11_example5793 : (((bool * heap) * heap) * heap) * int

val g11_example5794 : (((bool * heap) * heap) * heap) * int

val g11_example5795 : (((bool * heap) * heap) * heap) * int

val g11_example5796 : (((bool * heap) * heap) * heap) * int

val g11_example5797 : (((bool * heap) * heap) * heap) * int

val g11_example5798 : (((bool * heap) * heap) * heap) * int

val g11_example5799 : (((bool * heap) * heap) * heap) * int

val g11_example5800 : (((bool * heap) * heap) * heap) * int

val g11_example5801 : (((bool * heap) * heap) * heap) * int

val g11_example5802 : (((bool * heap) * heap) * heap) * int

val g11_example5803 : (((bool * heap) * heap) * heap) * int

val g11_example5804 : (((bool * heap) * heap) * heap) * int

val g11_example5805 : (((bool * heap) * heap) * heap) * int

val g11_example5806 : (((bool * heap) * heap) * heap) * int

val g11_example5807 : (((bool * heap) * heap) * heap) * int

val g11_example5808 : (((bool * heap) * heap) * heap) * int

val g11_example5809 : (((bool * heap) * heap) * heap) * int

val g11_example5810 : (((bool * heap) * heap) * heap) * int

val g11_example5811 : (((bool * heap) * heap) * heap) * int

val g11_example5812 : (((bool * heap) * heap) * heap) * int

val g11_example5813 : (((bool * heap) * heap) * heap) * int

val g11_example5814 : (((bool * heap) * heap) * heap) * int

val g11_example5815 : (((bool * heap) * heap) * heap) * int

val g11_example5816 : (((bool * heap) * heap) * heap) * int

val g11_example5817 : (((bool * heap) * heap) * heap) * int

val g11_example5818 : (((bool * heap) * heap) * heap) * int

val g11_example5819 : (((bool * heap) * heap) * heap) * int

val g11_example5820 : (((bool * heap) * heap) * heap) * int

val g11_example5821 : (((bool * heap) * heap) * heap) * int

val g11_example5822 : (((bool * heap) * heap) * heap) * int

val g11_example5823 : (((bool * heap) * heap) * heap) * int

val g11_example5824 : (((bool * heap) * heap) * heap) * int

val g11_example5825 : (((bool * heap) * heap) * heap) * int

val g11_example5826 : (((bool * heap) * heap) * heap) * int

val g11_example5827 : (((bool * heap) * heap) * heap) * int

val g11_example5828 : (((bool * heap) * heap) * heap) * int

val g11_example5829 : (((bool * heap) * heap) * heap) * int

val g11_example5830 : (((bool * heap) * heap) * heap) * int

val g11_example5831 : (((bool * heap) * heap) * heap) * int

val g11_example5832 : (((bool * heap) * heap) * heap) * int

val g11_example5833 : (((bool * heap) * heap) * heap) * int

val g11_example5834 : (((bool * heap) * heap) * heap) * int

val g11_example5835 : (((bool * heap) * heap) * heap) * int

val g11_example5836 : (((bool * heap) * heap) * heap) * int

val g11_example5837 : (((bool * heap) * heap) * heap) * int

val g11_example5838 : (((bool * heap) * heap) * heap) * int

val g11_example5839 : (((bool * heap) * heap) * heap) * int

val g11_example5840 : (((bool * heap) * heap) * heap) * int

val g11_example5841 : (((bool * heap) * heap) * heap) * int

val g11_example5842 : (((bool * heap) * heap) * heap) * int

val g11_example5843 : (((bool * heap) * heap) * heap) * int

val g11_example5844 : (((bool * heap) * heap) * heap) * int

val g11_example5845 : (((bool * heap) * heap) * heap) * int

val g11_example5846 : (((bool * heap) * heap) * heap) * int

val g11_example5847 : (((bool * heap) * heap) * heap) * int

val g11_example5848 : (((bool * heap) * heap) * heap) * int

val g11_example5849 : (((bool * heap) * heap) * heap) * int

val g11_example5850 : (((bool * heap) * heap) * heap) * int

val g11_example5851 : (((bool * heap) * heap) * heap) * int

val g11_example5852 : (((bool * heap) * heap) * heap) * int

val g11_example5853 : (((bool * heap) * heap) * heap) * int

val g11_example5854 : (((bool * heap) * heap) * heap) * int

val g11_example5855 : (((bool * heap) * heap) * heap) * int

val g11_example5856 : (((bool * heap) * heap) * heap) * int

val g11_example5857 : (((bool * heap) * heap) * heap) * int

val g11_example5858 : (((bool * heap) * heap) * heap) * int

val g11_example5859 : (((bool * heap) * heap) * heap) * int

val g11_example5860 : (((bool * heap) * heap) * heap) * int

val g11_example5861 : (((bool * heap) * heap) * heap) * int

val g11_example5862 : (((bool * heap) * heap) * heap) * int

val g11_example5863 : (((bool * heap) * heap) * heap) * int

val g11_example5864 : (((bool * heap) * heap) * heap) * int

val g11_example5865 : (((bool * heap) * heap) * heap) * int

val g11_example5866 : (((bool * heap) * heap) * heap) * int

val g11_example5867 : (((bool * heap) * heap) * heap) * int

val g11_example5868 : (((bool * heap) * heap) * heap) * int

val g11_example5869 : (((bool * heap) * heap) * heap) * int

val g11_example5870 : (((bool * heap) * heap) * heap) * int

val g11_example5871 : (((bool * heap) * heap) * heap) * int

val g11_example5872 : (((bool * heap) * heap) * heap) * int

val g11_example5873 : (((bool * heap) * heap) * heap) * int

val g11_example5874 : (((bool * heap) * heap) * heap) * int

val g11_example5875 : (((bool * heap) * heap) * heap) * int

val g11_example5876 : (((bool * heap) * heap) * heap) * int

val g11_example5877 : (((bool * heap) * heap) * heap) * int

val g11_example5878 : (((bool * heap) * heap) * heap) * int

val g11_example5879 : (((bool * heap) * heap) * heap) * int

val g11_example5880 : (((bool * heap) * heap) * heap) * int

val g11_example5881 : (((bool * heap) * heap) * heap) * int

val g11_example5882 : (((bool * heap) * heap) * heap) * int

val g11_example5883 : (((bool * heap) * heap) * heap) * int

val g11_example5884 : (((bool * heap) * heap) * heap) * int

val g11_example5885 : (((bool * heap) * heap) * heap) * int

val g11_example5886 : (((bool * heap) * heap) * heap) * int

val g11_example5887 : (((bool * heap) * heap) * heap) * int

val g11_example5888 : (((bool * heap) * heap) * heap) * int

val g11_example5889 : (((bool * heap) * heap) * heap) * int

val g11_example5890 : (((bool * heap) * heap) * heap) * int

val g11_example5891 : (((bool * heap) * heap) * heap) * int

val g11_example5892 : (((bool * heap) * heap) * heap) * int

val g11_example5893 : (((bool * heap) * heap) * heap) * int

val g11_example5894 : (((bool * heap) * heap) * heap) * int

val g11_example5895 : (((bool * heap) * heap) * heap) * int

val g11_example5896 : (((bool * heap) * heap) * heap) * int

val g11_example5897 : (((bool * heap) * heap) * heap) * int

val g11_example5898 : (((bool * heap) * heap) * heap) * int

val g11_example5899 : (((bool * heap) * heap) * heap) * int

val g11_example5900 : (((bool * heap) * heap) * heap) * int

val g11_example5901 : (((bool * heap) * heap) * heap) * int

val g11_example5902 : (((bool * heap) * heap) * heap) * int

val g11_example5903 : (((bool * heap) * heap) * heap) * int

val g11_example5904 : (((bool * heap) * heap) * heap) * int

val g11_example5905 : (((bool * heap) * heap) * heap) * int

val g11_example5906 : (((bool * heap) * heap) * heap) * int

val g11_example5907 : (((bool * heap) * heap) * heap) * int

val g11_example5908 : (((bool * heap) * heap) * heap) * int

val g11_example5909 : (((bool * heap) * heap) * heap) * int

val g11_example5910 : (((bool * heap) * heap) * heap) * int

val g11_example5911 : (((bool * heap) * heap) * heap) * int

val g11_example5912 : (((bool * heap) * heap) * heap) * int

val g11_example5913 : (((bool * heap) * heap) * heap) * int

val g11_example5914 : (((bool * heap) * heap) * heap) * int

val g11_example5915 : (((bool * heap) * heap) * heap) * int

val g11_example5916 : (((bool * heap) * heap) * heap) * int

val g11_example5917 : (((bool * heap) * heap) * heap) * int

val g11_example5918 : (((bool * heap) * heap) * heap) * int

val g11_example5919 : (((bool * heap) * heap) * heap) * int

val g11_example5920 : (((bool * heap) * heap) * heap) * int

val g11_example5921 : (((bool * heap) * heap) * heap) * int

val g11_example5922 : (((bool * heap) * heap) * heap) * int

val g11_example5923 : (((bool * heap) * heap) * heap) * int

val g11_example5924 : (((bool * heap) * heap) * heap) * int

val g11_example5925 : (((bool * heap) * heap) * heap) * int

val g11_example5926 : (((bool * heap) * heap) * heap) * int

val g11_example5927 : (((bool * heap) * heap) * heap) * int

val g11_example5928 : (((bool * heap) * heap) * heap) * int

val g11_example5929 : (((bool * heap) * heap) * heap) * int

val g11_example5930 : (((bool * heap) * heap) * heap) * int

val g11_example5931 : (((bool * heap) * heap) * heap) * int

val g11_example5932 : (((bool * heap) * heap) * heap) * int

val g11_example5933 : (((bool * heap) * heap) * heap) * int

val g11_example5934 : (((bool * heap) * heap) * heap) * int

val g11_example5935 : (((bool * heap) * heap) * heap) * int

val g11_example5936 : (((bool * heap) * heap) * heap) * int

val g11_example5937 : (((bool * heap) * heap) * heap) * int

val g11_example5938 : (((bool * heap) * heap) * heap) * int

val g11_example5939 : (((bool * heap) * heap) * heap) * int

val g11_example5940 : (((bool * heap) * heap) * heap) * int

val g11_example5941 : (((bool * heap) * heap) * heap) * int

val g11_example5942 : (((bool * heap) * heap) * heap) * int

val g11_example5943 : (((bool * heap) * heap) * heap) * int

val g11_example5944 : (((bool * heap) * heap) * heap) * int

val g11_example5945 : (((bool * heap) * heap) * heap) * int

val g11_example5946 : (((bool * heap) * heap) * heap) * int

val g11_example5947 : (((bool * heap) * heap) * heap) * int

val g11_example5948 : (((bool * heap) * heap) * heap) * int

val g11_example5949 : (((bool * heap) * heap) * heap) * int

val g11_example5950 : (((bool * heap) * heap) * heap) * int

val g11_example5951 : (((bool * heap) * heap) * heap) * int

val g11_example5952 : (((bool * heap) * heap) * heap) * int

val g11_example5953 : (((bool * heap) * heap) * heap) * int

val g11_example5954 : (((bool * heap) * heap) * heap) * int

val g11_example5955 : (((bool * heap) * heap) * heap) * int

val g11_example5956 : (((bool * heap) * heap) * heap) * int

val g11_example5957 : (((bool * heap) * heap) * heap) * int

val g11_example5958 : (((bool * heap) * heap) * heap) * int

val g11_example5959 : (((bool * heap) * heap) * heap) * int

val g11_example5960 : (((bool * heap) * heap) * heap) * int

val g11_example5961 : (((bool * heap) * heap) * heap) * int

val g11_example5962 : (((bool * heap) * heap) * heap) * int

val g11_example5963 : (((bool * heap) * heap) * heap) * int

val g11_example5964 : (((bool * heap) * heap) * heap) * int

val g11_example5965 : (((bool * heap) * heap) * heap) * int

val g11_example5966 : (((bool * heap) * heap) * heap) * int

val g11_example5967 : (((bool * heap) * heap) * heap) * int

val g11_example5968 : (((bool * heap) * heap) * heap) * int

val g11_example5969 : (((bool * heap) * heap) * heap) * int

val g11_example5970 : (((bool * heap) * heap) * heap) * int

val g11_example5971 : (((bool * heap) * heap) * heap) * int

val g11_example5972 : (((bool * heap) * heap) * heap) * int

val g11_example5973 : (((bool * heap) * heap) * heap) * int

val g11_example5974 : (((bool * heap) * heap) * heap) * int

val g11_example5975 : (((bool * heap) * heap) * heap) * int

val g11_example5976 : (((bool * heap) * heap) * heap) * int

val g11_example5977 : (((bool * heap) * heap) * heap) * int

val g11_example5978 : (((bool * heap) * heap) * heap) * int

val g11_example5979 : (((bool * heap) * heap) * heap) * int

val g11_example5980 : (((bool * heap) * heap) * heap) * int

val g11_example5981 : (((bool * heap) * heap) * heap) * int

val g11_example5982 : (((bool * heap) * heap) * heap) * int

val g11_example5983 : (((bool * heap) * heap) * heap) * int

val g11_example5984 : (((bool * heap) * heap) * heap) * int

val g11_example5985 : (((bool * heap) * heap) * heap) * int

val g11_example5986 : (((bool * heap) * heap) * heap) * int

val g11_example5987 : (((bool * heap) * heap) * heap) * int

val g11_example5988 : (((bool * heap) * heap) * heap) * int

val g11_example5989 : (((bool * heap) * heap) * heap) * int

val g11_example5990 : (((bool * heap) * heap) * heap) * int

val g11_example5991 : (((bool * heap) * heap) * heap) * int

val g11_example5992 : (((bool * heap) * heap) * heap) * int

val g11_example5993 : (((bool * heap) * heap) * heap) * int

val g11_example5994 : (((bool * heap) * heap) * heap) * int

val g11_example5995 : (((bool * heap) * heap) * heap) * int

val g11_example5996 : (((bool * heap) * heap) * heap) * int

val g11_example5997 : (((bool * heap) * heap) * heap) * int

val g11_example5998 : (((bool * heap) * heap) * heap) * int

val g11_example5999 : (((bool * heap) * heap) * heap) * int

val g11_example6000 : (((bool * heap) * heap) * heap) * int

val g11_example6001 : (((bool * heap) * heap) * heap) * int

val g11_example6002 : (((bool * heap) * heap) * heap) * int

val g11_example6003 : (((bool * heap) * heap) * heap) * int

val g11_example6004 : (((bool * heap) * heap) * heap) * int

val g11_example6005 : (((bool * heap) * heap) * heap) * int

val g11_example6006 : (((bool * heap) * heap) * heap) * int

val g11_example6007 : (((bool * heap) * heap) * heap) * int

val g11_example6008 : (((bool * heap) * heap) * heap) * int

val g11_example6009 : (((bool * heap) * heap) * heap) * int

val g11_example6010 : (((bool * heap) * heap) * heap) * int

val g11_example6011 : (((bool * heap) * heap) * heap) * int

val g11_example6012 : (((bool * heap) * heap) * heap) * int

val g11_example6013 : (((bool * heap) * heap) * heap) * int

val g11_example6014 : (((bool * heap) * heap) * heap) * int

val g11_example6015 : (((bool * heap) * heap) * heap) * int

val g11_example6016 : (((bool * heap) * heap) * heap) * int

val g11_example6017 : (((bool * heap) * heap) * heap) * int

val g11_example6018 : (((bool * heap) * heap) * heap) * int

val g11_example6019 : (((bool * heap) * heap) * heap) * int

val g11_example6020 : (((bool * heap) * heap) * heap) * int

val g11_example6021 : (((bool * heap) * heap) * heap) * int

val g11_example6022 : (((bool * heap) * heap) * heap) * int

val g11_example6023 : (((bool * heap) * heap) * heap) * int

val g11_example6024 : (((bool * heap) * heap) * heap) * int

val g11_example6025 : (((bool * heap) * heap) * heap) * int

val g11_example6026 : (((bool * heap) * heap) * heap) * int

val g11_example6027 : (((bool * heap) * heap) * heap) * int

val g11_example6028 : (((bool * heap) * heap) * heap) * int

val g11_example6029 : (((bool * heap) * heap) * heap) * int

val g11_example6030 : (((bool * heap) * heap) * heap) * int

val g11_example6031 : (((bool * heap) * heap) * heap) * int

val g11_example6032 : (((bool * heap) * heap) * heap) * int

val g11_example6033 : (((bool * heap) * heap) * heap) * int

val g11_example6034 : (((bool * heap) * heap) * heap) * int

val g11_example6035 : (((bool * heap) * heap) * heap) * int

val g11_example6036 : (((bool * heap) * heap) * heap) * int

val g11_example6037 : (((bool * heap) * heap) * heap) * int

val g11_example6038 : (((bool * heap) * heap) * heap) * int

val g11_example6039 : (((bool * heap) * heap) * heap) * int

val g11_example6040 : (((bool * heap) * heap) * heap) * int

val g11_example6041 : (((bool * heap) * heap) * heap) * int

val g11_example6042 : (((bool * heap) * heap) * heap) * int

val g11_example6043 : (((bool * heap) * heap) * heap) * int

val g11_example6044 : (((bool * heap) * heap) * heap) * int

val g11_example6045 : (((bool * heap) * heap) * heap) * int

val g11_example6046 : (((bool * heap) * heap) * heap) * int

val g11_example6047 : (((bool * heap) * heap) * heap) * int

val g11_example6048 : (((bool * heap) * heap) * heap) * int

val g11_example6049 : (((bool * heap) * heap) * heap) * int

val g11_example6050 : (((bool * heap) * heap) * heap) * int

val g11_example6051 : (((bool * heap) * heap) * heap) * int

val g11_example6052 : (((bool * heap) * heap) * heap) * int

val g11_example6053 : (((bool * heap) * heap) * heap) * int

val g11_example6054 : (((bool * heap) * heap) * heap) * int

val g11_example6055 : (((bool * heap) * heap) * heap) * int

val g11_example6056 : (((bool * heap) * heap) * heap) * int

val g11_example6057 : (((bool * heap) * heap) * heap) * int

val g11_example6058 : (((bool * heap) * heap) * heap) * int

val g11_example6059 : (((bool * heap) * heap) * heap) * int

val g11_example6060 : (((bool * heap) * heap) * heap) * int

val g11_example6061 : (((bool * heap) * heap) * heap) * int

val g11_example6062 : (((bool * heap) * heap) * heap) * int

val g11_example6063 : (((bool * heap) * heap) * heap) * int

val g11_example6064 : (((bool * heap) * heap) * heap) * int

val g11_example6065 : (((bool * heap) * heap) * heap) * int

val g11_example6066 : (((bool * heap) * heap) * heap) * int

val g11_example6067 : (((bool * heap) * heap) * heap) * int

val g11_example6068 : (((bool * heap) * heap) * heap) * int

val g11_example6069 : (((bool * heap) * heap) * heap) * int

val g11_example6070 : (((bool * heap) * heap) * heap) * int

val g11_example6071 : (((bool * heap) * heap) * heap) * int

val g11_example6072 : (((bool * heap) * heap) * heap) * int

val g11_example6073 : (((bool * heap) * heap) * heap) * int

val g11_example6074 : (((bool * heap) * heap) * heap) * int

val g11_example6075 : (((bool * heap) * heap) * heap) * int

val g11_example6076 : (((bool * heap) * heap) * heap) * int

val g11_example6077 : (((bool * heap) * heap) * heap) * int

val g11_example6078 : (((bool * heap) * heap) * heap) * int

val g11_example6079 : (((bool * heap) * heap) * heap) * int

val g11_example6080 : (((bool * heap) * heap) * heap) * int

val g11_example6081 : (((bool * heap) * heap) * heap) * int

val g11_example6082 : (((bool * heap) * heap) * heap) * int

val g11_example6083 : (((bool * heap) * heap) * heap) * int

val g11_example6084 : (((bool * heap) * heap) * heap) * int

val g11_example6085 : (((bool * heap) * heap) * heap) * int

val g11_example6086 : (((bool * heap) * heap) * heap) * int

val g11_example6087 : (((bool * heap) * heap) * heap) * int

val g11_example6088 : (((bool * heap) * heap) * heap) * int

val g11_example6089 : (((bool * heap) * heap) * heap) * int

val g11_example6090 : (((bool * heap) * heap) * heap) * int

val g11_example6091 : (((bool * heap) * heap) * heap) * int

val g11_example6092 : (((bool * heap) * heap) * heap) * int

val g11_example6093 : (((bool * heap) * heap) * heap) * int

val g11_example6094 : (((bool * heap) * heap) * heap) * int

val g11_example6095 : (((bool * heap) * heap) * heap) * int

val g11_example6096 : (((bool * heap) * heap) * heap) * int

val g11_example6097 : (((bool * heap) * heap) * heap) * int

val g11_example6098 : (((bool * heap) * heap) * heap) * int

val g11_example6099 : (((bool * heap) * heap) * heap) * int

val g11_example6100 : (((bool * heap) * heap) * heap) * int

val g11_example6101 : (((bool * heap) * heap) * heap) * int

val g11_example6102 : (((bool * heap) * heap) * heap) * int

val g11_example6103 : (((bool * heap) * heap) * heap) * int

val g11_example6104 : (((bool * heap) * heap) * heap) * int

val g11_example6105 : (((bool * heap) * heap) * heap) * int

val g11_example6106 : (((bool * heap) * heap) * heap) * int

val g11_example6107 : (((bool * heap) * heap) * heap) * int

val g11_example6108 : (((bool * heap) * heap) * heap) * int

val g11_example6109 : (((bool * heap) * heap) * heap) * int

val g11_example6110 : (((bool * heap) * heap) * heap) * int

val g11_example6111 : (((bool * heap) * heap) * heap) * int

val g11_example6112 : (((bool * heap) * heap) * heap) * int

val g11_example6113 : (((bool * heap) * heap) * heap) * int

val g11_example6114 : (((bool * heap) * heap) * heap) * int

val g11_example6115 : (((bool * heap) * heap) * heap) * int

val g11_example6116 : (((bool * heap) * heap) * heap) * int

val g11_example6117 : (((bool * heap) * heap) * heap) * int

val g11_example6118 : (((bool * heap) * heap) * heap) * int

val g11_example6119 : (((bool * heap) * heap) * heap) * int

val g11_example6120 : (((bool * heap) * heap) * heap) * int

val g11_example6121 : (((bool * heap) * heap) * heap) * int

val g11_example6122 : (((bool * heap) * heap) * heap) * int

val g11_example6123 : (((bool * heap) * heap) * heap) * int

val g11_example6124 : (((bool * heap) * heap) * heap) * int

val g11_example6125 : (((bool * heap) * heap) * heap) * int

val g11_example6126 : (((bool * heap) * heap) * heap) * int

val g11_example6127 : (((bool * heap) * heap) * heap) * int

val g11_example6128 : (((bool * heap) * heap) * heap) * int

val g11_example6129 : (((bool * heap) * heap) * heap) * int

val g11_example6130 : (((bool * heap) * heap) * heap) * int

val g11_example6131 : (((bool * heap) * heap) * heap) * int

val g11_example6132 : (((bool * heap) * heap) * heap) * int

val g11_example6133 : (((bool * heap) * heap) * heap) * int

val g11_example6134 : (((bool * heap) * heap) * heap) * int

val g11_example6135 : (((bool * heap) * heap) * heap) * int

val g11_example6136 : (((bool * heap) * heap) * heap) * int

val g11_example6137 : (((bool * heap) * heap) * heap) * int

val g11_example6138 : (((bool * heap) * heap) * heap) * int

val g11_example6139 : (((bool * heap) * heap) * heap) * int

val g11_example6140 : (((bool * heap) * heap) * heap) * int

val g11_example6141 : (((bool * heap) * heap) * heap) * int

val g11_example6142 : (((bool * heap) * heap) * heap) * int

val g11_example6143 : (((bool * heap) * heap) * heap) * int

val g11_example6144 : (((bool * heap) * heap) * heap) * int

val g11_example6145 : (((bool * heap) * heap) * heap) * int

val g11_example6146 : (((bool * heap) * heap) * heap) * int

val g11_example6147 : (((bool * heap) * heap) * heap) * int

val g11_example6148 : (((bool * heap) * heap) * heap) * int

val g11_example6149 : (((bool * heap) * heap) * heap) * int

val g11_example6150 : (((bool * heap) * heap) * heap) * int

val g11_example6151 : (((bool * heap) * heap) * heap) * int

val g11_example6152 : (((bool * heap) * heap) * heap) * int

val g11_example6153 : (((bool * heap) * heap) * heap) * int

val g11_example6154 : (((bool * heap) * heap) * heap) * int

val g11_example6155 : (((bool * heap) * heap) * heap) * int

val g11_example6156 : (((bool * heap) * heap) * heap) * int

val g11_example6157 : (((bool * heap) * heap) * heap) * int

val g11_example6158 : (((bool * heap) * heap) * heap) * int

val g11_example6159 : (((bool * heap) * heap) * heap) * int

val g11_example6160 : (((bool * heap) * heap) * heap) * int

val g11_example6161 : (((bool * heap) * heap) * heap) * int

val g11_example6162 : (((bool * heap) * heap) * heap) * int

val g11_example6163 : (((bool * heap) * heap) * heap) * int

val g11_example6164 : (((bool * heap) * heap) * heap) * int

val g11_example6165 : (((bool * heap) * heap) * heap) * int

val g11_example6166 : (((bool * heap) * heap) * heap) * int

val g11_example6167 : (((bool * heap) * heap) * heap) * int

val g11_example6168 : (((bool * heap) * heap) * heap) * int

val g11_example6169 : (((bool * heap) * heap) * heap) * int

val g11_example6170 : (((bool * heap) * heap) * heap) * int

val g11_example6171 : (((bool * heap) * heap) * heap) * int

val g11_example6172 : (((bool * heap) * heap) * heap) * int

val g11_example6173 : (((bool * heap) * heap) * heap) * int

val g11_example6174 : (((bool * heap) * heap) * heap) * int

val g11_example6175 : (((bool * heap) * heap) * heap) * int

val g11_example6176 : (((bool * heap) * heap) * heap) * int

val g11_example6177 : (((bool * heap) * heap) * heap) * int

val g11_example6178 : (((bool * heap) * heap) * heap) * int

val g11_example6179 : (((bool * heap) * heap) * heap) * int

val g11_example6180 : (((bool * heap) * heap) * heap) * int

val g11_example6181 : (((bool * heap) * heap) * heap) * int

val g11_example6182 : (((bool * heap) * heap) * heap) * int

val g11_example6183 : (((bool * heap) * heap) * heap) * int

val g11_example6184 : (((bool * heap) * heap) * heap) * int

val g11_example6185 : (((bool * heap) * heap) * heap) * int

val g11_example6186 : (((bool * heap) * heap) * heap) * int

val g11_example6187 : (((bool * heap) * heap) * heap) * int

val g11_example6188 : (((bool * heap) * heap) * heap) * int

val g11_example6189 : (((bool * heap) * heap) * heap) * int

val g11_example6190 : (((bool * heap) * heap) * heap) * int

val g11_example6191 : (((bool * heap) * heap) * heap) * int

val g11_example6192 : (((bool * heap) * heap) * heap) * int

val g11_example6193 : (((bool * heap) * heap) * heap) * int

val g11_example6194 : (((bool * heap) * heap) * heap) * int

val g11_example6195 : (((bool * heap) * heap) * heap) * int

val g11_example6196 : (((bool * heap) * heap) * heap) * int

val g11_example6197 : (((bool * heap) * heap) * heap) * int

val g11_example6198 : (((bool * heap) * heap) * heap) * int

val g11_example6199 : (((bool * heap) * heap) * heap) * int

val g11_example6200 : (((bool * heap) * heap) * heap) * int

val g11_example6201 : (((bool * heap) * heap) * heap) * int

val g11_example6202 : (((bool * heap) * heap) * heap) * int

val g11_example6203 : (((bool * heap) * heap) * heap) * int

val g11_example6204 : (((bool * heap) * heap) * heap) * int

val g11_example6205 : (((bool * heap) * heap) * heap) * int

val g11_example6206 : (((bool * heap) * heap) * heap) * int

val g11_example6207 : (((bool * heap) * heap) * heap) * int

val g11_example6208 : (((bool * heap) * heap) * heap) * int

val g11_example6209 : (((bool * heap) * heap) * heap) * int

val g11_example6210 : (((bool * heap) * heap) * heap) * int

val g11_example6211 : (((bool * heap) * heap) * heap) * int

val g11_example6212 : (((bool * heap) * heap) * heap) * int

val g11_example6213 : (((bool * heap) * heap) * heap) * int

val g11_example6214 : (((bool * heap) * heap) * heap) * int

val g11_example6215 : (((bool * heap) * heap) * heap) * int

val g11_example6216 : (((bool * heap) * heap) * heap) * int

val g11_example6217 : (((bool * heap) * heap) * heap) * int

val g11_example6218 : (((bool * heap) * heap) * heap) * int

val g11_example6219 : (((bool * heap) * heap) * heap) * int

val g11_example6220 : (((bool * heap) * heap) * heap) * int

val g11_example6221 : (((bool * heap) * heap) * heap) * int

val g11_example6222 : (((bool * heap) * heap) * heap) * int

val g11_example6223 : (((bool * heap) * heap) * heap) * int

val g11_example6224 : (((bool * heap) * heap) * heap) * int

val g11_example6225 : (((bool * heap) * heap) * heap) * int

val g11_example6226 : (((bool * heap) * heap) * heap) * int

val g11_example6227 : (((bool * heap) * heap) * heap) * int

val g11_example6228 : (((bool * heap) * heap) * heap) * int

val g11_example6229 : (((bool * heap) * heap) * heap) * int

val g11_example6230 : (((bool * heap) * heap) * heap) * int

val g11_example6231 : (((bool * heap) * heap) * heap) * int

val g11_example6232 : (((bool * heap) * heap) * heap) * int

val g11_example6233 : (((bool * heap) * heap) * heap) * int

val g11_example6234 : (((bool * heap) * heap) * heap) * int

val g11_example6235 : (((bool * heap) * heap) * heap) * int

val g11_example6236 : (((bool * heap) * heap) * heap) * int

val g11_example6237 : (((bool * heap) * heap) * heap) * int

val g11_example6238 : (((bool * heap) * heap) * heap) * int

val g11_example6239 : (((bool * heap) * heap) * heap) * int

val g11_example6240 : (((bool * heap) * heap) * heap) * int

val g11_example6241 : (((bool * heap) * heap) * heap) * int

val g11_example6242 : (((bool * heap) * heap) * heap) * int

val g11_example6243 : (((bool * heap) * heap) * heap) * int

val g11_example6244 : (((bool * heap) * heap) * heap) * int

val g11_example6245 : (((bool * heap) * heap) * heap) * int

val g11_example6246 : (((bool * heap) * heap) * heap) * int

val g11_example6247 : (((bool * heap) * heap) * heap) * int

val g11_example6248 : (((bool * heap) * heap) * heap) * int

val g11_example6249 : (((bool * heap) * heap) * heap) * int

val g11_example6250 : (((bool * heap) * heap) * heap) * int

val g11_example6251 : (((bool * heap) * heap) * heap) * int

val g11_example6252 : (((bool * heap) * heap) * heap) * int

val g11_example6253 : (((bool * heap) * heap) * heap) * int

val g11_example6254 : (((bool * heap) * heap) * heap) * int

val g11_example6255 : (((bool * heap) * heap) * heap) * int

val g11_example6256 : (((bool * heap) * heap) * heap) * int

val g11_example6257 : (((bool * heap) * heap) * heap) * int

val g11_example6258 : (((bool * heap) * heap) * heap) * int

val g11_example6259 : (((bool * heap) * heap) * heap) * int

val g11_example6260 : (((bool * heap) * heap) * heap) * int

val g11_example6261 : (((bool * heap) * heap) * heap) * int

val g11_example6262 : (((bool * heap) * heap) * heap) * int

val g11_example6263 : (((bool * heap) * heap) * heap) * int

val g11_example6264 : (((bool * heap) * heap) * heap) * int

val g11_example6265 : (((bool * heap) * heap) * heap) * int

val g11_example6266 : (((bool * heap) * heap) * heap) * int

val g11_example6267 : (((bool * heap) * heap) * heap) * int

val g11_example6268 : (((bool * heap) * heap) * heap) * int

val g11_example6269 : (((bool * heap) * heap) * heap) * int

val g11_example6270 : (((bool * heap) * heap) * heap) * int

val g11_example6271 : (((bool * heap) * heap) * heap) * int

val g11_example6272 : (((bool * heap) * heap) * heap) * int

val g11_example6273 : (((bool * heap) * heap) * heap) * int

val g11_example6274 : (((bool * heap) * heap) * heap) * int

val g11_example6275 : (((bool * heap) * heap) * heap) * int

val g11_example6276 : (((bool * heap) * heap) * heap) * int

val g11_example6277 : (((bool * heap) * heap) * heap) * int

val g11_example6278 : (((bool * heap) * heap) * heap) * int

val g11_example6279 : (((bool * heap) * heap) * heap) * int

val g11_example6280 : (((bool * heap) * heap) * heap) * int

val g11_example6281 : (((bool * heap) * heap) * heap) * int

val g11_example6282 : (((bool * heap) * heap) * heap) * int

val g11_example6283 : (((bool * heap) * heap) * heap) * int

val g11_example6284 : (((bool * heap) * heap) * heap) * int

val g11_example6285 : (((bool * heap) * heap) * heap) * int

val g11_example6286 : (((bool * heap) * heap) * heap) * int

val g11_example6287 : (((bool * heap) * heap) * heap) * int

val g11_example6288 : (((bool * heap) * heap) * heap) * int

val g11_example6289 : (((bool * heap) * heap) * heap) * int

val g11_example6290 : (((bool * heap) * heap) * heap) * int

val g11_example6291 : (((bool * heap) * heap) * heap) * int

val g11_example6292 : (((bool * heap) * heap) * heap) * int

val g11_example6293 : (((bool * heap) * heap) * heap) * int

val g11_example6294 : (((bool * heap) * heap) * heap) * int

val g11_example6295 : (((bool * heap) * heap) * heap) * int

val g11_example6296 : (((bool * heap) * heap) * heap) * int

val g11_example6297 : (((bool * heap) * heap) * heap) * int

val g11_example6298 : (((bool * heap) * heap) * heap) * int

val g11_example6299 : (((bool * heap) * heap) * heap) * int

val g11_example6300 : (((bool * heap) * heap) * heap) * int

val g11_example6301 : (((bool * heap) * heap) * heap) * int

val g11_example6302 : (((bool * heap) * heap) * heap) * int

val g11_example6303 : (((bool * heap) * heap) * heap) * int

val g11_example6304 : (((bool * heap) * heap) * heap) * int

val g11_example6305 : (((bool * heap) * heap) * heap) * int

val g11_example6306 : (((bool * heap) * heap) * heap) * int

val g11_example6307 : (((bool * heap) * heap) * heap) * int

val g11_example6308 : (((bool * heap) * heap) * heap) * int

val g11_example6309 : (((bool * heap) * heap) * heap) * int

val g11_example6310 : (((bool * heap) * heap) * heap) * int

val g11_example6311 : (((bool * heap) * heap) * heap) * int

val g11_example6312 : (((bool * heap) * heap) * heap) * int

val g11_example6313 : (((bool * heap) * heap) * heap) * int

val g11_example6314 : (((bool * heap) * heap) * heap) * int

val g11_example6315 : (((bool * heap) * heap) * heap) * int

val g11_example6316 : (((bool * heap) * heap) * heap) * int

val g11_example6317 : (((bool * heap) * heap) * heap) * int

val g11_example6318 : (((bool * heap) * heap) * heap) * int

val g11_example6319 : (((bool * heap) * heap) * heap) * int

val g11_example6320 : (((bool * heap) * heap) * heap) * int

val g11_example6321 : (((bool * heap) * heap) * heap) * int

val g11_example6322 : (((bool * heap) * heap) * heap) * int

val g11_example6323 : (((bool * heap) * heap) * heap) * int

val g11_example6324 : (((bool * heap) * heap) * heap) * int

val g11_example6325 : (((bool * heap) * heap) * heap) * int

val g11_example6326 : (((bool * heap) * heap) * heap) * int

val g11_example6327 : (((bool * heap) * heap) * heap) * int

val g11_example6328 : (((bool * heap) * heap) * heap) * int

val g11_example6329 : (((bool * heap) * heap) * heap) * int

val g11_example6330 : (((bool * heap) * heap) * heap) * int

val g11_example6331 : (((bool * heap) * heap) * heap) * int

val g11_example6332 : (((bool * heap) * heap) * heap) * int

val g11_example6333 : (((bool * heap) * heap) * heap) * int

val g11_example6334 : (((bool * heap) * heap) * heap) * int

val g11_example6335 : (((bool * heap) * heap) * heap) * int

val g11_example6336 : (((bool * heap) * heap) * heap) * int

val g11_example6337 : (((bool * heap) * heap) * heap) * int

val g11_example6338 : (((bool * heap) * heap) * heap) * int

val g11_example6339 : (((bool * heap) * heap) * heap) * int

val g11_example6340 : (((bool * heap) * heap) * heap) * int

val g11_example6341 : (((bool * heap) * heap) * heap) * int

val g11_example6342 : (((bool * heap) * heap) * heap) * int

val g11_example6343 : (((bool * heap) * heap) * heap) * int

val g11_example6344 : (((bool * heap) * heap) * heap) * int

val g11_example6345 : (((bool * heap) * heap) * heap) * int

val g11_example6346 : (((bool * heap) * heap) * heap) * int

val g11_example6347 : (((bool * heap) * heap) * heap) * int

val g11_example6348 : (((bool * heap) * heap) * heap) * int

val g11_example6349 : (((bool * heap) * heap) * heap) * int

val g11_example6350 : (((bool * heap) * heap) * heap) * int

val g11_example6351 : (((bool * heap) * heap) * heap) * int

val g11_example6352 : (((bool * heap) * heap) * heap) * int

val g11_example6353 : (((bool * heap) * heap) * heap) * int

val g11_example6354 : (((bool * heap) * heap) * heap) * int

val g11_example6355 : (((bool * heap) * heap) * heap) * int

val g11_example6356 : (((bool * heap) * heap) * heap) * int

val g11_example6357 : (((bool * heap) * heap) * heap) * int

val g11_example6358 : (((bool * heap) * heap) * heap) * int

val g11_example6359 : (((bool * heap) * heap) * heap) * int

val g11_example6360 : (((bool * heap) * heap) * heap) * int

val g11_example6361 : (((bool * heap) * heap) * heap) * int

val g11_example6362 : (((bool * heap) * heap) * heap) * int

val g11_example6363 : (((bool * heap) * heap) * heap) * int

val g11_example6364 : (((bool * heap) * heap) * heap) * int

val g11_example6365 : (((bool * heap) * heap) * heap) * int

val g11_example6366 : (((bool * heap) * heap) * heap) * int

val g11_example6367 : (((bool * heap) * heap) * heap) * int

val g11_example6368 : (((bool * heap) * heap) * heap) * int

val g11_example6369 : (((bool * heap) * heap) * heap) * int

val g11_example6370 : (((bool * heap) * heap) * heap) * int

val g11_example6371 : (((bool * heap) * heap) * heap) * int

val g11_example6372 : (((bool * heap) * heap) * heap) * int

val g11_example6373 : (((bool * heap) * heap) * heap) * int

val g11_example6374 : (((bool * heap) * heap) * heap) * int

val g11_example6375 : (((bool * heap) * heap) * heap) * int

val g11_example6376 : (((bool * heap) * heap) * heap) * int

val g11_example6377 : (((bool * heap) * heap) * heap) * int

val g11_example6378 : (((bool * heap) * heap) * heap) * int

val g11_example6379 : (((bool * heap) * heap) * heap) * int

val g11_example6380 : (((bool * heap) * heap) * heap) * int

val g11_example6381 : (((bool * heap) * heap) * heap) * int

val g11_example6382 : (((bool * heap) * heap) * heap) * int

val g11_example6383 : (((bool * heap) * heap) * heap) * int

val g11_example6384 : (((bool * heap) * heap) * heap) * int

val g11_example6385 : (((bool * heap) * heap) * heap) * int

val g11_example6386 : (((bool * heap) * heap) * heap) * int

val g11_example6387 : (((bool * heap) * heap) * heap) * int

val g11_example6388 : (((bool * heap) * heap) * heap) * int

val g11_example6389 : (((bool * heap) * heap) * heap) * int

val g11_example6390 : (((bool * heap) * heap) * heap) * int

val g11_example6391 : (((bool * heap) * heap) * heap) * int

val g11_example6392 : (((bool * heap) * heap) * heap) * int

val g11_example6393 : (((bool * heap) * heap) * heap) * int

val g11_example6394 : (((bool * heap) * heap) * heap) * int

val g11_example6395 : (((bool * heap) * heap) * heap) * int

val g11_example6396 : (((bool * heap) * heap) * heap) * int

val g11_example6397 : (((bool * heap) * heap) * heap) * int

val g11_example6398 : (((bool * heap) * heap) * heap) * int

val g11_example6399 : (((bool * heap) * heap) * heap) * int

val g11_example6400 : (((bool * heap) * heap) * heap) * int

val g11_example6401 : (((bool * heap) * heap) * heap) * int

val g11_example6402 : (((bool * heap) * heap) * heap) * int

val g11_example6403 : (((bool * heap) * heap) * heap) * int

val g11_example6404 : (((bool * heap) * heap) * heap) * int

val g11_example6405 : (((bool * heap) * heap) * heap) * int

val g11_example6406 : (((bool * heap) * heap) * heap) * int

val g11_example6407 : (((bool * heap) * heap) * heap) * int

val g11_example6408 : (((bool * heap) * heap) * heap) * int

val g11_example6409 : (((bool * heap) * heap) * heap) * int

val g11_example6410 : (((bool * heap) * heap) * heap) * int

val g11_example6411 : (((bool * heap) * heap) * heap) * int

val g11_example6412 : (((bool * heap) * heap) * heap) * int

val g11_example6413 : (((bool * heap) * heap) * heap) * int

val g11_example6414 : (((bool * heap) * heap) * heap) * int

val g11_example6415 : (((bool * heap) * heap) * heap) * int

val g11_example6416 : (((bool * heap) * heap) * heap) * int

val g11_example6417 : (((bool * heap) * heap) * heap) * int

val g11_example6418 : (((bool * heap) * heap) * heap) * int

val g11_example6419 : (((bool * heap) * heap) * heap) * int

val g11_example6420 : (((bool * heap) * heap) * heap) * int

val g11_example6421 : (((bool * heap) * heap) * heap) * int

val g11_example6422 : (((bool * heap) * heap) * heap) * int

val g11_example6423 : (((bool * heap) * heap) * heap) * int

val g11_example6424 : (((bool * heap) * heap) * heap) * int

val g11_example6425 : (((bool * heap) * heap) * heap) * int

val g11_example6426 : (((bool * heap) * heap) * heap) * int

val g11_example6427 : (((bool * heap) * heap) * heap) * int

val g11_example6428 : (((bool * heap) * heap) * heap) * int

val g11_example6429 : (((bool * heap) * heap) * heap) * int

val g11_example6430 : (((bool * heap) * heap) * heap) * int

val g11_example6431 : (((bool * heap) * heap) * heap) * int

val g11_example6432 : (((bool * heap) * heap) * heap) * int

val g11_example6433 : (((bool * heap) * heap) * heap) * int

val g11_example6434 : (((bool * heap) * heap) * heap) * int

val g11_example6435 : (((bool * heap) * heap) * heap) * int

val g11_example6436 : (((bool * heap) * heap) * heap) * int

val g11_example6437 : (((bool * heap) * heap) * heap) * int

val g11_example6438 : (((bool * heap) * heap) * heap) * int

val g11_example6439 : (((bool * heap) * heap) * heap) * int

val g11_example6440 : (((bool * heap) * heap) * heap) * int

val g11_example6441 : (((bool * heap) * heap) * heap) * int

val g11_example6442 : (((bool * heap) * heap) * heap) * int

val g11_example6443 : (((bool * heap) * heap) * heap) * int

val g11_example6444 : (((bool * heap) * heap) * heap) * int

val g11_example6445 : (((bool * heap) * heap) * heap) * int

val g11_example6446 : (((bool * heap) * heap) * heap) * int

val g11_example6447 : (((bool * heap) * heap) * heap) * int

val g11_example6448 : (((bool * heap) * heap) * heap) * int

val g11_example6449 : (((bool * heap) * heap) * heap) * int

val g11_example6450 : (((bool * heap) * heap) * heap) * int

val g11_example6451 : (((bool * heap) * heap) * heap) * int

val g11_example6452 : (((bool * heap) * heap) * heap) * int

val g11_example6453 : (((bool * heap) * heap) * heap) * int

val g11_example6454 : (((bool * heap) * heap) * heap) * int

val g11_example6455 : (((bool * heap) * heap) * heap) * int

val g11_example6456 : (((bool * heap) * heap) * heap) * int

val g11_example6457 : (((bool * heap) * heap) * heap) * int

val g11_example6458 : (((bool * heap) * heap) * heap) * int

val g11_example6459 : (((bool * heap) * heap) * heap) * int

val g11_example6460 : (((bool * heap) * heap) * heap) * int

val g11_example6461 : (((bool * heap) * heap) * heap) * int

val g11_example6462 : (((bool * heap) * heap) * heap) * int

val g11_example6463 : (((bool * heap) * heap) * heap) * int

val g11_example6464 : (((bool * heap) * heap) * heap) * int

val g11_example6465 : (((bool * heap) * heap) * heap) * int

val g11_example6466 : (((bool * heap) * heap) * heap) * int

val g11_example6467 : (((bool * heap) * heap) * heap) * int

val g11_example6468 : (((bool * heap) * heap) * heap) * int

val g11_example6469 : (((bool * heap) * heap) * heap) * int

val g11_example6470 : (((bool * heap) * heap) * heap) * int

val g11_example6471 : (((bool * heap) * heap) * heap) * int

val g11_example6472 : (((bool * heap) * heap) * heap) * int

val g11_example6473 : (((bool * heap) * heap) * heap) * int

val g11_example6474 : (((bool * heap) * heap) * heap) * int

val g11_example6475 : (((bool * heap) * heap) * heap) * int

val g11_example6476 : (((bool * heap) * heap) * heap) * int

val g11_example6477 : (((bool * heap) * heap) * heap) * int

val g11_example6478 : (((bool * heap) * heap) * heap) * int

val g11_example6479 : (((bool * heap) * heap) * heap) * int

val g11_example6480 : (((bool * heap) * heap) * heap) * int

val g11_example6481 : (((bool * heap) * heap) * heap) * int

val g11_example6482 : (((bool * heap) * heap) * heap) * int

val g11_example6483 : (((bool * heap) * heap) * heap) * int

val g11_example6484 : (((bool * heap) * heap) * heap) * int

val g11_example6485 : (((bool * heap) * heap) * heap) * int

val g11_example6486 : (((bool * heap) * heap) * heap) * int

val g11_example6487 : (((bool * heap) * heap) * heap) * int

val g11_example6488 : (((bool * heap) * heap) * heap) * int

val g11_example6489 : (((bool * heap) * heap) * heap) * int

val g11_example6490 : (((bool * heap) * heap) * heap) * int

val g11_example6491 : (((bool * heap) * heap) * heap) * int

val g11_example6492 : (((bool * heap) * heap) * heap) * int

val g11_example6493 : (((bool * heap) * heap) * heap) * int

val g11_example6494 : (((bool * heap) * heap) * heap) * int

val g11_example6495 : (((bool * heap) * heap) * heap) * int

val g11_example6496 : (((bool * heap) * heap) * heap) * int

val g11_example6497 : (((bool * heap) * heap) * heap) * int

val g11_example6498 : (((bool * heap) * heap) * heap) * int

val g11_example6499 : (((bool * heap) * heap) * heap) * int

val g11_example6500 : (((bool * heap) * heap) * heap) * int

val g11_example6501 : (((bool * heap) * heap) * heap) * int

val g11_example6502 : (((bool * heap) * heap) * heap) * int

val g11_example6503 : (((bool * heap) * heap) * heap) * int

val g11_example6504 : (((bool * heap) * heap) * heap) * int

val g11_example6505 : (((bool * heap) * heap) * heap) * int

val g11_example6506 : (((bool * heap) * heap) * heap) * int

val g11_example6507 : (((bool * heap) * heap) * heap) * int

val g11_example6508 : (((bool * heap) * heap) * heap) * int

val g11_example6509 : (((bool * heap) * heap) * heap) * int

val g11_example6510 : (((bool * heap) * heap) * heap) * int

val g11_example6511 : (((bool * heap) * heap) * heap) * int

val g11_example6512 : (((bool * heap) * heap) * heap) * int

val g11_example6513 : (((bool * heap) * heap) * heap) * int

val g11_example6514 : (((bool * heap) * heap) * heap) * int

val g11_example6515 : (((bool * heap) * heap) * heap) * int

val g11_example6516 : (((bool * heap) * heap) * heap) * int

val g11_example6517 : (((bool * heap) * heap) * heap) * int

val g11_example6518 : (((bool * heap) * heap) * heap) * int

val g11_example6519 : (((bool * heap) * heap) * heap) * int

val g11_example6520 : (((bool * heap) * heap) * heap) * int

val g11_example6521 : (((bool * heap) * heap) * heap) * int

val g11_example6522 : (((bool * heap) * heap) * heap) * int

val g11_example6523 : (((bool * heap) * heap) * heap) * int

val g11_example6524 : (((bool * heap) * heap) * heap) * int

val g11_example6525 : (((bool * heap) * heap) * heap) * int

val g11_example6526 : (((bool * heap) * heap) * heap) * int

val g11_example6527 : (((bool * heap) * heap) * heap) * int

val g11_example6528 : (((bool * heap) * heap) * heap) * int

val g11_example6529 : (((bool * heap) * heap) * heap) * int

val g11_example6530 : (((bool * heap) * heap) * heap) * int

val g11_example6531 : (((bool * heap) * heap) * heap) * int

val g11_example6532 : (((bool * heap) * heap) * heap) * int

val g11_example6533 : (((bool * heap) * heap) * heap) * int

val g11_example6534 : (((bool * heap) * heap) * heap) * int

val g11_example6535 : (((bool * heap) * heap) * heap) * int

val g11_example6536 : (((bool * heap) * heap) * heap) * int

val g11_example6537 : (((bool * heap) * heap) * heap) * int

val g11_example6538 : (((bool * heap) * heap) * heap) * int

val g11_example6539 : (((bool * heap) * heap) * heap) * int

val g11_example6540 : (((bool * heap) * heap) * heap) * int

val g11_example6541 : (((bool * heap) * heap) * heap) * int

val g11_example6542 : (((bool * heap) * heap) * heap) * int

val g11_example6543 : (((bool * heap) * heap) * heap) * int

val g11_example6544 : (((bool * heap) * heap) * heap) * int

val g11_example6545 : (((bool * heap) * heap) * heap) * int

val g11_example6546 : (((bool * heap) * heap) * heap) * int

val g11_example6547 : (((bool * heap) * heap) * heap) * int

val g11_example6548 : (((bool * heap) * heap) * heap) * int

val g11_example6549 : (((bool * heap) * heap) * heap) * int

val g11_example6550 : (((bool * heap) * heap) * heap) * int

val g11_example6551 : (((bool * heap) * heap) * heap) * int

val g11_example6552 : (((bool * heap) * heap) * heap) * int

val g11_example6553 : (((bool * heap) * heap) * heap) * int

val g11_example6554 : (((bool * heap) * heap) * heap) * int

val g11_example6555 : (((bool * heap) * heap) * heap) * int

val g11_example6556 : (((bool * heap) * heap) * heap) * int

val g11_example6557 : (((bool * heap) * heap) * heap) * int

val g11_example6558 : (((bool * heap) * heap) * heap) * int

val g11_example6559 : (((bool * heap) * heap) * heap) * int

val g11_example6560 : (((bool * heap) * heap) * heap) * int

val g11_example6561 : (((bool * heap) * heap) * heap) * int

val g11_example6562 : (((bool * heap) * heap) * heap) * int

val g11_example6563 : (((bool * heap) * heap) * heap) * int

val g11_example6564 : (((bool * heap) * heap) * heap) * int

val g11_example6565 : (((bool * heap) * heap) * heap) * int

val g11_example6566 : (((bool * heap) * heap) * heap) * int

val g11_example6567 : (((bool * heap) * heap) * heap) * int

val g11_example6568 : (((bool * heap) * heap) * heap) * int

val g11_example6569 : (((bool * heap) * heap) * heap) * int

val g11_example6570 : (((bool * heap) * heap) * heap) * int

val g11_example6571 : (((bool * heap) * heap) * heap) * int

val g11_example6572 : (((bool * heap) * heap) * heap) * int

val g11_example6573 : (((bool * heap) * heap) * heap) * int

val g11_example6574 : (((bool * heap) * heap) * heap) * int

val g11_example6575 : (((bool * heap) * heap) * heap) * int

val g11_example6576 : (((bool * heap) * heap) * heap) * int

val g11_example6577 : (((bool * heap) * heap) * heap) * int

val g11_example6578 : (((bool * heap) * heap) * heap) * int

val g11_example6579 : (((bool * heap) * heap) * heap) * int

val g11_example6580 : (((bool * heap) * heap) * heap) * int

val g11_example6581 : (((bool * heap) * heap) * heap) * int

val g11_example6582 : (((bool * heap) * heap) * heap) * int

val g11_example6583 : (((bool * heap) * heap) * heap) * int

val g11_example6584 : (((bool * heap) * heap) * heap) * int

val g11_example6585 : (((bool * heap) * heap) * heap) * int

val g11_example6586 : (((bool * heap) * heap) * heap) * int

val g11_example6587 : (((bool * heap) * heap) * heap) * int

val g11_example6588 : (((bool * heap) * heap) * heap) * int

val g11_example6589 : (((bool * heap) * heap) * heap) * int

val g11_example6590 : (((bool * heap) * heap) * heap) * int

val g11_example6591 : (((bool * heap) * heap) * heap) * int

val g11_example6592 : (((bool * heap) * heap) * heap) * int

val g11_example6593 : (((bool * heap) * heap) * heap) * int

val g11_example6594 : (((bool * heap) * heap) * heap) * int

val g11_example6595 : (((bool * heap) * heap) * heap) * int

val g11_example6596 : (((bool * heap) * heap) * heap) * int

val g11_example6597 : (((bool * heap) * heap) * heap) * int

val g11_example6598 : (((bool * heap) * heap) * heap) * int

val g11_example6599 : (((bool * heap) * heap) * heap) * int

val g11_example6600 : (((bool * heap) * heap) * heap) * int

val g11_example6601 : (((bool * heap) * heap) * heap) * int

val g11_example6602 : (((bool * heap) * heap) * heap) * int

val g11_example6603 : (((bool * heap) * heap) * heap) * int

val g11_example6604 : (((bool * heap) * heap) * heap) * int

val g11_example6605 : (((bool * heap) * heap) * heap) * int

val g11_example6606 : (((bool * heap) * heap) * heap) * int

val g11_example6607 : (((bool * heap) * heap) * heap) * int

val g11_example6608 : (((bool * heap) * heap) * heap) * int

val g11_example6609 : (((bool * heap) * heap) * heap) * int

val g11_example6610 : (((bool * heap) * heap) * heap) * int

val g11_example6611 : (((bool * heap) * heap) * heap) * int

val g11_example6612 : (((bool * heap) * heap) * heap) * int

val g11_example6613 : (((bool * heap) * heap) * heap) * int

val g11_example6614 : (((bool * heap) * heap) * heap) * int

val g11_example6615 : (((bool * heap) * heap) * heap) * int

val g11_example6616 : (((bool * heap) * heap) * heap) * int

val g11_example6617 : (((bool * heap) * heap) * heap) * int

val g11_example6618 : (((bool * heap) * heap) * heap) * int

val g11_example6619 : (((bool * heap) * heap) * heap) * int

val g11_example6620 : (((bool * heap) * heap) * heap) * int

val g11_example6621 : (((bool * heap) * heap) * heap) * int

val g11_example6622 : (((bool * heap) * heap) * heap) * int

val g11_example6623 : (((bool * heap) * heap) * heap) * int

val g11_example6624 : (((bool * heap) * heap) * heap) * int

val g11_example6625 : (((bool * heap) * heap) * heap) * int

val g11_example6626 : (((bool * heap) * heap) * heap) * int

val g11_example6627 : (((bool * heap) * heap) * heap) * int

val g11_example6628 : (((bool * heap) * heap) * heap) * int

val g11_example6629 : (((bool * heap) * heap) * heap) * int

val g11_example6630 : (((bool * heap) * heap) * heap) * int

val g11_example6631 : (((bool * heap) * heap) * heap) * int

val g11_example6632 : (((bool * heap) * heap) * heap) * int

val g11_example6633 : (((bool * heap) * heap) * heap) * int

val g11_example6634 : (((bool * heap) * heap) * heap) * int

val g11_example6635 : (((bool * heap) * heap) * heap) * int

val g11_example6636 : (((bool * heap) * heap) * heap) * int

val g11_example6637 : (((bool * heap) * heap) * heap) * int

val g11_example6638 : (((bool * heap) * heap) * heap) * int

val g11_example6639 : (((bool * heap) * heap) * heap) * int

val g11_example6640 : (((bool * heap) * heap) * heap) * int

val g11_example6641 : (((bool * heap) * heap) * heap) * int

val g11_example6642 : (((bool * heap) * heap) * heap) * int

val g11_example6643 : (((bool * heap) * heap) * heap) * int

val g11_example6644 : (((bool * heap) * heap) * heap) * int

val g11_example6645 : (((bool * heap) * heap) * heap) * int

val g11_example6646 : (((bool * heap) * heap) * heap) * int

val g11_example6647 : (((bool * heap) * heap) * heap) * int

val g11_example6648 : (((bool * heap) * heap) * heap) * int

val g11_example6649 : (((bool * heap) * heap) * heap) * int

val g11_example6650 : (((bool * heap) * heap) * heap) * int

val g11_example6651 : (((bool * heap) * heap) * heap) * int

val g11_example6652 : (((bool * heap) * heap) * heap) * int

val g11_example6653 : (((bool * heap) * heap) * heap) * int

val g11_example6654 : (((bool * heap) * heap) * heap) * int

val g11_example6655 : (((bool * heap) * heap) * heap) * int

val g11_example6656 : (((bool * heap) * heap) * heap) * int

val g11_example6657 : (((bool * heap) * heap) * heap) * int

val g11_example6658 : (((bool * heap) * heap) * heap) * int

val g11_example6659 : (((bool * heap) * heap) * heap) * int

val g11_example6660 : (((bool * heap) * heap) * heap) * int

val g11_example6661 : (((bool * heap) * heap) * heap) * int

val g11_example6662 : (((bool * heap) * heap) * heap) * int

val g11_example6663 : (((bool * heap) * heap) * heap) * int

val g11_example6664 : (((bool * heap) * heap) * heap) * int

val g11_example6665 : (((bool * heap) * heap) * heap) * int

val g11_example6666 : (((bool * heap) * heap) * heap) * int

val g11_example6667 : (((bool * heap) * heap) * heap) * int

val g11_example6668 : (((bool * heap) * heap) * heap) * int

val g11_example6669 : (((bool * heap) * heap) * heap) * int

val g11_example6670 : (((bool * heap) * heap) * heap) * int

val g11_example6671 : (((bool * heap) * heap) * heap) * int

val g11_example6672 : (((bool * heap) * heap) * heap) * int

val g11_example6673 : (((bool * heap) * heap) * heap) * int

val g11_example6674 : (((bool * heap) * heap) * heap) * int

val g11_example6675 : (((bool * heap) * heap) * heap) * int

val g11_example6676 : (((bool * heap) * heap) * heap) * int

val g11_example6677 : (((bool * heap) * heap) * heap) * int

val g11_example6678 : (((bool * heap) * heap) * heap) * int

val g11_example6679 : (((bool * heap) * heap) * heap) * int

val g11_example6680 : (((bool * heap) * heap) * heap) * int

val g11_example6681 : (((bool * heap) * heap) * heap) * int

val g11_example6682 : (((bool * heap) * heap) * heap) * int

val g11_example6683 : (((bool * heap) * heap) * heap) * int

val g11_example6684 : (((bool * heap) * heap) * heap) * int

val g11_example6685 : (((bool * heap) * heap) * heap) * int

val g11_example6686 : (((bool * heap) * heap) * heap) * int

val g11_example6687 : (((bool * heap) * heap) * heap) * int

val g11_example6688 : (((bool * heap) * heap) * heap) * int

val g11_example6689 : (((bool * heap) * heap) * heap) * int

val g11_example6690 : (((bool * heap) * heap) * heap) * int

val g11_example6691 : (((bool * heap) * heap) * heap) * int

val g11_example6692 : (((bool * heap) * heap) * heap) * int

val g11_example6693 : (((bool * heap) * heap) * heap) * int

val g11_example6694 : (((bool * heap) * heap) * heap) * int

val g11_example6695 : (((bool * heap) * heap) * heap) * int

val g11_example6696 : (((bool * heap) * heap) * heap) * int

val g11_example6697 : (((bool * heap) * heap) * heap) * int

val g11_example6698 : (((bool * heap) * heap) * heap) * int

val g11_example6699 : (((bool * heap) * heap) * heap) * int

val g11_example6700 : (((bool * heap) * heap) * heap) * int

val g11_example6701 : (((bool * heap) * heap) * heap) * int

val g11_example6702 : (((bool * heap) * heap) * heap) * int

val g11_example6703 : (((bool * heap) * heap) * heap) * int

val g11_example6704 : (((bool * heap) * heap) * heap) * int

val g11_example6705 : (((bool * heap) * heap) * heap) * int

val g11_example6706 : (((bool * heap) * heap) * heap) * int

val g11_example6707 : (((bool * heap) * heap) * heap) * int

val g11_example6708 : (((bool * heap) * heap) * heap) * int

val g11_example6709 : (((bool * heap) * heap) * heap) * int

val g11_example6710 : (((bool * heap) * heap) * heap) * int

val g11_example6711 : (((bool * heap) * heap) * heap) * int

val g11_example6712 : (((bool * heap) * heap) * heap) * int

val g11_example6713 : (((bool * heap) * heap) * heap) * int

val g11_example6714 : (((bool * heap) * heap) * heap) * int

val g11_example6715 : (((bool * heap) * heap) * heap) * int

val g11_example6716 : (((bool * heap) * heap) * heap) * int

val g11_example6717 : (((bool * heap) * heap) * heap) * int

val g11_example6718 : (((bool * heap) * heap) * heap) * int

val g11_example6719 : (((bool * heap) * heap) * heap) * int

val g11_example6720 : (((bool * heap) * heap) * heap) * int

val g11_example6721 : (((bool * heap) * heap) * heap) * int

val g11_example6722 : (((bool * heap) * heap) * heap) * int

val g11_example6723 : (((bool * heap) * heap) * heap) * int

val g11_example6724 : (((bool * heap) * heap) * heap) * int

val g11_example6725 : (((bool * heap) * heap) * heap) * int

val g11_example6726 : (((bool * heap) * heap) * heap) * int

val g11_example6727 : (((bool * heap) * heap) * heap) * int

val g11_example6728 : (((bool * heap) * heap) * heap) * int

val g11_example6729 : (((bool * heap) * heap) * heap) * int

val g11_example6730 : (((bool * heap) * heap) * heap) * int

val g11_example6731 : (((bool * heap) * heap) * heap) * int

val g11_example6732 : (((bool * heap) * heap) * heap) * int

val g11_example6733 : (((bool * heap) * heap) * heap) * int

val g11_example6734 : (((bool * heap) * heap) * heap) * int

val g11_example6735 : (((bool * heap) * heap) * heap) * int

val g11_example6736 : (((bool * heap) * heap) * heap) * int

val g11_example6737 : (((bool * heap) * heap) * heap) * int

val g11_example6738 : (((bool * heap) * heap) * heap) * int

val g11_example6739 : (((bool * heap) * heap) * heap) * int

val g11_example6740 : (((bool * heap) * heap) * heap) * int

val g11_example6741 : (((bool * heap) * heap) * heap) * int

val g11_example6742 : (((bool * heap) * heap) * heap) * int

val g11_example6743 : (((bool * heap) * heap) * heap) * int

val g11_example6744 : (((bool * heap) * heap) * heap) * int

val g11_example6745 : (((bool * heap) * heap) * heap) * int

val g11_example6746 : (((bool * heap) * heap) * heap) * int

val g11_example6747 : (((bool * heap) * heap) * heap) * int

val g11_example6748 : (((bool * heap) * heap) * heap) * int

val g11_example6749 : (((bool * heap) * heap) * heap) * int

val g11_example6750 : (((bool * heap) * heap) * heap) * int

val g11_example6751 : (((bool * heap) * heap) * heap) * int

val g11_example6752 : (((bool * heap) * heap) * heap) * int

val g11_example6753 : (((bool * heap) * heap) * heap) * int

val g11_example6754 : (((bool * heap) * heap) * heap) * int

val g11_example6755 : (((bool * heap) * heap) * heap) * int

val g11_example6756 : (((bool * heap) * heap) * heap) * int

val g11_example6757 : (((bool * heap) * heap) * heap) * int

val g11_example6758 : (((bool * heap) * heap) * heap) * int

val g11_example6759 : (((bool * heap) * heap) * heap) * int

val g11_example6760 : (((bool * heap) * heap) * heap) * int

val g11_example6761 : (((bool * heap) * heap) * heap) * int

val g11_example6762 : (((bool * heap) * heap) * heap) * int

val g11_example6763 : (((bool * heap) * heap) * heap) * int

val g11_example6764 : (((bool * heap) * heap) * heap) * int

val g11_example6765 : (((bool * heap) * heap) * heap) * int

val g11_example6766 : (((bool * heap) * heap) * heap) * int

val g11_example6767 : (((bool * heap) * heap) * heap) * int

val g11_example6768 : (((bool * heap) * heap) * heap) * int

val g11_example6769 : (((bool * heap) * heap) * heap) * int

val g11_example6770 : (((bool * heap) * heap) * heap) * int

val g11_example6771 : (((bool * heap) * heap) * heap) * int

val g11_example6772 : (((bool * heap) * heap) * heap) * int

val g11_example6773 : (((bool * heap) * heap) * heap) * int

val g11_example6774 : (((bool * heap) * heap) * heap) * int

val g11_example6775 : (((bool * heap) * heap) * heap) * int

val g11_example6776 : (((bool * heap) * heap) * heap) * int

val g11_example6777 : (((bool * heap) * heap) * heap) * int

val g11_example6778 : (((bool * heap) * heap) * heap) * int

val g11_example6779 : (((bool * heap) * heap) * heap) * int

val g11_example6780 : (((bool * heap) * heap) * heap) * int

val g11_example6781 : (((bool * heap) * heap) * heap) * int

val g11_example6782 : (((bool * heap) * heap) * heap) * int

val g11_example6783 : (((bool * heap) * heap) * heap) * int

val g11_example6784 : (((bool * heap) * heap) * heap) * int

val g11_example6785 : (((bool * heap) * heap) * heap) * int

val g11_example6786 : (((bool * heap) * heap) * heap) * int

val g11_example6787 : (((bool * heap) * heap) * heap) * int

val g11_example6788 : (((bool * heap) * heap) * heap) * int

val g11_example6789 : (((bool * heap) * heap) * heap) * int

val g11_example6790 : (((bool * heap) * heap) * heap) * int

val g11_example6791 : (((bool * heap) * heap) * heap) * int

val g11_example6792 : (((bool * heap) * heap) * heap) * int

val g11_example6793 : (((bool * heap) * heap) * heap) * int

val g11_example6794 : (((bool * heap) * heap) * heap) * int

val g11_example6795 : (((bool * heap) * heap) * heap) * int

val g11_example6796 : (((bool * heap) * heap) * heap) * int

val g11_example6797 : (((bool * heap) * heap) * heap) * int

val g11_example6798 : (((bool * heap) * heap) * heap) * int

val g11_example6799 : (((bool * heap) * heap) * heap) * int

val g11_example6800 : (((bool * heap) * heap) * heap) * int

val g11_example6801 : (((bool * heap) * heap) * heap) * int

val g11_example6802 : (((bool * heap) * heap) * heap) * int

val g11_example6803 : (((bool * heap) * heap) * heap) * int

val g11_example6804 : (((bool * heap) * heap) * heap) * int

val g11_example6805 : (((bool * heap) * heap) * heap) * int

val g11_example6806 : (((bool * heap) * heap) * heap) * int

val g11_example6807 : (((bool * heap) * heap) * heap) * int

val g11_example6808 : (((bool * heap) * heap) * heap) * int

val g11_example6809 : (((bool * heap) * heap) * heap) * int

val g11_example6810 : (((bool * heap) * heap) * heap) * int

val g11_example6811 : (((bool * heap) * heap) * heap) * int

val g11_example6812 : (((bool * heap) * heap) * heap) * int

val g11_example6813 : (((bool * heap) * heap) * heap) * int

val g11_example6814 : (((bool * heap) * heap) * heap) * int

val g11_example6815 : (((bool * heap) * heap) * heap) * int

val g11_example6816 : (((bool * heap) * heap) * heap) * int

val g11_example6817 : (((bool * heap) * heap) * heap) * int

val g11_example6818 : (((bool * heap) * heap) * heap) * int

val g11_example6819 : (((bool * heap) * heap) * heap) * int

val g11_example6820 : (((bool * heap) * heap) * heap) * int

val g11_example6821 : (((bool * heap) * heap) * heap) * int

val g11_example6822 : (((bool * heap) * heap) * heap) * int

val g11_example6823 : (((bool * heap) * heap) * heap) * int

val g11_example6824 : (((bool * heap) * heap) * heap) * int

val g11_example6825 : (((bool * heap) * heap) * heap) * int

val g11_example6826 : (((bool * heap) * heap) * heap) * int

val g11_example6827 : (((bool * heap) * heap) * heap) * int

val g11_example6828 : (((bool * heap) * heap) * heap) * int

val g11_example6829 : (((bool * heap) * heap) * heap) * int

val g11_example6830 : (((bool * heap) * heap) * heap) * int

val g11_example6831 : (((bool * heap) * heap) * heap) * int

val g11_example6832 : (((bool * heap) * heap) * heap) * int

val g11_example6833 : (((bool * heap) * heap) * heap) * int

val g11_example6834 : (((bool * heap) * heap) * heap) * int

val g11_example6835 : (((bool * heap) * heap) * heap) * int

val g11_example6836 : (((bool * heap) * heap) * heap) * int

val g11_example6837 : (((bool * heap) * heap) * heap) * int

val g11_example6838 : (((bool * heap) * heap) * heap) * int

val g11_example6839 : (((bool * heap) * heap) * heap) * int

val g11_example6840 : (((bool * heap) * heap) * heap) * int

val g11_example6841 : (((bool * heap) * heap) * heap) * int

val g11_example6842 : (((bool * heap) * heap) * heap) * int

val g11_example6843 : (((bool * heap) * heap) * heap) * int

val g11_example6844 : (((bool * heap) * heap) * heap) * int

val g11_example6845 : (((bool * heap) * heap) * heap) * int

val g11_example6846 : (((bool * heap) * heap) * heap) * int

val g11_example6847 : (((bool * heap) * heap) * heap) * int

val g11_example6848 : (((bool * heap) * heap) * heap) * int

val g11_example6849 : (((bool * heap) * heap) * heap) * int

val g11_example6850 : (((bool * heap) * heap) * heap) * int

val g11_example6851 : (((bool * heap) * heap) * heap) * int

val g11_example6852 : (((bool * heap) * heap) * heap) * int

val g11_example6853 : (((bool * heap) * heap) * heap) * int

val g11_example6854 : (((bool * heap) * heap) * heap) * int

val g11_example6855 : (((bool * heap) * heap) * heap) * int

val g11_example6856 : (((bool * heap) * heap) * heap) * int

val g11_example6857 : (((bool * heap) * heap) * heap) * int

val g11_example6858 : (((bool * heap) * heap) * heap) * int

val g11_example6859 : (((bool * heap) * heap) * heap) * int

val g11_example6860 : (((bool * heap) * heap) * heap) * int

val g11_example6861 : (((bool * heap) * heap) * heap) * int

val g11_example6862 : (((bool * heap) * heap) * heap) * int

val g11_example6863 : (((bool * heap) * heap) * heap) * int

val g11_example6864 : (((bool * heap) * heap) * heap) * int

val g11_example6865 : (((bool * heap) * heap) * heap) * int

val g11_example6866 : (((bool * heap) * heap) * heap) * int

val g11_example6867 : (((bool * heap) * heap) * heap) * int

val g11_example6868 : (((bool * heap) * heap) * heap) * int

val g11_example6869 : (((bool * heap) * heap) * heap) * int

val g11_example6870 : (((bool * heap) * heap) * heap) * int

val g11_example6871 : (((bool * heap) * heap) * heap) * int

val g11_example6872 : (((bool * heap) * heap) * heap) * int

val g11_example6873 : (((bool * heap) * heap) * heap) * int

val g11_example6874 : (((bool * heap) * heap) * heap) * int

val g11_example6875 : (((bool * heap) * heap) * heap) * int

val g11_example6876 : (((bool * heap) * heap) * heap) * int

val g11_example6877 : (((bool * heap) * heap) * heap) * int

val g11_example6878 : (((bool * heap) * heap) * heap) * int

val g11_example6879 : (((bool * heap) * heap) * heap) * int

val g11_example6880 : (((bool * heap) * heap) * heap) * int

val g11_example6881 : (((bool * heap) * heap) * heap) * int

val g11_example6882 : (((bool * heap) * heap) * heap) * int

val g11_example6883 : (((bool * heap) * heap) * heap) * int

val g11_example6884 : (((bool * heap) * heap) * heap) * int

val g11_example6885 : (((bool * heap) * heap) * heap) * int

val g11_example6886 : (((bool * heap) * heap) * heap) * int

val g11_example6887 : (((bool * heap) * heap) * heap) * int

val g11_example6888 : (((bool * heap) * heap) * heap) * int

val g11_example6889 : (((bool * heap) * heap) * heap) * int

val g11_example6890 : (((bool * heap) * heap) * heap) * int

val g11_example6891 : (((bool * heap) * heap) * heap) * int

val g11_example6892 : (((bool * heap) * heap) * heap) * int

val g11_example6893 : (((bool * heap) * heap) * heap) * int

val g11_example6894 : (((bool * heap) * heap) * heap) * int

val g11_example6895 : (((bool * heap) * heap) * heap) * int

val g11_example6896 : (((bool * heap) * heap) * heap) * int

val g11_example6897 : (((bool * heap) * heap) * heap) * int

val g11_example6898 : (((bool * heap) * heap) * heap) * int

val g11_example6899 : (((bool * heap) * heap) * heap) * int

val g11_example6900 : (((bool * heap) * heap) * heap) * int

val g11_example6901 : (((bool * heap) * heap) * heap) * int

val g11_example6902 : (((bool * heap) * heap) * heap) * int

val g11_example6903 : (((bool * heap) * heap) * heap) * int

val g11_example6904 : (((bool * heap) * heap) * heap) * int

val g11_example6905 : (((bool * heap) * heap) * heap) * int

val g11_example6906 : (((bool * heap) * heap) * heap) * int

val g11_example6907 : (((bool * heap) * heap) * heap) * int

val g11_example6908 : (((bool * heap) * heap) * heap) * int

val g11_example6909 : (((bool * heap) * heap) * heap) * int

val g11_example6910 : (((bool * heap) * heap) * heap) * int

val g11_example6911 : (((bool * heap) * heap) * heap) * int

val g11_example6912 : (((bool * heap) * heap) * heap) * int

val g11_example6913 : (((bool * heap) * heap) * heap) * int

val g11_example6914 : (((bool * heap) * heap) * heap) * int

val g11_example6915 : (((bool * heap) * heap) * heap) * int

val g11_example6916 : (((bool * heap) * heap) * heap) * int

val g11_example6917 : (((bool * heap) * heap) * heap) * int

val g11_example6918 : (((bool * heap) * heap) * heap) * int

val g11_example6919 : (((bool * heap) * heap) * heap) * int

val g11_example6920 : (((bool * heap) * heap) * heap) * int

val g11_example6921 : (((bool * heap) * heap) * heap) * int

val g11_example6922 : (((bool * heap) * heap) * heap) * int

val g11_example6923 : (((bool * heap) * heap) * heap) * int

val g11_example6924 : (((bool * heap) * heap) * heap) * int

val g11_example6925 : (((bool * heap) * heap) * heap) * int

val g11_example6926 : (((bool * heap) * heap) * heap) * int

val g11_example6927 : (((bool * heap) * heap) * heap) * int

val g11_example6928 : (((bool * heap) * heap) * heap) * int

val g11_example6929 : (((bool * heap) * heap) * heap) * int

val g11_example6930 : (((bool * heap) * heap) * heap) * int

val g11_example6931 : (((bool * heap) * heap) * heap) * int

val g11_example6932 : (((bool * heap) * heap) * heap) * int

val g11_example6933 : (((bool * heap) * heap) * heap) * int

val g11_example6934 : (((bool * heap) * heap) * heap) * int

val g11_example6935 : (((bool * heap) * heap) * heap) * int

val g11_example6936 : (((bool * heap) * heap) * heap) * int

val g11_example6937 : (((bool * heap) * heap) * heap) * int

val g11_example6938 : (((bool * heap) * heap) * heap) * int

val g11_example6939 : (((bool * heap) * heap) * heap) * int

val g11_example6940 : (((bool * heap) * heap) * heap) * int

val g11_example6941 : (((bool * heap) * heap) * heap) * int

val g11_example6942 : (((bool * heap) * heap) * heap) * int

val g11_example6943 : (((bool * heap) * heap) * heap) * int

val g11_example6944 : (((bool * heap) * heap) * heap) * int

val g11_example6945 : (((bool * heap) * heap) * heap) * int

val g11_example6946 : (((bool * heap) * heap) * heap) * int

val g11_example6947 : (((bool * heap) * heap) * heap) * int

val g11_example6948 : (((bool * heap) * heap) * heap) * int

val g11_example6949 : (((bool * heap) * heap) * heap) * int

val g11_example6950 : (((bool * heap) * heap) * heap) * int

val g11_example6951 : (((bool * heap) * heap) * heap) * int

val g11_example6952 : (((bool * heap) * heap) * heap) * int

val g11_example6953 : (((bool * heap) * heap) * heap) * int

val g11_example6954 : (((bool * heap) * heap) * heap) * int

val g11_example6955 : (((bool * heap) * heap) * heap) * int

val g11_example6956 : (((bool * heap) * heap) * heap) * int

val g11_example6957 : (((bool * heap) * heap) * heap) * int

val g11_example6958 : (((bool * heap) * heap) * heap) * int

val g11_example6959 : (((bool * heap) * heap) * heap) * int

val g11_example6960 : (((bool * heap) * heap) * heap) * int

val g11_example6961 : (((bool * heap) * heap) * heap) * int

val g11_example6962 : (((bool * heap) * heap) * heap) * int

val g11_example6963 : (((bool * heap) * heap) * heap) * int

val g11_example6964 : (((bool * heap) * heap) * heap) * int

val g11_example6965 : (((bool * heap) * heap) * heap) * int

val g11_example6966 : (((bool * heap) * heap) * heap) * int

val g11_example6967 : (((bool * heap) * heap) * heap) * int

val g11_example6968 : (((bool * heap) * heap) * heap) * int

val g11_example6969 : (((bool * heap) * heap) * heap) * int

val g11_example6970 : (((bool * heap) * heap) * heap) * int

val g11_example6971 : (((bool * heap) * heap) * heap) * int

val g11_example6972 : (((bool * heap) * heap) * heap) * int

val g11_example6973 : (((bool * heap) * heap) * heap) * int

val g11_example6974 : (((bool * heap) * heap) * heap) * int

val g11_example6975 : (((bool * heap) * heap) * heap) * int

val g11_example6976 : (((bool * heap) * heap) * heap) * int

val g11_example6977 : (((bool * heap) * heap) * heap) * int

val g11_example6978 : (((bool * heap) * heap) * heap) * int

val g11_example6979 : (((bool * heap) * heap) * heap) * int

val g11_example6980 : (((bool * heap) * heap) * heap) * int

val g11_example6981 : (((bool * heap) * heap) * heap) * int

val g11_example6982 : (((bool * heap) * heap) * heap) * int

val g11_example6983 : (((bool * heap) * heap) * heap) * int

val g11_example6984 : (((bool * heap) * heap) * heap) * int

val g11_example6985 : (((bool * heap) * heap) * heap) * int

val g11_example6986 : (((bool * heap) * heap) * heap) * int

val g11_example6987 : (((bool * heap) * heap) * heap) * int

val g11_example6988 : (((bool * heap) * heap) * heap) * int

val g11_example6989 : (((bool * heap) * heap) * heap) * int

val g11_example6990 : (((bool * heap) * heap) * heap) * int

val g11_example6991 : (((bool * heap) * heap) * heap) * int

val g11_example6992 : (((bool * heap) * heap) * heap) * int

val g11_example6993 : (((bool * heap) * heap) * heap) * int

val g11_example6994 : (((bool * heap) * heap) * heap) * int

val g11_example6995 : (((bool * heap) * heap) * heap) * int

val g11_example6996 : (((bool * heap) * heap) * heap) * int

val g11_example6997 : (((bool * heap) * heap) * heap) * int

val g11_example6998 : (((bool * heap) * heap) * heap) * int

val g11_example6999 : (((bool * heap) * heap) * heap) * int

val g11_example7000 : (((bool * heap) * heap) * heap) * int

val g11_example7001 : (((bool * heap) * heap) * heap) * int

val g11_example7002 : (((bool * heap) * heap) * heap) * int

val g11_example7003 : (((bool * heap) * heap) * heap) * int

val g11_example7004 : (((bool * heap) * heap) * heap) * int

val g11_example7005 : (((bool * heap) * heap) * heap) * int

val g11_example7006 : (((bool * heap) * heap) * heap) * int

val g11_example7007 : (((bool * heap) * heap) * heap) * int

val g11_example7008 : (((bool * heap) * heap) * heap) * int

val g11_example7009 : (((bool * heap) * heap) * heap) * int

val g11_example7010 : (((bool * heap) * heap) * heap) * int

val g11_example7011 : (((bool * heap) * heap) * heap) * int

val g11_example7012 : (((bool * heap) * heap) * heap) * int

val g11_example7013 : (((bool * heap) * heap) * heap) * int

val g11_example7014 : (((bool * heap) * heap) * heap) * int

val g11_example7015 : (((bool * heap) * heap) * heap) * int

val g11_example7016 : (((bool * heap) * heap) * heap) * int

val g11_example7017 : (((bool * heap) * heap) * heap) * int

val g11_example7018 : (((bool * heap) * heap) * heap) * int

val g11_example7019 : (((bool * heap) * heap) * heap) * int

val g11_example7020 : (((bool * heap) * heap) * heap) * int

val g11_example7021 : (((bool * heap) * heap) * heap) * int

val g11_example7022 : (((bool * heap) * heap) * heap) * int

val g11_example7023 : (((bool * heap) * heap) * heap) * int

val g11_example7024 : (((bool * heap) * heap) * heap) * int

val g11_example7025 : (((bool * heap) * heap) * heap) * int

val g11_example7026 : (((bool * heap) * heap) * heap) * int

val g11_example7027 : (((bool * heap) * heap) * heap) * int

val g11_example7028 : (((bool * heap) * heap) * heap) * int

val g11_example7029 : (((bool * heap) * heap) * heap) * int

val g11_example7030 : (((bool * heap) * heap) * heap) * int

val g11_example7031 : (((bool * heap) * heap) * heap) * int

val g11_example7032 : (((bool * heap) * heap) * heap) * int

val g11_example7033 : (((bool * heap) * heap) * heap) * int

val g11_example7034 : (((bool * heap) * heap) * heap) * int

val g11_example7035 : (((bool * heap) * heap) * heap) * int

val g11_example7036 : (((bool * heap) * heap) * heap) * int

val g11_example7037 : (((bool * heap) * heap) * heap) * int

val g11_example7038 : (((bool * heap) * heap) * heap) * int

val g11_example7039 : (((bool * heap) * heap) * heap) * int

val g11_example7040 : (((bool * heap) * heap) * heap) * int

val g11_example7041 : (((bool * heap) * heap) * heap) * int

val g11_example7042 : (((bool * heap) * heap) * heap) * int

val g11_example7043 : (((bool * heap) * heap) * heap) * int

val g11_example7044 : (((bool * heap) * heap) * heap) * int

val g11_example7045 : (((bool * heap) * heap) * heap) * int

val g11_example7046 : (((bool * heap) * heap) * heap) * int

val g11_example7047 : (((bool * heap) * heap) * heap) * int

val g11_example7048 : (((bool * heap) * heap) * heap) * int

val g11_example7049 : (((bool * heap) * heap) * heap) * int

val g11_example7050 : (((bool * heap) * heap) * heap) * int

val g11_example7051 : (((bool * heap) * heap) * heap) * int

val g11_example7052 : (((bool * heap) * heap) * heap) * int

val g11_example7053 : (((bool * heap) * heap) * heap) * int

val g11_example7054 : (((bool * heap) * heap) * heap) * int

val g11_example7055 : (((bool * heap) * heap) * heap) * int

val g11_example7056 : (((bool * heap) * heap) * heap) * int

val g11_example7057 : (((bool * heap) * heap) * heap) * int

val g11_example7058 : (((bool * heap) * heap) * heap) * int

val g11_example7059 : (((bool * heap) * heap) * heap) * int

val g11_example7060 : (((bool * heap) * heap) * heap) * int

val g11_example7061 : (((bool * heap) * heap) * heap) * int

val g11_example7062 : (((bool * heap) * heap) * heap) * int

val g11_example7063 : (((bool * heap) * heap) * heap) * int

val g11_example7064 : (((bool * heap) * heap) * heap) * int

val g11_example7065 : (((bool * heap) * heap) * heap) * int

val g11_example7066 : (((bool * heap) * heap) * heap) * int

val g11_example7067 : (((bool * heap) * heap) * heap) * int

val g11_example7068 : (((bool * heap) * heap) * heap) * int

val g11_example7069 : (((bool * heap) * heap) * heap) * int

val g11_example7070 : (((bool * heap) * heap) * heap) * int

val g11_example7071 : (((bool * heap) * heap) * heap) * int

val g11_example7072 : (((bool * heap) * heap) * heap) * int

val g11_example7073 : (((bool * heap) * heap) * heap) * int

val g11_example7074 : (((bool * heap) * heap) * heap) * int

val g11_example7075 : (((bool * heap) * heap) * heap) * int

val g11_example7076 : (((bool * heap) * heap) * heap) * int

val g11_example7077 : (((bool * heap) * heap) * heap) * int

val g11_example7078 : (((bool * heap) * heap) * heap) * int

val g11_example7079 : (((bool * heap) * heap) * heap) * int

val g11_example7080 : (((bool * heap) * heap) * heap) * int

val g11_example7081 : (((bool * heap) * heap) * heap) * int

val g11_example7082 : (((bool * heap) * heap) * heap) * int

val g11_example7083 : (((bool * heap) * heap) * heap) * int

val g11_example7084 : (((bool * heap) * heap) * heap) * int

val g11_example7085 : (((bool * heap) * heap) * heap) * int

val g11_example7086 : (((bool * heap) * heap) * heap) * int

val g11_example7087 : (((bool * heap) * heap) * heap) * int

val g11_example7088 : (((bool * heap) * heap) * heap) * int

val g11_example7089 : (((bool * heap) * heap) * heap) * int

val g11_example7090 : (((bool * heap) * heap) * heap) * int

val g11_example7091 : (((bool * heap) * heap) * heap) * int

val g11_example7092 : (((bool * heap) * heap) * heap) * int

val g11_example7093 : (((bool * heap) * heap) * heap) * int

val g11_example7094 : (((bool * heap) * heap) * heap) * int

val g11_example7095 : (((bool * heap) * heap) * heap) * int

val g11_example7096 : (((bool * heap) * heap) * heap) * int

val g11_example7097 : (((bool * heap) * heap) * heap) * int

val g11_example7098 : (((bool * heap) * heap) * heap) * int

val g11_example7099 : (((bool * heap) * heap) * heap) * int

val g11_example7100 : (((bool * heap) * heap) * heap) * int

val g11_example7101 : (((bool * heap) * heap) * heap) * int

val g11_example7102 : (((bool * heap) * heap) * heap) * int

val g11_example7103 : (((bool * heap) * heap) * heap) * int

val g11_example7104 : (((bool * heap) * heap) * heap) * int

val g11_example7105 : (((bool * heap) * heap) * heap) * int

val g11_example7106 : (((bool * heap) * heap) * heap) * int

val g11_example7107 : (((bool * heap) * heap) * heap) * int

val g11_example7108 : (((bool * heap) * heap) * heap) * int

val g11_example7109 : (((bool * heap) * heap) * heap) * int

val g11_example7110 : (((bool * heap) * heap) * heap) * int

val g11_example7111 : (((bool * heap) * heap) * heap) * int

val g11_example7112 : (((bool * heap) * heap) * heap) * int

val g11_example7113 : (((bool * heap) * heap) * heap) * int

val g11_example7114 : (((bool * heap) * heap) * heap) * int

val g11_example7115 : (((bool * heap) * heap) * heap) * int

val g11_example7116 : (((bool * heap) * heap) * heap) * int

val g11_example7117 : (((bool * heap) * heap) * heap) * int

val g11_example7118 : (((bool * heap) * heap) * heap) * int

val g11_example7119 : (((bool * heap) * heap) * heap) * int

val g11_example7120 : (((bool * heap) * heap) * heap) * int

val g11_example7121 : (((bool * heap) * heap) * heap) * int

val g11_example7122 : (((bool * heap) * heap) * heap) * int

val g11_example7123 : (((bool * heap) * heap) * heap) * int

val g11_example7124 : (((bool * heap) * heap) * heap) * int

val g11_example7125 : (((bool * heap) * heap) * heap) * int

val g11_example7126 : (((bool * heap) * heap) * heap) * int

val g11_example7127 : (((bool * heap) * heap) * heap) * int

val g11_example7128 : (((bool * heap) * heap) * heap) * int

val g11_example7129 : (((bool * heap) * heap) * heap) * int

val g11_example7130 : (((bool * heap) * heap) * heap) * int

val g11_example7131 : (((bool * heap) * heap) * heap) * int

val g11_example7132 : (((bool * heap) * heap) * heap) * int

val g11_example7133 : (((bool * heap) * heap) * heap) * int

val g11_example7134 : (((bool * heap) * heap) * heap) * int

val g11_example7135 : (((bool * heap) * heap) * heap) * int

val g11_example7136 : (((bool * heap) * heap) * heap) * int

val g11_example7137 : (((bool * heap) * heap) * heap) * int

val g11_example7138 : (((bool * heap) * heap) * heap) * int

val g11_example7139 : (((bool * heap) * heap) * heap) * int

val g11_example7140 : (((bool * heap) * heap) * heap) * int

val g11_example7141 : (((bool * heap) * heap) * heap) * int

val g11_example7142 : (((bool * heap) * heap) * heap) * int

val g11_example7143 : (((bool * heap) * heap) * heap) * int

val g11_example7144 : (((bool * heap) * heap) * heap) * int

val g11_example7145 : (((bool * heap) * heap) * heap) * int

val g11_example7146 : (((bool * heap) * heap) * heap) * int

val g11_example7147 : (((bool * heap) * heap) * heap) * int

val g11_example7148 : (((bool * heap) * heap) * heap) * int

val g11_example7149 : (((bool * heap) * heap) * heap) * int

val g11_example7150 : (((bool * heap) * heap) * heap) * int

val g11_example7151 : (((bool * heap) * heap) * heap) * int

val g11_example7152 : (((bool * heap) * heap) * heap) * int

val g11_example7153 : (((bool * heap) * heap) * heap) * int

val g11_example7154 : (((bool * heap) * heap) * heap) * int

val g11_example7155 : (((bool * heap) * heap) * heap) * int

val g11_example7156 : (((bool * heap) * heap) * heap) * int

val g11_example7157 : (((bool * heap) * heap) * heap) * int

val g11_example7158 : (((bool * heap) * heap) * heap) * int

val g11_example7159 : (((bool * heap) * heap) * heap) * int

val g11_example7160 : (((bool * heap) * heap) * heap) * int

val g11_example7161 : (((bool * heap) * heap) * heap) * int

val g11_example7162 : (((bool * heap) * heap) * heap) * int

val g11_example7163 : (((bool * heap) * heap) * heap) * int

val g11_example7164 : (((bool * heap) * heap) * heap) * int

val g11_example7165 : (((bool * heap) * heap) * heap) * int

val g11_example7166 : (((bool * heap) * heap) * heap) * int

val g11_example7167 : (((bool * heap) * heap) * heap) * int

val g11_example7168 : (((bool * heap) * heap) * heap) * int

val g11_example7169 : (((bool * heap) * heap) * heap) * int

val g11_example7170 : (((bool * heap) * heap) * heap) * int

val g11_example7171 : (((bool * heap) * heap) * heap) * int

val g11_example7172 : (((bool * heap) * heap) * heap) * int

val g11_example7173 : (((bool * heap) * heap) * heap) * int

val g11_example7174 : (((bool * heap) * heap) * heap) * int

val g11_example7175 : (((bool * heap) * heap) * heap) * int

val g11_example7176 : (((bool * heap) * heap) * heap) * int

val g11_example7177 : (((bool * heap) * heap) * heap) * int

val g11_example7178 : (((bool * heap) * heap) * heap) * int

val g11_example7179 : (((bool * heap) * heap) * heap) * int

val g11_example7180 : (((bool * heap) * heap) * heap) * int

val g11_example7181 : (((bool * heap) * heap) * heap) * int

val g11_example7182 : (((bool * heap) * heap) * heap) * int

val g11_example7183 : (((bool * heap) * heap) * heap) * int

val g11_example7184 : (((bool * heap) * heap) * heap) * int

val g11_example7185 : (((bool * heap) * heap) * heap) * int

val g11_example7186 : (((bool * heap) * heap) * heap) * int

val g11_example7187 : (((bool * heap) * heap) * heap) * int

val g11_example7188 : (((bool * heap) * heap) * heap) * int

val g11_example7189 : (((bool * heap) * heap) * heap) * int

val g11_example7190 : (((bool * heap) * heap) * heap) * int

val g11_example7191 : (((bool * heap) * heap) * heap) * int

val g11_example7192 : (((bool * heap) * heap) * heap) * int

val g11_example7193 : (((bool * heap) * heap) * heap) * int

val g11_example7194 : (((bool * heap) * heap) * heap) * int

val g11_example7195 : (((bool * heap) * heap) * heap) * int

val g11_example7196 : (((bool * heap) * heap) * heap) * int

val g11_example7197 : (((bool * heap) * heap) * heap) * int

val g11_example7198 : (((bool * heap) * heap) * heap) * int

val g11_example7199 : (((bool * heap) * heap) * heap) * int

val g11_example7200 : (((bool * heap) * heap) * heap) * int

val g11_example7201 : (((bool * heap) * heap) * heap) * int

val g11_example7202 : (((bool * heap) * heap) * heap) * int

val g11_example7203 : (((bool * heap) * heap) * heap) * int

val g11_example7204 : (((bool * heap) * heap) * heap) * int

val g11_example7205 : (((bool * heap) * heap) * heap) * int

val g11_example7206 : (((bool * heap) * heap) * heap) * int

val g11_example7207 : (((bool * heap) * heap) * heap) * int

val g11_example7208 : (((bool * heap) * heap) * heap) * int

val g11_example7209 : (((bool * heap) * heap) * heap) * int

val g11_example7210 : (((bool * heap) * heap) * heap) * int

val g11_example7211 : (((bool * heap) * heap) * heap) * int

val g11_example7212 : (((bool * heap) * heap) * heap) * int

val g11_example7213 : (((bool * heap) * heap) * heap) * int

val g11_example7214 : (((bool * heap) * heap) * heap) * int

val g11_example7215 : (((bool * heap) * heap) * heap) * int

val g11_example7216 : (((bool * heap) * heap) * heap) * int

val g11_example7217 : (((bool * heap) * heap) * heap) * int

val g11_example7218 : (((bool * heap) * heap) * heap) * int

val g11_example7219 : (((bool * heap) * heap) * heap) * int

val g11_example7220 : (((bool * heap) * heap) * heap) * int

val g11_example7221 : (((bool * heap) * heap) * heap) * int

val g11_example7222 : (((bool * heap) * heap) * heap) * int

val g11_example7223 : (((bool * heap) * heap) * heap) * int

val g11_example7224 : (((bool * heap) * heap) * heap) * int

val g11_example7225 : (((bool * heap) * heap) * heap) * int

val g11_example7226 : (((bool * heap) * heap) * heap) * int

val g11_example7227 : (((bool * heap) * heap) * heap) * int

val g11_example7228 : (((bool * heap) * heap) * heap) * int

val g11_example7229 : (((bool * heap) * heap) * heap) * int

val g11_example7230 : (((bool * heap) * heap) * heap) * int

val g11_example7231 : (((bool * heap) * heap) * heap) * int

val g11_example7232 : (((bool * heap) * heap) * heap) * int

val g11_example7233 : (((bool * heap) * heap) * heap) * int

val g11_example7234 : (((bool * heap) * heap) * heap) * int

val g11_example7235 : (((bool * heap) * heap) * heap) * int

val g11_example7236 : (((bool * heap) * heap) * heap) * int

val g11_example7237 : (((bool * heap) * heap) * heap) * int

val g11_example7238 : (((bool * heap) * heap) * heap) * int

val g11_example7239 : (((bool * heap) * heap) * heap) * int

val g11_example7240 : (((bool * heap) * heap) * heap) * int

val g11_example7241 : (((bool * heap) * heap) * heap) * int

val g11_example7242 : (((bool * heap) * heap) * heap) * int

val g11_example7243 : (((bool * heap) * heap) * heap) * int

val g11_example7244 : (((bool * heap) * heap) * heap) * int

val g11_example7245 : (((bool * heap) * heap) * heap) * int

val g11_example7246 : (((bool * heap) * heap) * heap) * int

val g11_example7247 : (((bool * heap) * heap) * heap) * int

val g11_example7248 : (((bool * heap) * heap) * heap) * int

val g11_example7249 : (((bool * heap) * heap) * heap) * int

val g11_example7250 : (((bool * heap) * heap) * heap) * int

val g11_example7251 : (((bool * heap) * heap) * heap) * int

val g11_example7252 : (((bool * heap) * heap) * heap) * int

val g11_example7253 : (((bool * heap) * heap) * heap) * int

val g11_example7254 : (((bool * heap) * heap) * heap) * int

val g11_example7255 : (((bool * heap) * heap) * heap) * int

val g11_example7256 : (((bool * heap) * heap) * heap) * int

val g11_example7257 : (((bool * heap) * heap) * heap) * int

val g11_example7258 : (((bool * heap) * heap) * heap) * int

val g11_example7259 : (((bool * heap) * heap) * heap) * int

val g11_example7260 : (((bool * heap) * heap) * heap) * int

val g11_example7261 : (((bool * heap) * heap) * heap) * int

val g11_example7262 : (((bool * heap) * heap) * heap) * int

val g11_example7263 : (((bool * heap) * heap) * heap) * int

val g11_example7264 : (((bool * heap) * heap) * heap) * int

val g11_example7265 : (((bool * heap) * heap) * heap) * int

val g11_example7266 : (((bool * heap) * heap) * heap) * int

val g11_example7267 : (((bool * heap) * heap) * heap) * int

val g11_example7268 : (((bool * heap) * heap) * heap) * int

val g11_example7269 : (((bool * heap) * heap) * heap) * int

val g11_example7270 : (((bool * heap) * heap) * heap) * int

val g11_example7271 : (((bool * heap) * heap) * heap) * int

val g11_example7272 : (((bool * heap) * heap) * heap) * int

val g11_example7273 : (((bool * heap) * heap) * heap) * int

val g11_example7274 : (((bool * heap) * heap) * heap) * int

val g11_example7275 : (((bool * heap) * heap) * heap) * int

val g11_example7276 : (((bool * heap) * heap) * heap) * int

val g11_example7277 : (((bool * heap) * heap) * heap) * int

val g11_example7278 : (((bool * heap) * heap) * heap) * int

val g11_example7279 : (((bool * heap) * heap) * heap) * int

val g11_example7280 : (((bool * heap) * heap) * heap) * int

val g11_example7281 : (((bool * heap) * heap) * heap) * int

val g11_example7282 : (((bool * heap) * heap) * heap) * int

val g11_example7283 : (((bool * heap) * heap) * heap) * int

val g11_example7284 : (((bool * heap) * heap) * heap) * int

val g11_example7285 : (((bool * heap) * heap) * heap) * int

val g11_example7286 : (((bool * heap) * heap) * heap) * int

val g11_example7287 : (((bool * heap) * heap) * heap) * int

val g11_example7288 : (((bool * heap) * heap) * heap) * int

val g11_example7289 : (((bool * heap) * heap) * heap) * int

val g11_example7290 : (((bool * heap) * heap) * heap) * int

val g11_example7291 : (((bool * heap) * heap) * heap) * int

val g11_example7292 : (((bool * heap) * heap) * heap) * int

val g11_example7293 : (((bool * heap) * heap) * heap) * int

val g11_example7294 : (((bool * heap) * heap) * heap) * int

val g11_example7295 : (((bool * heap) * heap) * heap) * int

val g11_example7296 : (((bool * heap) * heap) * heap) * int

val g11_example7297 : (((bool * heap) * heap) * heap) * int

val g11_example7298 : (((bool * heap) * heap) * heap) * int

val g11_example7299 : (((bool * heap) * heap) * heap) * int

val g11_example7300 : (((bool * heap) * heap) * heap) * int

val g11_example7301 : (((bool * heap) * heap) * heap) * int

val g11_example7302 : (((bool * heap) * heap) * heap) * int

val g11_example7303 : (((bool * heap) * heap) * heap) * int

val g11_example7304 : (((bool * heap) * heap) * heap) * int

val g11_example7305 : (((bool * heap) * heap) * heap) * int

val g11_example7306 : (((bool * heap) * heap) * heap) * int

val g11_example7307 : (((bool * heap) * heap) * heap) * int

val g11_example7308 : (((bool * heap) * heap) * heap) * int

val g11_example7309 : (((bool * heap) * heap) * heap) * int

val g11_example7310 : (((bool * heap) * heap) * heap) * int

val g11_example7311 : (((bool * heap) * heap) * heap) * int

val g11_example7312 : (((bool * heap) * heap) * heap) * int

val g11_example7313 : (((bool * heap) * heap) * heap) * int

val g11_example7314 : (((bool * heap) * heap) * heap) * int

val g11_example7315 : (((bool * heap) * heap) * heap) * int

val g11_example7316 : (((bool * heap) * heap) * heap) * int

val g11_example7317 : (((bool * heap) * heap) * heap) * int

val g11_example7318 : (((bool * heap) * heap) * heap) * int

val g11_example7319 : (((bool * heap) * heap) * heap) * int

val g11_example7320 : (((bool * heap) * heap) * heap) * int

val g11_example7321 : (((bool * heap) * heap) * heap) * int

val g11_example7322 : (((bool * heap) * heap) * heap) * int

val g11_example7323 : (((bool * heap) * heap) * heap) * int

val g11_example7324 : (((bool * heap) * heap) * heap) * int

val g11_example7325 : (((bool * heap) * heap) * heap) * int

val g11_example7326 : (((bool * heap) * heap) * heap) * int

val g11_example7327 : (((bool * heap) * heap) * heap) * int

val g11_example7328 : (((bool * heap) * heap) * heap) * int

val g11_example7329 : (((bool * heap) * heap) * heap) * int

val g11_example7330 : (((bool * heap) * heap) * heap) * int

val g11_example7331 : (((bool * heap) * heap) * heap) * int

val g11_example7332 : (((bool * heap) * heap) * heap) * int

val g11_example7333 : (((bool * heap) * heap) * heap) * int

val g11_example7334 : (((bool * heap) * heap) * heap) * int

val g11_example7335 : (((bool * heap) * heap) * heap) * int

val g11_example7336 : (((bool * heap) * heap) * heap) * int

val g11_example7337 : (((bool * heap) * heap) * heap) * int

val g11_example7338 : (((bool * heap) * heap) * heap) * int

val g11_example7339 : (((bool * heap) * heap) * heap) * int

val g11_example7340 : (((bool * heap) * heap) * heap) * int

val g11_example7341 : (((bool * heap) * heap) * heap) * int

val g11_example7342 : (((bool * heap) * heap) * heap) * int

val g11_example7343 : (((bool * heap) * heap) * heap) * int

val g11_example7344 : (((bool * heap) * heap) * heap) * int

val g11_example7345 : (((bool * heap) * heap) * heap) * int

val g11_example7346 : (((bool * heap) * heap) * heap) * int

val g11_example7347 : (((bool * heap) * heap) * heap) * int

val g11_example7348 : (((bool * heap) * heap) * heap) * int

val g11_example7349 : (((bool * heap) * heap) * heap) * int

val g11_example7350 : (((bool * heap) * heap) * heap) * int

val g11_example7351 : (((bool * heap) * heap) * heap) * int

val g11_example7352 : (((bool * heap) * heap) * heap) * int

val g11_example7353 : (((bool * heap) * heap) * heap) * int

val g11_example7354 : (((bool * heap) * heap) * heap) * int

val g11_example7355 : (((bool * heap) * heap) * heap) * int

val g11_example7356 : (((bool * heap) * heap) * heap) * int

val g11_example7357 : (((bool * heap) * heap) * heap) * int

val g11_example7358 : (((bool * heap) * heap) * heap) * int

val g11_example7359 : (((bool * heap) * heap) * heap) * int

val g11_example7360 : (((bool * heap) * heap) * heap) * int

val g11_example7361 : (((bool * heap) * heap) * heap) * int

val g11_example7362 : (((bool * heap) * heap) * heap) * int

val g11_example7363 : (((bool * heap) * heap) * heap) * int

val g11_example7364 : (((bool * heap) * heap) * heap) * int

val g11_example7365 : (((bool * heap) * heap) * heap) * int

val g11_example7366 : (((bool * heap) * heap) * heap) * int

val g11_example7367 : (((bool * heap) * heap) * heap) * int

val g11_example7368 : (((bool * heap) * heap) * heap) * int

val g11_example7369 : (((bool * heap) * heap) * heap) * int

val g11_example7370 : (((bool * heap) * heap) * heap) * int

val g11_example7371 : (((bool * heap) * heap) * heap) * int

val g11_example7372 : (((bool * heap) * heap) * heap) * int

val g11_example7373 : (((bool * heap) * heap) * heap) * int

val g11_example7374 : (((bool * heap) * heap) * heap) * int

val g11_example7375 : (((bool * heap) * heap) * heap) * int

val g11_example7376 : (((bool * heap) * heap) * heap) * int

val g11_example7377 : (((bool * heap) * heap) * heap) * int

val g11_example7378 : (((bool * heap) * heap) * heap) * int

val g11_example7379 : (((bool * heap) * heap) * heap) * int

val g11_example7380 : (((bool * heap) * heap) * heap) * int

val g11_example7381 : (((bool * heap) * heap) * heap) * int

val g11_example7382 : (((bool * heap) * heap) * heap) * int

val g11_example7383 : (((bool * heap) * heap) * heap) * int

val g11_example7384 : (((bool * heap) * heap) * heap) * int

val g11_example7385 : (((bool * heap) * heap) * heap) * int

val g11_example7386 : (((bool * heap) * heap) * heap) * int

val g11_example7387 : (((bool * heap) * heap) * heap) * int

val g11_example7388 : (((bool * heap) * heap) * heap) * int

val g11_example7389 : (((bool * heap) * heap) * heap) * int

val g11_example7390 : (((bool * heap) * heap) * heap) * int

val g11_example7391 : (((bool * heap) * heap) * heap) * int

val g11_example7392 : (((bool * heap) * heap) * heap) * int

val g11_example7393 : (((bool * heap) * heap) * heap) * int

val g11_example7394 : (((bool * heap) * heap) * heap) * int

val g11_example7395 : (((bool * heap) * heap) * heap) * int

val g11_example7396 : (((bool * heap) * heap) * heap) * int

val g11_example7397 : (((bool * heap) * heap) * heap) * int

val g11_example7398 : (((bool * heap) * heap) * heap) * int

val g11_example7399 : (((bool * heap) * heap) * heap) * int

val g11_example7400 : (((bool * heap) * heap) * heap) * int

val g11_example7401 : (((bool * heap) * heap) * heap) * int

val g11_example7402 : (((bool * heap) * heap) * heap) * int

val g11_example7403 : (((bool * heap) * heap) * heap) * int

val g11_example7404 : (((bool * heap) * heap) * heap) * int

val g11_example7405 : (((bool * heap) * heap) * heap) * int

val g11_example7406 : (((bool * heap) * heap) * heap) * int

val g11_example7407 : (((bool * heap) * heap) * heap) * int

val g11_example7408 : (((bool * heap) * heap) * heap) * int

val g11_example7409 : (((bool * heap) * heap) * heap) * int

val g11_example7410 : (((bool * heap) * heap) * heap) * int

val g11_example7411 : (((bool * heap) * heap) * heap) * int

val g11_example7412 : (((bool * heap) * heap) * heap) * int

val g11_example7413 : (((bool * heap) * heap) * heap) * int

val g11_example7414 : (((bool * heap) * heap) * heap) * int

val g11_example7415 : (((bool * heap) * heap) * heap) * int

val g11_example7416 : (((bool * heap) * heap) * heap) * int

val g11_example7417 : (((bool * heap) * heap) * heap) * int

val g11_example7418 : (((bool * heap) * heap) * heap) * int

val g11_example7419 : (((bool * heap) * heap) * heap) * int

val g11_example7420 : (((bool * heap) * heap) * heap) * int

val g11_example7421 : (((bool * heap) * heap) * heap) * int

val g11_example7422 : (((bool * heap) * heap) * heap) * int

val g11_example7423 : (((bool * heap) * heap) * heap) * int

val g11_example7424 : (((bool * heap) * heap) * heap) * int

val g11_example7425 : (((bool * heap) * heap) * heap) * int

val g11_example7426 : (((bool * heap) * heap) * heap) * int

val g11_example7427 : (((bool * heap) * heap) * heap) * int

val g11_example7428 : (((bool * heap) * heap) * heap) * int

val g11_example7429 : (((bool * heap) * heap) * heap) * int

val g11_example7430 : (((bool * heap) * heap) * heap) * int

val g11_example7431 : (((bool * heap) * heap) * heap) * int

val g11_example7432 : (((bool * heap) * heap) * heap) * int

val g11_example7433 : (((bool * heap) * heap) * heap) * int

val g11_example7434 : (((bool * heap) * heap) * heap) * int

val g11_example7435 : (((bool * heap) * heap) * heap) * int

val g11_example7436 : (((bool * heap) * heap) * heap) * int

val g11_example7437 : (((bool * heap) * heap) * heap) * int

val g11_example7438 : (((bool * heap) * heap) * heap) * int

val g11_example7439 : (((bool * heap) * heap) * heap) * int

val g11_example7440 : (((bool * heap) * heap) * heap) * int

val g11_example7441 : (((bool * heap) * heap) * heap) * int

val g11_example7442 : (((bool * heap) * heap) * heap) * int

val g11_example7443 : (((bool * heap) * heap) * heap) * int

val g11_example7444 : (((bool * heap) * heap) * heap) * int

val g11_example7445 : (((bool * heap) * heap) * heap) * int

val g11_example7446 : (((bool * heap) * heap) * heap) * int

val g11_example7447 : (((bool * heap) * heap) * heap) * int

val g11_example7448 : (((bool * heap) * heap) * heap) * int

val g11_example7449 : (((bool * heap) * heap) * heap) * int

val g11_example7450 : (((bool * heap) * heap) * heap) * int

val g11_example7451 : (((bool * heap) * heap) * heap) * int

val g11_example7452 : (((bool * heap) * heap) * heap) * int

val g11_example7453 : (((bool * heap) * heap) * heap) * int

val g11_example7454 : (((bool * heap) * heap) * heap) * int

val g11_example7455 : (((bool * heap) * heap) * heap) * int

val g11_example7456 : (((bool * heap) * heap) * heap) * int

val g11_example7457 : (((bool * heap) * heap) * heap) * int

val g11_example7458 : (((bool * heap) * heap) * heap) * int

val g11_example7459 : (((bool * heap) * heap) * heap) * int

val g11_example7460 : (((bool * heap) * heap) * heap) * int

val g11_example7461 : (((bool * heap) * heap) * heap) * int

val g11_example7462 : (((bool * heap) * heap) * heap) * int

val g11_example7463 : (((bool * heap) * heap) * heap) * int

val g11_example7464 : (((bool * heap) * heap) * heap) * int

val g11_example7465 : (((bool * heap) * heap) * heap) * int

val g11_example7466 : (((bool * heap) * heap) * heap) * int

val g11_example7467 : (((bool * heap) * heap) * heap) * int

val g11_example7468 : (((bool * heap) * heap) * heap) * int

val g11_example7469 : (((bool * heap) * heap) * heap) * int

val g11_example7470 : (((bool * heap) * heap) * heap) * int

val g11_example7471 : (((bool * heap) * heap) * heap) * int

val g11_example7472 : (((bool * heap) * heap) * heap) * int

val g11_example7473 : (((bool * heap) * heap) * heap) * int

val g11_example7474 : (((bool * heap) * heap) * heap) * int

val g11_example7475 : (((bool * heap) * heap) * heap) * int

val g11_example7476 : (((bool * heap) * heap) * heap) * int

val g11_example7477 : (((bool * heap) * heap) * heap) * int

val g11_example7478 : (((bool * heap) * heap) * heap) * int

val g11_example7479 : (((bool * heap) * heap) * heap) * int

val g11_example7480 : (((bool * heap) * heap) * heap) * int

val g11_example7481 : (((bool * heap) * heap) * heap) * int

val g11_example7482 : (((bool * heap) * heap) * heap) * int

val g11_example7483 : (((bool * heap) * heap) * heap) * int

val g11_example7484 : (((bool * heap) * heap) * heap) * int

val g11_example7485 : (((bool * heap) * heap) * heap) * int

val g11_example7486 : (((bool * heap) * heap) * heap) * int

val g11_example7487 : (((bool * heap) * heap) * heap) * int

val g11_example7488 : (((bool * heap) * heap) * heap) * int

val g11_example7489 : (((bool * heap) * heap) * heap) * int

val g11_example7490 : (((bool * heap) * heap) * heap) * int

val g11_example7491 : (((bool * heap) * heap) * heap) * int

val g11_example7492 : (((bool * heap) * heap) * heap) * int

val g11_example7493 : (((bool * heap) * heap) * heap) * int

val g11_example7494 : (((bool * heap) * heap) * heap) * int

val g11_example7495 : (((bool * heap) * heap) * heap) * int

val g11_example7496 : (((bool * heap) * heap) * heap) * int

val g11_example7497 : (((bool * heap) * heap) * heap) * int

val g11_example7498 : (((bool * heap) * heap) * heap) * int

val g11_example7499 : (((bool * heap) * heap) * heap) * int

val g11_example7500 : (((bool * heap) * heap) * heap) * int

val g11_example7501 : (((bool * heap) * heap) * heap) * int

val g11_example7502 : (((bool * heap) * heap) * heap) * int

val g11_example7503 : (((bool * heap) * heap) * heap) * int

val g11_example7504 : (((bool * heap) * heap) * heap) * int

val g11_example7505 : (((bool * heap) * heap) * heap) * int

val g11_example7506 : (((bool * heap) * heap) * heap) * int

val g11_example7507 : (((bool * heap) * heap) * heap) * int

val g11_example7508 : (((bool * heap) * heap) * heap) * int

val g11_example7509 : (((bool * heap) * heap) * heap) * int

val g11_example7510 : (((bool * heap) * heap) * heap) * int

val g11_example7511 : (((bool * heap) * heap) * heap) * int

val g11_example7512 : (((bool * heap) * heap) * heap) * int

val g11_example7513 : (((bool * heap) * heap) * heap) * int

val g11_example7514 : (((bool * heap) * heap) * heap) * int

val g11_example7515 : (((bool * heap) * heap) * heap) * int

val g11_example7516 : (((bool * heap) * heap) * heap) * int

val g11_example7517 : (((bool * heap) * heap) * heap) * int

val g11_example7518 : (((bool * heap) * heap) * heap) * int

val g11_example7519 : (((bool * heap) * heap) * heap) * int

val g11_example7520 : (((bool * heap) * heap) * heap) * int

val g11_example7521 : (((bool * heap) * heap) * heap) * int

val g11_example7522 : (((bool * heap) * heap) * heap) * int

val g11_example7523 : (((bool * heap) * heap) * heap) * int

val g11_example7524 : (((bool * heap) * heap) * heap) * int

val g11_example7525 : (((bool * heap) * heap) * heap) * int

val g11_example7526 : (((bool * heap) * heap) * heap) * int

val g11_example7527 : (((bool * heap) * heap) * heap) * int

val g11_example7528 : (((bool * heap) * heap) * heap) * int

val g11_example7529 : (((bool * heap) * heap) * heap) * int

val g11_example7530 : (((bool * heap) * heap) * heap) * int

val g11_example7531 : (((bool * heap) * heap) * heap) * int

val g11_example7532 : (((bool * heap) * heap) * heap) * int

val g11_example7533 : (((bool * heap) * heap) * heap) * int

val g11_example7534 : (((bool * heap) * heap) * heap) * int

val g11_example7535 : (((bool * heap) * heap) * heap) * int

val g11_example7536 : (((bool * heap) * heap) * heap) * int

val g11_example7537 : (((bool * heap) * heap) * heap) * int

val g11_example7538 : (((bool * heap) * heap) * heap) * int

val g11_example7539 : (((bool * heap) * heap) * heap) * int

val g11_example7540 : (((bool * heap) * heap) * heap) * int

val g11_example7541 : (((bool * heap) * heap) * heap) * int

val g11_example7542 : (((bool * heap) * heap) * heap) * int

val g11_example7543 : (((bool * heap) * heap) * heap) * int

val g11_example7544 : (((bool * heap) * heap) * heap) * int

val g11_example7545 : (((bool * heap) * heap) * heap) * int

val g11_example7546 : (((bool * heap) * heap) * heap) * int

val g11_example7547 : (((bool * heap) * heap) * heap) * int

val g11_example7548 : (((bool * heap) * heap) * heap) * int

val g11_example7549 : (((bool * heap) * heap) * heap) * int

val g11_example7550 : (((bool * heap) * heap) * heap) * int

val g11_example7551 : (((bool * heap) * heap) * heap) * int

val g11_example7552 : (((bool * heap) * heap) * heap) * int

val g11_example7553 : (((bool * heap) * heap) * heap) * int

val g11_example7554 : (((bool * heap) * heap) * heap) * int

val g11_example7555 : (((bool * heap) * heap) * heap) * int

val g11_example7556 : (((bool * heap) * heap) * heap) * int

val g11_example7557 : (((bool * heap) * heap) * heap) * int

val g11_example7558 : (((bool * heap) * heap) * heap) * int

val g11_example7559 : (((bool * heap) * heap) * heap) * int

val g11_example7560 : (((bool * heap) * heap) * heap) * int

val g11_example7561 : (((bool * heap) * heap) * heap) * int

val g11_example7562 : (((bool * heap) * heap) * heap) * int

val g11_example7563 : (((bool * heap) * heap) * heap) * int

val g11_example7564 : (((bool * heap) * heap) * heap) * int

val g11_example7565 : (((bool * heap) * heap) * heap) * int

val g11_example7566 : (((bool * heap) * heap) * heap) * int

val g11_example7567 : (((bool * heap) * heap) * heap) * int

val g11_example7568 : (((bool * heap) * heap) * heap) * int

val g11_example7569 : (((bool * heap) * heap) * heap) * int

val g11_example7570 : (((bool * heap) * heap) * heap) * int

val g11_example7571 : (((bool * heap) * heap) * heap) * int

val g11_example7572 : (((bool * heap) * heap) * heap) * int

val g11_example7573 : (((bool * heap) * heap) * heap) * int

val g11_example7574 : (((bool * heap) * heap) * heap) * int

val g11_example7575 : (((bool * heap) * heap) * heap) * int

val g11_example7576 : (((bool * heap) * heap) * heap) * int

val g11_example7577 : (((bool * heap) * heap) * heap) * int

val g11_example7578 : (((bool * heap) * heap) * heap) * int

val g11_example7579 : (((bool * heap) * heap) * heap) * int

val g11_example7580 : (((bool * heap) * heap) * heap) * int

val g11_example7581 : (((bool * heap) * heap) * heap) * int

val g11_example7582 : (((bool * heap) * heap) * heap) * int

val g11_example7583 : (((bool * heap) * heap) * heap) * int

val g11_example7584 : (((bool * heap) * heap) * heap) * int

val g11_example7585 : (((bool * heap) * heap) * heap) * int

val g11_example7586 : (((bool * heap) * heap) * heap) * int

val g11_example7587 : (((bool * heap) * heap) * heap) * int

val g11_example7588 : (((bool * heap) * heap) * heap) * int

val g11_example7589 : (((bool * heap) * heap) * heap) * int

val g11_example7590 : (((bool * heap) * heap) * heap) * int

val g11_example7591 : (((bool * heap) * heap) * heap) * int

val g11_example7592 : (((bool * heap) * heap) * heap) * int

val g11_example7593 : (((bool * heap) * heap) * heap) * int

val g11_example7594 : (((bool * heap) * heap) * heap) * int

val g11_example7595 : (((bool * heap) * heap) * heap) * int

val g11_example7596 : (((bool * heap) * heap) * heap) * int

val g11_example7597 : (((bool * heap) * heap) * heap) * int

val g11_example7598 : (((bool * heap) * heap) * heap) * int

val g11_example7599 : (((bool * heap) * heap) * heap) * int

val g11_example7600 : (((bool * heap) * heap) * heap) * int

val g11_example7601 : (((bool * heap) * heap) * heap) * int

val g11_example7602 : (((bool * heap) * heap) * heap) * int

val g11_example7603 : (((bool * heap) * heap) * heap) * int

val g11_example7604 : (((bool * heap) * heap) * heap) * int

val g11_example7605 : (((bool * heap) * heap) * heap) * int

val g11_example7606 : (((bool * heap) * heap) * heap) * int

val g11_example7607 : (((bool * heap) * heap) * heap) * int

val g11_example7608 : (((bool * heap) * heap) * heap) * int

val g11_example7609 : (((bool * heap) * heap) * heap) * int

val g11_example7610 : (((bool * heap) * heap) * heap) * int

val g11_example7611 : (((bool * heap) * heap) * heap) * int

val g11_example7612 : (((bool * heap) * heap) * heap) * int

val g11_example7613 : (((bool * heap) * heap) * heap) * int

val g11_example7614 : (((bool * heap) * heap) * heap) * int

val g11_example7615 : (((bool * heap) * heap) * heap) * int

val g11_example7616 : (((bool * heap) * heap) * heap) * int

val g11_example7617 : (((bool * heap) * heap) * heap) * int

val g11_example7618 : (((bool * heap) * heap) * heap) * int

val g11_example7619 : (((bool * heap) * heap) * heap) * int

val g11_example7620 : (((bool * heap) * heap) * heap) * int

val g11_example7621 : (((bool * heap) * heap) * heap) * int

val g11_example7622 : (((bool * heap) * heap) * heap) * int

val g11_example7623 : (((bool * heap) * heap) * heap) * int

val g11_example7624 : (((bool * heap) * heap) * heap) * int

val g11_example7625 : (((bool * heap) * heap) * heap) * int

val example_set_11 :
  (char list * ((((bool * heap) * heap) * heap) * int)) list