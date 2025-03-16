
val add : int -> int -> int

module Nat :
 sig
  val leb : int -> int -> bool

  val ltb : int -> int -> bool
 end

type heap =
| Hleaf
| Heap of int * int * heap * heap

val rank : heap -> int

val mergea : int -> heap -> heap -> heap

val merge : heap -> heap -> heap

val g13_example0 : (((heap * heap) * heap) * heap) * int

val g13_example1 : (((heap * heap) * heap) * heap) * int

val g13_example2 : (((heap * heap) * heap) * heap) * int

val g13_example3 : (((heap * heap) * heap) * heap) * int

val g13_example4 : (((heap * heap) * heap) * heap) * int

val g13_example5 : (((heap * heap) * heap) * heap) * int

val g13_example6 : (((heap * heap) * heap) * heap) * int

val g13_example7 : (((heap * heap) * heap) * heap) * int

val g13_example8 : (((heap * heap) * heap) * heap) * int

val g13_example9 : (((heap * heap) * heap) * heap) * int

val g13_example10 : (((heap * heap) * heap) * heap) * int

val g13_example11 : (((heap * heap) * heap) * heap) * int

val g13_example12 : (((heap * heap) * heap) * heap) * int

val g13_example13 : (((heap * heap) * heap) * heap) * int

val g13_example14 : (((heap * heap) * heap) * heap) * int

val g13_example15 : (((heap * heap) * heap) * heap) * int

val g13_example16 : (((heap * heap) * heap) * heap) * int

val g13_example17 : (((heap * heap) * heap) * heap) * int

val g13_example18 : (((heap * heap) * heap) * heap) * int

val g13_example19 : (((heap * heap) * heap) * heap) * int

val g13_example20 : (((heap * heap) * heap) * heap) * int

val g13_example21 : (((heap * heap) * heap) * heap) * int

val g13_example22 : (((heap * heap) * heap) * heap) * int

val g13_example23 : (((heap * heap) * heap) * heap) * int

val g13_example24 : (((heap * heap) * heap) * heap) * int

val g13_example25 : (((heap * heap) * heap) * heap) * int

val g13_example26 : (((heap * heap) * heap) * heap) * int

val g13_example27 : (((heap * heap) * heap) * heap) * int

val g13_example28 : (((heap * heap) * heap) * heap) * int

val g13_example29 : (((heap * heap) * heap) * heap) * int

val g13_example30 : (((heap * heap) * heap) * heap) * int

val g13_example31 : (((heap * heap) * heap) * heap) * int

val g13_example32 : (((heap * heap) * heap) * heap) * int

val g13_example33 : (((heap * heap) * heap) * heap) * int

val g13_example34 : (((heap * heap) * heap) * heap) * int

val g13_example35 : (((heap * heap) * heap) * heap) * int

val g13_example36 : (((heap * heap) * heap) * heap) * int

val g13_example37 : (((heap * heap) * heap) * heap) * int

val g13_example38 : (((heap * heap) * heap) * heap) * int

val g13_example39 : (((heap * heap) * heap) * heap) * int

val g13_example40 : (((heap * heap) * heap) * heap) * int

val g13_example41 : (((heap * heap) * heap) * heap) * int

val g13_example42 : (((heap * heap) * heap) * heap) * int

val g13_example43 : (((heap * heap) * heap) * heap) * int

val g13_example44 : (((heap * heap) * heap) * heap) * int

val g13_example45 : (((heap * heap) * heap) * heap) * int

val g13_example46 : (((heap * heap) * heap) * heap) * int

val g13_example47 : (((heap * heap) * heap) * heap) * int

val g13_example48 : (((heap * heap) * heap) * heap) * int

val g13_example49 : (((heap * heap) * heap) * heap) * int

val g13_example50 : (((heap * heap) * heap) * heap) * int

val g13_example51 : (((heap * heap) * heap) * heap) * int

val g13_example52 : (((heap * heap) * heap) * heap) * int

val g13_example53 : (((heap * heap) * heap) * heap) * int

val g13_example54 : (((heap * heap) * heap) * heap) * int

val g13_example55 : (((heap * heap) * heap) * heap) * int

val g13_example56 : (((heap * heap) * heap) * heap) * int

val g13_example57 : (((heap * heap) * heap) * heap) * int

val g13_example58 : (((heap * heap) * heap) * heap) * int

val g13_example59 : (((heap * heap) * heap) * heap) * int

val g13_example60 : (((heap * heap) * heap) * heap) * int

val g13_example61 : (((heap * heap) * heap) * heap) * int

val g13_example62 : (((heap * heap) * heap) * heap) * int

val g13_example63 : (((heap * heap) * heap) * heap) * int

val g13_example64 : (((heap * heap) * heap) * heap) * int

val g13_example65 : (((heap * heap) * heap) * heap) * int

val g13_example66 : (((heap * heap) * heap) * heap) * int

val g13_example67 : (((heap * heap) * heap) * heap) * int

val g13_example68 : (((heap * heap) * heap) * heap) * int

val g13_example69 : (((heap * heap) * heap) * heap) * int

val g13_example70 : (((heap * heap) * heap) * heap) * int

val g13_example71 : (((heap * heap) * heap) * heap) * int

val g13_example72 : (((heap * heap) * heap) * heap) * int

val g13_example73 : (((heap * heap) * heap) * heap) * int

val g13_example74 : (((heap * heap) * heap) * heap) * int

val g13_example75 : (((heap * heap) * heap) * heap) * int

val g13_example76 : (((heap * heap) * heap) * heap) * int

val g13_example77 : (((heap * heap) * heap) * heap) * int

val g13_example78 : (((heap * heap) * heap) * heap) * int

val g13_example79 : (((heap * heap) * heap) * heap) * int

val g13_example80 : (((heap * heap) * heap) * heap) * int

val g13_example81 : (((heap * heap) * heap) * heap) * int

val g13_example82 : (((heap * heap) * heap) * heap) * int

val g13_example83 : (((heap * heap) * heap) * heap) * int

val g13_example84 : (((heap * heap) * heap) * heap) * int

val g13_example85 : (((heap * heap) * heap) * heap) * int

val g13_example86 : (((heap * heap) * heap) * heap) * int

val g13_example87 : (((heap * heap) * heap) * heap) * int

val g13_example88 : (((heap * heap) * heap) * heap) * int

val g13_example89 : (((heap * heap) * heap) * heap) * int

val g13_example90 : (((heap * heap) * heap) * heap) * int

val g13_example91 : (((heap * heap) * heap) * heap) * int

val g13_example92 : (((heap * heap) * heap) * heap) * int

val g13_example93 : (((heap * heap) * heap) * heap) * int

val g13_example94 : (((heap * heap) * heap) * heap) * int

val g13_example95 : (((heap * heap) * heap) * heap) * int

val g13_example96 : (((heap * heap) * heap) * heap) * int

val g13_example97 : (((heap * heap) * heap) * heap) * int

val g13_example98 : (((heap * heap) * heap) * heap) * int

val g13_example99 : (((heap * heap) * heap) * heap) * int

val g13_example100 : (((heap * heap) * heap) * heap) * int

val g13_example101 : (((heap * heap) * heap) * heap) * int

val g13_example102 : (((heap * heap) * heap) * heap) * int

val g13_example103 : (((heap * heap) * heap) * heap) * int

val g13_example104 : (((heap * heap) * heap) * heap) * int

val g13_example105 : (((heap * heap) * heap) * heap) * int

val g13_example106 : (((heap * heap) * heap) * heap) * int

val g13_example107 : (((heap * heap) * heap) * heap) * int

val g13_example108 : (((heap * heap) * heap) * heap) * int

val g13_example109 : (((heap * heap) * heap) * heap) * int

val g13_example110 : (((heap * heap) * heap) * heap) * int

val g13_example111 : (((heap * heap) * heap) * heap) * int

val g13_example112 : (((heap * heap) * heap) * heap) * int

val g13_example113 : (((heap * heap) * heap) * heap) * int

val g13_example114 : (((heap * heap) * heap) * heap) * int

val g13_example115 : (((heap * heap) * heap) * heap) * int

val g13_example116 : (((heap * heap) * heap) * heap) * int

val g13_example117 : (((heap * heap) * heap) * heap) * int

val g13_example118 : (((heap * heap) * heap) * heap) * int

val g13_example119 : (((heap * heap) * heap) * heap) * int

val g13_example120 : (((heap * heap) * heap) * heap) * int

val g13_example121 : (((heap * heap) * heap) * heap) * int

val g13_example122 : (((heap * heap) * heap) * heap) * int

val g13_example123 : (((heap * heap) * heap) * heap) * int

val g13_example124 : (((heap * heap) * heap) * heap) * int

val g13_example125 : (((heap * heap) * heap) * heap) * int

val g13_example126 : (((heap * heap) * heap) * heap) * int

val g13_example127 : (((heap * heap) * heap) * heap) * int

val g13_example128 : (((heap * heap) * heap) * heap) * int

val g13_example129 : (((heap * heap) * heap) * heap) * int

val g13_example130 : (((heap * heap) * heap) * heap) * int

val g13_example131 : (((heap * heap) * heap) * heap) * int

val g13_example132 : (((heap * heap) * heap) * heap) * int

val g13_example133 : (((heap * heap) * heap) * heap) * int

val g13_example134 : (((heap * heap) * heap) * heap) * int

val g13_example135 : (((heap * heap) * heap) * heap) * int

val g13_example136 : (((heap * heap) * heap) * heap) * int

val g13_example137 : (((heap * heap) * heap) * heap) * int

val g13_example138 : (((heap * heap) * heap) * heap) * int

val g13_example139 : (((heap * heap) * heap) * heap) * int

val g13_example140 : (((heap * heap) * heap) * heap) * int

val g13_example141 : (((heap * heap) * heap) * heap) * int

val g13_example142 : (((heap * heap) * heap) * heap) * int

val g13_example143 : (((heap * heap) * heap) * heap) * int

val g13_example144 : (((heap * heap) * heap) * heap) * int

val g13_example145 : (((heap * heap) * heap) * heap) * int

val g13_example146 : (((heap * heap) * heap) * heap) * int

val g13_example147 : (((heap * heap) * heap) * heap) * int

val g13_example148 : (((heap * heap) * heap) * heap) * int

val g13_example149 : (((heap * heap) * heap) * heap) * int

val g13_example150 : (((heap * heap) * heap) * heap) * int

val g13_example151 : (((heap * heap) * heap) * heap) * int

val g13_example152 : (((heap * heap) * heap) * heap) * int

val g13_example153 : (((heap * heap) * heap) * heap) * int

val g13_example154 : (((heap * heap) * heap) * heap) * int

val g13_example155 : (((heap * heap) * heap) * heap) * int

val g13_example156 : (((heap * heap) * heap) * heap) * int

val g13_example157 : (((heap * heap) * heap) * heap) * int

val g13_example158 : (((heap * heap) * heap) * heap) * int

val g13_example159 : (((heap * heap) * heap) * heap) * int

val g13_example160 : (((heap * heap) * heap) * heap) * int

val g13_example161 : (((heap * heap) * heap) * heap) * int

val g13_example162 : (((heap * heap) * heap) * heap) * int

val g13_example163 : (((heap * heap) * heap) * heap) * int

val g13_example164 : (((heap * heap) * heap) * heap) * int

val g13_example165 : (((heap * heap) * heap) * heap) * int

val g13_example166 : (((heap * heap) * heap) * heap) * int

val g13_example167 : (((heap * heap) * heap) * heap) * int

val g13_example168 : (((heap * heap) * heap) * heap) * int

val g13_example169 : (((heap * heap) * heap) * heap) * int

val g13_example170 : (((heap * heap) * heap) * heap) * int

val g13_example171 : (((heap * heap) * heap) * heap) * int

val g13_example172 : (((heap * heap) * heap) * heap) * int

val g13_example173 : (((heap * heap) * heap) * heap) * int

val g13_example174 : (((heap * heap) * heap) * heap) * int

val g13_example175 : (((heap * heap) * heap) * heap) * int

val g13_example176 : (((heap * heap) * heap) * heap) * int

val g13_example177 : (((heap * heap) * heap) * heap) * int

val g13_example178 : (((heap * heap) * heap) * heap) * int

val g13_example179 : (((heap * heap) * heap) * heap) * int

val g13_example180 : (((heap * heap) * heap) * heap) * int

val g13_example181 : (((heap * heap) * heap) * heap) * int

val g13_example182 : (((heap * heap) * heap) * heap) * int

val g13_example183 : (((heap * heap) * heap) * heap) * int

val g13_example184 : (((heap * heap) * heap) * heap) * int

val g13_example185 : (((heap * heap) * heap) * heap) * int

val g13_example186 : (((heap * heap) * heap) * heap) * int

val g13_example187 : (((heap * heap) * heap) * heap) * int

val g13_example188 : (((heap * heap) * heap) * heap) * int

val g13_example189 : (((heap * heap) * heap) * heap) * int

val g13_example190 : (((heap * heap) * heap) * heap) * int

val g13_example191 : (((heap * heap) * heap) * heap) * int

val g13_example192 : (((heap * heap) * heap) * heap) * int

val g13_example193 : (((heap * heap) * heap) * heap) * int

val g13_example194 : (((heap * heap) * heap) * heap) * int

val g13_example195 : (((heap * heap) * heap) * heap) * int

val g13_example196 : (((heap * heap) * heap) * heap) * int

val g13_example197 : (((heap * heap) * heap) * heap) * int

val g13_example198 : (((heap * heap) * heap) * heap) * int

val g13_example199 : (((heap * heap) * heap) * heap) * int

val g13_example200 : (((heap * heap) * heap) * heap) * int

val g13_example201 : (((heap * heap) * heap) * heap) * int

val g13_example202 : (((heap * heap) * heap) * heap) * int

val g13_example203 : (((heap * heap) * heap) * heap) * int

val g13_example204 : (((heap * heap) * heap) * heap) * int

val g13_example205 : (((heap * heap) * heap) * heap) * int

val g13_example206 : (((heap * heap) * heap) * heap) * int

val g13_example207 : (((heap * heap) * heap) * heap) * int

val g13_example208 : (((heap * heap) * heap) * heap) * int

val g13_example209 : (((heap * heap) * heap) * heap) * int

val g13_example210 : (((heap * heap) * heap) * heap) * int

val g13_example211 : (((heap * heap) * heap) * heap) * int

val g13_example212 : (((heap * heap) * heap) * heap) * int

val g13_example213 : (((heap * heap) * heap) * heap) * int

val g13_example214 : (((heap * heap) * heap) * heap) * int

val g13_example215 : (((heap * heap) * heap) * heap) * int

val g13_example216 : (((heap * heap) * heap) * heap) * int

val g13_example217 : (((heap * heap) * heap) * heap) * int

val g13_example218 : (((heap * heap) * heap) * heap) * int

val g13_example219 : (((heap * heap) * heap) * heap) * int

val g13_example220 : (((heap * heap) * heap) * heap) * int

val g13_example221 : (((heap * heap) * heap) * heap) * int

val g13_example222 : (((heap * heap) * heap) * heap) * int

val g13_example223 : (((heap * heap) * heap) * heap) * int

val g13_example224 : (((heap * heap) * heap) * heap) * int

val g13_example225 : (((heap * heap) * heap) * heap) * int

val g13_example226 : (((heap * heap) * heap) * heap) * int

val g13_example227 : (((heap * heap) * heap) * heap) * int

val g13_example228 : (((heap * heap) * heap) * heap) * int

val g13_example229 : (((heap * heap) * heap) * heap) * int

val g13_example230 : (((heap * heap) * heap) * heap) * int

val g13_example231 : (((heap * heap) * heap) * heap) * int

val g13_example232 : (((heap * heap) * heap) * heap) * int

val g13_example233 : (((heap * heap) * heap) * heap) * int

val g13_example234 : (((heap * heap) * heap) * heap) * int

val g13_example235 : (((heap * heap) * heap) * heap) * int

val g13_example236 : (((heap * heap) * heap) * heap) * int

val g13_example237 : (((heap * heap) * heap) * heap) * int

val g13_example238 : (((heap * heap) * heap) * heap) * int

val g13_example239 : (((heap * heap) * heap) * heap) * int

val g13_example240 : (((heap * heap) * heap) * heap) * int

val g13_example241 : (((heap * heap) * heap) * heap) * int

val g13_example242 : (((heap * heap) * heap) * heap) * int

val g13_example243 : (((heap * heap) * heap) * heap) * int

val g13_example244 : (((heap * heap) * heap) * heap) * int

val g13_example245 : (((heap * heap) * heap) * heap) * int

val g13_example246 : (((heap * heap) * heap) * heap) * int

val g13_example247 : (((heap * heap) * heap) * heap) * int

val g13_example248 : (((heap * heap) * heap) * heap) * int

val g13_example249 : (((heap * heap) * heap) * heap) * int

val g13_example250 : (((heap * heap) * heap) * heap) * int

val g13_example251 : (((heap * heap) * heap) * heap) * int

val g13_example252 : (((heap * heap) * heap) * heap) * int

val g13_example253 : (((heap * heap) * heap) * heap) * int

val g13_example254 : (((heap * heap) * heap) * heap) * int

val g13_example255 : (((heap * heap) * heap) * heap) * int

val g13_example256 : (((heap * heap) * heap) * heap) * int

val g13_example257 : (((heap * heap) * heap) * heap) * int

val g13_example258 : (((heap * heap) * heap) * heap) * int

val g13_example259 : (((heap * heap) * heap) * heap) * int

val g13_example260 : (((heap * heap) * heap) * heap) * int

val g13_example261 : (((heap * heap) * heap) * heap) * int

val g13_example262 : (((heap * heap) * heap) * heap) * int

val g13_example263 : (((heap * heap) * heap) * heap) * int

val g13_example264 : (((heap * heap) * heap) * heap) * int

val g13_example265 : (((heap * heap) * heap) * heap) * int

val g13_example266 : (((heap * heap) * heap) * heap) * int

val g13_example267 : (((heap * heap) * heap) * heap) * int

val g13_example268 : (((heap * heap) * heap) * heap) * int

val g13_example269 : (((heap * heap) * heap) * heap) * int

val g13_example270 : (((heap * heap) * heap) * heap) * int

val g13_example271 : (((heap * heap) * heap) * heap) * int

val g13_example272 : (((heap * heap) * heap) * heap) * int

val g13_example273 : (((heap * heap) * heap) * heap) * int

val g13_example274 : (((heap * heap) * heap) * heap) * int

val g13_example275 : (((heap * heap) * heap) * heap) * int

val g13_example276 : (((heap * heap) * heap) * heap) * int

val g13_example277 : (((heap * heap) * heap) * heap) * int

val g13_example278 : (((heap * heap) * heap) * heap) * int

val g13_example279 : (((heap * heap) * heap) * heap) * int

val g13_example280 : (((heap * heap) * heap) * heap) * int

val g13_example281 : (((heap * heap) * heap) * heap) * int

val g13_example282 : (((heap * heap) * heap) * heap) * int

val g13_example283 : (((heap * heap) * heap) * heap) * int

val g13_example284 : (((heap * heap) * heap) * heap) * int

val g13_example285 : (((heap * heap) * heap) * heap) * int

val g13_example286 : (((heap * heap) * heap) * heap) * int

val g13_example287 : (((heap * heap) * heap) * heap) * int

val g13_example288 : (((heap * heap) * heap) * heap) * int

val g13_example289 : (((heap * heap) * heap) * heap) * int

val g13_example290 : (((heap * heap) * heap) * heap) * int

val g13_example291 : (((heap * heap) * heap) * heap) * int

val g13_example292 : (((heap * heap) * heap) * heap) * int

val g13_example293 : (((heap * heap) * heap) * heap) * int

val g13_example294 : (((heap * heap) * heap) * heap) * int

val g13_example295 : (((heap * heap) * heap) * heap) * int

val g13_example296 : (((heap * heap) * heap) * heap) * int

val g13_example297 : (((heap * heap) * heap) * heap) * int

val g13_example298 : (((heap * heap) * heap) * heap) * int

val g13_example299 : (((heap * heap) * heap) * heap) * int

val g13_example300 : (((heap * heap) * heap) * heap) * int

val g13_example301 : (((heap * heap) * heap) * heap) * int

val g13_example302 : (((heap * heap) * heap) * heap) * int

val g13_example303 : (((heap * heap) * heap) * heap) * int

val g13_example304 : (((heap * heap) * heap) * heap) * int

val g13_example305 : (((heap * heap) * heap) * heap) * int

val g13_example306 : (((heap * heap) * heap) * heap) * int

val g13_example307 : (((heap * heap) * heap) * heap) * int

val g13_example308 : (((heap * heap) * heap) * heap) * int

val g13_example309 : (((heap * heap) * heap) * heap) * int

val g13_example310 : (((heap * heap) * heap) * heap) * int

val g13_example311 : (((heap * heap) * heap) * heap) * int

val g13_example312 : (((heap * heap) * heap) * heap) * int

val g13_example313 : (((heap * heap) * heap) * heap) * int

val g13_example314 : (((heap * heap) * heap) * heap) * int

val g13_example315 : (((heap * heap) * heap) * heap) * int

val g13_example316 : (((heap * heap) * heap) * heap) * int

val g13_example317 : (((heap * heap) * heap) * heap) * int

val g13_example318 : (((heap * heap) * heap) * heap) * int

val g13_example319 : (((heap * heap) * heap) * heap) * int

val g13_example320 : (((heap * heap) * heap) * heap) * int

val g13_example321 : (((heap * heap) * heap) * heap) * int

val g13_example322 : (((heap * heap) * heap) * heap) * int

val g13_example323 : (((heap * heap) * heap) * heap) * int

val g13_example324 : (((heap * heap) * heap) * heap) * int

val g13_example325 : (((heap * heap) * heap) * heap) * int

val g13_example326 : (((heap * heap) * heap) * heap) * int

val g13_example327 : (((heap * heap) * heap) * heap) * int

val g13_example328 : (((heap * heap) * heap) * heap) * int

val g13_example329 : (((heap * heap) * heap) * heap) * int

val g13_example330 : (((heap * heap) * heap) * heap) * int

val g13_example331 : (((heap * heap) * heap) * heap) * int

val g13_example332 : (((heap * heap) * heap) * heap) * int

val g13_example333 : (((heap * heap) * heap) * heap) * int

val g13_example334 : (((heap * heap) * heap) * heap) * int

val g13_example335 : (((heap * heap) * heap) * heap) * int

val g13_example336 : (((heap * heap) * heap) * heap) * int

val g13_example337 : (((heap * heap) * heap) * heap) * int

val g13_example338 : (((heap * heap) * heap) * heap) * int

val g13_example339 : (((heap * heap) * heap) * heap) * int

val g13_example340 : (((heap * heap) * heap) * heap) * int

val g13_example341 : (((heap * heap) * heap) * heap) * int

val g13_example342 : (((heap * heap) * heap) * heap) * int

val g13_example343 : (((heap * heap) * heap) * heap) * int

val g13_example344 : (((heap * heap) * heap) * heap) * int

val g13_example345 : (((heap * heap) * heap) * heap) * int

val g13_example346 : (((heap * heap) * heap) * heap) * int

val g13_example347 : (((heap * heap) * heap) * heap) * int

val g13_example348 : (((heap * heap) * heap) * heap) * int

val g13_example349 : (((heap * heap) * heap) * heap) * int

val g13_example350 : (((heap * heap) * heap) * heap) * int

val g13_example351 : (((heap * heap) * heap) * heap) * int

val g13_example352 : (((heap * heap) * heap) * heap) * int

val g13_example353 : (((heap * heap) * heap) * heap) * int

val g13_example354 : (((heap * heap) * heap) * heap) * int

val g13_example355 : (((heap * heap) * heap) * heap) * int

val g13_example356 : (((heap * heap) * heap) * heap) * int

val g13_example357 : (((heap * heap) * heap) * heap) * int

val g13_example358 : (((heap * heap) * heap) * heap) * int

val g13_example359 : (((heap * heap) * heap) * heap) * int

val g13_example360 : (((heap * heap) * heap) * heap) * int

val g13_example361 : (((heap * heap) * heap) * heap) * int

val g13_example362 : (((heap * heap) * heap) * heap) * int

val g13_example363 : (((heap * heap) * heap) * heap) * int

val g13_example364 : (((heap * heap) * heap) * heap) * int

val g13_example365 : (((heap * heap) * heap) * heap) * int

val g13_example366 : (((heap * heap) * heap) * heap) * int

val g13_example367 : (((heap * heap) * heap) * heap) * int

val g13_example368 : (((heap * heap) * heap) * heap) * int

val g13_example369 : (((heap * heap) * heap) * heap) * int

val g13_example370 : (((heap * heap) * heap) * heap) * int

val g13_example371 : (((heap * heap) * heap) * heap) * int

val g13_example372 : (((heap * heap) * heap) * heap) * int

val g13_example373 : (((heap * heap) * heap) * heap) * int

val g13_example374 : (((heap * heap) * heap) * heap) * int

val g13_example375 : (((heap * heap) * heap) * heap) * int

val g13_example376 : (((heap * heap) * heap) * heap) * int

val g13_example377 : (((heap * heap) * heap) * heap) * int

val g13_example378 : (((heap * heap) * heap) * heap) * int

val g13_example379 : (((heap * heap) * heap) * heap) * int

val g13_example380 : (((heap * heap) * heap) * heap) * int

val g13_example381 : (((heap * heap) * heap) * heap) * int

val g13_example382 : (((heap * heap) * heap) * heap) * int

val g13_example383 : (((heap * heap) * heap) * heap) * int

val g13_example384 : (((heap * heap) * heap) * heap) * int

val g13_example385 : (((heap * heap) * heap) * heap) * int

val g13_example386 : (((heap * heap) * heap) * heap) * int

val g13_example387 : (((heap * heap) * heap) * heap) * int

val g13_example388 : (((heap * heap) * heap) * heap) * int

val g13_example389 : (((heap * heap) * heap) * heap) * int

val g13_example390 : (((heap * heap) * heap) * heap) * int

val g13_example391 : (((heap * heap) * heap) * heap) * int

val g13_example392 : (((heap * heap) * heap) * heap) * int

val g13_example393 : (((heap * heap) * heap) * heap) * int

val g13_example394 : (((heap * heap) * heap) * heap) * int

val g13_example395 : (((heap * heap) * heap) * heap) * int

val g13_example396 : (((heap * heap) * heap) * heap) * int

val g13_example397 : (((heap * heap) * heap) * heap) * int

val g13_example398 : (((heap * heap) * heap) * heap) * int

val g13_example399 : (((heap * heap) * heap) * heap) * int

val g13_example400 : (((heap * heap) * heap) * heap) * int

val g13_example401 : (((heap * heap) * heap) * heap) * int

val g13_example402 : (((heap * heap) * heap) * heap) * int

val g13_example403 : (((heap * heap) * heap) * heap) * int

val g13_example404 : (((heap * heap) * heap) * heap) * int

val g13_example405 : (((heap * heap) * heap) * heap) * int

val g13_example406 : (((heap * heap) * heap) * heap) * int

val g13_example407 : (((heap * heap) * heap) * heap) * int

val g13_example408 : (((heap * heap) * heap) * heap) * int

val g13_example409 : (((heap * heap) * heap) * heap) * int

val g13_example410 : (((heap * heap) * heap) * heap) * int

val g13_example411 : (((heap * heap) * heap) * heap) * int

val g13_example412 : (((heap * heap) * heap) * heap) * int

val g13_example413 : (((heap * heap) * heap) * heap) * int

val g13_example414 : (((heap * heap) * heap) * heap) * int

val g13_example415 : (((heap * heap) * heap) * heap) * int

val g13_example416 : (((heap * heap) * heap) * heap) * int

val g13_example417 : (((heap * heap) * heap) * heap) * int

val g13_example418 : (((heap * heap) * heap) * heap) * int

val g13_example419 : (((heap * heap) * heap) * heap) * int

val g13_example420 : (((heap * heap) * heap) * heap) * int

val g13_example421 : (((heap * heap) * heap) * heap) * int

val g13_example422 : (((heap * heap) * heap) * heap) * int

val g13_example423 : (((heap * heap) * heap) * heap) * int

val g13_example424 : (((heap * heap) * heap) * heap) * int

val g13_example425 : (((heap * heap) * heap) * heap) * int

val g13_example426 : (((heap * heap) * heap) * heap) * int

val g13_example427 : (((heap * heap) * heap) * heap) * int

val g13_example428 : (((heap * heap) * heap) * heap) * int

val g13_example429 : (((heap * heap) * heap) * heap) * int

val g13_example430 : (((heap * heap) * heap) * heap) * int

val g13_example431 : (((heap * heap) * heap) * heap) * int

val g13_example432 : (((heap * heap) * heap) * heap) * int

val g13_example433 : (((heap * heap) * heap) * heap) * int

val g13_example434 : (((heap * heap) * heap) * heap) * int

val g13_example435 : (((heap * heap) * heap) * heap) * int

val g13_example436 : (((heap * heap) * heap) * heap) * int

val g13_example437 : (((heap * heap) * heap) * heap) * int

val g13_example438 : (((heap * heap) * heap) * heap) * int

val g13_example439 : (((heap * heap) * heap) * heap) * int

val g13_example440 : (((heap * heap) * heap) * heap) * int

val g13_example441 : (((heap * heap) * heap) * heap) * int

val g13_example442 : (((heap * heap) * heap) * heap) * int

val g13_example443 : (((heap * heap) * heap) * heap) * int

val g13_example444 : (((heap * heap) * heap) * heap) * int

val g13_example445 : (((heap * heap) * heap) * heap) * int

val g13_example446 : (((heap * heap) * heap) * heap) * int

val g13_example447 : (((heap * heap) * heap) * heap) * int

val g13_example448 : (((heap * heap) * heap) * heap) * int

val g13_example449 : (((heap * heap) * heap) * heap) * int

val g13_example450 : (((heap * heap) * heap) * heap) * int

val g13_example451 : (((heap * heap) * heap) * heap) * int

val g13_example452 : (((heap * heap) * heap) * heap) * int

val g13_example453 : (((heap * heap) * heap) * heap) * int

val g13_example454 : (((heap * heap) * heap) * heap) * int

val g13_example455 : (((heap * heap) * heap) * heap) * int

val g13_example456 : (((heap * heap) * heap) * heap) * int

val g13_example457 : (((heap * heap) * heap) * heap) * int

val g13_example458 : (((heap * heap) * heap) * heap) * int

val g13_example459 : (((heap * heap) * heap) * heap) * int

val g13_example460 : (((heap * heap) * heap) * heap) * int

val g13_example461 : (((heap * heap) * heap) * heap) * int

val g13_example462 : (((heap * heap) * heap) * heap) * int

val g13_example463 : (((heap * heap) * heap) * heap) * int

val g13_example464 : (((heap * heap) * heap) * heap) * int

val g13_example465 : (((heap * heap) * heap) * heap) * int

val g13_example466 : (((heap * heap) * heap) * heap) * int

val g13_example467 : (((heap * heap) * heap) * heap) * int

val g13_example468 : (((heap * heap) * heap) * heap) * int

val g13_example469 : (((heap * heap) * heap) * heap) * int

val g13_example470 : (((heap * heap) * heap) * heap) * int

val g13_example471 : (((heap * heap) * heap) * heap) * int

val g13_example472 : (((heap * heap) * heap) * heap) * int

val g13_example473 : (((heap * heap) * heap) * heap) * int

val g13_example474 : (((heap * heap) * heap) * heap) * int

val g13_example475 : (((heap * heap) * heap) * heap) * int

val g13_example476 : (((heap * heap) * heap) * heap) * int

val g13_example477 : (((heap * heap) * heap) * heap) * int

val g13_example478 : (((heap * heap) * heap) * heap) * int

val g13_example479 : (((heap * heap) * heap) * heap) * int

val g13_example480 : (((heap * heap) * heap) * heap) * int

val g13_example481 : (((heap * heap) * heap) * heap) * int

val g13_example482 : (((heap * heap) * heap) * heap) * int

val g13_example483 : (((heap * heap) * heap) * heap) * int

val g13_example484 : (((heap * heap) * heap) * heap) * int

val g13_example485 : (((heap * heap) * heap) * heap) * int

val g13_example486 : (((heap * heap) * heap) * heap) * int

val g13_example487 : (((heap * heap) * heap) * heap) * int

val g13_example488 : (((heap * heap) * heap) * heap) * int

val g13_example489 : (((heap * heap) * heap) * heap) * int

val g13_example490 : (((heap * heap) * heap) * heap) * int

val g13_example491 : (((heap * heap) * heap) * heap) * int

val g13_example492 : (((heap * heap) * heap) * heap) * int

val g13_example493 : (((heap * heap) * heap) * heap) * int

val g13_example494 : (((heap * heap) * heap) * heap) * int

val g13_example495 : (((heap * heap) * heap) * heap) * int

val g13_example496 : (((heap * heap) * heap) * heap) * int

val g13_example497 : (((heap * heap) * heap) * heap) * int

val g13_example498 : (((heap * heap) * heap) * heap) * int

val g13_example499 : (((heap * heap) * heap) * heap) * int

val g13_example500 : (((heap * heap) * heap) * heap) * int

val g13_example501 : (((heap * heap) * heap) * heap) * int

val g13_example502 : (((heap * heap) * heap) * heap) * int

val g13_example503 : (((heap * heap) * heap) * heap) * int

val g13_example504 : (((heap * heap) * heap) * heap) * int

val g13_example505 : (((heap * heap) * heap) * heap) * int

val g13_example506 : (((heap * heap) * heap) * heap) * int

val g13_example507 : (((heap * heap) * heap) * heap) * int

val g13_example508 : (((heap * heap) * heap) * heap) * int

val g13_example509 : (((heap * heap) * heap) * heap) * int

val g13_example510 : (((heap * heap) * heap) * heap) * int

val g13_example511 : (((heap * heap) * heap) * heap) * int

val g13_example512 : (((heap * heap) * heap) * heap) * int

val g13_example513 : (((heap * heap) * heap) * heap) * int

val g13_example514 : (((heap * heap) * heap) * heap) * int

val g13_example515 : (((heap * heap) * heap) * heap) * int

val g13_example516 : (((heap * heap) * heap) * heap) * int

val g13_example517 : (((heap * heap) * heap) * heap) * int

val g13_example518 : (((heap * heap) * heap) * heap) * int

val g13_example519 : (((heap * heap) * heap) * heap) * int

val g13_example520 : (((heap * heap) * heap) * heap) * int

val g13_example521 : (((heap * heap) * heap) * heap) * int

val g13_example522 : (((heap * heap) * heap) * heap) * int

val g13_example523 : (((heap * heap) * heap) * heap) * int

val g13_example524 : (((heap * heap) * heap) * heap) * int

val g13_example525 : (((heap * heap) * heap) * heap) * int

val g13_example526 : (((heap * heap) * heap) * heap) * int

val g13_example527 : (((heap * heap) * heap) * heap) * int

val g13_example528 : (((heap * heap) * heap) * heap) * int

val g13_example529 : (((heap * heap) * heap) * heap) * int

val g13_example530 : (((heap * heap) * heap) * heap) * int

val g13_example531 : (((heap * heap) * heap) * heap) * int

val g13_example532 : (((heap * heap) * heap) * heap) * int

val g13_example533 : (((heap * heap) * heap) * heap) * int

val g13_example534 : (((heap * heap) * heap) * heap) * int

val g13_example535 : (((heap * heap) * heap) * heap) * int

val g13_example536 : (((heap * heap) * heap) * heap) * int

val g13_example537 : (((heap * heap) * heap) * heap) * int

val g13_example538 : (((heap * heap) * heap) * heap) * int

val g13_example539 : (((heap * heap) * heap) * heap) * int

val g13_example540 : (((heap * heap) * heap) * heap) * int

val g13_example541 : (((heap * heap) * heap) * heap) * int

val g13_example542 : (((heap * heap) * heap) * heap) * int

val g13_example543 : (((heap * heap) * heap) * heap) * int

val g13_example544 : (((heap * heap) * heap) * heap) * int

val g13_example545 : (((heap * heap) * heap) * heap) * int

val g13_example546 : (((heap * heap) * heap) * heap) * int

val g13_example547 : (((heap * heap) * heap) * heap) * int

val g13_example548 : (((heap * heap) * heap) * heap) * int

val g13_example549 : (((heap * heap) * heap) * heap) * int

val g13_example550 : (((heap * heap) * heap) * heap) * int

val g13_example551 : (((heap * heap) * heap) * heap) * int

val g13_example552 : (((heap * heap) * heap) * heap) * int

val g13_example553 : (((heap * heap) * heap) * heap) * int

val g13_example554 : (((heap * heap) * heap) * heap) * int

val g13_example555 : (((heap * heap) * heap) * heap) * int

val g13_example556 : (((heap * heap) * heap) * heap) * int

val g13_example557 : (((heap * heap) * heap) * heap) * int

val g13_example558 : (((heap * heap) * heap) * heap) * int

val g13_example559 : (((heap * heap) * heap) * heap) * int

val g13_example560 : (((heap * heap) * heap) * heap) * int

val g13_example561 : (((heap * heap) * heap) * heap) * int

val g13_example562 : (((heap * heap) * heap) * heap) * int

val g13_example563 : (((heap * heap) * heap) * heap) * int

val g13_example564 : (((heap * heap) * heap) * heap) * int

val g13_example565 : (((heap * heap) * heap) * heap) * int

val g13_example566 : (((heap * heap) * heap) * heap) * int

val g13_example567 : (((heap * heap) * heap) * heap) * int

val g13_example568 : (((heap * heap) * heap) * heap) * int

val g13_example569 : (((heap * heap) * heap) * heap) * int

val g13_example570 : (((heap * heap) * heap) * heap) * int

val g13_example571 : (((heap * heap) * heap) * heap) * int

val g13_example572 : (((heap * heap) * heap) * heap) * int

val g13_example573 : (((heap * heap) * heap) * heap) * int

val g13_example574 : (((heap * heap) * heap) * heap) * int

val g13_example575 : (((heap * heap) * heap) * heap) * int

val g13_example576 : (((heap * heap) * heap) * heap) * int

val g13_example577 : (((heap * heap) * heap) * heap) * int

val g13_example578 : (((heap * heap) * heap) * heap) * int

val g13_example579 : (((heap * heap) * heap) * heap) * int

val g13_example580 : (((heap * heap) * heap) * heap) * int

val g13_example581 : (((heap * heap) * heap) * heap) * int

val g13_example582 : (((heap * heap) * heap) * heap) * int

val g13_example583 : (((heap * heap) * heap) * heap) * int

val g13_example584 : (((heap * heap) * heap) * heap) * int

val g13_example585 : (((heap * heap) * heap) * heap) * int

val g13_example586 : (((heap * heap) * heap) * heap) * int

val g13_example587 : (((heap * heap) * heap) * heap) * int

val g13_example588 : (((heap * heap) * heap) * heap) * int

val g13_example589 : (((heap * heap) * heap) * heap) * int

val g13_example590 : (((heap * heap) * heap) * heap) * int

val g13_example591 : (((heap * heap) * heap) * heap) * int

val g13_example592 : (((heap * heap) * heap) * heap) * int

val g13_example593 : (((heap * heap) * heap) * heap) * int

val g13_example594 : (((heap * heap) * heap) * heap) * int

val g13_example595 : (((heap * heap) * heap) * heap) * int

val g13_example596 : (((heap * heap) * heap) * heap) * int

val g13_example597 : (((heap * heap) * heap) * heap) * int

val g13_example598 : (((heap * heap) * heap) * heap) * int

val g13_example599 : (((heap * heap) * heap) * heap) * int

val g13_example600 : (((heap * heap) * heap) * heap) * int

val g13_example601 : (((heap * heap) * heap) * heap) * int

val g13_example602 : (((heap * heap) * heap) * heap) * int

val g13_example603 : (((heap * heap) * heap) * heap) * int

val g13_example604 : (((heap * heap) * heap) * heap) * int

val g13_example605 : (((heap * heap) * heap) * heap) * int

val g13_example606 : (((heap * heap) * heap) * heap) * int

val g13_example607 : (((heap * heap) * heap) * heap) * int

val g13_example608 : (((heap * heap) * heap) * heap) * int

val g13_example609 : (((heap * heap) * heap) * heap) * int

val g13_example610 : (((heap * heap) * heap) * heap) * int

val g13_example611 : (((heap * heap) * heap) * heap) * int

val g13_example612 : (((heap * heap) * heap) * heap) * int

val g13_example613 : (((heap * heap) * heap) * heap) * int

val g13_example614 : (((heap * heap) * heap) * heap) * int

val g13_example615 : (((heap * heap) * heap) * heap) * int

val g13_example616 : (((heap * heap) * heap) * heap) * int

val g13_example617 : (((heap * heap) * heap) * heap) * int

val g13_example618 : (((heap * heap) * heap) * heap) * int

val g13_example619 : (((heap * heap) * heap) * heap) * int

val g13_example620 : (((heap * heap) * heap) * heap) * int

val g13_example621 : (((heap * heap) * heap) * heap) * int

val g13_example622 : (((heap * heap) * heap) * heap) * int

val g13_example623 : (((heap * heap) * heap) * heap) * int

val g13_example624 : (((heap * heap) * heap) * heap) * int

val g13_example625 : (((heap * heap) * heap) * heap) * int

val g13_example626 : (((heap * heap) * heap) * heap) * int

val g13_example627 : (((heap * heap) * heap) * heap) * int

val g13_example628 : (((heap * heap) * heap) * heap) * int

val g13_example629 : (((heap * heap) * heap) * heap) * int

val g13_example630 : (((heap * heap) * heap) * heap) * int

val g13_example631 : (((heap * heap) * heap) * heap) * int

val g13_example632 : (((heap * heap) * heap) * heap) * int

val g13_example633 : (((heap * heap) * heap) * heap) * int

val g13_example634 : (((heap * heap) * heap) * heap) * int

val g13_example635 : (((heap * heap) * heap) * heap) * int

val g13_example636 : (((heap * heap) * heap) * heap) * int

val g13_example637 : (((heap * heap) * heap) * heap) * int

val g13_example638 : (((heap * heap) * heap) * heap) * int

val g13_example639 : (((heap * heap) * heap) * heap) * int

val g13_example640 : (((heap * heap) * heap) * heap) * int

val g13_example641 : (((heap * heap) * heap) * heap) * int

val g13_example642 : (((heap * heap) * heap) * heap) * int

val g13_example643 : (((heap * heap) * heap) * heap) * int

val g13_example644 : (((heap * heap) * heap) * heap) * int

val g13_example645 : (((heap * heap) * heap) * heap) * int

val g13_example646 : (((heap * heap) * heap) * heap) * int

val g13_example647 : (((heap * heap) * heap) * heap) * int

val g13_example648 : (((heap * heap) * heap) * heap) * int

val g13_example649 : (((heap * heap) * heap) * heap) * int

val g13_example650 : (((heap * heap) * heap) * heap) * int

val g13_example651 : (((heap * heap) * heap) * heap) * int

val g13_example652 : (((heap * heap) * heap) * heap) * int

val g13_example653 : (((heap * heap) * heap) * heap) * int

val g13_example654 : (((heap * heap) * heap) * heap) * int

val g13_example655 : (((heap * heap) * heap) * heap) * int

val g13_example656 : (((heap * heap) * heap) * heap) * int

val g13_example657 : (((heap * heap) * heap) * heap) * int

val g13_example658 : (((heap * heap) * heap) * heap) * int

val g13_example659 : (((heap * heap) * heap) * heap) * int

val g13_example660 : (((heap * heap) * heap) * heap) * int

val g13_example661 : (((heap * heap) * heap) * heap) * int

val g13_example662 : (((heap * heap) * heap) * heap) * int

val g13_example663 : (((heap * heap) * heap) * heap) * int

val g13_example664 : (((heap * heap) * heap) * heap) * int

val g13_example665 : (((heap * heap) * heap) * heap) * int

val g13_example666 : (((heap * heap) * heap) * heap) * int

val g13_example667 : (((heap * heap) * heap) * heap) * int

val g13_example668 : (((heap * heap) * heap) * heap) * int

val g13_example669 : (((heap * heap) * heap) * heap) * int

val g13_example670 : (((heap * heap) * heap) * heap) * int

val g13_example671 : (((heap * heap) * heap) * heap) * int

val g13_example672 : (((heap * heap) * heap) * heap) * int

val g13_example673 : (((heap * heap) * heap) * heap) * int

val g13_example674 : (((heap * heap) * heap) * heap) * int

val g13_example675 : (((heap * heap) * heap) * heap) * int

val g13_example676 : (((heap * heap) * heap) * heap) * int

val g13_example677 : (((heap * heap) * heap) * heap) * int

val g13_example678 : (((heap * heap) * heap) * heap) * int

val g13_example679 : (((heap * heap) * heap) * heap) * int

val g13_example680 : (((heap * heap) * heap) * heap) * int

val g13_example681 : (((heap * heap) * heap) * heap) * int

val g13_example682 : (((heap * heap) * heap) * heap) * int

val g13_example683 : (((heap * heap) * heap) * heap) * int

val g13_example684 : (((heap * heap) * heap) * heap) * int

val g13_example685 : (((heap * heap) * heap) * heap) * int

val g13_example686 : (((heap * heap) * heap) * heap) * int

val g13_example687 : (((heap * heap) * heap) * heap) * int

val g13_example688 : (((heap * heap) * heap) * heap) * int

val g13_example689 : (((heap * heap) * heap) * heap) * int

val g13_example690 : (((heap * heap) * heap) * heap) * int

val g13_example691 : (((heap * heap) * heap) * heap) * int

val g13_example692 : (((heap * heap) * heap) * heap) * int

val g13_example693 : (((heap * heap) * heap) * heap) * int

val g13_example694 : (((heap * heap) * heap) * heap) * int

val g13_example695 : (((heap * heap) * heap) * heap) * int

val g13_example696 : (((heap * heap) * heap) * heap) * int

val g13_example697 : (((heap * heap) * heap) * heap) * int

val g13_example698 : (((heap * heap) * heap) * heap) * int

val g13_example699 : (((heap * heap) * heap) * heap) * int

val g13_example700 : (((heap * heap) * heap) * heap) * int

val g13_example701 : (((heap * heap) * heap) * heap) * int

val g13_example702 : (((heap * heap) * heap) * heap) * int

val g13_example703 : (((heap * heap) * heap) * heap) * int

val g13_example704 : (((heap * heap) * heap) * heap) * int

val g13_example705 : (((heap * heap) * heap) * heap) * int

val g13_example706 : (((heap * heap) * heap) * heap) * int

val g13_example707 : (((heap * heap) * heap) * heap) * int

val g13_example708 : (((heap * heap) * heap) * heap) * int

val g13_example709 : (((heap * heap) * heap) * heap) * int

val g13_example710 : (((heap * heap) * heap) * heap) * int

val g13_example711 : (((heap * heap) * heap) * heap) * int

val g13_example712 : (((heap * heap) * heap) * heap) * int

val g13_example713 : (((heap * heap) * heap) * heap) * int

val g13_example714 : (((heap * heap) * heap) * heap) * int

val g13_example715 : (((heap * heap) * heap) * heap) * int

val g13_example716 : (((heap * heap) * heap) * heap) * int

val g13_example717 : (((heap * heap) * heap) * heap) * int

val g13_example718 : (((heap * heap) * heap) * heap) * int

val g13_example719 : (((heap * heap) * heap) * heap) * int

val g13_example720 : (((heap * heap) * heap) * heap) * int

val g13_example721 : (((heap * heap) * heap) * heap) * int

val g13_example722 : (((heap * heap) * heap) * heap) * int

val g13_example723 : (((heap * heap) * heap) * heap) * int

val g13_example724 : (((heap * heap) * heap) * heap) * int

val g13_example725 : (((heap * heap) * heap) * heap) * int

val g13_example726 : (((heap * heap) * heap) * heap) * int

val g13_example727 : (((heap * heap) * heap) * heap) * int

val g13_example728 : (((heap * heap) * heap) * heap) * int

val g13_example729 : (((heap * heap) * heap) * heap) * int

val g13_example730 : (((heap * heap) * heap) * heap) * int

val g13_example731 : (((heap * heap) * heap) * heap) * int

val g13_example732 : (((heap * heap) * heap) * heap) * int

val g13_example733 : (((heap * heap) * heap) * heap) * int

val g13_example734 : (((heap * heap) * heap) * heap) * int

val g13_example735 : (((heap * heap) * heap) * heap) * int

val g13_example736 : (((heap * heap) * heap) * heap) * int

val g13_example737 : (((heap * heap) * heap) * heap) * int

val g13_example738 : (((heap * heap) * heap) * heap) * int

val g13_example739 : (((heap * heap) * heap) * heap) * int

val g13_example740 : (((heap * heap) * heap) * heap) * int

val g13_example741 : (((heap * heap) * heap) * heap) * int

val g13_example742 : (((heap * heap) * heap) * heap) * int

val g13_example743 : (((heap * heap) * heap) * heap) * int

val g13_example744 : (((heap * heap) * heap) * heap) * int

val g13_example745 : (((heap * heap) * heap) * heap) * int

val g13_example746 : (((heap * heap) * heap) * heap) * int

val g13_example747 : (((heap * heap) * heap) * heap) * int

val g13_example748 : (((heap * heap) * heap) * heap) * int

val g13_example749 : (((heap * heap) * heap) * heap) * int

val g13_example750 : (((heap * heap) * heap) * heap) * int

val g13_example751 : (((heap * heap) * heap) * heap) * int

val g13_example752 : (((heap * heap) * heap) * heap) * int

val g13_example753 : (((heap * heap) * heap) * heap) * int

val g13_example754 : (((heap * heap) * heap) * heap) * int

val g13_example755 : (((heap * heap) * heap) * heap) * int

val g13_example756 : (((heap * heap) * heap) * heap) * int

val g13_example757 : (((heap * heap) * heap) * heap) * int

val g13_example758 : (((heap * heap) * heap) * heap) * int

val g13_example759 : (((heap * heap) * heap) * heap) * int

val g13_example760 : (((heap * heap) * heap) * heap) * int

val g13_example761 : (((heap * heap) * heap) * heap) * int

val g13_example762 : (((heap * heap) * heap) * heap) * int

val g13_example763 : (((heap * heap) * heap) * heap) * int

val g13_example764 : (((heap * heap) * heap) * heap) * int

val g13_example765 : (((heap * heap) * heap) * heap) * int

val g13_example766 : (((heap * heap) * heap) * heap) * int

val g13_example767 : (((heap * heap) * heap) * heap) * int

val g13_example768 : (((heap * heap) * heap) * heap) * int

val g13_example769 : (((heap * heap) * heap) * heap) * int

val g13_example770 : (((heap * heap) * heap) * heap) * int

val g13_example771 : (((heap * heap) * heap) * heap) * int

val g13_example772 : (((heap * heap) * heap) * heap) * int

val g13_example773 : (((heap * heap) * heap) * heap) * int

val g13_example774 : (((heap * heap) * heap) * heap) * int

val g13_example775 : (((heap * heap) * heap) * heap) * int

val g13_example776 : (((heap * heap) * heap) * heap) * int

val g13_example777 : (((heap * heap) * heap) * heap) * int

val g13_example778 : (((heap * heap) * heap) * heap) * int

val g13_example779 : (((heap * heap) * heap) * heap) * int

val g13_example780 : (((heap * heap) * heap) * heap) * int

val g13_example781 : (((heap * heap) * heap) * heap) * int

val g13_example782 : (((heap * heap) * heap) * heap) * int

val g13_example783 : (((heap * heap) * heap) * heap) * int

val g13_example784 : (((heap * heap) * heap) * heap) * int

val g13_example785 : (((heap * heap) * heap) * heap) * int

val g13_example786 : (((heap * heap) * heap) * heap) * int

val g13_example787 : (((heap * heap) * heap) * heap) * int

val g13_example788 : (((heap * heap) * heap) * heap) * int

val g13_example789 : (((heap * heap) * heap) * heap) * int

val g13_example790 : (((heap * heap) * heap) * heap) * int

val g13_example791 : (((heap * heap) * heap) * heap) * int

val g13_example792 : (((heap * heap) * heap) * heap) * int

val g13_example793 : (((heap * heap) * heap) * heap) * int

val g13_example794 : (((heap * heap) * heap) * heap) * int

val g13_example795 : (((heap * heap) * heap) * heap) * int

val g13_example796 : (((heap * heap) * heap) * heap) * int

val g13_example797 : (((heap * heap) * heap) * heap) * int

val g13_example798 : (((heap * heap) * heap) * heap) * int

val g13_example799 : (((heap * heap) * heap) * heap) * int

val g13_example800 : (((heap * heap) * heap) * heap) * int

val g13_example801 : (((heap * heap) * heap) * heap) * int

val g13_example802 : (((heap * heap) * heap) * heap) * int

val g13_example803 : (((heap * heap) * heap) * heap) * int

val g13_example804 : (((heap * heap) * heap) * heap) * int

val g13_example805 : (((heap * heap) * heap) * heap) * int

val g13_example806 : (((heap * heap) * heap) * heap) * int

val g13_example807 : (((heap * heap) * heap) * heap) * int

val g13_example808 : (((heap * heap) * heap) * heap) * int

val g13_example809 : (((heap * heap) * heap) * heap) * int

val g13_example810 : (((heap * heap) * heap) * heap) * int

val g13_example811 : (((heap * heap) * heap) * heap) * int

val g13_example812 : (((heap * heap) * heap) * heap) * int

val g13_example813 : (((heap * heap) * heap) * heap) * int

val g13_example814 : (((heap * heap) * heap) * heap) * int

val g13_example815 : (((heap * heap) * heap) * heap) * int

val g13_example816 : (((heap * heap) * heap) * heap) * int

val g13_example817 : (((heap * heap) * heap) * heap) * int

val g13_example818 : (((heap * heap) * heap) * heap) * int

val g13_example819 : (((heap * heap) * heap) * heap) * int

val g13_example820 : (((heap * heap) * heap) * heap) * int

val g13_example821 : (((heap * heap) * heap) * heap) * int

val g13_example822 : (((heap * heap) * heap) * heap) * int

val g13_example823 : (((heap * heap) * heap) * heap) * int

val g13_example824 : (((heap * heap) * heap) * heap) * int

val g13_example825 : (((heap * heap) * heap) * heap) * int

val g13_example826 : (((heap * heap) * heap) * heap) * int

val g13_example827 : (((heap * heap) * heap) * heap) * int

val g13_example828 : (((heap * heap) * heap) * heap) * int

val g13_example829 : (((heap * heap) * heap) * heap) * int

val g13_example830 : (((heap * heap) * heap) * heap) * int

val g13_example831 : (((heap * heap) * heap) * heap) * int

val g13_example832 : (((heap * heap) * heap) * heap) * int

val g13_example833 : (((heap * heap) * heap) * heap) * int

val g13_example834 : (((heap * heap) * heap) * heap) * int

val g13_example835 : (((heap * heap) * heap) * heap) * int

val g13_example836 : (((heap * heap) * heap) * heap) * int

val g13_example837 : (((heap * heap) * heap) * heap) * int

val g13_example838 : (((heap * heap) * heap) * heap) * int

val g13_example839 : (((heap * heap) * heap) * heap) * int

val g13_example840 : (((heap * heap) * heap) * heap) * int

val g13_example841 : (((heap * heap) * heap) * heap) * int

val g13_example842 : (((heap * heap) * heap) * heap) * int

val g13_example843 : (((heap * heap) * heap) * heap) * int

val g13_example844 : (((heap * heap) * heap) * heap) * int

val g13_example845 : (((heap * heap) * heap) * heap) * int

val g13_example846 : (((heap * heap) * heap) * heap) * int

val g13_example847 : (((heap * heap) * heap) * heap) * int

val g13_example848 : (((heap * heap) * heap) * heap) * int

val g13_example849 : (((heap * heap) * heap) * heap) * int

val g13_example850 : (((heap * heap) * heap) * heap) * int

val g13_example851 : (((heap * heap) * heap) * heap) * int

val g13_example852 : (((heap * heap) * heap) * heap) * int

val g13_example853 : (((heap * heap) * heap) * heap) * int

val g13_example854 : (((heap * heap) * heap) * heap) * int

val g13_example855 : (((heap * heap) * heap) * heap) * int

val g13_example856 : (((heap * heap) * heap) * heap) * int

val g13_example857 : (((heap * heap) * heap) * heap) * int

val g13_example858 : (((heap * heap) * heap) * heap) * int

val g13_example859 : (((heap * heap) * heap) * heap) * int

val g13_example860 : (((heap * heap) * heap) * heap) * int

val g13_example861 : (((heap * heap) * heap) * heap) * int

val g13_example862 : (((heap * heap) * heap) * heap) * int

val g13_example863 : (((heap * heap) * heap) * heap) * int

val g13_example864 : (((heap * heap) * heap) * heap) * int

val g13_example865 : (((heap * heap) * heap) * heap) * int

val g13_example866 : (((heap * heap) * heap) * heap) * int

val g13_example867 : (((heap * heap) * heap) * heap) * int

val g13_example868 : (((heap * heap) * heap) * heap) * int

val g13_example869 : (((heap * heap) * heap) * heap) * int

val g13_example870 : (((heap * heap) * heap) * heap) * int

val g13_example871 : (((heap * heap) * heap) * heap) * int

val g13_example872 : (((heap * heap) * heap) * heap) * int

val g13_example873 : (((heap * heap) * heap) * heap) * int

val g13_example874 : (((heap * heap) * heap) * heap) * int

val g13_example875 : (((heap * heap) * heap) * heap) * int

val g13_example876 : (((heap * heap) * heap) * heap) * int

val g13_example877 : (((heap * heap) * heap) * heap) * int

val g13_example878 : (((heap * heap) * heap) * heap) * int

val g13_example879 : (((heap * heap) * heap) * heap) * int

val g13_example880 : (((heap * heap) * heap) * heap) * int

val g13_example881 : (((heap * heap) * heap) * heap) * int

val g13_example882 : (((heap * heap) * heap) * heap) * int

val g13_example883 : (((heap * heap) * heap) * heap) * int

val g13_example884 : (((heap * heap) * heap) * heap) * int

val g13_example885 : (((heap * heap) * heap) * heap) * int

val g13_example886 : (((heap * heap) * heap) * heap) * int

val g13_example887 : (((heap * heap) * heap) * heap) * int

val g13_example888 : (((heap * heap) * heap) * heap) * int

val g13_example889 : (((heap * heap) * heap) * heap) * int

val g13_example890 : (((heap * heap) * heap) * heap) * int

val g13_example891 : (((heap * heap) * heap) * heap) * int

val g13_example892 : (((heap * heap) * heap) * heap) * int

val g13_example893 : (((heap * heap) * heap) * heap) * int

val g13_example894 : (((heap * heap) * heap) * heap) * int

val g13_example895 : (((heap * heap) * heap) * heap) * int

val g13_example896 : (((heap * heap) * heap) * heap) * int

val g13_example897 : (((heap * heap) * heap) * heap) * int

val g13_example898 : (((heap * heap) * heap) * heap) * int

val g13_example899 : (((heap * heap) * heap) * heap) * int

val g13_example900 : (((heap * heap) * heap) * heap) * int

val g13_example901 : (((heap * heap) * heap) * heap) * int

val g13_example902 : (((heap * heap) * heap) * heap) * int

val g13_example903 : (((heap * heap) * heap) * heap) * int

val g13_example904 : (((heap * heap) * heap) * heap) * int

val g13_example905 : (((heap * heap) * heap) * heap) * int

val g13_example906 : (((heap * heap) * heap) * heap) * int

val g13_example907 : (((heap * heap) * heap) * heap) * int

val g13_example908 : (((heap * heap) * heap) * heap) * int

val g13_example909 : (((heap * heap) * heap) * heap) * int

val g13_example910 : (((heap * heap) * heap) * heap) * int

val g13_example911 : (((heap * heap) * heap) * heap) * int

val g13_example912 : (((heap * heap) * heap) * heap) * int

val g13_example913 : (((heap * heap) * heap) * heap) * int

val g13_example914 : (((heap * heap) * heap) * heap) * int

val g13_example915 : (((heap * heap) * heap) * heap) * int

val g13_example916 : (((heap * heap) * heap) * heap) * int

val g13_example917 : (((heap * heap) * heap) * heap) * int

val g13_example918 : (((heap * heap) * heap) * heap) * int

val g13_example919 : (((heap * heap) * heap) * heap) * int

val g13_example920 : (((heap * heap) * heap) * heap) * int

val g13_example921 : (((heap * heap) * heap) * heap) * int

val g13_example922 : (((heap * heap) * heap) * heap) * int

val g13_example923 : (((heap * heap) * heap) * heap) * int

val g13_example924 : (((heap * heap) * heap) * heap) * int

val g13_example925 : (((heap * heap) * heap) * heap) * int

val g13_example926 : (((heap * heap) * heap) * heap) * int

val g13_example927 : (((heap * heap) * heap) * heap) * int

val g13_example928 : (((heap * heap) * heap) * heap) * int

val g13_example929 : (((heap * heap) * heap) * heap) * int

val g13_example930 : (((heap * heap) * heap) * heap) * int

val g13_example931 : (((heap * heap) * heap) * heap) * int

val g13_example932 : (((heap * heap) * heap) * heap) * int

val g13_example933 : (((heap * heap) * heap) * heap) * int

val g13_example934 : (((heap * heap) * heap) * heap) * int

val g13_example935 : (((heap * heap) * heap) * heap) * int

val g13_example936 : (((heap * heap) * heap) * heap) * int

val g13_example937 : (((heap * heap) * heap) * heap) * int

val g13_example938 : (((heap * heap) * heap) * heap) * int

val g13_example939 : (((heap * heap) * heap) * heap) * int

val g13_example940 : (((heap * heap) * heap) * heap) * int

val g13_example941 : (((heap * heap) * heap) * heap) * int

val g13_example942 : (((heap * heap) * heap) * heap) * int

val g13_example943 : (((heap * heap) * heap) * heap) * int

val g13_example944 : (((heap * heap) * heap) * heap) * int

val g13_example945 : (((heap * heap) * heap) * heap) * int

val g13_example946 : (((heap * heap) * heap) * heap) * int

val g13_example947 : (((heap * heap) * heap) * heap) * int

val g13_example948 : (((heap * heap) * heap) * heap) * int

val g13_example949 : (((heap * heap) * heap) * heap) * int

val g13_example950 : (((heap * heap) * heap) * heap) * int

val g13_example951 : (((heap * heap) * heap) * heap) * int

val g13_example952 : (((heap * heap) * heap) * heap) * int

val g13_example953 : (((heap * heap) * heap) * heap) * int

val g13_example954 : (((heap * heap) * heap) * heap) * int

val g13_example955 : (((heap * heap) * heap) * heap) * int

val g13_example956 : (((heap * heap) * heap) * heap) * int

val g13_example957 : (((heap * heap) * heap) * heap) * int

val g13_example958 : (((heap * heap) * heap) * heap) * int

val g13_example959 : (((heap * heap) * heap) * heap) * int

val g13_example960 : (((heap * heap) * heap) * heap) * int

val g13_example961 : (((heap * heap) * heap) * heap) * int

val g13_example962 : (((heap * heap) * heap) * heap) * int

val g13_example963 : (((heap * heap) * heap) * heap) * int

val g13_example964 : (((heap * heap) * heap) * heap) * int

val g13_example965 : (((heap * heap) * heap) * heap) * int

val g13_example966 : (((heap * heap) * heap) * heap) * int

val g13_example967 : (((heap * heap) * heap) * heap) * int

val g13_example968 : (((heap * heap) * heap) * heap) * int

val g13_example969 : (((heap * heap) * heap) * heap) * int

val g13_example970 : (((heap * heap) * heap) * heap) * int

val g13_example971 : (((heap * heap) * heap) * heap) * int

val g13_example972 : (((heap * heap) * heap) * heap) * int

val g13_example973 : (((heap * heap) * heap) * heap) * int

val g13_example974 : (((heap * heap) * heap) * heap) * int

val g13_example975 : (((heap * heap) * heap) * heap) * int

val g13_example976 : (((heap * heap) * heap) * heap) * int

val g13_example977 : (((heap * heap) * heap) * heap) * int

val g13_example978 : (((heap * heap) * heap) * heap) * int

val g13_example979 : (((heap * heap) * heap) * heap) * int

val g13_example980 : (((heap * heap) * heap) * heap) * int

val g13_example981 : (((heap * heap) * heap) * heap) * int

val g13_example982 : (((heap * heap) * heap) * heap) * int

val g13_example983 : (((heap * heap) * heap) * heap) * int

val g13_example984 : (((heap * heap) * heap) * heap) * int

val g13_example985 : (((heap * heap) * heap) * heap) * int

val g13_example986 : (((heap * heap) * heap) * heap) * int

val g13_example987 : (((heap * heap) * heap) * heap) * int

val g13_example988 : (((heap * heap) * heap) * heap) * int

val g13_example989 : (((heap * heap) * heap) * heap) * int

val g13_example990 : (((heap * heap) * heap) * heap) * int

val g13_example991 : (((heap * heap) * heap) * heap) * int

val g13_example992 : (((heap * heap) * heap) * heap) * int

val g13_example993 : (((heap * heap) * heap) * heap) * int

val g13_example994 : (((heap * heap) * heap) * heap) * int

val g13_example995 : (((heap * heap) * heap) * heap) * int

val g13_example996 : (((heap * heap) * heap) * heap) * int

val g13_example997 : (((heap * heap) * heap) * heap) * int

val g13_example998 : (((heap * heap) * heap) * heap) * int

val g13_example999 : (((heap * heap) * heap) * heap) * int

val g13_example1000 : (((heap * heap) * heap) * heap) * int

val g13_example1001 : (((heap * heap) * heap) * heap) * int

val g13_example1002 : (((heap * heap) * heap) * heap) * int

val g13_example1003 : (((heap * heap) * heap) * heap) * int

val g13_example1004 : (((heap * heap) * heap) * heap) * int

val g13_example1005 : (((heap * heap) * heap) * heap) * int

val g13_example1006 : (((heap * heap) * heap) * heap) * int

val g13_example1007 : (((heap * heap) * heap) * heap) * int

val g13_example1008 : (((heap * heap) * heap) * heap) * int

val g13_example1009 : (((heap * heap) * heap) * heap) * int

val g13_example1010 : (((heap * heap) * heap) * heap) * int

val g13_example1011 : (((heap * heap) * heap) * heap) * int

val g13_example1012 : (((heap * heap) * heap) * heap) * int

val g13_example1013 : (((heap * heap) * heap) * heap) * int

val g13_example1014 : (((heap * heap) * heap) * heap) * int

val g13_example1015 : (((heap * heap) * heap) * heap) * int

val g13_example1016 : (((heap * heap) * heap) * heap) * int

val g13_example1017 : (((heap * heap) * heap) * heap) * int

val g13_example1018 : (((heap * heap) * heap) * heap) * int

val g13_example1019 : (((heap * heap) * heap) * heap) * int

val g13_example1020 : (((heap * heap) * heap) * heap) * int

val g13_example1021 : (((heap * heap) * heap) * heap) * int

val g13_example1022 : (((heap * heap) * heap) * heap) * int

val g13_example1023 : (((heap * heap) * heap) * heap) * int

val g13_example1024 : (((heap * heap) * heap) * heap) * int

val g13_example1025 : (((heap * heap) * heap) * heap) * int

val g13_example1026 : (((heap * heap) * heap) * heap) * int

val g13_example1027 : (((heap * heap) * heap) * heap) * int

val g13_example1028 : (((heap * heap) * heap) * heap) * int

val g13_example1029 : (((heap * heap) * heap) * heap) * int

val g13_example1030 : (((heap * heap) * heap) * heap) * int

val g13_example1031 : (((heap * heap) * heap) * heap) * int

val g13_example1032 : (((heap * heap) * heap) * heap) * int

val g13_example1033 : (((heap * heap) * heap) * heap) * int

val g13_example1034 : (((heap * heap) * heap) * heap) * int

val g13_example1035 : (((heap * heap) * heap) * heap) * int

val g13_example1036 : (((heap * heap) * heap) * heap) * int

val g13_example1037 : (((heap * heap) * heap) * heap) * int

val g13_example1038 : (((heap * heap) * heap) * heap) * int

val g13_example1039 : (((heap * heap) * heap) * heap) * int

val g13_example1040 : (((heap * heap) * heap) * heap) * int

val g13_example1041 : (((heap * heap) * heap) * heap) * int

val g13_example1042 : (((heap * heap) * heap) * heap) * int

val g13_example1043 : (((heap * heap) * heap) * heap) * int

val g13_example1044 : (((heap * heap) * heap) * heap) * int

val g13_example1045 : (((heap * heap) * heap) * heap) * int

val g13_example1046 : (((heap * heap) * heap) * heap) * int

val g13_example1047 : (((heap * heap) * heap) * heap) * int

val g13_example1048 : (((heap * heap) * heap) * heap) * int

val g13_example1049 : (((heap * heap) * heap) * heap) * int

val g13_example1050 : (((heap * heap) * heap) * heap) * int

val g13_example1051 : (((heap * heap) * heap) * heap) * int

val g13_example1052 : (((heap * heap) * heap) * heap) * int

val g13_example1053 : (((heap * heap) * heap) * heap) * int

val g13_example1054 : (((heap * heap) * heap) * heap) * int

val g13_example1055 : (((heap * heap) * heap) * heap) * int

val g13_example1056 : (((heap * heap) * heap) * heap) * int

val g13_example1057 : (((heap * heap) * heap) * heap) * int

val g13_example1058 : (((heap * heap) * heap) * heap) * int

val g13_example1059 : (((heap * heap) * heap) * heap) * int

val g13_example1060 : (((heap * heap) * heap) * heap) * int

val g13_example1061 : (((heap * heap) * heap) * heap) * int

val g13_example1062 : (((heap * heap) * heap) * heap) * int

val g13_example1063 : (((heap * heap) * heap) * heap) * int

val g13_example1064 : (((heap * heap) * heap) * heap) * int

val g13_example1065 : (((heap * heap) * heap) * heap) * int

val g13_example1066 : (((heap * heap) * heap) * heap) * int

val g13_example1067 : (((heap * heap) * heap) * heap) * int

val g13_example1068 : (((heap * heap) * heap) * heap) * int

val g13_example1069 : (((heap * heap) * heap) * heap) * int

val g13_example1070 : (((heap * heap) * heap) * heap) * int

val g13_example1071 : (((heap * heap) * heap) * heap) * int

val g13_example1072 : (((heap * heap) * heap) * heap) * int

val g13_example1073 : (((heap * heap) * heap) * heap) * int

val g13_example1074 : (((heap * heap) * heap) * heap) * int

val g13_example1075 : (((heap * heap) * heap) * heap) * int

val g13_example1076 : (((heap * heap) * heap) * heap) * int

val g13_example1077 : (((heap * heap) * heap) * heap) * int

val g13_example1078 : (((heap * heap) * heap) * heap) * int

val g13_example1079 : (((heap * heap) * heap) * heap) * int

val g13_example1080 : (((heap * heap) * heap) * heap) * int

val g13_example1081 : (((heap * heap) * heap) * heap) * int

val g13_example1082 : (((heap * heap) * heap) * heap) * int

val g13_example1083 : (((heap * heap) * heap) * heap) * int

val g13_example1084 : (((heap * heap) * heap) * heap) * int

val g13_example1085 : (((heap * heap) * heap) * heap) * int

val g13_example1086 : (((heap * heap) * heap) * heap) * int

val g13_example1087 : (((heap * heap) * heap) * heap) * int

val g13_example1088 : (((heap * heap) * heap) * heap) * int

val g13_example1089 : (((heap * heap) * heap) * heap) * int

val g13_example1090 : (((heap * heap) * heap) * heap) * int

val g13_example1091 : (((heap * heap) * heap) * heap) * int

val g13_example1092 : (((heap * heap) * heap) * heap) * int

val g13_example1093 : (((heap * heap) * heap) * heap) * int

val g13_example1094 : (((heap * heap) * heap) * heap) * int

val g13_example1095 : (((heap * heap) * heap) * heap) * int

val g13_example1096 : (((heap * heap) * heap) * heap) * int

val g13_example1097 : (((heap * heap) * heap) * heap) * int

val g13_example1098 : (((heap * heap) * heap) * heap) * int

val g13_example1099 : (((heap * heap) * heap) * heap) * int

val g13_example1100 : (((heap * heap) * heap) * heap) * int

val g13_example1101 : (((heap * heap) * heap) * heap) * int

val g13_example1102 : (((heap * heap) * heap) * heap) * int

val g13_example1103 : (((heap * heap) * heap) * heap) * int

val g13_example1104 : (((heap * heap) * heap) * heap) * int

val g13_example1105 : (((heap * heap) * heap) * heap) * int

val g13_example1106 : (((heap * heap) * heap) * heap) * int

val g13_example1107 : (((heap * heap) * heap) * heap) * int

val g13_example1108 : (((heap * heap) * heap) * heap) * int

val g13_example1109 : (((heap * heap) * heap) * heap) * int

val g13_example1110 : (((heap * heap) * heap) * heap) * int

val g13_example1111 : (((heap * heap) * heap) * heap) * int

val g13_example1112 : (((heap * heap) * heap) * heap) * int

val g13_example1113 : (((heap * heap) * heap) * heap) * int

val g13_example1114 : (((heap * heap) * heap) * heap) * int

val g13_example1115 : (((heap * heap) * heap) * heap) * int

val g13_example1116 : (((heap * heap) * heap) * heap) * int

val g13_example1117 : (((heap * heap) * heap) * heap) * int

val g13_example1118 : (((heap * heap) * heap) * heap) * int

val g13_example1119 : (((heap * heap) * heap) * heap) * int

val g13_example1120 : (((heap * heap) * heap) * heap) * int

val g13_example1121 : (((heap * heap) * heap) * heap) * int

val g13_example1122 : (((heap * heap) * heap) * heap) * int

val g13_example1123 : (((heap * heap) * heap) * heap) * int

val g13_example1124 : (((heap * heap) * heap) * heap) * int

val g13_example1125 : (((heap * heap) * heap) * heap) * int

val g13_example1126 : (((heap * heap) * heap) * heap) * int

val g13_example1127 : (((heap * heap) * heap) * heap) * int

val g13_example1128 : (((heap * heap) * heap) * heap) * int

val g13_example1129 : (((heap * heap) * heap) * heap) * int

val g13_example1130 : (((heap * heap) * heap) * heap) * int

val g13_example1131 : (((heap * heap) * heap) * heap) * int

val g13_example1132 : (((heap * heap) * heap) * heap) * int

val g13_example1133 : (((heap * heap) * heap) * heap) * int

val g13_example1134 : (((heap * heap) * heap) * heap) * int

val g13_example1135 : (((heap * heap) * heap) * heap) * int

val g13_example1136 : (((heap * heap) * heap) * heap) * int

val g13_example1137 : (((heap * heap) * heap) * heap) * int

val g13_example1138 : (((heap * heap) * heap) * heap) * int

val g13_example1139 : (((heap * heap) * heap) * heap) * int

val g13_example1140 : (((heap * heap) * heap) * heap) * int

val g13_example1141 : (((heap * heap) * heap) * heap) * int

val g13_example1142 : (((heap * heap) * heap) * heap) * int

val g13_example1143 : (((heap * heap) * heap) * heap) * int

val g13_example1144 : (((heap * heap) * heap) * heap) * int

val g13_example1145 : (((heap * heap) * heap) * heap) * int

val g13_example1146 : (((heap * heap) * heap) * heap) * int

val g13_example1147 : (((heap * heap) * heap) * heap) * int

val g13_example1148 : (((heap * heap) * heap) * heap) * int

val g13_example1149 : (((heap * heap) * heap) * heap) * int

val g13_example1150 : (((heap * heap) * heap) * heap) * int

val g13_example1151 : (((heap * heap) * heap) * heap) * int

val g13_example1152 : (((heap * heap) * heap) * heap) * int

val g13_example1153 : (((heap * heap) * heap) * heap) * int

val g13_example1154 : (((heap * heap) * heap) * heap) * int

val g13_example1155 : (((heap * heap) * heap) * heap) * int

val g13_example1156 : (((heap * heap) * heap) * heap) * int

val g13_example1157 : (((heap * heap) * heap) * heap) * int

val g13_example1158 : (((heap * heap) * heap) * heap) * int

val g13_example1159 : (((heap * heap) * heap) * heap) * int

val g13_example1160 : (((heap * heap) * heap) * heap) * int

val g13_example1161 : (((heap * heap) * heap) * heap) * int

val g13_example1162 : (((heap * heap) * heap) * heap) * int

val g13_example1163 : (((heap * heap) * heap) * heap) * int

val g13_example1164 : (((heap * heap) * heap) * heap) * int

val g13_example1165 : (((heap * heap) * heap) * heap) * int

val g13_example1166 : (((heap * heap) * heap) * heap) * int

val g13_example1167 : (((heap * heap) * heap) * heap) * int

val g13_example1168 : (((heap * heap) * heap) * heap) * int

val g13_example1169 : (((heap * heap) * heap) * heap) * int

val g13_example1170 : (((heap * heap) * heap) * heap) * int

val g13_example1171 : (((heap * heap) * heap) * heap) * int

val g13_example1172 : (((heap * heap) * heap) * heap) * int

val g13_example1173 : (((heap * heap) * heap) * heap) * int

val g13_example1174 : (((heap * heap) * heap) * heap) * int

val g13_example1175 : (((heap * heap) * heap) * heap) * int

val g13_example1176 : (((heap * heap) * heap) * heap) * int

val g13_example1177 : (((heap * heap) * heap) * heap) * int

val g13_example1178 : (((heap * heap) * heap) * heap) * int

val g13_example1179 : (((heap * heap) * heap) * heap) * int

val g13_example1180 : (((heap * heap) * heap) * heap) * int

val g13_example1181 : (((heap * heap) * heap) * heap) * int

val g13_example1182 : (((heap * heap) * heap) * heap) * int

val g13_example1183 : (((heap * heap) * heap) * heap) * int

val g13_example1184 : (((heap * heap) * heap) * heap) * int

val g13_example1185 : (((heap * heap) * heap) * heap) * int

val g13_example1186 : (((heap * heap) * heap) * heap) * int

val g13_example1187 : (((heap * heap) * heap) * heap) * int

val g13_example1188 : (((heap * heap) * heap) * heap) * int

val g13_example1189 : (((heap * heap) * heap) * heap) * int

val g13_example1190 : (((heap * heap) * heap) * heap) * int

val g13_example1191 : (((heap * heap) * heap) * heap) * int

val g13_example1192 : (((heap * heap) * heap) * heap) * int

val g13_example1193 : (((heap * heap) * heap) * heap) * int

val g13_example1194 : (((heap * heap) * heap) * heap) * int

val g13_example1195 : (((heap * heap) * heap) * heap) * int

val g13_example1196 : (((heap * heap) * heap) * heap) * int

val g13_example1197 : (((heap * heap) * heap) * heap) * int

val g13_example1198 : (((heap * heap) * heap) * heap) * int

val g13_example1199 : (((heap * heap) * heap) * heap) * int

val g13_example1200 : (((heap * heap) * heap) * heap) * int

val g13_example1201 : (((heap * heap) * heap) * heap) * int

val g13_example1202 : (((heap * heap) * heap) * heap) * int

val g13_example1203 : (((heap * heap) * heap) * heap) * int

val g13_example1204 : (((heap * heap) * heap) * heap) * int

val g13_example1205 : (((heap * heap) * heap) * heap) * int

val g13_example1206 : (((heap * heap) * heap) * heap) * int

val g13_example1207 : (((heap * heap) * heap) * heap) * int

val g13_example1208 : (((heap * heap) * heap) * heap) * int

val g13_example1209 : (((heap * heap) * heap) * heap) * int

val g13_example1210 : (((heap * heap) * heap) * heap) * int

val g13_example1211 : (((heap * heap) * heap) * heap) * int

val g13_example1212 : (((heap * heap) * heap) * heap) * int

val g13_example1213 : (((heap * heap) * heap) * heap) * int

val g13_example1214 : (((heap * heap) * heap) * heap) * int

val g13_example1215 : (((heap * heap) * heap) * heap) * int

val g13_example1216 : (((heap * heap) * heap) * heap) * int

val g13_example1217 : (((heap * heap) * heap) * heap) * int

val g13_example1218 : (((heap * heap) * heap) * heap) * int

val g13_example1219 : (((heap * heap) * heap) * heap) * int

val g13_example1220 : (((heap * heap) * heap) * heap) * int

val g13_example1221 : (((heap * heap) * heap) * heap) * int

val g13_example1222 : (((heap * heap) * heap) * heap) * int

val g13_example1223 : (((heap * heap) * heap) * heap) * int

val g13_example1224 : (((heap * heap) * heap) * heap) * int

val g13_example1225 : (((heap * heap) * heap) * heap) * int

val g13_example1226 : (((heap * heap) * heap) * heap) * int

val g13_example1227 : (((heap * heap) * heap) * heap) * int

val g13_example1228 : (((heap * heap) * heap) * heap) * int

val g13_example1229 : (((heap * heap) * heap) * heap) * int

val g13_example1230 : (((heap * heap) * heap) * heap) * int

val g13_example1231 : (((heap * heap) * heap) * heap) * int

val g13_example1232 : (((heap * heap) * heap) * heap) * int

val g13_example1233 : (((heap * heap) * heap) * heap) * int

val g13_example1234 : (((heap * heap) * heap) * heap) * int

val g13_example1235 : (((heap * heap) * heap) * heap) * int

val g13_example1236 : (((heap * heap) * heap) * heap) * int

val g13_example1237 : (((heap * heap) * heap) * heap) * int

val g13_example1238 : (((heap * heap) * heap) * heap) * int

val g13_example1239 : (((heap * heap) * heap) * heap) * int

val g13_example1240 : (((heap * heap) * heap) * heap) * int

val g13_example1241 : (((heap * heap) * heap) * heap) * int

val g13_example1242 : (((heap * heap) * heap) * heap) * int

val g13_example1243 : (((heap * heap) * heap) * heap) * int

val g13_example1244 : (((heap * heap) * heap) * heap) * int

val g13_example1245 : (((heap * heap) * heap) * heap) * int

val g13_example1246 : (((heap * heap) * heap) * heap) * int

val g13_example1247 : (((heap * heap) * heap) * heap) * int

val g13_example1248 : (((heap * heap) * heap) * heap) * int

val g13_example1249 : (((heap * heap) * heap) * heap) * int

val g13_example1250 : (((heap * heap) * heap) * heap) * int

val g13_example1251 : (((heap * heap) * heap) * heap) * int

val g13_example1252 : (((heap * heap) * heap) * heap) * int

val g13_example1253 : (((heap * heap) * heap) * heap) * int

val g13_example1254 : (((heap * heap) * heap) * heap) * int

val g13_example1255 : (((heap * heap) * heap) * heap) * int

val g13_example1256 : (((heap * heap) * heap) * heap) * int

val g13_example1257 : (((heap * heap) * heap) * heap) * int

val g13_example1258 : (((heap * heap) * heap) * heap) * int

val g13_example1259 : (((heap * heap) * heap) * heap) * int

val g13_example1260 : (((heap * heap) * heap) * heap) * int

val g13_example1261 : (((heap * heap) * heap) * heap) * int

val g13_example1262 : (((heap * heap) * heap) * heap) * int

val g13_example1263 : (((heap * heap) * heap) * heap) * int

val g13_example1264 : (((heap * heap) * heap) * heap) * int

val g13_example1265 : (((heap * heap) * heap) * heap) * int

val g13_example1266 : (((heap * heap) * heap) * heap) * int

val g13_example1267 : (((heap * heap) * heap) * heap) * int

val g13_example1268 : (((heap * heap) * heap) * heap) * int

val g13_example1269 : (((heap * heap) * heap) * heap) * int

val g13_example1270 : (((heap * heap) * heap) * heap) * int

val g13_example1271 : (((heap * heap) * heap) * heap) * int

val g13_example1272 : (((heap * heap) * heap) * heap) * int

val g13_example1273 : (((heap * heap) * heap) * heap) * int

val g13_example1274 : (((heap * heap) * heap) * heap) * int

val g13_example1275 : (((heap * heap) * heap) * heap) * int

val g13_example1276 : (((heap * heap) * heap) * heap) * int

val g13_example1277 : (((heap * heap) * heap) * heap) * int

val g13_example1278 : (((heap * heap) * heap) * heap) * int

val g13_example1279 : (((heap * heap) * heap) * heap) * int

val g13_example1280 : (((heap * heap) * heap) * heap) * int

val g13_example1281 : (((heap * heap) * heap) * heap) * int

val g13_example1282 : (((heap * heap) * heap) * heap) * int

val g13_example1283 : (((heap * heap) * heap) * heap) * int

val g13_example1284 : (((heap * heap) * heap) * heap) * int

val g13_example1285 : (((heap * heap) * heap) * heap) * int

val g13_example1286 : (((heap * heap) * heap) * heap) * int

val g13_example1287 : (((heap * heap) * heap) * heap) * int

val g13_example1288 : (((heap * heap) * heap) * heap) * int

val g13_example1289 : (((heap * heap) * heap) * heap) * int

val g13_example1290 : (((heap * heap) * heap) * heap) * int

val g13_example1291 : (((heap * heap) * heap) * heap) * int

val g13_example1292 : (((heap * heap) * heap) * heap) * int

val g13_example1293 : (((heap * heap) * heap) * heap) * int

val g13_example1294 : (((heap * heap) * heap) * heap) * int

val g13_example1295 : (((heap * heap) * heap) * heap) * int

val g13_example1296 : (((heap * heap) * heap) * heap) * int

val g13_example1297 : (((heap * heap) * heap) * heap) * int

val g13_example1298 : (((heap * heap) * heap) * heap) * int

val g13_example1299 : (((heap * heap) * heap) * heap) * int

val g13_example1300 : (((heap * heap) * heap) * heap) * int

val g13_example1301 : (((heap * heap) * heap) * heap) * int

val g13_example1302 : (((heap * heap) * heap) * heap) * int

val g13_example1303 : (((heap * heap) * heap) * heap) * int

val g13_example1304 : (((heap * heap) * heap) * heap) * int

val g13_example1305 : (((heap * heap) * heap) * heap) * int

val g13_example1306 : (((heap * heap) * heap) * heap) * int

val g13_example1307 : (((heap * heap) * heap) * heap) * int

val g13_example1308 : (((heap * heap) * heap) * heap) * int

val g13_example1309 : (((heap * heap) * heap) * heap) * int

val g13_example1310 : (((heap * heap) * heap) * heap) * int

val g13_example1311 : (((heap * heap) * heap) * heap) * int

val g13_example1312 : (((heap * heap) * heap) * heap) * int

val g13_example1313 : (((heap * heap) * heap) * heap) * int

val g13_example1314 : (((heap * heap) * heap) * heap) * int

val g13_example1315 : (((heap * heap) * heap) * heap) * int

val g13_example1316 : (((heap * heap) * heap) * heap) * int

val g13_example1317 : (((heap * heap) * heap) * heap) * int

val g13_example1318 : (((heap * heap) * heap) * heap) * int

val g13_example1319 : (((heap * heap) * heap) * heap) * int

val g13_example1320 : (((heap * heap) * heap) * heap) * int

val g13_example1321 : (((heap * heap) * heap) * heap) * int

val g13_example1322 : (((heap * heap) * heap) * heap) * int

val g13_example1323 : (((heap * heap) * heap) * heap) * int

val g13_example1324 : (((heap * heap) * heap) * heap) * int

val g13_example1325 : (((heap * heap) * heap) * heap) * int

val g13_example1326 : (((heap * heap) * heap) * heap) * int

val g13_example1327 : (((heap * heap) * heap) * heap) * int

val g13_example1328 : (((heap * heap) * heap) * heap) * int

val g13_example1329 : (((heap * heap) * heap) * heap) * int

val g13_example1330 : (((heap * heap) * heap) * heap) * int

val g13_example1331 : (((heap * heap) * heap) * heap) * int

val g13_example1332 : (((heap * heap) * heap) * heap) * int

val g13_example1333 : (((heap * heap) * heap) * heap) * int

val g13_example1334 : (((heap * heap) * heap) * heap) * int

val g13_example1335 : (((heap * heap) * heap) * heap) * int

val g13_example1336 : (((heap * heap) * heap) * heap) * int

val g13_example1337 : (((heap * heap) * heap) * heap) * int

val g13_example1338 : (((heap * heap) * heap) * heap) * int

val g13_example1339 : (((heap * heap) * heap) * heap) * int

val g13_example1340 : (((heap * heap) * heap) * heap) * int

val g13_example1341 : (((heap * heap) * heap) * heap) * int

val g13_example1342 : (((heap * heap) * heap) * heap) * int

val g13_example1343 : (((heap * heap) * heap) * heap) * int

val g13_example1344 : (((heap * heap) * heap) * heap) * int

val g13_example1345 : (((heap * heap) * heap) * heap) * int

val g13_example1346 : (((heap * heap) * heap) * heap) * int

val g13_example1347 : (((heap * heap) * heap) * heap) * int

val g13_example1348 : (((heap * heap) * heap) * heap) * int

val g13_example1349 : (((heap * heap) * heap) * heap) * int

val g13_example1350 : (((heap * heap) * heap) * heap) * int

val g13_example1351 : (((heap * heap) * heap) * heap) * int

val g13_example1352 : (((heap * heap) * heap) * heap) * int

val g13_example1353 : (((heap * heap) * heap) * heap) * int

val g13_example1354 : (((heap * heap) * heap) * heap) * int

val g13_example1355 : (((heap * heap) * heap) * heap) * int

val g13_example1356 : (((heap * heap) * heap) * heap) * int

val g13_example1357 : (((heap * heap) * heap) * heap) * int

val g13_example1358 : (((heap * heap) * heap) * heap) * int

val g13_example1359 : (((heap * heap) * heap) * heap) * int

val g13_example1360 : (((heap * heap) * heap) * heap) * int

val g13_example1361 : (((heap * heap) * heap) * heap) * int

val g13_example1362 : (((heap * heap) * heap) * heap) * int

val g13_example1363 : (((heap * heap) * heap) * heap) * int

val g13_example1364 : (((heap * heap) * heap) * heap) * int

val g13_example1365 : (((heap * heap) * heap) * heap) * int

val g13_example1366 : (((heap * heap) * heap) * heap) * int

val g13_example1367 : (((heap * heap) * heap) * heap) * int

val g13_example1368 : (((heap * heap) * heap) * heap) * int

val g13_example1369 : (((heap * heap) * heap) * heap) * int

val g13_example1370 : (((heap * heap) * heap) * heap) * int

val g13_example1371 : (((heap * heap) * heap) * heap) * int

val g13_example1372 : (((heap * heap) * heap) * heap) * int

val g13_example1373 : (((heap * heap) * heap) * heap) * int

val g13_example1374 : (((heap * heap) * heap) * heap) * int

val g13_example1375 : (((heap * heap) * heap) * heap) * int

val g13_example1376 : (((heap * heap) * heap) * heap) * int

val g13_example1377 : (((heap * heap) * heap) * heap) * int

val g13_example1378 : (((heap * heap) * heap) * heap) * int

val g13_example1379 : (((heap * heap) * heap) * heap) * int

val g13_example1380 : (((heap * heap) * heap) * heap) * int

val g13_example1381 : (((heap * heap) * heap) * heap) * int

val g13_example1382 : (((heap * heap) * heap) * heap) * int

val g13_example1383 : (((heap * heap) * heap) * heap) * int

val g13_example1384 : (((heap * heap) * heap) * heap) * int

val g13_example1385 : (((heap * heap) * heap) * heap) * int

val g13_example1386 : (((heap * heap) * heap) * heap) * int

val g13_example1387 : (((heap * heap) * heap) * heap) * int

val g13_example1388 : (((heap * heap) * heap) * heap) * int

val g13_example1389 : (((heap * heap) * heap) * heap) * int

val g13_example1390 : (((heap * heap) * heap) * heap) * int

val g13_example1391 : (((heap * heap) * heap) * heap) * int

val g13_example1392 : (((heap * heap) * heap) * heap) * int

val g13_example1393 : (((heap * heap) * heap) * heap) * int

val g13_example1394 : (((heap * heap) * heap) * heap) * int

val g13_example1395 : (((heap * heap) * heap) * heap) * int

val g13_example1396 : (((heap * heap) * heap) * heap) * int

val g13_example1397 : (((heap * heap) * heap) * heap) * int

val g13_example1398 : (((heap * heap) * heap) * heap) * int

val g13_example1399 : (((heap * heap) * heap) * heap) * int

val g13_example1400 : (((heap * heap) * heap) * heap) * int

val g13_example1401 : (((heap * heap) * heap) * heap) * int

val g13_example1402 : (((heap * heap) * heap) * heap) * int

val g13_example1403 : (((heap * heap) * heap) * heap) * int

val g13_example1404 : (((heap * heap) * heap) * heap) * int

val g13_example1405 : (((heap * heap) * heap) * heap) * int

val g13_example1406 : (((heap * heap) * heap) * heap) * int

val g13_example1407 : (((heap * heap) * heap) * heap) * int

val g13_example1408 : (((heap * heap) * heap) * heap) * int

val g13_example1409 : (((heap * heap) * heap) * heap) * int

val g13_example1410 : (((heap * heap) * heap) * heap) * int

val g13_example1411 : (((heap * heap) * heap) * heap) * int

val g13_example1412 : (((heap * heap) * heap) * heap) * int

val g13_example1413 : (((heap * heap) * heap) * heap) * int

val g13_example1414 : (((heap * heap) * heap) * heap) * int

val g13_example1415 : (((heap * heap) * heap) * heap) * int

val g13_example1416 : (((heap * heap) * heap) * heap) * int

val g13_example1417 : (((heap * heap) * heap) * heap) * int

val g13_example1418 : (((heap * heap) * heap) * heap) * int

val g13_example1419 : (((heap * heap) * heap) * heap) * int

val g13_example1420 : (((heap * heap) * heap) * heap) * int

val g13_example1421 : (((heap * heap) * heap) * heap) * int

val g13_example1422 : (((heap * heap) * heap) * heap) * int

val g13_example1423 : (((heap * heap) * heap) * heap) * int

val g13_example1424 : (((heap * heap) * heap) * heap) * int

val g13_example1425 : (((heap * heap) * heap) * heap) * int

val g13_example1426 : (((heap * heap) * heap) * heap) * int

val g13_example1427 : (((heap * heap) * heap) * heap) * int

val g13_example1428 : (((heap * heap) * heap) * heap) * int

val g13_example1429 : (((heap * heap) * heap) * heap) * int

val g13_example1430 : (((heap * heap) * heap) * heap) * int

val g13_example1431 : (((heap * heap) * heap) * heap) * int

val g13_example1432 : (((heap * heap) * heap) * heap) * int

val g13_example1433 : (((heap * heap) * heap) * heap) * int

val g13_example1434 : (((heap * heap) * heap) * heap) * int

val g13_example1435 : (((heap * heap) * heap) * heap) * int

val g13_example1436 : (((heap * heap) * heap) * heap) * int

val g13_example1437 : (((heap * heap) * heap) * heap) * int

val g13_example1438 : (((heap * heap) * heap) * heap) * int

val g13_example1439 : (((heap * heap) * heap) * heap) * int

val g13_example1440 : (((heap * heap) * heap) * heap) * int

val g13_example1441 : (((heap * heap) * heap) * heap) * int

val g13_example1442 : (((heap * heap) * heap) * heap) * int

val g13_example1443 : (((heap * heap) * heap) * heap) * int

val g13_example1444 : (((heap * heap) * heap) * heap) * int

val g13_example1445 : (((heap * heap) * heap) * heap) * int

val g13_example1446 : (((heap * heap) * heap) * heap) * int

val g13_example1447 : (((heap * heap) * heap) * heap) * int

val g13_example1448 : (((heap * heap) * heap) * heap) * int

val g13_example1449 : (((heap * heap) * heap) * heap) * int

val g13_example1450 : (((heap * heap) * heap) * heap) * int

val g13_example1451 : (((heap * heap) * heap) * heap) * int

val g13_example1452 : (((heap * heap) * heap) * heap) * int

val g13_example1453 : (((heap * heap) * heap) * heap) * int

val g13_example1454 : (((heap * heap) * heap) * heap) * int

val g13_example1455 : (((heap * heap) * heap) * heap) * int

val g13_example1456 : (((heap * heap) * heap) * heap) * int

val g13_example1457 : (((heap * heap) * heap) * heap) * int

val g13_example1458 : (((heap * heap) * heap) * heap) * int

val g13_example1459 : (((heap * heap) * heap) * heap) * int

val g13_example1460 : (((heap * heap) * heap) * heap) * int

val g13_example1461 : (((heap * heap) * heap) * heap) * int

val g13_example1462 : (((heap * heap) * heap) * heap) * int

val g13_example1463 : (((heap * heap) * heap) * heap) * int

val g13_example1464 : (((heap * heap) * heap) * heap) * int

val g13_example1465 : (((heap * heap) * heap) * heap) * int

val g13_example1466 : (((heap * heap) * heap) * heap) * int

val g13_example1467 : (((heap * heap) * heap) * heap) * int

val g13_example1468 : (((heap * heap) * heap) * heap) * int

val g13_example1469 : (((heap * heap) * heap) * heap) * int

val g13_example1470 : (((heap * heap) * heap) * heap) * int

val g13_example1471 : (((heap * heap) * heap) * heap) * int

val g13_example1472 : (((heap * heap) * heap) * heap) * int

val g13_example1473 : (((heap * heap) * heap) * heap) * int

val g13_example1474 : (((heap * heap) * heap) * heap) * int

val g13_example1475 : (((heap * heap) * heap) * heap) * int

val g13_example1476 : (((heap * heap) * heap) * heap) * int

val g13_example1477 : (((heap * heap) * heap) * heap) * int

val g13_example1478 : (((heap * heap) * heap) * heap) * int

val g13_example1479 : (((heap * heap) * heap) * heap) * int

val g13_example1480 : (((heap * heap) * heap) * heap) * int

val g13_example1481 : (((heap * heap) * heap) * heap) * int

val g13_example1482 : (((heap * heap) * heap) * heap) * int

val g13_example1483 : (((heap * heap) * heap) * heap) * int

val g13_example1484 : (((heap * heap) * heap) * heap) * int

val g13_example1485 : (((heap * heap) * heap) * heap) * int

val g13_example1486 : (((heap * heap) * heap) * heap) * int

val g13_example1487 : (((heap * heap) * heap) * heap) * int

val g13_example1488 : (((heap * heap) * heap) * heap) * int

val g13_example1489 : (((heap * heap) * heap) * heap) * int

val g13_example1490 : (((heap * heap) * heap) * heap) * int

val g13_example1491 : (((heap * heap) * heap) * heap) * int

val g13_example1492 : (((heap * heap) * heap) * heap) * int

val g13_example1493 : (((heap * heap) * heap) * heap) * int

val g13_example1494 : (((heap * heap) * heap) * heap) * int

val g13_example1495 : (((heap * heap) * heap) * heap) * int

val g13_example1496 : (((heap * heap) * heap) * heap) * int

val g13_example1497 : (((heap * heap) * heap) * heap) * int

val g13_example1498 : (((heap * heap) * heap) * heap) * int

val g13_example1499 : (((heap * heap) * heap) * heap) * int

val g13_example1500 : (((heap * heap) * heap) * heap) * int

val g13_example1501 : (((heap * heap) * heap) * heap) * int

val g13_example1502 : (((heap * heap) * heap) * heap) * int

val g13_example1503 : (((heap * heap) * heap) * heap) * int

val g13_example1504 : (((heap * heap) * heap) * heap) * int

val g13_example1505 : (((heap * heap) * heap) * heap) * int

val g13_example1506 : (((heap * heap) * heap) * heap) * int

val g13_example1507 : (((heap * heap) * heap) * heap) * int

val g13_example1508 : (((heap * heap) * heap) * heap) * int

val g13_example1509 : (((heap * heap) * heap) * heap) * int

val g13_example1510 : (((heap * heap) * heap) * heap) * int

val g13_example1511 : (((heap * heap) * heap) * heap) * int

val g13_example1512 : (((heap * heap) * heap) * heap) * int

val g13_example1513 : (((heap * heap) * heap) * heap) * int

val g13_example1514 : (((heap * heap) * heap) * heap) * int

val g13_example1515 : (((heap * heap) * heap) * heap) * int

val g13_example1516 : (((heap * heap) * heap) * heap) * int

val g13_example1517 : (((heap * heap) * heap) * heap) * int

val g13_example1518 : (((heap * heap) * heap) * heap) * int

val g13_example1519 : (((heap * heap) * heap) * heap) * int

val g13_example1520 : (((heap * heap) * heap) * heap) * int

val g13_example1521 : (((heap * heap) * heap) * heap) * int

val g13_example1522 : (((heap * heap) * heap) * heap) * int

val g13_example1523 : (((heap * heap) * heap) * heap) * int

val g13_example1524 : (((heap * heap) * heap) * heap) * int

val g13_example1525 : (((heap * heap) * heap) * heap) * int

val g13_example1526 : (((heap * heap) * heap) * heap) * int

val g13_example1527 : (((heap * heap) * heap) * heap) * int

val g13_example1528 : (((heap * heap) * heap) * heap) * int

val g13_example1529 : (((heap * heap) * heap) * heap) * int

val g13_example1530 : (((heap * heap) * heap) * heap) * int

val g13_example1531 : (((heap * heap) * heap) * heap) * int

val g13_example1532 : (((heap * heap) * heap) * heap) * int

val g13_example1533 : (((heap * heap) * heap) * heap) * int

val g13_example1534 : (((heap * heap) * heap) * heap) * int

val g13_example1535 : (((heap * heap) * heap) * heap) * int

val g13_example1536 : (((heap * heap) * heap) * heap) * int

val g13_example1537 : (((heap * heap) * heap) * heap) * int

val g13_example1538 : (((heap * heap) * heap) * heap) * int

val g13_example1539 : (((heap * heap) * heap) * heap) * int

val g13_example1540 : (((heap * heap) * heap) * heap) * int

val g13_example1541 : (((heap * heap) * heap) * heap) * int

val g13_example1542 : (((heap * heap) * heap) * heap) * int

val g13_example1543 : (((heap * heap) * heap) * heap) * int

val g13_example1544 : (((heap * heap) * heap) * heap) * int

val g13_example1545 : (((heap * heap) * heap) * heap) * int

val g13_example1546 : (((heap * heap) * heap) * heap) * int

val g13_example1547 : (((heap * heap) * heap) * heap) * int

val g13_example1548 : (((heap * heap) * heap) * heap) * int

val g13_example1549 : (((heap * heap) * heap) * heap) * int

val g13_example1550 : (((heap * heap) * heap) * heap) * int

val g13_example1551 : (((heap * heap) * heap) * heap) * int

val g13_example1552 : (((heap * heap) * heap) * heap) * int

val g13_example1553 : (((heap * heap) * heap) * heap) * int

val g13_example1554 : (((heap * heap) * heap) * heap) * int

val g13_example1555 : (((heap * heap) * heap) * heap) * int

val g13_example1556 : (((heap * heap) * heap) * heap) * int

val g13_example1557 : (((heap * heap) * heap) * heap) * int

val g13_example1558 : (((heap * heap) * heap) * heap) * int

val g13_example1559 : (((heap * heap) * heap) * heap) * int

val g13_example1560 : (((heap * heap) * heap) * heap) * int

val g13_example1561 : (((heap * heap) * heap) * heap) * int

val g13_example1562 : (((heap * heap) * heap) * heap) * int

val g13_example1563 : (((heap * heap) * heap) * heap) * int

val g13_example1564 : (((heap * heap) * heap) * heap) * int

val g13_example1565 : (((heap * heap) * heap) * heap) * int

val g13_example1566 : (((heap * heap) * heap) * heap) * int

val g13_example1567 : (((heap * heap) * heap) * heap) * int

val g13_example1568 : (((heap * heap) * heap) * heap) * int

val g13_example1569 : (((heap * heap) * heap) * heap) * int

val g13_example1570 : (((heap * heap) * heap) * heap) * int

val g13_example1571 : (((heap * heap) * heap) * heap) * int

val g13_example1572 : (((heap * heap) * heap) * heap) * int

val g13_example1573 : (((heap * heap) * heap) * heap) * int

val g13_example1574 : (((heap * heap) * heap) * heap) * int

val g13_example1575 : (((heap * heap) * heap) * heap) * int

val g13_example1576 : (((heap * heap) * heap) * heap) * int

val g13_example1577 : (((heap * heap) * heap) * heap) * int

val g13_example1578 : (((heap * heap) * heap) * heap) * int

val g13_example1579 : (((heap * heap) * heap) * heap) * int

val g13_example1580 : (((heap * heap) * heap) * heap) * int

val g13_example1581 : (((heap * heap) * heap) * heap) * int

val g13_example1582 : (((heap * heap) * heap) * heap) * int

val g13_example1583 : (((heap * heap) * heap) * heap) * int

val g13_example1584 : (((heap * heap) * heap) * heap) * int

val g13_example1585 : (((heap * heap) * heap) * heap) * int

val g13_example1586 : (((heap * heap) * heap) * heap) * int

val g13_example1587 : (((heap * heap) * heap) * heap) * int

val g13_example1588 : (((heap * heap) * heap) * heap) * int

val g13_example1589 : (((heap * heap) * heap) * heap) * int

val g13_example1590 : (((heap * heap) * heap) * heap) * int

val g13_example1591 : (((heap * heap) * heap) * heap) * int

val g13_example1592 : (((heap * heap) * heap) * heap) * int

val g13_example1593 : (((heap * heap) * heap) * heap) * int

val g13_example1594 : (((heap * heap) * heap) * heap) * int

val g13_example1595 : (((heap * heap) * heap) * heap) * int

val g13_example1596 : (((heap * heap) * heap) * heap) * int

val g13_example1597 : (((heap * heap) * heap) * heap) * int

val g13_example1598 : (((heap * heap) * heap) * heap) * int

val g13_example1599 : (((heap * heap) * heap) * heap) * int

val g13_example1600 : (((heap * heap) * heap) * heap) * int

val g13_example1601 : (((heap * heap) * heap) * heap) * int

val g13_example1602 : (((heap * heap) * heap) * heap) * int

val g13_example1603 : (((heap * heap) * heap) * heap) * int

val g13_example1604 : (((heap * heap) * heap) * heap) * int

val g13_example1605 : (((heap * heap) * heap) * heap) * int

val g13_example1606 : (((heap * heap) * heap) * heap) * int

val g13_example1607 : (((heap * heap) * heap) * heap) * int

val g13_example1608 : (((heap * heap) * heap) * heap) * int

val g13_example1609 : (((heap * heap) * heap) * heap) * int

val g13_example1610 : (((heap * heap) * heap) * heap) * int

val g13_example1611 : (((heap * heap) * heap) * heap) * int

val g13_example1612 : (((heap * heap) * heap) * heap) * int

val g13_example1613 : (((heap * heap) * heap) * heap) * int

val g13_example1614 : (((heap * heap) * heap) * heap) * int

val g13_example1615 : (((heap * heap) * heap) * heap) * int

val g13_example1616 : (((heap * heap) * heap) * heap) * int

val g13_example1617 : (((heap * heap) * heap) * heap) * int

val g13_example1618 : (((heap * heap) * heap) * heap) * int

val g13_example1619 : (((heap * heap) * heap) * heap) * int

val g13_example1620 : (((heap * heap) * heap) * heap) * int

val g13_example1621 : (((heap * heap) * heap) * heap) * int

val g13_example1622 : (((heap * heap) * heap) * heap) * int

val g13_example1623 : (((heap * heap) * heap) * heap) * int

val g13_example1624 : (((heap * heap) * heap) * heap) * int

val g13_example1625 : (((heap * heap) * heap) * heap) * int

val g13_example1626 : (((heap * heap) * heap) * heap) * int

val g13_example1627 : (((heap * heap) * heap) * heap) * int

val g13_example1628 : (((heap * heap) * heap) * heap) * int

val g13_example1629 : (((heap * heap) * heap) * heap) * int

val g13_example1630 : (((heap * heap) * heap) * heap) * int

val g13_example1631 : (((heap * heap) * heap) * heap) * int

val g13_example1632 : (((heap * heap) * heap) * heap) * int

val g13_example1633 : (((heap * heap) * heap) * heap) * int

val g13_example1634 : (((heap * heap) * heap) * heap) * int

val g13_example1635 : (((heap * heap) * heap) * heap) * int

val g13_example1636 : (((heap * heap) * heap) * heap) * int

val g13_example1637 : (((heap * heap) * heap) * heap) * int

val g13_example1638 : (((heap * heap) * heap) * heap) * int

val g13_example1639 : (((heap * heap) * heap) * heap) * int

val g13_example1640 : (((heap * heap) * heap) * heap) * int

val g13_example1641 : (((heap * heap) * heap) * heap) * int

val g13_example1642 : (((heap * heap) * heap) * heap) * int

val g13_example1643 : (((heap * heap) * heap) * heap) * int

val g13_example1644 : (((heap * heap) * heap) * heap) * int

val g13_example1645 : (((heap * heap) * heap) * heap) * int

val g13_example1646 : (((heap * heap) * heap) * heap) * int

val g13_example1647 : (((heap * heap) * heap) * heap) * int

val g13_example1648 : (((heap * heap) * heap) * heap) * int

val g13_example1649 : (((heap * heap) * heap) * heap) * int

val g13_example1650 : (((heap * heap) * heap) * heap) * int

val g13_example1651 : (((heap * heap) * heap) * heap) * int

val g13_example1652 : (((heap * heap) * heap) * heap) * int

val g13_example1653 : (((heap * heap) * heap) * heap) * int

val g13_example1654 : (((heap * heap) * heap) * heap) * int

val g13_example1655 : (((heap * heap) * heap) * heap) * int

val g13_example1656 : (((heap * heap) * heap) * heap) * int

val g13_example1657 : (((heap * heap) * heap) * heap) * int

val g13_example1658 : (((heap * heap) * heap) * heap) * int

val g13_example1659 : (((heap * heap) * heap) * heap) * int

val g13_example1660 : (((heap * heap) * heap) * heap) * int

val g13_example1661 : (((heap * heap) * heap) * heap) * int

val g13_example1662 : (((heap * heap) * heap) * heap) * int

val g13_example1663 : (((heap * heap) * heap) * heap) * int

val g13_example1664 : (((heap * heap) * heap) * heap) * int

val g13_example1665 : (((heap * heap) * heap) * heap) * int

val g13_example1666 : (((heap * heap) * heap) * heap) * int

val g13_example1667 : (((heap * heap) * heap) * heap) * int

val g13_example1668 : (((heap * heap) * heap) * heap) * int

val g13_example1669 : (((heap * heap) * heap) * heap) * int

val g13_example1670 : (((heap * heap) * heap) * heap) * int

val g13_example1671 : (((heap * heap) * heap) * heap) * int

val g13_example1672 : (((heap * heap) * heap) * heap) * int

val g13_example1673 : (((heap * heap) * heap) * heap) * int

val g13_example1674 : (((heap * heap) * heap) * heap) * int

val g13_example1675 : (((heap * heap) * heap) * heap) * int

val g13_example1676 : (((heap * heap) * heap) * heap) * int

val g13_example1677 : (((heap * heap) * heap) * heap) * int

val g13_example1678 : (((heap * heap) * heap) * heap) * int

val g13_example1679 : (((heap * heap) * heap) * heap) * int

val g13_example1680 : (((heap * heap) * heap) * heap) * int

val g13_example1681 : (((heap * heap) * heap) * heap) * int

val g13_example1682 : (((heap * heap) * heap) * heap) * int

val g13_example1683 : (((heap * heap) * heap) * heap) * int

val g13_example1684 : (((heap * heap) * heap) * heap) * int

val g13_example1685 : (((heap * heap) * heap) * heap) * int

val g13_example1686 : (((heap * heap) * heap) * heap) * int

val g13_example1687 : (((heap * heap) * heap) * heap) * int

val g13_example1688 : (((heap * heap) * heap) * heap) * int

val g13_example1689 : (((heap * heap) * heap) * heap) * int

val g13_example1690 : (((heap * heap) * heap) * heap) * int

val g13_example1691 : (((heap * heap) * heap) * heap) * int

val g13_example1692 : (((heap * heap) * heap) * heap) * int

val g13_example1693 : (((heap * heap) * heap) * heap) * int

val g13_example1694 : (((heap * heap) * heap) * heap) * int

val g13_example1695 : (((heap * heap) * heap) * heap) * int

val g13_example1696 : (((heap * heap) * heap) * heap) * int

val g13_example1697 : (((heap * heap) * heap) * heap) * int

val g13_example1698 : (((heap * heap) * heap) * heap) * int

val g13_example1699 : (((heap * heap) * heap) * heap) * int

val g13_example1700 : (((heap * heap) * heap) * heap) * int

val g13_example1701 : (((heap * heap) * heap) * heap) * int

val g13_example1702 : (((heap * heap) * heap) * heap) * int

val g13_example1703 : (((heap * heap) * heap) * heap) * int

val g13_example1704 : (((heap * heap) * heap) * heap) * int

val g13_example1705 : (((heap * heap) * heap) * heap) * int

val g13_example1706 : (((heap * heap) * heap) * heap) * int

val g13_example1707 : (((heap * heap) * heap) * heap) * int

val g13_example1708 : (((heap * heap) * heap) * heap) * int

val g13_example1709 : (((heap * heap) * heap) * heap) * int

val g13_example1710 : (((heap * heap) * heap) * heap) * int

val g13_example1711 : (((heap * heap) * heap) * heap) * int

val g13_example1712 : (((heap * heap) * heap) * heap) * int

val g13_example1713 : (((heap * heap) * heap) * heap) * int

val g13_example1714 : (((heap * heap) * heap) * heap) * int

val g13_example1715 : (((heap * heap) * heap) * heap) * int

val g13_example1716 : (((heap * heap) * heap) * heap) * int

val g13_example1717 : (((heap * heap) * heap) * heap) * int

val g13_example1718 : (((heap * heap) * heap) * heap) * int

val g13_example1719 : (((heap * heap) * heap) * heap) * int

val g13_example1720 : (((heap * heap) * heap) * heap) * int

val g13_example1721 : (((heap * heap) * heap) * heap) * int

val g13_example1722 : (((heap * heap) * heap) * heap) * int

val g13_example1723 : (((heap * heap) * heap) * heap) * int

val g13_example1724 : (((heap * heap) * heap) * heap) * int

val g13_example1725 : (((heap * heap) * heap) * heap) * int

val g13_example1726 : (((heap * heap) * heap) * heap) * int

val g13_example1727 : (((heap * heap) * heap) * heap) * int

val g13_example1728 : (((heap * heap) * heap) * heap) * int

val g13_example1729 : (((heap * heap) * heap) * heap) * int

val g13_example1730 : (((heap * heap) * heap) * heap) * int

val g13_example1731 : (((heap * heap) * heap) * heap) * int

val g13_example1732 : (((heap * heap) * heap) * heap) * int

val g13_example1733 : (((heap * heap) * heap) * heap) * int

val g13_example1734 : (((heap * heap) * heap) * heap) * int

val g13_example1735 : (((heap * heap) * heap) * heap) * int

val g13_example1736 : (((heap * heap) * heap) * heap) * int

val g13_example1737 : (((heap * heap) * heap) * heap) * int

val g13_example1738 : (((heap * heap) * heap) * heap) * int

val g13_example1739 : (((heap * heap) * heap) * heap) * int

val g13_example1740 : (((heap * heap) * heap) * heap) * int

val g13_example1741 : (((heap * heap) * heap) * heap) * int

val g13_example1742 : (((heap * heap) * heap) * heap) * int

val g13_example1743 : (((heap * heap) * heap) * heap) * int

val g13_example1744 : (((heap * heap) * heap) * heap) * int

val g13_example1745 : (((heap * heap) * heap) * heap) * int

val g13_example1746 : (((heap * heap) * heap) * heap) * int

val g13_example1747 : (((heap * heap) * heap) * heap) * int

val g13_example1748 : (((heap * heap) * heap) * heap) * int

val g13_example1749 : (((heap * heap) * heap) * heap) * int

val g13_example1750 : (((heap * heap) * heap) * heap) * int

val g13_example1751 : (((heap * heap) * heap) * heap) * int

val g13_example1752 : (((heap * heap) * heap) * heap) * int

val g13_example1753 : (((heap * heap) * heap) * heap) * int

val g13_example1754 : (((heap * heap) * heap) * heap) * int

val g13_example1755 : (((heap * heap) * heap) * heap) * int

val g13_example1756 : (((heap * heap) * heap) * heap) * int

val g13_example1757 : (((heap * heap) * heap) * heap) * int

val g13_example1758 : (((heap * heap) * heap) * heap) * int

val g13_example1759 : (((heap * heap) * heap) * heap) * int

val g13_example1760 : (((heap * heap) * heap) * heap) * int

val g13_example1761 : (((heap * heap) * heap) * heap) * int

val g13_example1762 : (((heap * heap) * heap) * heap) * int

val g13_example1763 : (((heap * heap) * heap) * heap) * int

val g13_example1764 : (((heap * heap) * heap) * heap) * int

val g13_example1765 : (((heap * heap) * heap) * heap) * int

val g13_example1766 : (((heap * heap) * heap) * heap) * int

val g13_example1767 : (((heap * heap) * heap) * heap) * int

val g13_example1768 : (((heap * heap) * heap) * heap) * int

val g13_example1769 : (((heap * heap) * heap) * heap) * int

val g13_example1770 : (((heap * heap) * heap) * heap) * int

val g13_example1771 : (((heap * heap) * heap) * heap) * int

val g13_example1772 : (((heap * heap) * heap) * heap) * int

val g13_example1773 : (((heap * heap) * heap) * heap) * int

val g13_example1774 : (((heap * heap) * heap) * heap) * int

val g13_example1775 : (((heap * heap) * heap) * heap) * int

val g13_example1776 : (((heap * heap) * heap) * heap) * int

val g13_example1777 : (((heap * heap) * heap) * heap) * int

val g13_example1778 : (((heap * heap) * heap) * heap) * int

val g13_example1779 : (((heap * heap) * heap) * heap) * int

val g13_example1780 : (((heap * heap) * heap) * heap) * int

val g13_example1781 : (((heap * heap) * heap) * heap) * int

val g13_example1782 : (((heap * heap) * heap) * heap) * int

val g13_example1783 : (((heap * heap) * heap) * heap) * int

val g13_example1784 : (((heap * heap) * heap) * heap) * int

val g13_example1785 : (((heap * heap) * heap) * heap) * int

val g13_example1786 : (((heap * heap) * heap) * heap) * int

val g13_example1787 : (((heap * heap) * heap) * heap) * int

val g13_example1788 : (((heap * heap) * heap) * heap) * int

val g13_example1789 : (((heap * heap) * heap) * heap) * int

val g13_example1790 : (((heap * heap) * heap) * heap) * int

val g13_example1791 : (((heap * heap) * heap) * heap) * int

val g13_example1792 : (((heap * heap) * heap) * heap) * int

val g13_example1793 : (((heap * heap) * heap) * heap) * int

val g13_example1794 : (((heap * heap) * heap) * heap) * int

val g13_example1795 : (((heap * heap) * heap) * heap) * int

val g13_example1796 : (((heap * heap) * heap) * heap) * int

val g13_example1797 : (((heap * heap) * heap) * heap) * int

val g13_example1798 : (((heap * heap) * heap) * heap) * int

val g13_example1799 : (((heap * heap) * heap) * heap) * int

val g13_example1800 : (((heap * heap) * heap) * heap) * int

val g13_example1801 : (((heap * heap) * heap) * heap) * int

val g13_example1802 : (((heap * heap) * heap) * heap) * int

val g13_example1803 : (((heap * heap) * heap) * heap) * int

val g13_example1804 : (((heap * heap) * heap) * heap) * int

val g13_example1805 : (((heap * heap) * heap) * heap) * int

val g13_example1806 : (((heap * heap) * heap) * heap) * int

val g13_example1807 : (((heap * heap) * heap) * heap) * int

val g13_example1808 : (((heap * heap) * heap) * heap) * int

val g13_example1809 : (((heap * heap) * heap) * heap) * int

val g13_example1810 : (((heap * heap) * heap) * heap) * int

val g13_example1811 : (((heap * heap) * heap) * heap) * int

val g13_example1812 : (((heap * heap) * heap) * heap) * int

val g13_example1813 : (((heap * heap) * heap) * heap) * int

val g13_example1814 : (((heap * heap) * heap) * heap) * int

val g13_example1815 : (((heap * heap) * heap) * heap) * int

val g13_example1816 : (((heap * heap) * heap) * heap) * int

val g13_example1817 : (((heap * heap) * heap) * heap) * int

val g13_example1818 : (((heap * heap) * heap) * heap) * int

val g13_example1819 : (((heap * heap) * heap) * heap) * int

val g13_example1820 : (((heap * heap) * heap) * heap) * int

val g13_example1821 : (((heap * heap) * heap) * heap) * int

val g13_example1822 : (((heap * heap) * heap) * heap) * int

val g13_example1823 : (((heap * heap) * heap) * heap) * int

val g13_example1824 : (((heap * heap) * heap) * heap) * int

val g13_example1825 : (((heap * heap) * heap) * heap) * int

val g13_example1826 : (((heap * heap) * heap) * heap) * int

val g13_example1827 : (((heap * heap) * heap) * heap) * int

val g13_example1828 : (((heap * heap) * heap) * heap) * int

val g13_example1829 : (((heap * heap) * heap) * heap) * int

val g13_example1830 : (((heap * heap) * heap) * heap) * int

val g13_example1831 : (((heap * heap) * heap) * heap) * int

val g13_example1832 : (((heap * heap) * heap) * heap) * int

val g13_example1833 : (((heap * heap) * heap) * heap) * int

val g13_example1834 : (((heap * heap) * heap) * heap) * int

val g13_example1835 : (((heap * heap) * heap) * heap) * int

val g13_example1836 : (((heap * heap) * heap) * heap) * int

val g13_example1837 : (((heap * heap) * heap) * heap) * int

val g13_example1838 : (((heap * heap) * heap) * heap) * int

val g13_example1839 : (((heap * heap) * heap) * heap) * int

val g13_example1840 : (((heap * heap) * heap) * heap) * int

val g13_example1841 : (((heap * heap) * heap) * heap) * int

val g13_example1842 : (((heap * heap) * heap) * heap) * int

val g13_example1843 : (((heap * heap) * heap) * heap) * int

val g13_example1844 : (((heap * heap) * heap) * heap) * int

val g13_example1845 : (((heap * heap) * heap) * heap) * int

val g13_example1846 : (((heap * heap) * heap) * heap) * int

val g13_example1847 : (((heap * heap) * heap) * heap) * int

val g13_example1848 : (((heap * heap) * heap) * heap) * int

val g13_example1849 : (((heap * heap) * heap) * heap) * int

val g13_example1850 : (((heap * heap) * heap) * heap) * int

val g13_example1851 : (((heap * heap) * heap) * heap) * int

val g13_example1852 : (((heap * heap) * heap) * heap) * int

val g13_example1853 : (((heap * heap) * heap) * heap) * int

val g13_example1854 : (((heap * heap) * heap) * heap) * int

val g13_example1855 : (((heap * heap) * heap) * heap) * int

val g13_example1856 : (((heap * heap) * heap) * heap) * int

val g13_example1857 : (((heap * heap) * heap) * heap) * int

val g13_example1858 : (((heap * heap) * heap) * heap) * int

val g13_example1859 : (((heap * heap) * heap) * heap) * int

val g13_example1860 : (((heap * heap) * heap) * heap) * int

val g13_example1861 : (((heap * heap) * heap) * heap) * int

val g13_example1862 : (((heap * heap) * heap) * heap) * int

val g13_example1863 : (((heap * heap) * heap) * heap) * int

val g13_example1864 : (((heap * heap) * heap) * heap) * int

val g13_example1865 : (((heap * heap) * heap) * heap) * int

val g13_example1866 : (((heap * heap) * heap) * heap) * int

val g13_example1867 : (((heap * heap) * heap) * heap) * int

val g13_example1868 : (((heap * heap) * heap) * heap) * int

val g13_example1869 : (((heap * heap) * heap) * heap) * int

val g13_example1870 : (((heap * heap) * heap) * heap) * int

val g13_example1871 : (((heap * heap) * heap) * heap) * int

val g13_example1872 : (((heap * heap) * heap) * heap) * int

val g13_example1873 : (((heap * heap) * heap) * heap) * int

val g13_example1874 : (((heap * heap) * heap) * heap) * int

val g13_example1875 : (((heap * heap) * heap) * heap) * int

val g13_example1876 : (((heap * heap) * heap) * heap) * int

val g13_example1877 : (((heap * heap) * heap) * heap) * int

val g13_example1878 : (((heap * heap) * heap) * heap) * int

val g13_example1879 : (((heap * heap) * heap) * heap) * int

val g13_example1880 : (((heap * heap) * heap) * heap) * int

val g13_example1881 : (((heap * heap) * heap) * heap) * int

val g13_example1882 : (((heap * heap) * heap) * heap) * int

val g13_example1883 : (((heap * heap) * heap) * heap) * int

val g13_example1884 : (((heap * heap) * heap) * heap) * int

val g13_example1885 : (((heap * heap) * heap) * heap) * int

val g13_example1886 : (((heap * heap) * heap) * heap) * int

val g13_example1887 : (((heap * heap) * heap) * heap) * int

val g13_example1888 : (((heap * heap) * heap) * heap) * int

val g13_example1889 : (((heap * heap) * heap) * heap) * int

val g13_example1890 : (((heap * heap) * heap) * heap) * int

val g13_example1891 : (((heap * heap) * heap) * heap) * int

val g13_example1892 : (((heap * heap) * heap) * heap) * int

val g13_example1893 : (((heap * heap) * heap) * heap) * int

val g13_example1894 : (((heap * heap) * heap) * heap) * int

val g13_example1895 : (((heap * heap) * heap) * heap) * int

val g13_example1896 : (((heap * heap) * heap) * heap) * int

val g13_example1897 : (((heap * heap) * heap) * heap) * int

val g13_example1898 : (((heap * heap) * heap) * heap) * int

val g13_example1899 : (((heap * heap) * heap) * heap) * int

val g13_example1900 : (((heap * heap) * heap) * heap) * int

val g13_example1901 : (((heap * heap) * heap) * heap) * int

val g13_example1902 : (((heap * heap) * heap) * heap) * int

val g13_example1903 : (((heap * heap) * heap) * heap) * int

val g13_example1904 : (((heap * heap) * heap) * heap) * int

val g13_example1905 : (((heap * heap) * heap) * heap) * int

val g13_example1906 : (((heap * heap) * heap) * heap) * int

val g13_example1907 : (((heap * heap) * heap) * heap) * int

val g13_example1908 : (((heap * heap) * heap) * heap) * int

val g13_example1909 : (((heap * heap) * heap) * heap) * int

val g13_example1910 : (((heap * heap) * heap) * heap) * int

val g13_example1911 : (((heap * heap) * heap) * heap) * int

val g13_example1912 : (((heap * heap) * heap) * heap) * int

val g13_example1913 : (((heap * heap) * heap) * heap) * int

val g13_example1914 : (((heap * heap) * heap) * heap) * int

val g13_example1915 : (((heap * heap) * heap) * heap) * int

val g13_example1916 : (((heap * heap) * heap) * heap) * int

val g13_example1917 : (((heap * heap) * heap) * heap) * int

val g13_example1918 : (((heap * heap) * heap) * heap) * int

val g13_example1919 : (((heap * heap) * heap) * heap) * int

val g13_example1920 : (((heap * heap) * heap) * heap) * int

val g13_example1921 : (((heap * heap) * heap) * heap) * int

val g13_example1922 : (((heap * heap) * heap) * heap) * int

val g13_example1923 : (((heap * heap) * heap) * heap) * int

val g13_example1924 : (((heap * heap) * heap) * heap) * int

val g13_example1925 : (((heap * heap) * heap) * heap) * int

val g13_example1926 : (((heap * heap) * heap) * heap) * int

val g13_example1927 : (((heap * heap) * heap) * heap) * int

val g13_example1928 : (((heap * heap) * heap) * heap) * int

val g13_example1929 : (((heap * heap) * heap) * heap) * int

val g13_example1930 : (((heap * heap) * heap) * heap) * int

val g13_example1931 : (((heap * heap) * heap) * heap) * int

val g13_example1932 : (((heap * heap) * heap) * heap) * int

val g13_example1933 : (((heap * heap) * heap) * heap) * int

val g13_example1934 : (((heap * heap) * heap) * heap) * int

val g13_example1935 : (((heap * heap) * heap) * heap) * int

val g13_example1936 : (((heap * heap) * heap) * heap) * int

val g13_example1937 : (((heap * heap) * heap) * heap) * int

val g13_example1938 : (((heap * heap) * heap) * heap) * int

val g13_example1939 : (((heap * heap) * heap) * heap) * int

val g13_example1940 : (((heap * heap) * heap) * heap) * int

val g13_example1941 : (((heap * heap) * heap) * heap) * int

val g13_example1942 : (((heap * heap) * heap) * heap) * int

val g13_example1943 : (((heap * heap) * heap) * heap) * int

val g13_example1944 : (((heap * heap) * heap) * heap) * int

val g13_example1945 : (((heap * heap) * heap) * heap) * int

val g13_example1946 : (((heap * heap) * heap) * heap) * int

val g13_example1947 : (((heap * heap) * heap) * heap) * int

val g13_example1948 : (((heap * heap) * heap) * heap) * int

val g13_example1949 : (((heap * heap) * heap) * heap) * int

val g13_example1950 : (((heap * heap) * heap) * heap) * int

val g13_example1951 : (((heap * heap) * heap) * heap) * int

val g13_example1952 : (((heap * heap) * heap) * heap) * int

val g13_example1953 : (((heap * heap) * heap) * heap) * int

val g13_example1954 : (((heap * heap) * heap) * heap) * int

val g13_example1955 : (((heap * heap) * heap) * heap) * int

val g13_example1956 : (((heap * heap) * heap) * heap) * int

val g13_example1957 : (((heap * heap) * heap) * heap) * int

val g13_example1958 : (((heap * heap) * heap) * heap) * int

val g13_example1959 : (((heap * heap) * heap) * heap) * int

val g13_example1960 : (((heap * heap) * heap) * heap) * int

val g13_example1961 : (((heap * heap) * heap) * heap) * int

val g13_example1962 : (((heap * heap) * heap) * heap) * int

val g13_example1963 : (((heap * heap) * heap) * heap) * int

val g13_example1964 : (((heap * heap) * heap) * heap) * int

val g13_example1965 : (((heap * heap) * heap) * heap) * int

val g13_example1966 : (((heap * heap) * heap) * heap) * int

val g13_example1967 : (((heap * heap) * heap) * heap) * int

val g13_example1968 : (((heap * heap) * heap) * heap) * int

val g13_example1969 : (((heap * heap) * heap) * heap) * int

val g13_example1970 : (((heap * heap) * heap) * heap) * int

val g13_example1971 : (((heap * heap) * heap) * heap) * int

val g13_example1972 : (((heap * heap) * heap) * heap) * int

val g13_example1973 : (((heap * heap) * heap) * heap) * int

val g13_example1974 : (((heap * heap) * heap) * heap) * int

val g13_example1975 : (((heap * heap) * heap) * heap) * int

val g13_example1976 : (((heap * heap) * heap) * heap) * int

val g13_example1977 : (((heap * heap) * heap) * heap) * int

val g13_example1978 : (((heap * heap) * heap) * heap) * int

val g13_example1979 : (((heap * heap) * heap) * heap) * int

val g13_example1980 : (((heap * heap) * heap) * heap) * int

val g13_example1981 : (((heap * heap) * heap) * heap) * int

val g13_example1982 : (((heap * heap) * heap) * heap) * int

val g13_example1983 : (((heap * heap) * heap) * heap) * int

val g13_example1984 : (((heap * heap) * heap) * heap) * int

val g13_example1985 : (((heap * heap) * heap) * heap) * int

val g13_example1986 : (((heap * heap) * heap) * heap) * int

val g13_example1987 : (((heap * heap) * heap) * heap) * int

val g13_example1988 : (((heap * heap) * heap) * heap) * int

val g13_example1989 : (((heap * heap) * heap) * heap) * int

val g13_example1990 : (((heap * heap) * heap) * heap) * int

val g13_example1991 : (((heap * heap) * heap) * heap) * int

val g13_example1992 : (((heap * heap) * heap) * heap) * int

val g13_example1993 : (((heap * heap) * heap) * heap) * int

val g13_example1994 : (((heap * heap) * heap) * heap) * int

val g13_example1995 : (((heap * heap) * heap) * heap) * int

val g13_example1996 : (((heap * heap) * heap) * heap) * int

val g13_example1997 : (((heap * heap) * heap) * heap) * int

val g13_example1998 : (((heap * heap) * heap) * heap) * int

val g13_example1999 : (((heap * heap) * heap) * heap) * int

val g13_example2000 : (((heap * heap) * heap) * heap) * int

val g13_example2001 : (((heap * heap) * heap) * heap) * int

val g13_example2002 : (((heap * heap) * heap) * heap) * int

val g13_example2003 : (((heap * heap) * heap) * heap) * int

val g13_example2004 : (((heap * heap) * heap) * heap) * int

val g13_example2005 : (((heap * heap) * heap) * heap) * int

val g13_example2006 : (((heap * heap) * heap) * heap) * int

val g13_example2007 : (((heap * heap) * heap) * heap) * int

val g13_example2008 : (((heap * heap) * heap) * heap) * int

val g13_example2009 : (((heap * heap) * heap) * heap) * int

val g13_example2010 : (((heap * heap) * heap) * heap) * int

val g13_example2011 : (((heap * heap) * heap) * heap) * int

val g13_example2012 : (((heap * heap) * heap) * heap) * int

val g13_example2013 : (((heap * heap) * heap) * heap) * int

val g13_example2014 : (((heap * heap) * heap) * heap) * int

val g13_example2015 : (((heap * heap) * heap) * heap) * int

val g13_example2016 : (((heap * heap) * heap) * heap) * int

val g13_example2017 : (((heap * heap) * heap) * heap) * int

val g13_example2018 : (((heap * heap) * heap) * heap) * int

val g13_example2019 : (((heap * heap) * heap) * heap) * int

val g13_example2020 : (((heap * heap) * heap) * heap) * int

val g13_example2021 : (((heap * heap) * heap) * heap) * int

val g13_example2022 : (((heap * heap) * heap) * heap) * int

val g13_example2023 : (((heap * heap) * heap) * heap) * int

val g13_example2024 : (((heap * heap) * heap) * heap) * int

val g13_example2025 : (((heap * heap) * heap) * heap) * int

val g13_example2026 : (((heap * heap) * heap) * heap) * int

val g13_example2027 : (((heap * heap) * heap) * heap) * int

val g13_example2028 : (((heap * heap) * heap) * heap) * int

val g13_example2029 : (((heap * heap) * heap) * heap) * int

val g13_example2030 : (((heap * heap) * heap) * heap) * int

val g13_example2031 : (((heap * heap) * heap) * heap) * int

val g13_example2032 : (((heap * heap) * heap) * heap) * int

val g13_example2033 : (((heap * heap) * heap) * heap) * int

val g13_example2034 : (((heap * heap) * heap) * heap) * int

val g13_example2035 : (((heap * heap) * heap) * heap) * int

val g13_example2036 : (((heap * heap) * heap) * heap) * int

val g13_example2037 : (((heap * heap) * heap) * heap) * int

val g13_example2038 : (((heap * heap) * heap) * heap) * int

val g13_example2039 : (((heap * heap) * heap) * heap) * int

val g13_example2040 : (((heap * heap) * heap) * heap) * int

val g13_example2041 : (((heap * heap) * heap) * heap) * int

val g13_example2042 : (((heap * heap) * heap) * heap) * int

val g13_example2043 : (((heap * heap) * heap) * heap) * int

val g13_example2044 : (((heap * heap) * heap) * heap) * int

val g13_example2045 : (((heap * heap) * heap) * heap) * int

val g13_example2046 : (((heap * heap) * heap) * heap) * int

val g13_example2047 : (((heap * heap) * heap) * heap) * int

val g13_example2048 : (((heap * heap) * heap) * heap) * int

val g13_example2049 : (((heap * heap) * heap) * heap) * int

val g13_example2050 : (((heap * heap) * heap) * heap) * int

val g13_example2051 : (((heap * heap) * heap) * heap) * int

val g13_example2052 : (((heap * heap) * heap) * heap) * int

val g13_example2053 : (((heap * heap) * heap) * heap) * int

val g13_example2054 : (((heap * heap) * heap) * heap) * int

val g13_example2055 : (((heap * heap) * heap) * heap) * int

val g13_example2056 : (((heap * heap) * heap) * heap) * int

val g13_example2057 : (((heap * heap) * heap) * heap) * int

val g13_example2058 : (((heap * heap) * heap) * heap) * int

val g13_example2059 : (((heap * heap) * heap) * heap) * int

val g13_example2060 : (((heap * heap) * heap) * heap) * int

val g13_example2061 : (((heap * heap) * heap) * heap) * int

val g13_example2062 : (((heap * heap) * heap) * heap) * int

val g13_example2063 : (((heap * heap) * heap) * heap) * int

val g13_example2064 : (((heap * heap) * heap) * heap) * int

val g13_example2065 : (((heap * heap) * heap) * heap) * int

val g13_example2066 : (((heap * heap) * heap) * heap) * int

val g13_example2067 : (((heap * heap) * heap) * heap) * int

val g13_example2068 : (((heap * heap) * heap) * heap) * int

val g13_example2069 : (((heap * heap) * heap) * heap) * int

val g13_example2070 : (((heap * heap) * heap) * heap) * int

val g13_example2071 : (((heap * heap) * heap) * heap) * int

val g13_example2072 : (((heap * heap) * heap) * heap) * int

val g13_example2073 : (((heap * heap) * heap) * heap) * int

val g13_example2074 : (((heap * heap) * heap) * heap) * int

val g13_example2075 : (((heap * heap) * heap) * heap) * int

val g13_example2076 : (((heap * heap) * heap) * heap) * int

val g13_example2077 : (((heap * heap) * heap) * heap) * int

val g13_example2078 : (((heap * heap) * heap) * heap) * int

val g13_example2079 : (((heap * heap) * heap) * heap) * int

val g13_example2080 : (((heap * heap) * heap) * heap) * int

val g13_example2081 : (((heap * heap) * heap) * heap) * int

val g13_example2082 : (((heap * heap) * heap) * heap) * int

val g13_example2083 : (((heap * heap) * heap) * heap) * int

val g13_example2084 : (((heap * heap) * heap) * heap) * int

val g13_example2085 : (((heap * heap) * heap) * heap) * int

val g13_example2086 : (((heap * heap) * heap) * heap) * int

val g13_example2087 : (((heap * heap) * heap) * heap) * int

val g13_example2088 : (((heap * heap) * heap) * heap) * int

val g13_example2089 : (((heap * heap) * heap) * heap) * int

val g13_example2090 : (((heap * heap) * heap) * heap) * int

val g13_example2091 : (((heap * heap) * heap) * heap) * int

val g13_example2092 : (((heap * heap) * heap) * heap) * int

val g13_example2093 : (((heap * heap) * heap) * heap) * int

val g13_example2094 : (((heap * heap) * heap) * heap) * int

val g13_example2095 : (((heap * heap) * heap) * heap) * int

val g13_example2096 : (((heap * heap) * heap) * heap) * int

val g13_example2097 : (((heap * heap) * heap) * heap) * int

val g13_example2098 : (((heap * heap) * heap) * heap) * int

val g13_example2099 : (((heap * heap) * heap) * heap) * int

val g13_example2100 : (((heap * heap) * heap) * heap) * int

val g13_example2101 : (((heap * heap) * heap) * heap) * int

val g13_example2102 : (((heap * heap) * heap) * heap) * int

val g13_example2103 : (((heap * heap) * heap) * heap) * int

val g13_example2104 : (((heap * heap) * heap) * heap) * int

val g13_example2105 : (((heap * heap) * heap) * heap) * int

val g13_example2106 : (((heap * heap) * heap) * heap) * int

val g13_example2107 : (((heap * heap) * heap) * heap) * int

val g13_example2108 : (((heap * heap) * heap) * heap) * int

val g13_example2109 : (((heap * heap) * heap) * heap) * int

val g13_example2110 : (((heap * heap) * heap) * heap) * int

val g13_example2111 : (((heap * heap) * heap) * heap) * int

val g13_example2112 : (((heap * heap) * heap) * heap) * int

val g13_example2113 : (((heap * heap) * heap) * heap) * int

val g13_example2114 : (((heap * heap) * heap) * heap) * int

val g13_example2115 : (((heap * heap) * heap) * heap) * int

val g13_example2116 : (((heap * heap) * heap) * heap) * int

val g13_example2117 : (((heap * heap) * heap) * heap) * int

val g13_example2118 : (((heap * heap) * heap) * heap) * int

val g13_example2119 : (((heap * heap) * heap) * heap) * int

val g13_example2120 : (((heap * heap) * heap) * heap) * int

val g13_example2121 : (((heap * heap) * heap) * heap) * int

val g13_example2122 : (((heap * heap) * heap) * heap) * int

val g13_example2123 : (((heap * heap) * heap) * heap) * int

val g13_example2124 : (((heap * heap) * heap) * heap) * int

val g13_example2125 : (((heap * heap) * heap) * heap) * int

val g13_example2126 : (((heap * heap) * heap) * heap) * int

val g13_example2127 : (((heap * heap) * heap) * heap) * int

val g13_example2128 : (((heap * heap) * heap) * heap) * int

val g13_example2129 : (((heap * heap) * heap) * heap) * int

val g13_example2130 : (((heap * heap) * heap) * heap) * int

val g13_example2131 : (((heap * heap) * heap) * heap) * int

val g13_example2132 : (((heap * heap) * heap) * heap) * int

val g13_example2133 : (((heap * heap) * heap) * heap) * int

val g13_example2134 : (((heap * heap) * heap) * heap) * int

val g13_example2135 : (((heap * heap) * heap) * heap) * int

val g13_example2136 : (((heap * heap) * heap) * heap) * int

val g13_example2137 : (((heap * heap) * heap) * heap) * int

val g13_example2138 : (((heap * heap) * heap) * heap) * int

val g13_example2139 : (((heap * heap) * heap) * heap) * int

val g13_example2140 : (((heap * heap) * heap) * heap) * int

val g13_example2141 : (((heap * heap) * heap) * heap) * int

val g13_example2142 : (((heap * heap) * heap) * heap) * int

val g13_example2143 : (((heap * heap) * heap) * heap) * int

val g13_example2144 : (((heap * heap) * heap) * heap) * int

val g13_example2145 : (((heap * heap) * heap) * heap) * int

val g13_example2146 : (((heap * heap) * heap) * heap) * int

val g13_example2147 : (((heap * heap) * heap) * heap) * int

val g13_example2148 : (((heap * heap) * heap) * heap) * int

val g13_example2149 : (((heap * heap) * heap) * heap) * int

val g13_example2150 : (((heap * heap) * heap) * heap) * int

val g13_example2151 : (((heap * heap) * heap) * heap) * int

val g13_example2152 : (((heap * heap) * heap) * heap) * int

val g13_example2153 : (((heap * heap) * heap) * heap) * int

val g13_example2154 : (((heap * heap) * heap) * heap) * int

val g13_example2155 : (((heap * heap) * heap) * heap) * int

val g13_example2156 : (((heap * heap) * heap) * heap) * int

val g13_example2157 : (((heap * heap) * heap) * heap) * int

val g13_example2158 : (((heap * heap) * heap) * heap) * int

val g13_example2159 : (((heap * heap) * heap) * heap) * int

val g13_example2160 : (((heap * heap) * heap) * heap) * int

val g13_example2161 : (((heap * heap) * heap) * heap) * int

val g13_example2162 : (((heap * heap) * heap) * heap) * int

val g13_example2163 : (((heap * heap) * heap) * heap) * int

val g13_example2164 : (((heap * heap) * heap) * heap) * int

val g13_example2165 : (((heap * heap) * heap) * heap) * int

val g13_example2166 : (((heap * heap) * heap) * heap) * int

val g13_example2167 : (((heap * heap) * heap) * heap) * int

val g13_example2168 : (((heap * heap) * heap) * heap) * int

val g13_example2169 : (((heap * heap) * heap) * heap) * int

val g13_example2170 : (((heap * heap) * heap) * heap) * int

val g13_example2171 : (((heap * heap) * heap) * heap) * int

val g13_example2172 : (((heap * heap) * heap) * heap) * int

val g13_example2173 : (((heap * heap) * heap) * heap) * int

val g13_example2174 : (((heap * heap) * heap) * heap) * int

val g13_example2175 : (((heap * heap) * heap) * heap) * int

val g13_example2176 : (((heap * heap) * heap) * heap) * int

val g13_example2177 : (((heap * heap) * heap) * heap) * int

val g13_example2178 : (((heap * heap) * heap) * heap) * int

val g13_example2179 : (((heap * heap) * heap) * heap) * int

val g13_example2180 : (((heap * heap) * heap) * heap) * int

val g13_example2181 : (((heap * heap) * heap) * heap) * int

val g13_example2182 : (((heap * heap) * heap) * heap) * int

val g13_example2183 : (((heap * heap) * heap) * heap) * int

val g13_example2184 : (((heap * heap) * heap) * heap) * int

val g13_example2185 : (((heap * heap) * heap) * heap) * int

val g13_example2186 : (((heap * heap) * heap) * heap) * int

val g13_example2187 : (((heap * heap) * heap) * heap) * int

val g13_example2188 : (((heap * heap) * heap) * heap) * int

val g13_example2189 : (((heap * heap) * heap) * heap) * int

val g13_example2190 : (((heap * heap) * heap) * heap) * int

val g13_example2191 : (((heap * heap) * heap) * heap) * int

val g13_example2192 : (((heap * heap) * heap) * heap) * int

val g13_example2193 : (((heap * heap) * heap) * heap) * int

val g13_example2194 : (((heap * heap) * heap) * heap) * int

val g13_example2195 : (((heap * heap) * heap) * heap) * int

val g13_example2196 : (((heap * heap) * heap) * heap) * int

val g13_example2197 : (((heap * heap) * heap) * heap) * int

val g13_example2198 : (((heap * heap) * heap) * heap) * int

val g13_example2199 : (((heap * heap) * heap) * heap) * int

val g13_example2200 : (((heap * heap) * heap) * heap) * int

val g13_example2201 : (((heap * heap) * heap) * heap) * int

val g13_example2202 : (((heap * heap) * heap) * heap) * int

val g13_example2203 : (((heap * heap) * heap) * heap) * int

val g13_example2204 : (((heap * heap) * heap) * heap) * int

val g13_example2205 : (((heap * heap) * heap) * heap) * int

val g13_example2206 : (((heap * heap) * heap) * heap) * int

val g13_example2207 : (((heap * heap) * heap) * heap) * int

val g13_example2208 : (((heap * heap) * heap) * heap) * int

val g13_example2209 : (((heap * heap) * heap) * heap) * int

val g13_example2210 : (((heap * heap) * heap) * heap) * int

val g13_example2211 : (((heap * heap) * heap) * heap) * int

val g13_example2212 : (((heap * heap) * heap) * heap) * int

val g13_example2213 : (((heap * heap) * heap) * heap) * int

val g13_example2214 : (((heap * heap) * heap) * heap) * int

val g13_example2215 : (((heap * heap) * heap) * heap) * int

val g13_example2216 : (((heap * heap) * heap) * heap) * int

val g13_example2217 : (((heap * heap) * heap) * heap) * int

val g13_example2218 : (((heap * heap) * heap) * heap) * int

val g13_example2219 : (((heap * heap) * heap) * heap) * int

val g13_example2220 : (((heap * heap) * heap) * heap) * int

val g13_example2221 : (((heap * heap) * heap) * heap) * int

val g13_example2222 : (((heap * heap) * heap) * heap) * int

val g13_example2223 : (((heap * heap) * heap) * heap) * int

val g13_example2224 : (((heap * heap) * heap) * heap) * int

val g13_example2225 : (((heap * heap) * heap) * heap) * int

val g13_example2226 : (((heap * heap) * heap) * heap) * int

val g13_example2227 : (((heap * heap) * heap) * heap) * int

val g13_example2228 : (((heap * heap) * heap) * heap) * int

val g13_example2229 : (((heap * heap) * heap) * heap) * int

val g13_example2230 : (((heap * heap) * heap) * heap) * int

val g13_example2231 : (((heap * heap) * heap) * heap) * int

val g13_example2232 : (((heap * heap) * heap) * heap) * int

val g13_example2233 : (((heap * heap) * heap) * heap) * int

val g13_example2234 : (((heap * heap) * heap) * heap) * int

val g13_example2235 : (((heap * heap) * heap) * heap) * int

val g13_example2236 : (((heap * heap) * heap) * heap) * int

val g13_example2237 : (((heap * heap) * heap) * heap) * int

val g13_example2238 : (((heap * heap) * heap) * heap) * int

val g13_example2239 : (((heap * heap) * heap) * heap) * int

val g13_example2240 : (((heap * heap) * heap) * heap) * int

val g13_example2241 : (((heap * heap) * heap) * heap) * int

val g13_example2242 : (((heap * heap) * heap) * heap) * int

val g13_example2243 : (((heap * heap) * heap) * heap) * int

val g13_example2244 : (((heap * heap) * heap) * heap) * int

val g13_example2245 : (((heap * heap) * heap) * heap) * int

val g13_example2246 : (((heap * heap) * heap) * heap) * int

val g13_example2247 : (((heap * heap) * heap) * heap) * int

val g13_example2248 : (((heap * heap) * heap) * heap) * int

val g13_example2249 : (((heap * heap) * heap) * heap) * int

val g13_example2250 : (((heap * heap) * heap) * heap) * int

val g13_example2251 : (((heap * heap) * heap) * heap) * int

val g13_example2252 : (((heap * heap) * heap) * heap) * int

val g13_example2253 : (((heap * heap) * heap) * heap) * int

val g13_example2254 : (((heap * heap) * heap) * heap) * int

val g13_example2255 : (((heap * heap) * heap) * heap) * int

val g13_example2256 : (((heap * heap) * heap) * heap) * int

val g13_example2257 : (((heap * heap) * heap) * heap) * int

val g13_example2258 : (((heap * heap) * heap) * heap) * int

val g13_example2259 : (((heap * heap) * heap) * heap) * int

val g13_example2260 : (((heap * heap) * heap) * heap) * int

val g13_example2261 : (((heap * heap) * heap) * heap) * int

val g13_example2262 : (((heap * heap) * heap) * heap) * int

val g13_example2263 : (((heap * heap) * heap) * heap) * int

val g13_example2264 : (((heap * heap) * heap) * heap) * int

val g13_example2265 : (((heap * heap) * heap) * heap) * int

val g13_example2266 : (((heap * heap) * heap) * heap) * int

val g13_example2267 : (((heap * heap) * heap) * heap) * int

val g13_example2268 : (((heap * heap) * heap) * heap) * int

val g13_example2269 : (((heap * heap) * heap) * heap) * int

val g13_example2270 : (((heap * heap) * heap) * heap) * int

val g13_example2271 : (((heap * heap) * heap) * heap) * int

val g13_example2272 : (((heap * heap) * heap) * heap) * int

val g13_example2273 : (((heap * heap) * heap) * heap) * int

val g13_example2274 : (((heap * heap) * heap) * heap) * int

val g13_example2275 : (((heap * heap) * heap) * heap) * int

val g13_example2276 : (((heap * heap) * heap) * heap) * int

val g13_example2277 : (((heap * heap) * heap) * heap) * int

val g13_example2278 : (((heap * heap) * heap) * heap) * int

val g13_example2279 : (((heap * heap) * heap) * heap) * int

val g13_example2280 : (((heap * heap) * heap) * heap) * int

val g13_example2281 : (((heap * heap) * heap) * heap) * int

val g13_example2282 : (((heap * heap) * heap) * heap) * int

val g13_example2283 : (((heap * heap) * heap) * heap) * int

val g13_example2284 : (((heap * heap) * heap) * heap) * int

val g13_example2285 : (((heap * heap) * heap) * heap) * int

val g13_example2286 : (((heap * heap) * heap) * heap) * int

val g13_example2287 : (((heap * heap) * heap) * heap) * int

val g13_example2288 : (((heap * heap) * heap) * heap) * int

val g13_example2289 : (((heap * heap) * heap) * heap) * int

val g13_example2290 : (((heap * heap) * heap) * heap) * int

val g13_example2291 : (((heap * heap) * heap) * heap) * int

val g13_example2292 : (((heap * heap) * heap) * heap) * int

val g13_example2293 : (((heap * heap) * heap) * heap) * int

val g13_example2294 : (((heap * heap) * heap) * heap) * int

val g13_example2295 : (((heap * heap) * heap) * heap) * int

val g13_example2296 : (((heap * heap) * heap) * heap) * int

val g13_example2297 : (((heap * heap) * heap) * heap) * int

val g13_example2298 : (((heap * heap) * heap) * heap) * int

val g13_example2299 : (((heap * heap) * heap) * heap) * int

val g13_example2300 : (((heap * heap) * heap) * heap) * int

val g13_example2301 : (((heap * heap) * heap) * heap) * int

val g13_example2302 : (((heap * heap) * heap) * heap) * int

val g13_example2303 : (((heap * heap) * heap) * heap) * int

val g13_example2304 : (((heap * heap) * heap) * heap) * int

val g13_example2305 : (((heap * heap) * heap) * heap) * int

val g13_example2306 : (((heap * heap) * heap) * heap) * int

val g13_example2307 : (((heap * heap) * heap) * heap) * int

val g13_example2308 : (((heap * heap) * heap) * heap) * int

val g13_example2309 : (((heap * heap) * heap) * heap) * int

val g13_example2310 : (((heap * heap) * heap) * heap) * int

val g13_example2311 : (((heap * heap) * heap) * heap) * int

val g13_example2312 : (((heap * heap) * heap) * heap) * int

val g13_example2313 : (((heap * heap) * heap) * heap) * int

val g13_example2314 : (((heap * heap) * heap) * heap) * int

val g13_example2315 : (((heap * heap) * heap) * heap) * int

val g13_example2316 : (((heap * heap) * heap) * heap) * int

val g13_example2317 : (((heap * heap) * heap) * heap) * int

val g13_example2318 : (((heap * heap) * heap) * heap) * int

val g13_example2319 : (((heap * heap) * heap) * heap) * int

val g13_example2320 : (((heap * heap) * heap) * heap) * int

val g13_example2321 : (((heap * heap) * heap) * heap) * int

val g13_example2322 : (((heap * heap) * heap) * heap) * int

val g13_example2323 : (((heap * heap) * heap) * heap) * int

val g13_example2324 : (((heap * heap) * heap) * heap) * int

val g13_example2325 : (((heap * heap) * heap) * heap) * int

val g13_example2326 : (((heap * heap) * heap) * heap) * int

val g13_example2327 : (((heap * heap) * heap) * heap) * int

val g13_example2328 : (((heap * heap) * heap) * heap) * int

val g13_example2329 : (((heap * heap) * heap) * heap) * int

val g13_example2330 : (((heap * heap) * heap) * heap) * int

val g13_example2331 : (((heap * heap) * heap) * heap) * int

val g13_example2332 : (((heap * heap) * heap) * heap) * int

val g13_example2333 : (((heap * heap) * heap) * heap) * int

val g13_example2334 : (((heap * heap) * heap) * heap) * int

val g13_example2335 : (((heap * heap) * heap) * heap) * int

val g13_example2336 : (((heap * heap) * heap) * heap) * int

val g13_example2337 : (((heap * heap) * heap) * heap) * int

val g13_example2338 : (((heap * heap) * heap) * heap) * int

val g13_example2339 : (((heap * heap) * heap) * heap) * int

val g13_example2340 : (((heap * heap) * heap) * heap) * int

val g13_example2341 : (((heap * heap) * heap) * heap) * int

val g13_example2342 : (((heap * heap) * heap) * heap) * int

val g13_example2343 : (((heap * heap) * heap) * heap) * int

val g13_example2344 : (((heap * heap) * heap) * heap) * int

val g13_example2345 : (((heap * heap) * heap) * heap) * int

val g13_example2346 : (((heap * heap) * heap) * heap) * int

val g13_example2347 : (((heap * heap) * heap) * heap) * int

val g13_example2348 : (((heap * heap) * heap) * heap) * int

val g13_example2349 : (((heap * heap) * heap) * heap) * int

val g13_example2350 : (((heap * heap) * heap) * heap) * int

val g13_example2351 : (((heap * heap) * heap) * heap) * int

val g13_example2352 : (((heap * heap) * heap) * heap) * int

val g13_example2353 : (((heap * heap) * heap) * heap) * int

val g13_example2354 : (((heap * heap) * heap) * heap) * int

val g13_example2355 : (((heap * heap) * heap) * heap) * int

val g13_example2356 : (((heap * heap) * heap) * heap) * int

val g13_example2357 : (((heap * heap) * heap) * heap) * int

val g13_example2358 : (((heap * heap) * heap) * heap) * int

val g13_example2359 : (((heap * heap) * heap) * heap) * int

val g13_example2360 : (((heap * heap) * heap) * heap) * int

val g13_example2361 : (((heap * heap) * heap) * heap) * int

val g13_example2362 : (((heap * heap) * heap) * heap) * int

val g13_example2363 : (((heap * heap) * heap) * heap) * int

val g13_example2364 : (((heap * heap) * heap) * heap) * int

val g13_example2365 : (((heap * heap) * heap) * heap) * int

val g13_example2366 : (((heap * heap) * heap) * heap) * int

val g13_example2367 : (((heap * heap) * heap) * heap) * int

val g13_example2368 : (((heap * heap) * heap) * heap) * int

val g13_example2369 : (((heap * heap) * heap) * heap) * int

val g13_example2370 : (((heap * heap) * heap) * heap) * int

val g13_example2371 : (((heap * heap) * heap) * heap) * int

val g13_example2372 : (((heap * heap) * heap) * heap) * int

val g13_example2373 : (((heap * heap) * heap) * heap) * int

val g13_example2374 : (((heap * heap) * heap) * heap) * int

val g13_example2375 : (((heap * heap) * heap) * heap) * int

val g13_example2376 : (((heap * heap) * heap) * heap) * int

val g13_example2377 : (((heap * heap) * heap) * heap) * int

val g13_example2378 : (((heap * heap) * heap) * heap) * int

val g13_example2379 : (((heap * heap) * heap) * heap) * int

val g13_example2380 : (((heap * heap) * heap) * heap) * int

val g13_example2381 : (((heap * heap) * heap) * heap) * int

val g13_example2382 : (((heap * heap) * heap) * heap) * int

val g13_example2383 : (((heap * heap) * heap) * heap) * int

val g13_example2384 : (((heap * heap) * heap) * heap) * int

val g13_example2385 : (((heap * heap) * heap) * heap) * int

val g13_example2386 : (((heap * heap) * heap) * heap) * int

val g13_example2387 : (((heap * heap) * heap) * heap) * int

val g13_example2388 : (((heap * heap) * heap) * heap) * int

val g13_example2389 : (((heap * heap) * heap) * heap) * int

val g13_example2390 : (((heap * heap) * heap) * heap) * int

val g13_example2391 : (((heap * heap) * heap) * heap) * int

val g13_example2392 : (((heap * heap) * heap) * heap) * int

val g13_example2393 : (((heap * heap) * heap) * heap) * int

val g13_example2394 : (((heap * heap) * heap) * heap) * int

val g13_example2395 : (((heap * heap) * heap) * heap) * int

val g13_example2396 : (((heap * heap) * heap) * heap) * int

val g13_example2397 : (((heap * heap) * heap) * heap) * int

val g13_example2398 : (((heap * heap) * heap) * heap) * int

val g13_example2399 : (((heap * heap) * heap) * heap) * int

val g13_example2400 : (((heap * heap) * heap) * heap) * int

val g13_example2401 : (((heap * heap) * heap) * heap) * int

val g13_example2402 : (((heap * heap) * heap) * heap) * int

val g13_example2403 : (((heap * heap) * heap) * heap) * int

val g13_example2404 : (((heap * heap) * heap) * heap) * int

val g13_example2405 : (((heap * heap) * heap) * heap) * int

val g13_example2406 : (((heap * heap) * heap) * heap) * int

val g13_example2407 : (((heap * heap) * heap) * heap) * int

val g13_example2408 : (((heap * heap) * heap) * heap) * int

val g13_example2409 : (((heap * heap) * heap) * heap) * int

val g13_example2410 : (((heap * heap) * heap) * heap) * int

val g13_example2411 : (((heap * heap) * heap) * heap) * int

val g13_example2412 : (((heap * heap) * heap) * heap) * int

val g13_example2413 : (((heap * heap) * heap) * heap) * int

val g13_example2414 : (((heap * heap) * heap) * heap) * int

val g13_example2415 : (((heap * heap) * heap) * heap) * int

val g13_example2416 : (((heap * heap) * heap) * heap) * int

val g13_example2417 : (((heap * heap) * heap) * heap) * int

val g13_example2418 : (((heap * heap) * heap) * heap) * int

val g13_example2419 : (((heap * heap) * heap) * heap) * int

val g13_example2420 : (((heap * heap) * heap) * heap) * int

val g13_example2421 : (((heap * heap) * heap) * heap) * int

val g13_example2422 : (((heap * heap) * heap) * heap) * int

val g13_example2423 : (((heap * heap) * heap) * heap) * int

val g13_example2424 : (((heap * heap) * heap) * heap) * int

val g13_example2425 : (((heap * heap) * heap) * heap) * int

val g13_example2426 : (((heap * heap) * heap) * heap) * int

val g13_example2427 : (((heap * heap) * heap) * heap) * int

val g13_example2428 : (((heap * heap) * heap) * heap) * int

val g13_example2429 : (((heap * heap) * heap) * heap) * int

val g13_example2430 : (((heap * heap) * heap) * heap) * int

val g13_example2431 : (((heap * heap) * heap) * heap) * int

val g13_example2432 : (((heap * heap) * heap) * heap) * int

val g13_example2433 : (((heap * heap) * heap) * heap) * int

val g13_example2434 : (((heap * heap) * heap) * heap) * int

val g13_example2435 : (((heap * heap) * heap) * heap) * int

val g13_example2436 : (((heap * heap) * heap) * heap) * int

val g13_example2437 : (((heap * heap) * heap) * heap) * int

val g13_example2438 : (((heap * heap) * heap) * heap) * int

val g13_example2439 : (((heap * heap) * heap) * heap) * int

val g13_example2440 : (((heap * heap) * heap) * heap) * int

val g13_example2441 : (((heap * heap) * heap) * heap) * int

val g13_example2442 : (((heap * heap) * heap) * heap) * int

val g13_example2443 : (((heap * heap) * heap) * heap) * int

val g13_example2444 : (((heap * heap) * heap) * heap) * int

val g13_example2445 : (((heap * heap) * heap) * heap) * int

val g13_example2446 : (((heap * heap) * heap) * heap) * int

val g13_example2447 : (((heap * heap) * heap) * heap) * int

val g13_example2448 : (((heap * heap) * heap) * heap) * int

val g13_example2449 : (((heap * heap) * heap) * heap) * int

val g13_example2450 : (((heap * heap) * heap) * heap) * int

val g13_example2451 : (((heap * heap) * heap) * heap) * int

val g13_example2452 : (((heap * heap) * heap) * heap) * int

val g13_example2453 : (((heap * heap) * heap) * heap) * int

val g13_example2454 : (((heap * heap) * heap) * heap) * int

val g13_example2455 : (((heap * heap) * heap) * heap) * int

val g13_example2456 : (((heap * heap) * heap) * heap) * int

val g13_example2457 : (((heap * heap) * heap) * heap) * int

val g13_example2458 : (((heap * heap) * heap) * heap) * int

val g13_example2459 : (((heap * heap) * heap) * heap) * int

val g13_example2460 : (((heap * heap) * heap) * heap) * int

val g13_example2461 : (((heap * heap) * heap) * heap) * int

val g13_example2462 : (((heap * heap) * heap) * heap) * int

val g13_example2463 : (((heap * heap) * heap) * heap) * int

val g13_example2464 : (((heap * heap) * heap) * heap) * int

val g13_example2465 : (((heap * heap) * heap) * heap) * int

val g13_example2466 : (((heap * heap) * heap) * heap) * int

val g13_example2467 : (((heap * heap) * heap) * heap) * int

val g13_example2468 : (((heap * heap) * heap) * heap) * int

val g13_example2469 : (((heap * heap) * heap) * heap) * int

val g13_example2470 : (((heap * heap) * heap) * heap) * int

val g13_example2471 : (((heap * heap) * heap) * heap) * int

val g13_example2472 : (((heap * heap) * heap) * heap) * int

val g13_example2473 : (((heap * heap) * heap) * heap) * int

val g13_example2474 : (((heap * heap) * heap) * heap) * int

val g13_example2475 : (((heap * heap) * heap) * heap) * int

val g13_example2476 : (((heap * heap) * heap) * heap) * int

val g13_example2477 : (((heap * heap) * heap) * heap) * int

val g13_example2478 : (((heap * heap) * heap) * heap) * int

val g13_example2479 : (((heap * heap) * heap) * heap) * int

val g13_example2480 : (((heap * heap) * heap) * heap) * int

val g13_example2481 : (((heap * heap) * heap) * heap) * int

val g13_example2482 : (((heap * heap) * heap) * heap) * int

val g13_example2483 : (((heap * heap) * heap) * heap) * int

val g13_example2484 : (((heap * heap) * heap) * heap) * int

val g13_example2485 : (((heap * heap) * heap) * heap) * int

val g13_example2486 : (((heap * heap) * heap) * heap) * int

val g13_example2487 : (((heap * heap) * heap) * heap) * int

val g13_example2488 : (((heap * heap) * heap) * heap) * int

val g13_example2489 : (((heap * heap) * heap) * heap) * int

val g13_example2490 : (((heap * heap) * heap) * heap) * int

val g13_example2491 : (((heap * heap) * heap) * heap) * int

val g13_example2492 : (((heap * heap) * heap) * heap) * int

val g13_example2493 : (((heap * heap) * heap) * heap) * int

val g13_example2494 : (((heap * heap) * heap) * heap) * int

val g13_example2495 : (((heap * heap) * heap) * heap) * int

val g13_example2496 : (((heap * heap) * heap) * heap) * int

val g13_example2497 : (((heap * heap) * heap) * heap) * int

val g13_example2498 : (((heap * heap) * heap) * heap) * int

val g13_example2499 : (((heap * heap) * heap) * heap) * int

val g13_example2500 : (((heap * heap) * heap) * heap) * int

val g13_example2501 : (((heap * heap) * heap) * heap) * int

val g13_example2502 : (((heap * heap) * heap) * heap) * int

val g13_example2503 : (((heap * heap) * heap) * heap) * int

val g13_example2504 : (((heap * heap) * heap) * heap) * int

val g13_example2505 : (((heap * heap) * heap) * heap) * int

val g13_example2506 : (((heap * heap) * heap) * heap) * int

val g13_example2507 : (((heap * heap) * heap) * heap) * int

val g13_example2508 : (((heap * heap) * heap) * heap) * int

val g13_example2509 : (((heap * heap) * heap) * heap) * int

val g13_example2510 : (((heap * heap) * heap) * heap) * int

val g13_example2511 : (((heap * heap) * heap) * heap) * int

val g13_example2512 : (((heap * heap) * heap) * heap) * int

val g13_example2513 : (((heap * heap) * heap) * heap) * int

val g13_example2514 : (((heap * heap) * heap) * heap) * int

val g13_example2515 : (((heap * heap) * heap) * heap) * int

val g13_example2516 : (((heap * heap) * heap) * heap) * int

val g13_example2517 : (((heap * heap) * heap) * heap) * int

val g13_example2518 : (((heap * heap) * heap) * heap) * int

val g13_example2519 : (((heap * heap) * heap) * heap) * int

val g13_example2520 : (((heap * heap) * heap) * heap) * int

val g13_example2521 : (((heap * heap) * heap) * heap) * int

val g13_example2522 : (((heap * heap) * heap) * heap) * int

val g13_example2523 : (((heap * heap) * heap) * heap) * int

val g13_example2524 : (((heap * heap) * heap) * heap) * int

val g13_example2525 : (((heap * heap) * heap) * heap) * int

val g13_example2526 : (((heap * heap) * heap) * heap) * int

val g13_example2527 : (((heap * heap) * heap) * heap) * int

val g13_example2528 : (((heap * heap) * heap) * heap) * int

val g13_example2529 : (((heap * heap) * heap) * heap) * int

val g13_example2530 : (((heap * heap) * heap) * heap) * int

val g13_example2531 : (((heap * heap) * heap) * heap) * int

val g13_example2532 : (((heap * heap) * heap) * heap) * int

val g13_example2533 : (((heap * heap) * heap) * heap) * int

val g13_example2534 : (((heap * heap) * heap) * heap) * int

val g13_example2535 : (((heap * heap) * heap) * heap) * int

val g13_example2536 : (((heap * heap) * heap) * heap) * int

val g13_example2537 : (((heap * heap) * heap) * heap) * int

val g13_example2538 : (((heap * heap) * heap) * heap) * int

val g13_example2539 : (((heap * heap) * heap) * heap) * int

val g13_example2540 : (((heap * heap) * heap) * heap) * int

val g13_example2541 : (((heap * heap) * heap) * heap) * int

val g13_example2542 : (((heap * heap) * heap) * heap) * int

val g13_example2543 : (((heap * heap) * heap) * heap) * int

val g13_example2544 : (((heap * heap) * heap) * heap) * int

val g13_example2545 : (((heap * heap) * heap) * heap) * int

val g13_example2546 : (((heap * heap) * heap) * heap) * int

val g13_example2547 : (((heap * heap) * heap) * heap) * int

val g13_example2548 : (((heap * heap) * heap) * heap) * int

val g13_example2549 : (((heap * heap) * heap) * heap) * int

val g13_example2550 : (((heap * heap) * heap) * heap) * int

val g13_example2551 : (((heap * heap) * heap) * heap) * int

val g13_example2552 : (((heap * heap) * heap) * heap) * int

val g13_example2553 : (((heap * heap) * heap) * heap) * int

val g13_example2554 : (((heap * heap) * heap) * heap) * int

val g13_example2555 : (((heap * heap) * heap) * heap) * int

val g13_example2556 : (((heap * heap) * heap) * heap) * int

val g13_example2557 : (((heap * heap) * heap) * heap) * int

val g13_example2558 : (((heap * heap) * heap) * heap) * int

val g13_example2559 : (((heap * heap) * heap) * heap) * int

val g13_example2560 : (((heap * heap) * heap) * heap) * int

val g13_example2561 : (((heap * heap) * heap) * heap) * int

val g13_example2562 : (((heap * heap) * heap) * heap) * int

val g13_example2563 : (((heap * heap) * heap) * heap) * int

val g13_example2564 : (((heap * heap) * heap) * heap) * int

val g13_example2565 : (((heap * heap) * heap) * heap) * int

val g13_example2566 : (((heap * heap) * heap) * heap) * int

val g13_example2567 : (((heap * heap) * heap) * heap) * int

val g13_example2568 : (((heap * heap) * heap) * heap) * int

val g13_example2569 : (((heap * heap) * heap) * heap) * int

val g13_example2570 : (((heap * heap) * heap) * heap) * int

val g13_example2571 : (((heap * heap) * heap) * heap) * int

val g13_example2572 : (((heap * heap) * heap) * heap) * int

val g13_example2573 : (((heap * heap) * heap) * heap) * int

val g13_example2574 : (((heap * heap) * heap) * heap) * int

val g13_example2575 : (((heap * heap) * heap) * heap) * int

val g13_example2576 : (((heap * heap) * heap) * heap) * int

val g13_example2577 : (((heap * heap) * heap) * heap) * int

val g13_example2578 : (((heap * heap) * heap) * heap) * int

val g13_example2579 : (((heap * heap) * heap) * heap) * int

val g13_example2580 : (((heap * heap) * heap) * heap) * int

val g13_example2581 : (((heap * heap) * heap) * heap) * int

val g13_example2582 : (((heap * heap) * heap) * heap) * int

val g13_example2583 : (((heap * heap) * heap) * heap) * int

val g13_example2584 : (((heap * heap) * heap) * heap) * int

val g13_example2585 : (((heap * heap) * heap) * heap) * int

val g13_example2586 : (((heap * heap) * heap) * heap) * int

val g13_example2587 : (((heap * heap) * heap) * heap) * int

val g13_example2588 : (((heap * heap) * heap) * heap) * int

val g13_example2589 : (((heap * heap) * heap) * heap) * int

val g13_example2590 : (((heap * heap) * heap) * heap) * int

val g13_example2591 : (((heap * heap) * heap) * heap) * int

val g13_example2592 : (((heap * heap) * heap) * heap) * int

val g13_example2593 : (((heap * heap) * heap) * heap) * int

val g13_example2594 : (((heap * heap) * heap) * heap) * int

val g13_example2595 : (((heap * heap) * heap) * heap) * int

val g13_example2596 : (((heap * heap) * heap) * heap) * int

val g13_example2597 : (((heap * heap) * heap) * heap) * int

val g13_example2598 : (((heap * heap) * heap) * heap) * int

val g13_example2599 : (((heap * heap) * heap) * heap) * int

val g13_example2600 : (((heap * heap) * heap) * heap) * int

val g13_example2601 : (((heap * heap) * heap) * heap) * int

val g13_example2602 : (((heap * heap) * heap) * heap) * int

val g13_example2603 : (((heap * heap) * heap) * heap) * int

val g13_example2604 : (((heap * heap) * heap) * heap) * int

val g13_example2605 : (((heap * heap) * heap) * heap) * int

val g13_example2606 : (((heap * heap) * heap) * heap) * int

val g13_example2607 : (((heap * heap) * heap) * heap) * int

val g13_example2608 : (((heap * heap) * heap) * heap) * int

val g13_example2609 : (((heap * heap) * heap) * heap) * int

val g13_example2610 : (((heap * heap) * heap) * heap) * int

val g13_example2611 : (((heap * heap) * heap) * heap) * int

val g13_example2612 : (((heap * heap) * heap) * heap) * int

val g13_example2613 : (((heap * heap) * heap) * heap) * int

val g13_example2614 : (((heap * heap) * heap) * heap) * int

val g13_example2615 : (((heap * heap) * heap) * heap) * int

val g13_example2616 : (((heap * heap) * heap) * heap) * int

val g13_example2617 : (((heap * heap) * heap) * heap) * int

val g13_example2618 : (((heap * heap) * heap) * heap) * int

val g13_example2619 : (((heap * heap) * heap) * heap) * int

val g13_example2620 : (((heap * heap) * heap) * heap) * int

val g13_example2621 : (((heap * heap) * heap) * heap) * int

val g13_example2622 : (((heap * heap) * heap) * heap) * int

val g13_example2623 : (((heap * heap) * heap) * heap) * int

val g13_example2624 : (((heap * heap) * heap) * heap) * int

val g13_example2625 : (((heap * heap) * heap) * heap) * int

val g13_example2626 : (((heap * heap) * heap) * heap) * int

val g13_example2627 : (((heap * heap) * heap) * heap) * int

val g13_example2628 : (((heap * heap) * heap) * heap) * int

val g13_example2629 : (((heap * heap) * heap) * heap) * int

val g13_example2630 : (((heap * heap) * heap) * heap) * int

val g13_example2631 : (((heap * heap) * heap) * heap) * int

val g13_example2632 : (((heap * heap) * heap) * heap) * int

val g13_example2633 : (((heap * heap) * heap) * heap) * int

val g13_example2634 : (((heap * heap) * heap) * heap) * int

val g13_example2635 : (((heap * heap) * heap) * heap) * int

val g13_example2636 : (((heap * heap) * heap) * heap) * int

val g13_example2637 : (((heap * heap) * heap) * heap) * int

val g13_example2638 : (((heap * heap) * heap) * heap) * int

val g13_example2639 : (((heap * heap) * heap) * heap) * int

val g13_example2640 : (((heap * heap) * heap) * heap) * int

val g13_example2641 : (((heap * heap) * heap) * heap) * int

val g13_example2642 : (((heap * heap) * heap) * heap) * int

val g13_example2643 : (((heap * heap) * heap) * heap) * int

val g13_example2644 : (((heap * heap) * heap) * heap) * int

val g13_example2645 : (((heap * heap) * heap) * heap) * int

val g13_example2646 : (((heap * heap) * heap) * heap) * int

val g13_example2647 : (((heap * heap) * heap) * heap) * int

val g13_example2648 : (((heap * heap) * heap) * heap) * int

val g13_example2649 : (((heap * heap) * heap) * heap) * int

val g13_example2650 : (((heap * heap) * heap) * heap) * int

val g13_example2651 : (((heap * heap) * heap) * heap) * int

val g13_example2652 : (((heap * heap) * heap) * heap) * int

val g13_example2653 : (((heap * heap) * heap) * heap) * int

val g13_example2654 : (((heap * heap) * heap) * heap) * int

val g13_example2655 : (((heap * heap) * heap) * heap) * int

val g13_example2656 : (((heap * heap) * heap) * heap) * int

val g13_example2657 : (((heap * heap) * heap) * heap) * int

val g13_example2658 : (((heap * heap) * heap) * heap) * int

val g13_example2659 : (((heap * heap) * heap) * heap) * int

val g13_example2660 : (((heap * heap) * heap) * heap) * int

val g13_example2661 : (((heap * heap) * heap) * heap) * int

val g13_example2662 : (((heap * heap) * heap) * heap) * int

val g13_example2663 : (((heap * heap) * heap) * heap) * int

val g13_example2664 : (((heap * heap) * heap) * heap) * int

val g13_example2665 : (((heap * heap) * heap) * heap) * int

val g13_example2666 : (((heap * heap) * heap) * heap) * int

val g13_example2667 : (((heap * heap) * heap) * heap) * int

val g13_example2668 : (((heap * heap) * heap) * heap) * int

val g13_example2669 : (((heap * heap) * heap) * heap) * int

val g13_example2670 : (((heap * heap) * heap) * heap) * int

val g13_example2671 : (((heap * heap) * heap) * heap) * int

val g13_example2672 : (((heap * heap) * heap) * heap) * int

val g13_example2673 : (((heap * heap) * heap) * heap) * int

val g13_example2674 : (((heap * heap) * heap) * heap) * int

val g13_example2675 : (((heap * heap) * heap) * heap) * int

val g13_example2676 : (((heap * heap) * heap) * heap) * int

val g13_example2677 : (((heap * heap) * heap) * heap) * int

val g13_example2678 : (((heap * heap) * heap) * heap) * int

val g13_example2679 : (((heap * heap) * heap) * heap) * int

val g13_example2680 : (((heap * heap) * heap) * heap) * int

val g13_example2681 : (((heap * heap) * heap) * heap) * int

val g13_example2682 : (((heap * heap) * heap) * heap) * int

val g13_example2683 : (((heap * heap) * heap) * heap) * int

val g13_example2684 : (((heap * heap) * heap) * heap) * int

val g13_example2685 : (((heap * heap) * heap) * heap) * int

val g13_example2686 : (((heap * heap) * heap) * heap) * int

val g13_example2687 : (((heap * heap) * heap) * heap) * int

val g13_example2688 : (((heap * heap) * heap) * heap) * int

val g13_example2689 : (((heap * heap) * heap) * heap) * int

val g13_example2690 : (((heap * heap) * heap) * heap) * int

val g13_example2691 : (((heap * heap) * heap) * heap) * int

val g13_example2692 : (((heap * heap) * heap) * heap) * int

val g13_example2693 : (((heap * heap) * heap) * heap) * int

val g13_example2694 : (((heap * heap) * heap) * heap) * int

val g13_example2695 : (((heap * heap) * heap) * heap) * int

val g13_example2696 : (((heap * heap) * heap) * heap) * int

val g13_example2697 : (((heap * heap) * heap) * heap) * int

val g13_example2698 : (((heap * heap) * heap) * heap) * int

val g13_example2699 : (((heap * heap) * heap) * heap) * int

val g13_example2700 : (((heap * heap) * heap) * heap) * int

val g13_example2701 : (((heap * heap) * heap) * heap) * int

val g13_example2702 : (((heap * heap) * heap) * heap) * int

val g13_example2703 : (((heap * heap) * heap) * heap) * int

val g13_example2704 : (((heap * heap) * heap) * heap) * int

val g13_example2705 : (((heap * heap) * heap) * heap) * int

val g13_example2706 : (((heap * heap) * heap) * heap) * int

val g13_example2707 : (((heap * heap) * heap) * heap) * int

val g13_example2708 : (((heap * heap) * heap) * heap) * int

val g13_example2709 : (((heap * heap) * heap) * heap) * int

val g13_example2710 : (((heap * heap) * heap) * heap) * int

val g13_example2711 : (((heap * heap) * heap) * heap) * int

val g13_example2712 : (((heap * heap) * heap) * heap) * int

val g13_example2713 : (((heap * heap) * heap) * heap) * int

val g13_example2714 : (((heap * heap) * heap) * heap) * int

val g13_example2715 : (((heap * heap) * heap) * heap) * int

val g13_example2716 : (((heap * heap) * heap) * heap) * int

val g13_example2717 : (((heap * heap) * heap) * heap) * int

val g13_example2718 : (((heap * heap) * heap) * heap) * int

val g13_example2719 : (((heap * heap) * heap) * heap) * int

val g13_example2720 : (((heap * heap) * heap) * heap) * int

val g13_example2721 : (((heap * heap) * heap) * heap) * int

val g13_example2722 : (((heap * heap) * heap) * heap) * int

val g13_example2723 : (((heap * heap) * heap) * heap) * int

val g13_example2724 : (((heap * heap) * heap) * heap) * int

val g13_example2725 : (((heap * heap) * heap) * heap) * int

val g13_example2726 : (((heap * heap) * heap) * heap) * int

val g13_example2727 : (((heap * heap) * heap) * heap) * int

val g13_example2728 : (((heap * heap) * heap) * heap) * int

val g13_example2729 : (((heap * heap) * heap) * heap) * int

val g13_example2730 : (((heap * heap) * heap) * heap) * int

val g13_example2731 : (((heap * heap) * heap) * heap) * int

val g13_example2732 : (((heap * heap) * heap) * heap) * int

val g13_example2733 : (((heap * heap) * heap) * heap) * int

val g13_example2734 : (((heap * heap) * heap) * heap) * int

val g13_example2735 : (((heap * heap) * heap) * heap) * int

val g13_example2736 : (((heap * heap) * heap) * heap) * int

val g13_example2737 : (((heap * heap) * heap) * heap) * int

val g13_example2738 : (((heap * heap) * heap) * heap) * int

val g13_example2739 : (((heap * heap) * heap) * heap) * int

val g13_example2740 : (((heap * heap) * heap) * heap) * int

val g13_example2741 : (((heap * heap) * heap) * heap) * int

val g13_example2742 : (((heap * heap) * heap) * heap) * int

val g13_example2743 : (((heap * heap) * heap) * heap) * int

val g13_example2744 : (((heap * heap) * heap) * heap) * int

val g13_example2745 : (((heap * heap) * heap) * heap) * int

val g13_example2746 : (((heap * heap) * heap) * heap) * int

val g13_example2747 : (((heap * heap) * heap) * heap) * int

val g13_example2748 : (((heap * heap) * heap) * heap) * int

val g13_example2749 : (((heap * heap) * heap) * heap) * int

val g13_example2750 : (((heap * heap) * heap) * heap) * int

val g13_example2751 : (((heap * heap) * heap) * heap) * int

val g13_example2752 : (((heap * heap) * heap) * heap) * int

val g13_example2753 : (((heap * heap) * heap) * heap) * int

val g13_example2754 : (((heap * heap) * heap) * heap) * int

val g13_example2755 : (((heap * heap) * heap) * heap) * int

val g13_example2756 : (((heap * heap) * heap) * heap) * int

val g13_example2757 : (((heap * heap) * heap) * heap) * int

val g13_example2758 : (((heap * heap) * heap) * heap) * int

val g13_example2759 : (((heap * heap) * heap) * heap) * int

val g13_example2760 : (((heap * heap) * heap) * heap) * int

val g13_example2761 : (((heap * heap) * heap) * heap) * int

val g13_example2762 : (((heap * heap) * heap) * heap) * int

val g13_example2763 : (((heap * heap) * heap) * heap) * int

val g13_example2764 : (((heap * heap) * heap) * heap) * int

val g13_example2765 : (((heap * heap) * heap) * heap) * int

val g13_example2766 : (((heap * heap) * heap) * heap) * int

val g13_example2767 : (((heap * heap) * heap) * heap) * int

val g13_example2768 : (((heap * heap) * heap) * heap) * int

val g13_example2769 : (((heap * heap) * heap) * heap) * int

val g13_example2770 : (((heap * heap) * heap) * heap) * int

val g13_example2771 : (((heap * heap) * heap) * heap) * int

val g13_example2772 : (((heap * heap) * heap) * heap) * int

val g13_example2773 : (((heap * heap) * heap) * heap) * int

val g13_example2774 : (((heap * heap) * heap) * heap) * int

val g13_example2775 : (((heap * heap) * heap) * heap) * int

val g13_example2776 : (((heap * heap) * heap) * heap) * int

val g13_example2777 : (((heap * heap) * heap) * heap) * int

val g13_example2778 : (((heap * heap) * heap) * heap) * int

val g13_example2779 : (((heap * heap) * heap) * heap) * int

val g13_example2780 : (((heap * heap) * heap) * heap) * int

val g13_example2781 : (((heap * heap) * heap) * heap) * int

val g13_example2782 : (((heap * heap) * heap) * heap) * int

val g13_example2783 : (((heap * heap) * heap) * heap) * int

val g13_example2784 : (((heap * heap) * heap) * heap) * int

val g13_example2785 : (((heap * heap) * heap) * heap) * int

val g13_example2786 : (((heap * heap) * heap) * heap) * int

val g13_example2787 : (((heap * heap) * heap) * heap) * int

val g13_example2788 : (((heap * heap) * heap) * heap) * int

val g13_example2789 : (((heap * heap) * heap) * heap) * int

val g13_example2790 : (((heap * heap) * heap) * heap) * int

val g13_example2791 : (((heap * heap) * heap) * heap) * int

val g13_example2792 : (((heap * heap) * heap) * heap) * int

val g13_example2793 : (((heap * heap) * heap) * heap) * int

val g13_example2794 : (((heap * heap) * heap) * heap) * int

val g13_example2795 : (((heap * heap) * heap) * heap) * int

val g13_example2796 : (((heap * heap) * heap) * heap) * int

val g13_example2797 : (((heap * heap) * heap) * heap) * int

val g13_example2798 : (((heap * heap) * heap) * heap) * int

val g13_example2799 : (((heap * heap) * heap) * heap) * int

val g13_example2800 : (((heap * heap) * heap) * heap) * int

val g13_example2801 : (((heap * heap) * heap) * heap) * int

val g13_example2802 : (((heap * heap) * heap) * heap) * int

val g13_example2803 : (((heap * heap) * heap) * heap) * int

val g13_example2804 : (((heap * heap) * heap) * heap) * int

val g13_example2805 : (((heap * heap) * heap) * heap) * int

val g13_example2806 : (((heap * heap) * heap) * heap) * int

val g13_example2807 : (((heap * heap) * heap) * heap) * int

val g13_example2808 : (((heap * heap) * heap) * heap) * int

val g13_example2809 : (((heap * heap) * heap) * heap) * int

val g13_example2810 : (((heap * heap) * heap) * heap) * int

val g13_example2811 : (((heap * heap) * heap) * heap) * int

val g13_example2812 : (((heap * heap) * heap) * heap) * int

val g13_example2813 : (((heap * heap) * heap) * heap) * int

val g13_example2814 : (((heap * heap) * heap) * heap) * int

val g13_example2815 : (((heap * heap) * heap) * heap) * int

val g13_example2816 : (((heap * heap) * heap) * heap) * int

val g13_example2817 : (((heap * heap) * heap) * heap) * int

val g13_example2818 : (((heap * heap) * heap) * heap) * int

val g13_example2819 : (((heap * heap) * heap) * heap) * int

val g13_example2820 : (((heap * heap) * heap) * heap) * int

val g13_example2821 : (((heap * heap) * heap) * heap) * int

val g13_example2822 : (((heap * heap) * heap) * heap) * int

val g13_example2823 : (((heap * heap) * heap) * heap) * int

val g13_example2824 : (((heap * heap) * heap) * heap) * int

val g13_example2825 : (((heap * heap) * heap) * heap) * int

val g13_example2826 : (((heap * heap) * heap) * heap) * int

val g13_example2827 : (((heap * heap) * heap) * heap) * int

val g13_example2828 : (((heap * heap) * heap) * heap) * int

val g13_example2829 : (((heap * heap) * heap) * heap) * int

val g13_example2830 : (((heap * heap) * heap) * heap) * int

val g13_example2831 : (((heap * heap) * heap) * heap) * int

val g13_example2832 : (((heap * heap) * heap) * heap) * int

val g13_example2833 : (((heap * heap) * heap) * heap) * int

val g13_example2834 : (((heap * heap) * heap) * heap) * int

val g13_example2835 : (((heap * heap) * heap) * heap) * int

val g13_example2836 : (((heap * heap) * heap) * heap) * int

val g13_example2837 : (((heap * heap) * heap) * heap) * int

val g13_example2838 : (((heap * heap) * heap) * heap) * int

val g13_example2839 : (((heap * heap) * heap) * heap) * int

val g13_example2840 : (((heap * heap) * heap) * heap) * int

val g13_example2841 : (((heap * heap) * heap) * heap) * int

val g13_example2842 : (((heap * heap) * heap) * heap) * int

val g13_example2843 : (((heap * heap) * heap) * heap) * int

val g13_example2844 : (((heap * heap) * heap) * heap) * int

val g13_example2845 : (((heap * heap) * heap) * heap) * int

val g13_example2846 : (((heap * heap) * heap) * heap) * int

val g13_example2847 : (((heap * heap) * heap) * heap) * int

val g13_example2848 : (((heap * heap) * heap) * heap) * int

val g13_example2849 : (((heap * heap) * heap) * heap) * int

val g13_example2850 : (((heap * heap) * heap) * heap) * int

val g13_example2851 : (((heap * heap) * heap) * heap) * int

val g13_example2852 : (((heap * heap) * heap) * heap) * int

val g13_example2853 : (((heap * heap) * heap) * heap) * int

val g13_example2854 : (((heap * heap) * heap) * heap) * int

val g13_example2855 : (((heap * heap) * heap) * heap) * int

val g13_example2856 : (((heap * heap) * heap) * heap) * int

val g13_example2857 : (((heap * heap) * heap) * heap) * int

val g13_example2858 : (((heap * heap) * heap) * heap) * int

val g13_example2859 : (((heap * heap) * heap) * heap) * int

val g13_example2860 : (((heap * heap) * heap) * heap) * int

val g13_example2861 : (((heap * heap) * heap) * heap) * int

val g13_example2862 : (((heap * heap) * heap) * heap) * int

val g13_example2863 : (((heap * heap) * heap) * heap) * int

val g13_example2864 : (((heap * heap) * heap) * heap) * int

val g13_example2865 : (((heap * heap) * heap) * heap) * int

val g13_example2866 : (((heap * heap) * heap) * heap) * int

val g13_example2867 : (((heap * heap) * heap) * heap) * int

val g13_example2868 : (((heap * heap) * heap) * heap) * int

val g13_example2869 : (((heap * heap) * heap) * heap) * int

val g13_example2870 : (((heap * heap) * heap) * heap) * int

val g13_example2871 : (((heap * heap) * heap) * heap) * int

val g13_example2872 : (((heap * heap) * heap) * heap) * int

val g13_example2873 : (((heap * heap) * heap) * heap) * int

val g13_example2874 : (((heap * heap) * heap) * heap) * int

val g13_example2875 : (((heap * heap) * heap) * heap) * int

val g13_example2876 : (((heap * heap) * heap) * heap) * int

val g13_example2877 : (((heap * heap) * heap) * heap) * int

val g13_example2878 : (((heap * heap) * heap) * heap) * int

val g13_example2879 : (((heap * heap) * heap) * heap) * int

val g13_example2880 : (((heap * heap) * heap) * heap) * int

val g13_example2881 : (((heap * heap) * heap) * heap) * int

val g13_example2882 : (((heap * heap) * heap) * heap) * int

val g13_example2883 : (((heap * heap) * heap) * heap) * int

val g13_example2884 : (((heap * heap) * heap) * heap) * int

val g13_example2885 : (((heap * heap) * heap) * heap) * int

val g13_example2886 : (((heap * heap) * heap) * heap) * int

val g13_example2887 : (((heap * heap) * heap) * heap) * int

val g13_example2888 : (((heap * heap) * heap) * heap) * int

val g13_example2889 : (((heap * heap) * heap) * heap) * int

val g13_example2890 : (((heap * heap) * heap) * heap) * int

val g13_example2891 : (((heap * heap) * heap) * heap) * int

val g13_example2892 : (((heap * heap) * heap) * heap) * int

val g13_example2893 : (((heap * heap) * heap) * heap) * int

val g13_example2894 : (((heap * heap) * heap) * heap) * int

val g13_example2895 : (((heap * heap) * heap) * heap) * int

val g13_example2896 : (((heap * heap) * heap) * heap) * int

val g13_example2897 : (((heap * heap) * heap) * heap) * int

val g13_example2898 : (((heap * heap) * heap) * heap) * int

val g13_example2899 : (((heap * heap) * heap) * heap) * int

val g13_example2900 : (((heap * heap) * heap) * heap) * int

val g13_example2901 : (((heap * heap) * heap) * heap) * int

val g13_example2902 : (((heap * heap) * heap) * heap) * int

val g13_example2903 : (((heap * heap) * heap) * heap) * int

val g13_example2904 : (((heap * heap) * heap) * heap) * int

val g13_example2905 : (((heap * heap) * heap) * heap) * int

val g13_example2906 : (((heap * heap) * heap) * heap) * int

val g13_example2907 : (((heap * heap) * heap) * heap) * int

val g13_example2908 : (((heap * heap) * heap) * heap) * int

val g13_example2909 : (((heap * heap) * heap) * heap) * int

val g13_example2910 : (((heap * heap) * heap) * heap) * int

val g13_example2911 : (((heap * heap) * heap) * heap) * int

val g13_example2912 : (((heap * heap) * heap) * heap) * int

val g13_example2913 : (((heap * heap) * heap) * heap) * int

val g13_example2914 : (((heap * heap) * heap) * heap) * int

val g13_example2915 : (((heap * heap) * heap) * heap) * int

val g13_example2916 : (((heap * heap) * heap) * heap) * int

val g13_example2917 : (((heap * heap) * heap) * heap) * int

val g13_example2918 : (((heap * heap) * heap) * heap) * int

val g13_example2919 : (((heap * heap) * heap) * heap) * int

val g13_example2920 : (((heap * heap) * heap) * heap) * int

val g13_example2921 : (((heap * heap) * heap) * heap) * int

val g13_example2922 : (((heap * heap) * heap) * heap) * int

val g13_example2923 : (((heap * heap) * heap) * heap) * int

val g13_example2924 : (((heap * heap) * heap) * heap) * int

val g13_example2925 : (((heap * heap) * heap) * heap) * int

val g13_example2926 : (((heap * heap) * heap) * heap) * int

val g13_example2927 : (((heap * heap) * heap) * heap) * int

val g13_example2928 : (((heap * heap) * heap) * heap) * int

val g13_example2929 : (((heap * heap) * heap) * heap) * int

val g13_example2930 : (((heap * heap) * heap) * heap) * int

val g13_example2931 : (((heap * heap) * heap) * heap) * int

val g13_example2932 : (((heap * heap) * heap) * heap) * int

val g13_example2933 : (((heap * heap) * heap) * heap) * int

val g13_example2934 : (((heap * heap) * heap) * heap) * int

val g13_example2935 : (((heap * heap) * heap) * heap) * int

val g13_example2936 : (((heap * heap) * heap) * heap) * int

val g13_example2937 : (((heap * heap) * heap) * heap) * int

val g13_example2938 : (((heap * heap) * heap) * heap) * int

val g13_example2939 : (((heap * heap) * heap) * heap) * int

val g13_example2940 : (((heap * heap) * heap) * heap) * int

val g13_example2941 : (((heap * heap) * heap) * heap) * int

val g13_example2942 : (((heap * heap) * heap) * heap) * int

val g13_example2943 : (((heap * heap) * heap) * heap) * int

val g13_example2944 : (((heap * heap) * heap) * heap) * int

val g13_example2945 : (((heap * heap) * heap) * heap) * int

val g13_example2946 : (((heap * heap) * heap) * heap) * int

val g13_example2947 : (((heap * heap) * heap) * heap) * int

val g13_example2948 : (((heap * heap) * heap) * heap) * int

val g13_example2949 : (((heap * heap) * heap) * heap) * int

val g13_example2950 : (((heap * heap) * heap) * heap) * int

val g13_example2951 : (((heap * heap) * heap) * heap) * int

val g13_example2952 : (((heap * heap) * heap) * heap) * int

val g13_example2953 : (((heap * heap) * heap) * heap) * int

val g13_example2954 : (((heap * heap) * heap) * heap) * int

val g13_example2955 : (((heap * heap) * heap) * heap) * int

val g13_example2956 : (((heap * heap) * heap) * heap) * int

val g13_example2957 : (((heap * heap) * heap) * heap) * int

val g13_example2958 : (((heap * heap) * heap) * heap) * int

val g13_example2959 : (((heap * heap) * heap) * heap) * int

val g13_example2960 : (((heap * heap) * heap) * heap) * int

val g13_example2961 : (((heap * heap) * heap) * heap) * int

val g13_example2962 : (((heap * heap) * heap) * heap) * int

val g13_example2963 : (((heap * heap) * heap) * heap) * int

val g13_example2964 : (((heap * heap) * heap) * heap) * int

val g13_example2965 : (((heap * heap) * heap) * heap) * int

val g13_example2966 : (((heap * heap) * heap) * heap) * int

val g13_example2967 : (((heap * heap) * heap) * heap) * int

val g13_example2968 : (((heap * heap) * heap) * heap) * int

val g13_example2969 : (((heap * heap) * heap) * heap) * int

val g13_example2970 : (((heap * heap) * heap) * heap) * int

val g13_example2971 : (((heap * heap) * heap) * heap) * int

val g13_example2972 : (((heap * heap) * heap) * heap) * int

val g13_example2973 : (((heap * heap) * heap) * heap) * int

val g13_example2974 : (((heap * heap) * heap) * heap) * int

val g13_example2975 : (((heap * heap) * heap) * heap) * int

val g13_example2976 : (((heap * heap) * heap) * heap) * int

val g13_example2977 : (((heap * heap) * heap) * heap) * int

val g13_example2978 : (((heap * heap) * heap) * heap) * int

val g13_example2979 : (((heap * heap) * heap) * heap) * int

val g13_example2980 : (((heap * heap) * heap) * heap) * int

val g13_example2981 : (((heap * heap) * heap) * heap) * int

val g13_example2982 : (((heap * heap) * heap) * heap) * int

val g13_example2983 : (((heap * heap) * heap) * heap) * int

val g13_example2984 : (((heap * heap) * heap) * heap) * int

val g13_example2985 : (((heap * heap) * heap) * heap) * int

val g13_example2986 : (((heap * heap) * heap) * heap) * int

val g13_example2987 : (((heap * heap) * heap) * heap) * int

val g13_example2988 : (((heap * heap) * heap) * heap) * int

val g13_example2989 : (((heap * heap) * heap) * heap) * int

val g13_example2990 : (((heap * heap) * heap) * heap) * int

val g13_example2991 : (((heap * heap) * heap) * heap) * int

val g13_example2992 : (((heap * heap) * heap) * heap) * int

val g13_example2993 : (((heap * heap) * heap) * heap) * int

val g13_example2994 : (((heap * heap) * heap) * heap) * int

val g13_example2995 : (((heap * heap) * heap) * heap) * int

val g13_example2996 : (((heap * heap) * heap) * heap) * int

val g13_example2997 : (((heap * heap) * heap) * heap) * int

val g13_example2998 : (((heap * heap) * heap) * heap) * int

val g13_example2999 : (((heap * heap) * heap) * heap) * int

val g13_example3000 : (((heap * heap) * heap) * heap) * int

val g13_example3001 : (((heap * heap) * heap) * heap) * int

val g13_example3002 : (((heap * heap) * heap) * heap) * int

val g13_example3003 : (((heap * heap) * heap) * heap) * int

val g13_example3004 : (((heap * heap) * heap) * heap) * int

val g13_example3005 : (((heap * heap) * heap) * heap) * int

val g13_example3006 : (((heap * heap) * heap) * heap) * int

val g13_example3007 : (((heap * heap) * heap) * heap) * int

val g13_example3008 : (((heap * heap) * heap) * heap) * int

val g13_example3009 : (((heap * heap) * heap) * heap) * int

val g13_example3010 : (((heap * heap) * heap) * heap) * int

val g13_example3011 : (((heap * heap) * heap) * heap) * int

val g13_example3012 : (((heap * heap) * heap) * heap) * int

val g13_example3013 : (((heap * heap) * heap) * heap) * int

val g13_example3014 : (((heap * heap) * heap) * heap) * int

val g13_example3015 : (((heap * heap) * heap) * heap) * int

val g13_example3016 : (((heap * heap) * heap) * heap) * int

val g13_example3017 : (((heap * heap) * heap) * heap) * int

val g13_example3018 : (((heap * heap) * heap) * heap) * int

val g13_example3019 : (((heap * heap) * heap) * heap) * int

val g13_example3020 : (((heap * heap) * heap) * heap) * int

val g13_example3021 : (((heap * heap) * heap) * heap) * int

val g13_example3022 : (((heap * heap) * heap) * heap) * int

val g13_example3023 : (((heap * heap) * heap) * heap) * int

val g13_example3024 : (((heap * heap) * heap) * heap) * int

val g13_example3025 : (((heap * heap) * heap) * heap) * int

val g13_example3026 : (((heap * heap) * heap) * heap) * int

val g13_example3027 : (((heap * heap) * heap) * heap) * int

val g13_example3028 : (((heap * heap) * heap) * heap) * int

val g13_example3029 : (((heap * heap) * heap) * heap) * int

val g13_example3030 : (((heap * heap) * heap) * heap) * int

val g13_example3031 : (((heap * heap) * heap) * heap) * int

val g13_example3032 : (((heap * heap) * heap) * heap) * int

val g13_example3033 : (((heap * heap) * heap) * heap) * int

val g13_example3034 : (((heap * heap) * heap) * heap) * int

val g13_example3035 : (((heap * heap) * heap) * heap) * int

val g13_example3036 : (((heap * heap) * heap) * heap) * int

val g13_example3037 : (((heap * heap) * heap) * heap) * int

val g13_example3038 : (((heap * heap) * heap) * heap) * int

val g13_example3039 : (((heap * heap) * heap) * heap) * int

val g13_example3040 : (((heap * heap) * heap) * heap) * int

val g13_example3041 : (((heap * heap) * heap) * heap) * int

val g13_example3042 : (((heap * heap) * heap) * heap) * int

val g13_example3043 : (((heap * heap) * heap) * heap) * int

val g13_example3044 : (((heap * heap) * heap) * heap) * int

val g13_example3045 : (((heap * heap) * heap) * heap) * int

val g13_example3046 : (((heap * heap) * heap) * heap) * int

val g13_example3047 : (((heap * heap) * heap) * heap) * int

val g13_example3048 : (((heap * heap) * heap) * heap) * int

val g13_example3049 : (((heap * heap) * heap) * heap) * int

val g13_example3050 : (((heap * heap) * heap) * heap) * int

val g13_example3051 : (((heap * heap) * heap) * heap) * int

val g13_example3052 : (((heap * heap) * heap) * heap) * int

val g13_example3053 : (((heap * heap) * heap) * heap) * int

val g13_example3054 : (((heap * heap) * heap) * heap) * int

val g13_example3055 : (((heap * heap) * heap) * heap) * int

val g13_example3056 : (((heap * heap) * heap) * heap) * int

val g13_example3057 : (((heap * heap) * heap) * heap) * int

val g13_example3058 : (((heap * heap) * heap) * heap) * int

val g13_example3059 : (((heap * heap) * heap) * heap) * int

val g13_example3060 : (((heap * heap) * heap) * heap) * int

val g13_example3061 : (((heap * heap) * heap) * heap) * int

val g13_example3062 : (((heap * heap) * heap) * heap) * int

val g13_example3063 : (((heap * heap) * heap) * heap) * int

val g13_example3064 : (((heap * heap) * heap) * heap) * int

val g13_example3065 : (((heap * heap) * heap) * heap) * int

val g13_example3066 : (((heap * heap) * heap) * heap) * int

val g13_example3067 : (((heap * heap) * heap) * heap) * int

val g13_example3068 : (((heap * heap) * heap) * heap) * int

val g13_example3069 : (((heap * heap) * heap) * heap) * int

val g13_example3070 : (((heap * heap) * heap) * heap) * int

val g13_example3071 : (((heap * heap) * heap) * heap) * int

val g13_example3072 : (((heap * heap) * heap) * heap) * int

val g13_example3073 : (((heap * heap) * heap) * heap) * int

val g13_example3074 : (((heap * heap) * heap) * heap) * int

val g13_example3075 : (((heap * heap) * heap) * heap) * int

val g13_example3076 : (((heap * heap) * heap) * heap) * int

val g13_example3077 : (((heap * heap) * heap) * heap) * int

val g13_example3078 : (((heap * heap) * heap) * heap) * int

val g13_example3079 : (((heap * heap) * heap) * heap) * int

val g13_example3080 : (((heap * heap) * heap) * heap) * int

val g13_example3081 : (((heap * heap) * heap) * heap) * int

val g13_example3082 : (((heap * heap) * heap) * heap) * int

val g13_example3083 : (((heap * heap) * heap) * heap) * int

val g13_example3084 : (((heap * heap) * heap) * heap) * int

val g13_example3085 : (((heap * heap) * heap) * heap) * int

val g13_example3086 : (((heap * heap) * heap) * heap) * int

val g13_example3087 : (((heap * heap) * heap) * heap) * int

val g13_example3088 : (((heap * heap) * heap) * heap) * int

val g13_example3089 : (((heap * heap) * heap) * heap) * int

val g13_example3090 : (((heap * heap) * heap) * heap) * int

val g13_example3091 : (((heap * heap) * heap) * heap) * int

val g13_example3092 : (((heap * heap) * heap) * heap) * int

val g13_example3093 : (((heap * heap) * heap) * heap) * int

val g13_example3094 : (((heap * heap) * heap) * heap) * int

val g13_example3095 : (((heap * heap) * heap) * heap) * int

val g13_example3096 : (((heap * heap) * heap) * heap) * int

val g13_example3097 : (((heap * heap) * heap) * heap) * int

val g13_example3098 : (((heap * heap) * heap) * heap) * int

val g13_example3099 : (((heap * heap) * heap) * heap) * int

val g13_example3100 : (((heap * heap) * heap) * heap) * int

val g13_example3101 : (((heap * heap) * heap) * heap) * int

val g13_example3102 : (((heap * heap) * heap) * heap) * int

val g13_example3103 : (((heap * heap) * heap) * heap) * int

val g13_example3104 : (((heap * heap) * heap) * heap) * int

val g13_example3105 : (((heap * heap) * heap) * heap) * int

val g13_example3106 : (((heap * heap) * heap) * heap) * int

val g13_example3107 : (((heap * heap) * heap) * heap) * int

val g13_example3108 : (((heap * heap) * heap) * heap) * int

val g13_example3109 : (((heap * heap) * heap) * heap) * int

val g13_example3110 : (((heap * heap) * heap) * heap) * int

val g13_example3111 : (((heap * heap) * heap) * heap) * int

val g13_example3112 : (((heap * heap) * heap) * heap) * int

val g13_example3113 : (((heap * heap) * heap) * heap) * int

val g13_example3114 : (((heap * heap) * heap) * heap) * int

val g13_example3115 : (((heap * heap) * heap) * heap) * int

val g13_example3116 : (((heap * heap) * heap) * heap) * int

val g13_example3117 : (((heap * heap) * heap) * heap) * int

val g13_example3118 : (((heap * heap) * heap) * heap) * int

val g13_example3119 : (((heap * heap) * heap) * heap) * int

val g13_example3120 : (((heap * heap) * heap) * heap) * int

val g13_example3121 : (((heap * heap) * heap) * heap) * int

val g13_example3122 : (((heap * heap) * heap) * heap) * int

val g13_example3123 : (((heap * heap) * heap) * heap) * int

val g13_example3124 : (((heap * heap) * heap) * heap) * int

val g13_example3125 : (((heap * heap) * heap) * heap) * int

val g13_example3126 : (((heap * heap) * heap) * heap) * int

val g13_example3127 : (((heap * heap) * heap) * heap) * int

val g13_example3128 : (((heap * heap) * heap) * heap) * int

val g13_example3129 : (((heap * heap) * heap) * heap) * int

val g13_example3130 : (((heap * heap) * heap) * heap) * int

val g13_example3131 : (((heap * heap) * heap) * heap) * int

val g13_example3132 : (((heap * heap) * heap) * heap) * int

val g13_example3133 : (((heap * heap) * heap) * heap) * int

val g13_example3134 : (((heap * heap) * heap) * heap) * int

val g13_example3135 : (((heap * heap) * heap) * heap) * int

val g13_example3136 : (((heap * heap) * heap) * heap) * int

val g13_example3137 : (((heap * heap) * heap) * heap) * int

val g13_example3138 : (((heap * heap) * heap) * heap) * int

val g13_example3139 : (((heap * heap) * heap) * heap) * int

val g13_example3140 : (((heap * heap) * heap) * heap) * int

val g13_example3141 : (((heap * heap) * heap) * heap) * int

val g13_example3142 : (((heap * heap) * heap) * heap) * int

val g13_example3143 : (((heap * heap) * heap) * heap) * int

val g13_example3144 : (((heap * heap) * heap) * heap) * int

val g13_example3145 : (((heap * heap) * heap) * heap) * int

val g13_example3146 : (((heap * heap) * heap) * heap) * int

val g13_example3147 : (((heap * heap) * heap) * heap) * int

val g13_example3148 : (((heap * heap) * heap) * heap) * int

val g13_example3149 : (((heap * heap) * heap) * heap) * int

val g13_example3150 : (((heap * heap) * heap) * heap) * int

val g13_example3151 : (((heap * heap) * heap) * heap) * int

val g13_example3152 : (((heap * heap) * heap) * heap) * int

val g13_example3153 : (((heap * heap) * heap) * heap) * int

val g13_example3154 : (((heap * heap) * heap) * heap) * int

val g13_example3155 : (((heap * heap) * heap) * heap) * int

val g13_example3156 : (((heap * heap) * heap) * heap) * int

val g13_example3157 : (((heap * heap) * heap) * heap) * int

val g13_example3158 : (((heap * heap) * heap) * heap) * int

val g13_example3159 : (((heap * heap) * heap) * heap) * int

val g13_example3160 : (((heap * heap) * heap) * heap) * int

val g13_example3161 : (((heap * heap) * heap) * heap) * int

val g13_example3162 : (((heap * heap) * heap) * heap) * int

val g13_example3163 : (((heap * heap) * heap) * heap) * int

val g13_example3164 : (((heap * heap) * heap) * heap) * int

val g13_example3165 : (((heap * heap) * heap) * heap) * int

val g13_example3166 : (((heap * heap) * heap) * heap) * int

val g13_example3167 : (((heap * heap) * heap) * heap) * int

val g13_example3168 : (((heap * heap) * heap) * heap) * int

val g13_example3169 : (((heap * heap) * heap) * heap) * int

val g13_example3170 : (((heap * heap) * heap) * heap) * int

val g13_example3171 : (((heap * heap) * heap) * heap) * int

val g13_example3172 : (((heap * heap) * heap) * heap) * int

val g13_example3173 : (((heap * heap) * heap) * heap) * int

val g13_example3174 : (((heap * heap) * heap) * heap) * int

val g13_example3175 : (((heap * heap) * heap) * heap) * int

val g13_example3176 : (((heap * heap) * heap) * heap) * int

val g13_example3177 : (((heap * heap) * heap) * heap) * int

val g13_example3178 : (((heap * heap) * heap) * heap) * int

val g13_example3179 : (((heap * heap) * heap) * heap) * int

val g13_example3180 : (((heap * heap) * heap) * heap) * int

val g13_example3181 : (((heap * heap) * heap) * heap) * int

val g13_example3182 : (((heap * heap) * heap) * heap) * int

val g13_example3183 : (((heap * heap) * heap) * heap) * int

val g13_example3184 : (((heap * heap) * heap) * heap) * int

val g13_example3185 : (((heap * heap) * heap) * heap) * int

val g13_example3186 : (((heap * heap) * heap) * heap) * int

val g13_example3187 : (((heap * heap) * heap) * heap) * int

val g13_example3188 : (((heap * heap) * heap) * heap) * int

val g13_example3189 : (((heap * heap) * heap) * heap) * int

val g13_example3190 : (((heap * heap) * heap) * heap) * int

val g13_example3191 : (((heap * heap) * heap) * heap) * int

val g13_example3192 : (((heap * heap) * heap) * heap) * int

val g13_example3193 : (((heap * heap) * heap) * heap) * int

val g13_example3194 : (((heap * heap) * heap) * heap) * int

val g13_example3195 : (((heap * heap) * heap) * heap) * int

val g13_example3196 : (((heap * heap) * heap) * heap) * int

val g13_example3197 : (((heap * heap) * heap) * heap) * int

val g13_example3198 : (((heap * heap) * heap) * heap) * int

val g13_example3199 : (((heap * heap) * heap) * heap) * int

val g13_example3200 : (((heap * heap) * heap) * heap) * int

val g13_example3201 : (((heap * heap) * heap) * heap) * int

val g13_example3202 : (((heap * heap) * heap) * heap) * int

val g13_example3203 : (((heap * heap) * heap) * heap) * int

val g13_example3204 : (((heap * heap) * heap) * heap) * int

val g13_example3205 : (((heap * heap) * heap) * heap) * int

val g13_example3206 : (((heap * heap) * heap) * heap) * int

val g13_example3207 : (((heap * heap) * heap) * heap) * int

val g13_example3208 : (((heap * heap) * heap) * heap) * int

val g13_example3209 : (((heap * heap) * heap) * heap) * int

val g13_example3210 : (((heap * heap) * heap) * heap) * int

val g13_example3211 : (((heap * heap) * heap) * heap) * int

val g13_example3212 : (((heap * heap) * heap) * heap) * int

val g13_example3213 : (((heap * heap) * heap) * heap) * int

val g13_example3214 : (((heap * heap) * heap) * heap) * int

val g13_example3215 : (((heap * heap) * heap) * heap) * int

val g13_example3216 : (((heap * heap) * heap) * heap) * int

val g13_example3217 : (((heap * heap) * heap) * heap) * int

val g13_example3218 : (((heap * heap) * heap) * heap) * int

val g13_example3219 : (((heap * heap) * heap) * heap) * int

val g13_example3220 : (((heap * heap) * heap) * heap) * int

val g13_example3221 : (((heap * heap) * heap) * heap) * int

val g13_example3222 : (((heap * heap) * heap) * heap) * int

val g13_example3223 : (((heap * heap) * heap) * heap) * int

val g13_example3224 : (((heap * heap) * heap) * heap) * int

val g13_example3225 : (((heap * heap) * heap) * heap) * int

val g13_example3226 : (((heap * heap) * heap) * heap) * int

val g13_example3227 : (((heap * heap) * heap) * heap) * int

val g13_example3228 : (((heap * heap) * heap) * heap) * int

val g13_example3229 : (((heap * heap) * heap) * heap) * int

val g13_example3230 : (((heap * heap) * heap) * heap) * int

val g13_example3231 : (((heap * heap) * heap) * heap) * int

val g13_example3232 : (((heap * heap) * heap) * heap) * int

val g13_example3233 : (((heap * heap) * heap) * heap) * int

val g13_example3234 : (((heap * heap) * heap) * heap) * int

val g13_example3235 : (((heap * heap) * heap) * heap) * int

val g13_example3236 : (((heap * heap) * heap) * heap) * int

val g13_example3237 : (((heap * heap) * heap) * heap) * int

val g13_example3238 : (((heap * heap) * heap) * heap) * int

val g13_example3239 : (((heap * heap) * heap) * heap) * int

val g13_example3240 : (((heap * heap) * heap) * heap) * int

val g13_example3241 : (((heap * heap) * heap) * heap) * int

val g13_example3242 : (((heap * heap) * heap) * heap) * int

val g13_example3243 : (((heap * heap) * heap) * heap) * int

val g13_example3244 : (((heap * heap) * heap) * heap) * int

val g13_example3245 : (((heap * heap) * heap) * heap) * int

val g13_example3246 : (((heap * heap) * heap) * heap) * int

val g13_example3247 : (((heap * heap) * heap) * heap) * int

val g13_example3248 : (((heap * heap) * heap) * heap) * int

val g13_example3249 : (((heap * heap) * heap) * heap) * int

val g13_example3250 : (((heap * heap) * heap) * heap) * int

val g13_example3251 : (((heap * heap) * heap) * heap) * int

val g13_example3252 : (((heap * heap) * heap) * heap) * int

val g13_example3253 : (((heap * heap) * heap) * heap) * int

val g13_example3254 : (((heap * heap) * heap) * heap) * int

val g13_example3255 : (((heap * heap) * heap) * heap) * int

val g13_example3256 : (((heap * heap) * heap) * heap) * int

val g13_example3257 : (((heap * heap) * heap) * heap) * int

val g13_example3258 : (((heap * heap) * heap) * heap) * int

val g13_example3259 : (((heap * heap) * heap) * heap) * int

val g13_example3260 : (((heap * heap) * heap) * heap) * int

val g13_example3261 : (((heap * heap) * heap) * heap) * int

val g13_example3262 : (((heap * heap) * heap) * heap) * int

val g13_example3263 : (((heap * heap) * heap) * heap) * int

val g13_example3264 : (((heap * heap) * heap) * heap) * int

val g13_example3265 : (((heap * heap) * heap) * heap) * int

val g13_example3266 : (((heap * heap) * heap) * heap) * int

val g13_example3267 : (((heap * heap) * heap) * heap) * int

val g13_example3268 : (((heap * heap) * heap) * heap) * int

val g13_example3269 : (((heap * heap) * heap) * heap) * int

val g13_example3270 : (((heap * heap) * heap) * heap) * int

val g13_example3271 : (((heap * heap) * heap) * heap) * int

val g13_example3272 : (((heap * heap) * heap) * heap) * int

val g13_example3273 : (((heap * heap) * heap) * heap) * int

val g13_example3274 : (((heap * heap) * heap) * heap) * int

val g13_example3275 : (((heap * heap) * heap) * heap) * int

val g13_example3276 : (((heap * heap) * heap) * heap) * int

val g13_example3277 : (((heap * heap) * heap) * heap) * int

val g13_example3278 : (((heap * heap) * heap) * heap) * int

val g13_example3279 : (((heap * heap) * heap) * heap) * int

val g13_example3280 : (((heap * heap) * heap) * heap) * int

val g13_example3281 : (((heap * heap) * heap) * heap) * int

val g13_example3282 : (((heap * heap) * heap) * heap) * int

val g13_example3283 : (((heap * heap) * heap) * heap) * int

val g13_example3284 : (((heap * heap) * heap) * heap) * int

val g13_example3285 : (((heap * heap) * heap) * heap) * int

val g13_example3286 : (((heap * heap) * heap) * heap) * int

val g13_example3287 : (((heap * heap) * heap) * heap) * int

val g13_example3288 : (((heap * heap) * heap) * heap) * int

val g13_example3289 : (((heap * heap) * heap) * heap) * int

val g13_example3290 : (((heap * heap) * heap) * heap) * int

val g13_example3291 : (((heap * heap) * heap) * heap) * int

val g13_example3292 : (((heap * heap) * heap) * heap) * int

val g13_example3293 : (((heap * heap) * heap) * heap) * int

val g13_example3294 : (((heap * heap) * heap) * heap) * int

val g13_example3295 : (((heap * heap) * heap) * heap) * int

val g13_example3296 : (((heap * heap) * heap) * heap) * int

val g13_example3297 : (((heap * heap) * heap) * heap) * int

val g13_example3298 : (((heap * heap) * heap) * heap) * int

val g13_example3299 : (((heap * heap) * heap) * heap) * int

val g13_example3300 : (((heap * heap) * heap) * heap) * int

val g13_example3301 : (((heap * heap) * heap) * heap) * int

val g13_example3302 : (((heap * heap) * heap) * heap) * int

val g13_example3303 : (((heap * heap) * heap) * heap) * int

val g13_example3304 : (((heap * heap) * heap) * heap) * int

val g13_example3305 : (((heap * heap) * heap) * heap) * int

val g13_example3306 : (((heap * heap) * heap) * heap) * int

val g13_example3307 : (((heap * heap) * heap) * heap) * int

val g13_example3308 : (((heap * heap) * heap) * heap) * int

val g13_example3309 : (((heap * heap) * heap) * heap) * int

val g13_example3310 : (((heap * heap) * heap) * heap) * int

val g13_example3311 : (((heap * heap) * heap) * heap) * int

val g13_example3312 : (((heap * heap) * heap) * heap) * int

val g13_example3313 : (((heap * heap) * heap) * heap) * int

val g13_example3314 : (((heap * heap) * heap) * heap) * int

val g13_example3315 : (((heap * heap) * heap) * heap) * int

val g13_example3316 : (((heap * heap) * heap) * heap) * int

val g13_example3317 : (((heap * heap) * heap) * heap) * int

val g13_example3318 : (((heap * heap) * heap) * heap) * int

val g13_example3319 : (((heap * heap) * heap) * heap) * int

val g13_example3320 : (((heap * heap) * heap) * heap) * int

val g13_example3321 : (((heap * heap) * heap) * heap) * int

val g13_example3322 : (((heap * heap) * heap) * heap) * int

val g13_example3323 : (((heap * heap) * heap) * heap) * int

val g13_example3324 : (((heap * heap) * heap) * heap) * int

val g13_example3325 : (((heap * heap) * heap) * heap) * int

val g13_example3326 : (((heap * heap) * heap) * heap) * int

val g13_example3327 : (((heap * heap) * heap) * heap) * int

val g13_example3328 : (((heap * heap) * heap) * heap) * int

val g13_example3329 : (((heap * heap) * heap) * heap) * int

val g13_example3330 : (((heap * heap) * heap) * heap) * int

val g13_example3331 : (((heap * heap) * heap) * heap) * int

val g13_example3332 : (((heap * heap) * heap) * heap) * int

val g13_example3333 : (((heap * heap) * heap) * heap) * int

val g13_example3334 : (((heap * heap) * heap) * heap) * int

val g13_example3335 : (((heap * heap) * heap) * heap) * int

val g13_example3336 : (((heap * heap) * heap) * heap) * int

val g13_example3337 : (((heap * heap) * heap) * heap) * int

val g13_example3338 : (((heap * heap) * heap) * heap) * int

val g13_example3339 : (((heap * heap) * heap) * heap) * int

val g13_example3340 : (((heap * heap) * heap) * heap) * int

val g13_example3341 : (((heap * heap) * heap) * heap) * int

val g13_example3342 : (((heap * heap) * heap) * heap) * int

val g13_example3343 : (((heap * heap) * heap) * heap) * int

val g13_example3344 : (((heap * heap) * heap) * heap) * int

val g13_example3345 : (((heap * heap) * heap) * heap) * int

val g13_example3346 : (((heap * heap) * heap) * heap) * int

val g13_example3347 : (((heap * heap) * heap) * heap) * int

val g13_example3348 : (((heap * heap) * heap) * heap) * int

val g13_example3349 : (((heap * heap) * heap) * heap) * int

val g13_example3350 : (((heap * heap) * heap) * heap) * int

val g13_example3351 : (((heap * heap) * heap) * heap) * int

val g13_example3352 : (((heap * heap) * heap) * heap) * int

val g13_example3353 : (((heap * heap) * heap) * heap) * int

val g13_example3354 : (((heap * heap) * heap) * heap) * int

val g13_example3355 : (((heap * heap) * heap) * heap) * int

val g13_example3356 : (((heap * heap) * heap) * heap) * int

val g13_example3357 : (((heap * heap) * heap) * heap) * int

val g13_example3358 : (((heap * heap) * heap) * heap) * int

val g13_example3359 : (((heap * heap) * heap) * heap) * int

val g13_example3360 : (((heap * heap) * heap) * heap) * int

val g13_example3361 : (((heap * heap) * heap) * heap) * int

val g13_example3362 : (((heap * heap) * heap) * heap) * int

val g13_example3363 : (((heap * heap) * heap) * heap) * int

val g13_example3364 : (((heap * heap) * heap) * heap) * int

val g13_example3365 : (((heap * heap) * heap) * heap) * int

val g13_example3366 : (((heap * heap) * heap) * heap) * int

val g13_example3367 : (((heap * heap) * heap) * heap) * int

val g13_example3368 : (((heap * heap) * heap) * heap) * int

val g13_example3369 : (((heap * heap) * heap) * heap) * int

val g13_example3370 : (((heap * heap) * heap) * heap) * int

val g13_example3371 : (((heap * heap) * heap) * heap) * int

val g13_example3372 : (((heap * heap) * heap) * heap) * int

val g13_example3373 : (((heap * heap) * heap) * heap) * int

val g13_example3374 : (((heap * heap) * heap) * heap) * int

val g13_example3375 : (((heap * heap) * heap) * heap) * int

val g13_example3376 : (((heap * heap) * heap) * heap) * int

val g13_example3377 : (((heap * heap) * heap) * heap) * int

val g13_example3378 : (((heap * heap) * heap) * heap) * int

val g13_example3379 : (((heap * heap) * heap) * heap) * int

val g13_example3380 : (((heap * heap) * heap) * heap) * int

val g13_example3381 : (((heap * heap) * heap) * heap) * int

val g13_example3382 : (((heap * heap) * heap) * heap) * int

val g13_example3383 : (((heap * heap) * heap) * heap) * int

val g13_example3384 : (((heap * heap) * heap) * heap) * int

val g13_example3385 : (((heap * heap) * heap) * heap) * int

val g13_example3386 : (((heap * heap) * heap) * heap) * int

val g13_example3387 : (((heap * heap) * heap) * heap) * int

val g13_example3388 : (((heap * heap) * heap) * heap) * int

val g13_example3389 : (((heap * heap) * heap) * heap) * int

val g13_example3390 : (((heap * heap) * heap) * heap) * int

val g13_example3391 : (((heap * heap) * heap) * heap) * int

val g13_example3392 : (((heap * heap) * heap) * heap) * int

val g13_example3393 : (((heap * heap) * heap) * heap) * int

val g13_example3394 : (((heap * heap) * heap) * heap) * int

val g13_example3395 : (((heap * heap) * heap) * heap) * int

val g13_example3396 : (((heap * heap) * heap) * heap) * int

val g13_example3397 : (((heap * heap) * heap) * heap) * int

val g13_example3398 : (((heap * heap) * heap) * heap) * int

val g13_example3399 : (((heap * heap) * heap) * heap) * int

val g13_example3400 : (((heap * heap) * heap) * heap) * int

val g13_example3401 : (((heap * heap) * heap) * heap) * int

val g13_example3402 : (((heap * heap) * heap) * heap) * int

val g13_example3403 : (((heap * heap) * heap) * heap) * int

val g13_example3404 : (((heap * heap) * heap) * heap) * int

val g13_example3405 : (((heap * heap) * heap) * heap) * int

val g13_example3406 : (((heap * heap) * heap) * heap) * int

val g13_example3407 : (((heap * heap) * heap) * heap) * int

val g13_example3408 : (((heap * heap) * heap) * heap) * int

val g13_example3409 : (((heap * heap) * heap) * heap) * int

val g13_example3410 : (((heap * heap) * heap) * heap) * int

val g13_example3411 : (((heap * heap) * heap) * heap) * int

val g13_example3412 : (((heap * heap) * heap) * heap) * int

val g13_example3413 : (((heap * heap) * heap) * heap) * int

val g13_example3414 : (((heap * heap) * heap) * heap) * int

val g13_example3415 : (((heap * heap) * heap) * heap) * int

val g13_example3416 : (((heap * heap) * heap) * heap) * int

val g13_example3417 : (((heap * heap) * heap) * heap) * int

val g13_example3418 : (((heap * heap) * heap) * heap) * int

val g13_example3419 : (((heap * heap) * heap) * heap) * int

val g13_example3420 : (((heap * heap) * heap) * heap) * int

val g13_example3421 : (((heap * heap) * heap) * heap) * int

val g13_example3422 : (((heap * heap) * heap) * heap) * int

val g13_example3423 : (((heap * heap) * heap) * heap) * int

val g13_example3424 : (((heap * heap) * heap) * heap) * int

val g13_example3425 : (((heap * heap) * heap) * heap) * int

val g13_example3426 : (((heap * heap) * heap) * heap) * int

val g13_example3427 : (((heap * heap) * heap) * heap) * int

val g13_example3428 : (((heap * heap) * heap) * heap) * int

val g13_example3429 : (((heap * heap) * heap) * heap) * int

val g13_example3430 : (((heap * heap) * heap) * heap) * int

val g13_example3431 : (((heap * heap) * heap) * heap) * int

val g13_example3432 : (((heap * heap) * heap) * heap) * int

val g13_example3433 : (((heap * heap) * heap) * heap) * int

val g13_example3434 : (((heap * heap) * heap) * heap) * int

val g13_example3435 : (((heap * heap) * heap) * heap) * int

val g13_example3436 : (((heap * heap) * heap) * heap) * int

val g13_example3437 : (((heap * heap) * heap) * heap) * int

val g13_example3438 : (((heap * heap) * heap) * heap) * int

val g13_example3439 : (((heap * heap) * heap) * heap) * int

val g13_example3440 : (((heap * heap) * heap) * heap) * int

val g13_example3441 : (((heap * heap) * heap) * heap) * int

val g13_example3442 : (((heap * heap) * heap) * heap) * int

val g13_example3443 : (((heap * heap) * heap) * heap) * int

val g13_example3444 : (((heap * heap) * heap) * heap) * int

val g13_example3445 : (((heap * heap) * heap) * heap) * int

val g13_example3446 : (((heap * heap) * heap) * heap) * int

val g13_example3447 : (((heap * heap) * heap) * heap) * int

val g13_example3448 : (((heap * heap) * heap) * heap) * int

val g13_example3449 : (((heap * heap) * heap) * heap) * int

val g13_example3450 : (((heap * heap) * heap) * heap) * int

val g13_example3451 : (((heap * heap) * heap) * heap) * int

val g13_example3452 : (((heap * heap) * heap) * heap) * int

val g13_example3453 : (((heap * heap) * heap) * heap) * int

val g13_example3454 : (((heap * heap) * heap) * heap) * int

val g13_example3455 : (((heap * heap) * heap) * heap) * int

val g13_example3456 : (((heap * heap) * heap) * heap) * int

val g13_example3457 : (((heap * heap) * heap) * heap) * int

val g13_example3458 : (((heap * heap) * heap) * heap) * int

val g13_example3459 : (((heap * heap) * heap) * heap) * int

val g13_example3460 : (((heap * heap) * heap) * heap) * int

val g13_example3461 : (((heap * heap) * heap) * heap) * int

val g13_example3462 : (((heap * heap) * heap) * heap) * int

val g13_example3463 : (((heap * heap) * heap) * heap) * int

val g13_example3464 : (((heap * heap) * heap) * heap) * int

val g13_example3465 : (((heap * heap) * heap) * heap) * int

val g13_example3466 : (((heap * heap) * heap) * heap) * int

val g13_example3467 : (((heap * heap) * heap) * heap) * int

val g13_example3468 : (((heap * heap) * heap) * heap) * int

val g13_example3469 : (((heap * heap) * heap) * heap) * int

val g13_example3470 : (((heap * heap) * heap) * heap) * int

val g13_example3471 : (((heap * heap) * heap) * heap) * int

val g13_example3472 : (((heap * heap) * heap) * heap) * int

val g13_example3473 : (((heap * heap) * heap) * heap) * int

val g13_example3474 : (((heap * heap) * heap) * heap) * int

val g13_example3475 : (((heap * heap) * heap) * heap) * int

val g13_example3476 : (((heap * heap) * heap) * heap) * int

val g13_example3477 : (((heap * heap) * heap) * heap) * int

val g13_example3478 : (((heap * heap) * heap) * heap) * int

val g13_example3479 : (((heap * heap) * heap) * heap) * int

val g13_example3480 : (((heap * heap) * heap) * heap) * int

val g13_example3481 : (((heap * heap) * heap) * heap) * int

val g13_example3482 : (((heap * heap) * heap) * heap) * int

val g13_example3483 : (((heap * heap) * heap) * heap) * int

val g13_example3484 : (((heap * heap) * heap) * heap) * int

val g13_example3485 : (((heap * heap) * heap) * heap) * int

val g13_example3486 : (((heap * heap) * heap) * heap) * int

val g13_example3487 : (((heap * heap) * heap) * heap) * int

val g13_example3488 : (((heap * heap) * heap) * heap) * int

val g13_example3489 : (((heap * heap) * heap) * heap) * int

val g13_example3490 : (((heap * heap) * heap) * heap) * int

val g13_example3491 : (((heap * heap) * heap) * heap) * int

val g13_example3492 : (((heap * heap) * heap) * heap) * int

val g13_example3493 : (((heap * heap) * heap) * heap) * int

val g13_example3494 : (((heap * heap) * heap) * heap) * int

val g13_example3495 : (((heap * heap) * heap) * heap) * int

val g13_example3496 : (((heap * heap) * heap) * heap) * int

val g13_example3497 : (((heap * heap) * heap) * heap) * int

val g13_example3498 : (((heap * heap) * heap) * heap) * int

val g13_example3499 : (((heap * heap) * heap) * heap) * int

val g13_example3500 : (((heap * heap) * heap) * heap) * int

val g13_example3501 : (((heap * heap) * heap) * heap) * int

val g13_example3502 : (((heap * heap) * heap) * heap) * int

val g13_example3503 : (((heap * heap) * heap) * heap) * int

val g13_example3504 : (((heap * heap) * heap) * heap) * int

val g13_example3505 : (((heap * heap) * heap) * heap) * int

val g13_example3506 : (((heap * heap) * heap) * heap) * int

val g13_example3507 : (((heap * heap) * heap) * heap) * int

val g13_example3508 : (((heap * heap) * heap) * heap) * int

val g13_example3509 : (((heap * heap) * heap) * heap) * int

val g13_example3510 : (((heap * heap) * heap) * heap) * int

val g13_example3511 : (((heap * heap) * heap) * heap) * int

val g13_example3512 : (((heap * heap) * heap) * heap) * int

val g13_example3513 : (((heap * heap) * heap) * heap) * int

val g13_example3514 : (((heap * heap) * heap) * heap) * int

val g13_example3515 : (((heap * heap) * heap) * heap) * int

val g13_example3516 : (((heap * heap) * heap) * heap) * int

val g13_example3517 : (((heap * heap) * heap) * heap) * int

val g13_example3518 : (((heap * heap) * heap) * heap) * int

val g13_example3519 : (((heap * heap) * heap) * heap) * int

val g13_example3520 : (((heap * heap) * heap) * heap) * int

val g13_example3521 : (((heap * heap) * heap) * heap) * int

val g13_example3522 : (((heap * heap) * heap) * heap) * int

val g13_example3523 : (((heap * heap) * heap) * heap) * int

val g13_example3524 : (((heap * heap) * heap) * heap) * int

val g13_example3525 : (((heap * heap) * heap) * heap) * int

val g13_example3526 : (((heap * heap) * heap) * heap) * int

val g13_example3527 : (((heap * heap) * heap) * heap) * int

val g13_example3528 : (((heap * heap) * heap) * heap) * int

val g13_example3529 : (((heap * heap) * heap) * heap) * int

val g13_example3530 : (((heap * heap) * heap) * heap) * int

val g13_example3531 : (((heap * heap) * heap) * heap) * int

val g13_example3532 : (((heap * heap) * heap) * heap) * int

val g13_example3533 : (((heap * heap) * heap) * heap) * int

val g13_example3534 : (((heap * heap) * heap) * heap) * int

val g13_example3535 : (((heap * heap) * heap) * heap) * int

val g13_example3536 : (((heap * heap) * heap) * heap) * int

val g13_example3537 : (((heap * heap) * heap) * heap) * int

val g13_example3538 : (((heap * heap) * heap) * heap) * int

val g13_example3539 : (((heap * heap) * heap) * heap) * int

val g13_example3540 : (((heap * heap) * heap) * heap) * int

val g13_example3541 : (((heap * heap) * heap) * heap) * int

val g13_example3542 : (((heap * heap) * heap) * heap) * int

val g13_example3543 : (((heap * heap) * heap) * heap) * int

val g13_example3544 : (((heap * heap) * heap) * heap) * int

val g13_example3545 : (((heap * heap) * heap) * heap) * int

val g13_example3546 : (((heap * heap) * heap) * heap) * int

val g13_example3547 : (((heap * heap) * heap) * heap) * int

val g13_example3548 : (((heap * heap) * heap) * heap) * int

val g13_example3549 : (((heap * heap) * heap) * heap) * int

val g13_example3550 : (((heap * heap) * heap) * heap) * int

val g13_example3551 : (((heap * heap) * heap) * heap) * int

val g13_example3552 : (((heap * heap) * heap) * heap) * int

val g13_example3553 : (((heap * heap) * heap) * heap) * int

val g13_example3554 : (((heap * heap) * heap) * heap) * int

val g13_example3555 : (((heap * heap) * heap) * heap) * int

val g13_example3556 : (((heap * heap) * heap) * heap) * int

val g13_example3557 : (((heap * heap) * heap) * heap) * int

val g13_example3558 : (((heap * heap) * heap) * heap) * int

val g13_example3559 : (((heap * heap) * heap) * heap) * int

val g13_example3560 : (((heap * heap) * heap) * heap) * int

val g13_example3561 : (((heap * heap) * heap) * heap) * int

val g13_example3562 : (((heap * heap) * heap) * heap) * int

val g13_example3563 : (((heap * heap) * heap) * heap) * int

val g13_example3564 : (((heap * heap) * heap) * heap) * int

val g13_example3565 : (((heap * heap) * heap) * heap) * int

val g13_example3566 : (((heap * heap) * heap) * heap) * int

val g13_example3567 : (((heap * heap) * heap) * heap) * int

val g13_example3568 : (((heap * heap) * heap) * heap) * int

val g13_example3569 : (((heap * heap) * heap) * heap) * int

val g13_example3570 : (((heap * heap) * heap) * heap) * int

val g13_example3571 : (((heap * heap) * heap) * heap) * int

val g13_example3572 : (((heap * heap) * heap) * heap) * int

val g13_example3573 : (((heap * heap) * heap) * heap) * int

val g13_example3574 : (((heap * heap) * heap) * heap) * int

val g13_example3575 : (((heap * heap) * heap) * heap) * int

val g13_example3576 : (((heap * heap) * heap) * heap) * int

val g13_example3577 : (((heap * heap) * heap) * heap) * int

val g13_example3578 : (((heap * heap) * heap) * heap) * int

val g13_example3579 : (((heap * heap) * heap) * heap) * int

val g13_example3580 : (((heap * heap) * heap) * heap) * int

val g13_example3581 : (((heap * heap) * heap) * heap) * int

val g13_example3582 : (((heap * heap) * heap) * heap) * int

val g13_example3583 : (((heap * heap) * heap) * heap) * int

val g13_example3584 : (((heap * heap) * heap) * heap) * int

val g13_example3585 : (((heap * heap) * heap) * heap) * int

val g13_example3586 : (((heap * heap) * heap) * heap) * int

val g13_example3587 : (((heap * heap) * heap) * heap) * int

val g13_example3588 : (((heap * heap) * heap) * heap) * int

val g13_example3589 : (((heap * heap) * heap) * heap) * int

val g13_example3590 : (((heap * heap) * heap) * heap) * int

val g13_example3591 : (((heap * heap) * heap) * heap) * int

val g13_example3592 : (((heap * heap) * heap) * heap) * int

val g13_example3593 : (((heap * heap) * heap) * heap) * int

val g13_example3594 : (((heap * heap) * heap) * heap) * int

val g13_example3595 : (((heap * heap) * heap) * heap) * int

val g13_example3596 : (((heap * heap) * heap) * heap) * int

val g13_example3597 : (((heap * heap) * heap) * heap) * int

val g13_example3598 : (((heap * heap) * heap) * heap) * int

val g13_example3599 : (((heap * heap) * heap) * heap) * int

val g13_example3600 : (((heap * heap) * heap) * heap) * int

val g13_example3601 : (((heap * heap) * heap) * heap) * int

val g13_example3602 : (((heap * heap) * heap) * heap) * int

val g13_example3603 : (((heap * heap) * heap) * heap) * int

val g13_example3604 : (((heap * heap) * heap) * heap) * int

val g13_example3605 : (((heap * heap) * heap) * heap) * int

val g13_example3606 : (((heap * heap) * heap) * heap) * int

val g13_example3607 : (((heap * heap) * heap) * heap) * int

val g13_example3608 : (((heap * heap) * heap) * heap) * int

val g13_example3609 : (((heap * heap) * heap) * heap) * int

val g13_example3610 : (((heap * heap) * heap) * heap) * int

val g13_example3611 : (((heap * heap) * heap) * heap) * int

val g13_example3612 : (((heap * heap) * heap) * heap) * int

val g13_example3613 : (((heap * heap) * heap) * heap) * int

val g13_example3614 : (((heap * heap) * heap) * heap) * int

val g13_example3615 : (((heap * heap) * heap) * heap) * int

val g13_example3616 : (((heap * heap) * heap) * heap) * int

val g13_example3617 : (((heap * heap) * heap) * heap) * int

val g13_example3618 : (((heap * heap) * heap) * heap) * int

val g13_example3619 : (((heap * heap) * heap) * heap) * int

val g13_example3620 : (((heap * heap) * heap) * heap) * int

val g13_example3621 : (((heap * heap) * heap) * heap) * int

val g13_example3622 : (((heap * heap) * heap) * heap) * int

val g13_example3623 : (((heap * heap) * heap) * heap) * int

val g13_example3624 : (((heap * heap) * heap) * heap) * int

val g13_example3625 : (((heap * heap) * heap) * heap) * int

val g13_example3626 : (((heap * heap) * heap) * heap) * int

val g13_example3627 : (((heap * heap) * heap) * heap) * int

val g13_example3628 : (((heap * heap) * heap) * heap) * int

val g13_example3629 : (((heap * heap) * heap) * heap) * int

val g13_example3630 : (((heap * heap) * heap) * heap) * int

val g13_example3631 : (((heap * heap) * heap) * heap) * int

val g13_example3632 : (((heap * heap) * heap) * heap) * int

val g13_example3633 : (((heap * heap) * heap) * heap) * int

val g13_example3634 : (((heap * heap) * heap) * heap) * int

val g13_example3635 : (((heap * heap) * heap) * heap) * int

val g13_example3636 : (((heap * heap) * heap) * heap) * int

val g13_example3637 : (((heap * heap) * heap) * heap) * int

val g13_example3638 : (((heap * heap) * heap) * heap) * int

val g13_example3639 : (((heap * heap) * heap) * heap) * int

val g13_example3640 : (((heap * heap) * heap) * heap) * int

val g13_example3641 : (((heap * heap) * heap) * heap) * int

val g13_example3642 : (((heap * heap) * heap) * heap) * int

val g13_example3643 : (((heap * heap) * heap) * heap) * int

val g13_example3644 : (((heap * heap) * heap) * heap) * int

val g13_example3645 : (((heap * heap) * heap) * heap) * int

val g13_example3646 : (((heap * heap) * heap) * heap) * int

val g13_example3647 : (((heap * heap) * heap) * heap) * int

val g13_example3648 : (((heap * heap) * heap) * heap) * int

val g13_example3649 : (((heap * heap) * heap) * heap) * int

val g13_example3650 : (((heap * heap) * heap) * heap) * int

val g13_example3651 : (((heap * heap) * heap) * heap) * int

val g13_example3652 : (((heap * heap) * heap) * heap) * int

val g13_example3653 : (((heap * heap) * heap) * heap) * int

val g13_example3654 : (((heap * heap) * heap) * heap) * int

val g13_example3655 : (((heap * heap) * heap) * heap) * int

val g13_example3656 : (((heap * heap) * heap) * heap) * int

val g13_example3657 : (((heap * heap) * heap) * heap) * int

val g13_example3658 : (((heap * heap) * heap) * heap) * int

val g13_example3659 : (((heap * heap) * heap) * heap) * int

val g13_example3660 : (((heap * heap) * heap) * heap) * int

val g13_example3661 : (((heap * heap) * heap) * heap) * int

val g13_example3662 : (((heap * heap) * heap) * heap) * int

val g13_example3663 : (((heap * heap) * heap) * heap) * int

val g13_example3664 : (((heap * heap) * heap) * heap) * int

val g13_example3665 : (((heap * heap) * heap) * heap) * int

val g13_example3666 : (((heap * heap) * heap) * heap) * int

val g13_example3667 : (((heap * heap) * heap) * heap) * int

val g13_example3668 : (((heap * heap) * heap) * heap) * int

val g13_example3669 : (((heap * heap) * heap) * heap) * int

val g13_example3670 : (((heap * heap) * heap) * heap) * int

val g13_example3671 : (((heap * heap) * heap) * heap) * int

val g13_example3672 : (((heap * heap) * heap) * heap) * int

val g13_example3673 : (((heap * heap) * heap) * heap) * int

val g13_example3674 : (((heap * heap) * heap) * heap) * int

val g13_example3675 : (((heap * heap) * heap) * heap) * int

val g13_example3676 : (((heap * heap) * heap) * heap) * int

val g13_example3677 : (((heap * heap) * heap) * heap) * int

val g13_example3678 : (((heap * heap) * heap) * heap) * int

val g13_example3679 : (((heap * heap) * heap) * heap) * int

val g13_example3680 : (((heap * heap) * heap) * heap) * int

val g13_example3681 : (((heap * heap) * heap) * heap) * int

val g13_example3682 : (((heap * heap) * heap) * heap) * int

val g13_example3683 : (((heap * heap) * heap) * heap) * int

val g13_example3684 : (((heap * heap) * heap) * heap) * int

val g13_example3685 : (((heap * heap) * heap) * heap) * int

val g13_example3686 : (((heap * heap) * heap) * heap) * int

val g13_example3687 : (((heap * heap) * heap) * heap) * int

val g13_example3688 : (((heap * heap) * heap) * heap) * int

val g13_example3689 : (((heap * heap) * heap) * heap) * int

val g13_example3690 : (((heap * heap) * heap) * heap) * int

val g13_example3691 : (((heap * heap) * heap) * heap) * int

val g13_example3692 : (((heap * heap) * heap) * heap) * int

val g13_example3693 : (((heap * heap) * heap) * heap) * int

val g13_example3694 : (((heap * heap) * heap) * heap) * int

val g13_example3695 : (((heap * heap) * heap) * heap) * int

val g13_example3696 : (((heap * heap) * heap) * heap) * int

val g13_example3697 : (((heap * heap) * heap) * heap) * int

val g13_example3698 : (((heap * heap) * heap) * heap) * int

val g13_example3699 : (((heap * heap) * heap) * heap) * int

val g13_example3700 : (((heap * heap) * heap) * heap) * int

val g13_example3701 : (((heap * heap) * heap) * heap) * int

val g13_example3702 : (((heap * heap) * heap) * heap) * int

val g13_example3703 : (((heap * heap) * heap) * heap) * int

val g13_example3704 : (((heap * heap) * heap) * heap) * int

val g13_example3705 : (((heap * heap) * heap) * heap) * int

val g13_example3706 : (((heap * heap) * heap) * heap) * int

val g13_example3707 : (((heap * heap) * heap) * heap) * int

val g13_example3708 : (((heap * heap) * heap) * heap) * int

val g13_example3709 : (((heap * heap) * heap) * heap) * int

val g13_example3710 : (((heap * heap) * heap) * heap) * int

val g13_example3711 : (((heap * heap) * heap) * heap) * int

val g13_example3712 : (((heap * heap) * heap) * heap) * int

val g13_example3713 : (((heap * heap) * heap) * heap) * int

val g13_example3714 : (((heap * heap) * heap) * heap) * int

val g13_example3715 : (((heap * heap) * heap) * heap) * int

val g13_example3716 : (((heap * heap) * heap) * heap) * int

val g13_example3717 : (((heap * heap) * heap) * heap) * int

val g13_example3718 : (((heap * heap) * heap) * heap) * int

val g13_example3719 : (((heap * heap) * heap) * heap) * int

val g13_example3720 : (((heap * heap) * heap) * heap) * int

val g13_example3721 : (((heap * heap) * heap) * heap) * int

val g13_example3722 : (((heap * heap) * heap) * heap) * int

val g13_example3723 : (((heap * heap) * heap) * heap) * int

val g13_example3724 : (((heap * heap) * heap) * heap) * int

val g13_example3725 : (((heap * heap) * heap) * heap) * int

val g13_example3726 : (((heap * heap) * heap) * heap) * int

val g13_example3727 : (((heap * heap) * heap) * heap) * int

val g13_example3728 : (((heap * heap) * heap) * heap) * int

val g13_example3729 : (((heap * heap) * heap) * heap) * int

val g13_example3730 : (((heap * heap) * heap) * heap) * int

val g13_example3731 : (((heap * heap) * heap) * heap) * int

val g13_example3732 : (((heap * heap) * heap) * heap) * int

val g13_example3733 : (((heap * heap) * heap) * heap) * int

val g13_example3734 : (((heap * heap) * heap) * heap) * int

val g13_example3735 : (((heap * heap) * heap) * heap) * int

val g13_example3736 : (((heap * heap) * heap) * heap) * int

val g13_example3737 : (((heap * heap) * heap) * heap) * int

val g13_example3738 : (((heap * heap) * heap) * heap) * int

val g13_example3739 : (((heap * heap) * heap) * heap) * int

val g13_example3740 : (((heap * heap) * heap) * heap) * int

val g13_example3741 : (((heap * heap) * heap) * heap) * int

val g13_example3742 : (((heap * heap) * heap) * heap) * int

val g13_example3743 : (((heap * heap) * heap) * heap) * int

val g13_example3744 : (((heap * heap) * heap) * heap) * int

val g13_example3745 : (((heap * heap) * heap) * heap) * int

val g13_example3746 : (((heap * heap) * heap) * heap) * int

val g13_example3747 : (((heap * heap) * heap) * heap) * int

val g13_example3748 : (((heap * heap) * heap) * heap) * int

val g13_example3749 : (((heap * heap) * heap) * heap) * int

val g13_example3750 : (((heap * heap) * heap) * heap) * int

val g13_example3751 : (((heap * heap) * heap) * heap) * int

val g13_example3752 : (((heap * heap) * heap) * heap) * int

val g13_example3753 : (((heap * heap) * heap) * heap) * int

val g13_example3754 : (((heap * heap) * heap) * heap) * int

val g13_example3755 : (((heap * heap) * heap) * heap) * int

val g13_example3756 : (((heap * heap) * heap) * heap) * int

val g13_example3757 : (((heap * heap) * heap) * heap) * int

val g13_example3758 : (((heap * heap) * heap) * heap) * int

val g13_example3759 : (((heap * heap) * heap) * heap) * int

val g13_example3760 : (((heap * heap) * heap) * heap) * int

val g13_example3761 : (((heap * heap) * heap) * heap) * int

val g13_example3762 : (((heap * heap) * heap) * heap) * int

val g13_example3763 : (((heap * heap) * heap) * heap) * int

val g13_example3764 : (((heap * heap) * heap) * heap) * int

val g13_example3765 : (((heap * heap) * heap) * heap) * int

val g13_example3766 : (((heap * heap) * heap) * heap) * int

val g13_example3767 : (((heap * heap) * heap) * heap) * int

val g13_example3768 : (((heap * heap) * heap) * heap) * int

val g13_example3769 : (((heap * heap) * heap) * heap) * int

val g13_example3770 : (((heap * heap) * heap) * heap) * int

val g13_example3771 : (((heap * heap) * heap) * heap) * int

val g13_example3772 : (((heap * heap) * heap) * heap) * int

val g13_example3773 : (((heap * heap) * heap) * heap) * int

val g13_example3774 : (((heap * heap) * heap) * heap) * int

val g13_example3775 : (((heap * heap) * heap) * heap) * int

val g13_example3776 : (((heap * heap) * heap) * heap) * int

val g13_example3777 : (((heap * heap) * heap) * heap) * int

val g13_example3778 : (((heap * heap) * heap) * heap) * int

val g13_example3779 : (((heap * heap) * heap) * heap) * int

val g13_example3780 : (((heap * heap) * heap) * heap) * int

val g13_example3781 : (((heap * heap) * heap) * heap) * int

val g13_example3782 : (((heap * heap) * heap) * heap) * int

val g13_example3783 : (((heap * heap) * heap) * heap) * int

val g13_example3784 : (((heap * heap) * heap) * heap) * int

val g13_example3785 : (((heap * heap) * heap) * heap) * int

val g13_example3786 : (((heap * heap) * heap) * heap) * int

val g13_example3787 : (((heap * heap) * heap) * heap) * int

val g13_example3788 : (((heap * heap) * heap) * heap) * int

val g13_example3789 : (((heap * heap) * heap) * heap) * int

val g13_example3790 : (((heap * heap) * heap) * heap) * int

val g13_example3791 : (((heap * heap) * heap) * heap) * int

val g13_example3792 : (((heap * heap) * heap) * heap) * int

val g13_example3793 : (((heap * heap) * heap) * heap) * int

val g13_example3794 : (((heap * heap) * heap) * heap) * int

val g13_example3795 : (((heap * heap) * heap) * heap) * int

val g13_example3796 : (((heap * heap) * heap) * heap) * int

val g13_example3797 : (((heap * heap) * heap) * heap) * int

val g13_example3798 : (((heap * heap) * heap) * heap) * int

val g13_example3799 : (((heap * heap) * heap) * heap) * int

val g13_example3800 : (((heap * heap) * heap) * heap) * int

val g13_example3801 : (((heap * heap) * heap) * heap) * int

val g13_example3802 : (((heap * heap) * heap) * heap) * int

val g13_example3803 : (((heap * heap) * heap) * heap) * int

val g13_example3804 : (((heap * heap) * heap) * heap) * int

val g13_example3805 : (((heap * heap) * heap) * heap) * int

val g13_example3806 : (((heap * heap) * heap) * heap) * int

val g13_example3807 : (((heap * heap) * heap) * heap) * int

val g13_example3808 : (((heap * heap) * heap) * heap) * int

val g13_example3809 : (((heap * heap) * heap) * heap) * int

val g13_example3810 : (((heap * heap) * heap) * heap) * int

val g13_example3811 : (((heap * heap) * heap) * heap) * int

val g13_example3812 : (((heap * heap) * heap) * heap) * int

val g13_example3813 : (((heap * heap) * heap) * heap) * int

val g13_example3814 : (((heap * heap) * heap) * heap) * int

val g13_example3815 : (((heap * heap) * heap) * heap) * int

val g13_example3816 : (((heap * heap) * heap) * heap) * int

val g13_example3817 : (((heap * heap) * heap) * heap) * int

val g13_example3818 : (((heap * heap) * heap) * heap) * int

val g13_example3819 : (((heap * heap) * heap) * heap) * int

val g13_example3820 : (((heap * heap) * heap) * heap) * int

val g13_example3821 : (((heap * heap) * heap) * heap) * int

val g13_example3822 : (((heap * heap) * heap) * heap) * int

val g13_example3823 : (((heap * heap) * heap) * heap) * int

val g13_example3824 : (((heap * heap) * heap) * heap) * int

val g13_example3825 : (((heap * heap) * heap) * heap) * int

val g13_example3826 : (((heap * heap) * heap) * heap) * int

val g13_example3827 : (((heap * heap) * heap) * heap) * int

val g13_example3828 : (((heap * heap) * heap) * heap) * int

val g13_example3829 : (((heap * heap) * heap) * heap) * int

val g13_example3830 : (((heap * heap) * heap) * heap) * int

val g13_example3831 : (((heap * heap) * heap) * heap) * int

val g13_example3832 : (((heap * heap) * heap) * heap) * int

val g13_example3833 : (((heap * heap) * heap) * heap) * int

val g13_example3834 : (((heap * heap) * heap) * heap) * int

val g13_example3835 : (((heap * heap) * heap) * heap) * int

val g13_example3836 : (((heap * heap) * heap) * heap) * int

val g13_example3837 : (((heap * heap) * heap) * heap) * int

val g13_example3838 : (((heap * heap) * heap) * heap) * int

val g13_example3839 : (((heap * heap) * heap) * heap) * int

val g13_example3840 : (((heap * heap) * heap) * heap) * int

val g13_example3841 : (((heap * heap) * heap) * heap) * int

val g13_example3842 : (((heap * heap) * heap) * heap) * int

val g13_example3843 : (((heap * heap) * heap) * heap) * int

val g13_example3844 : (((heap * heap) * heap) * heap) * int

val g13_example3845 : (((heap * heap) * heap) * heap) * int

val g13_example3846 : (((heap * heap) * heap) * heap) * int

val g13_example3847 : (((heap * heap) * heap) * heap) * int

val g13_example3848 : (((heap * heap) * heap) * heap) * int

val g13_example3849 : (((heap * heap) * heap) * heap) * int

val g13_example3850 : (((heap * heap) * heap) * heap) * int

val g13_example3851 : (((heap * heap) * heap) * heap) * int

val g13_example3852 : (((heap * heap) * heap) * heap) * int

val g13_example3853 : (((heap * heap) * heap) * heap) * int

val g13_example3854 : (((heap * heap) * heap) * heap) * int

val g13_example3855 : (((heap * heap) * heap) * heap) * int

val g13_example3856 : (((heap * heap) * heap) * heap) * int

val g13_example3857 : (((heap * heap) * heap) * heap) * int

val g13_example3858 : (((heap * heap) * heap) * heap) * int

val g13_example3859 : (((heap * heap) * heap) * heap) * int

val g13_example3860 : (((heap * heap) * heap) * heap) * int

val g13_example3861 : (((heap * heap) * heap) * heap) * int

val g13_example3862 : (((heap * heap) * heap) * heap) * int

val g13_example3863 : (((heap * heap) * heap) * heap) * int

val g13_example3864 : (((heap * heap) * heap) * heap) * int

val g13_example3865 : (((heap * heap) * heap) * heap) * int

val g13_example3866 : (((heap * heap) * heap) * heap) * int

val g13_example3867 : (((heap * heap) * heap) * heap) * int

val g13_example3868 : (((heap * heap) * heap) * heap) * int

val g13_example3869 : (((heap * heap) * heap) * heap) * int

val g13_example3870 : (((heap * heap) * heap) * heap) * int

val g13_example3871 : (((heap * heap) * heap) * heap) * int

val g13_example3872 : (((heap * heap) * heap) * heap) * int

val g13_example3873 : (((heap * heap) * heap) * heap) * int

val g13_example3874 : (((heap * heap) * heap) * heap) * int

val g13_example3875 : (((heap * heap) * heap) * heap) * int

val g13_example3876 : (((heap * heap) * heap) * heap) * int

val g13_example3877 : (((heap * heap) * heap) * heap) * int

val g13_example3878 : (((heap * heap) * heap) * heap) * int

val g13_example3879 : (((heap * heap) * heap) * heap) * int

val g13_example3880 : (((heap * heap) * heap) * heap) * int

val g13_example3881 : (((heap * heap) * heap) * heap) * int

val g13_example3882 : (((heap * heap) * heap) * heap) * int

val g13_example3883 : (((heap * heap) * heap) * heap) * int

val g13_example3884 : (((heap * heap) * heap) * heap) * int

val g13_example3885 : (((heap * heap) * heap) * heap) * int

val g13_example3886 : (((heap * heap) * heap) * heap) * int

val g13_example3887 : (((heap * heap) * heap) * heap) * int

val g13_example3888 : (((heap * heap) * heap) * heap) * int

val g13_example3889 : (((heap * heap) * heap) * heap) * int

val g13_example3890 : (((heap * heap) * heap) * heap) * int

val g13_example3891 : (((heap * heap) * heap) * heap) * int

val g13_example3892 : (((heap * heap) * heap) * heap) * int

val g13_example3893 : (((heap * heap) * heap) * heap) * int

val g13_example3894 : (((heap * heap) * heap) * heap) * int

val g13_example3895 : (((heap * heap) * heap) * heap) * int

val g13_example3896 : (((heap * heap) * heap) * heap) * int

val g13_example3897 : (((heap * heap) * heap) * heap) * int

val g13_example3898 : (((heap * heap) * heap) * heap) * int

val g13_example3899 : (((heap * heap) * heap) * heap) * int

val g13_example3900 : (((heap * heap) * heap) * heap) * int

val g13_example3901 : (((heap * heap) * heap) * heap) * int

val g13_example3902 : (((heap * heap) * heap) * heap) * int

val g13_example3903 : (((heap * heap) * heap) * heap) * int

val g13_example3904 : (((heap * heap) * heap) * heap) * int

val g13_example3905 : (((heap * heap) * heap) * heap) * int

val g13_example3906 : (((heap * heap) * heap) * heap) * int

val g13_example3907 : (((heap * heap) * heap) * heap) * int

val g13_example3908 : (((heap * heap) * heap) * heap) * int

val g13_example3909 : (((heap * heap) * heap) * heap) * int

val g13_example3910 : (((heap * heap) * heap) * heap) * int

val g13_example3911 : (((heap * heap) * heap) * heap) * int

val g13_example3912 : (((heap * heap) * heap) * heap) * int

val g13_example3913 : (((heap * heap) * heap) * heap) * int

val g13_example3914 : (((heap * heap) * heap) * heap) * int

val g13_example3915 : (((heap * heap) * heap) * heap) * int

val g13_example3916 : (((heap * heap) * heap) * heap) * int

val g13_example3917 : (((heap * heap) * heap) * heap) * int

val g13_example3918 : (((heap * heap) * heap) * heap) * int

val g13_example3919 : (((heap * heap) * heap) * heap) * int

val g13_example3920 : (((heap * heap) * heap) * heap) * int

val g13_example3921 : (((heap * heap) * heap) * heap) * int

val g13_example3922 : (((heap * heap) * heap) * heap) * int

val g13_example3923 : (((heap * heap) * heap) * heap) * int

val g13_example3924 : (((heap * heap) * heap) * heap) * int

val g13_example3925 : (((heap * heap) * heap) * heap) * int

val g13_example3926 : (((heap * heap) * heap) * heap) * int

val g13_example3927 : (((heap * heap) * heap) * heap) * int

val g13_example3928 : (((heap * heap) * heap) * heap) * int

val g13_example3929 : (((heap * heap) * heap) * heap) * int

val g13_example3930 : (((heap * heap) * heap) * heap) * int

val g13_example3931 : (((heap * heap) * heap) * heap) * int

val g13_example3932 : (((heap * heap) * heap) * heap) * int

val g13_example3933 : (((heap * heap) * heap) * heap) * int

val g13_example3934 : (((heap * heap) * heap) * heap) * int

val g13_example3935 : (((heap * heap) * heap) * heap) * int

val g13_example3936 : (((heap * heap) * heap) * heap) * int

val g13_example3937 : (((heap * heap) * heap) * heap) * int

val g13_example3938 : (((heap * heap) * heap) * heap) * int

val g13_example3939 : (((heap * heap) * heap) * heap) * int

val g13_example3940 : (((heap * heap) * heap) * heap) * int

val g13_example3941 : (((heap * heap) * heap) * heap) * int

val g13_example3942 : (((heap * heap) * heap) * heap) * int

val g13_example3943 : (((heap * heap) * heap) * heap) * int

val g13_example3944 : (((heap * heap) * heap) * heap) * int

val g13_example3945 : (((heap * heap) * heap) * heap) * int

val g13_example3946 : (((heap * heap) * heap) * heap) * int

val g13_example3947 : (((heap * heap) * heap) * heap) * int

val g13_example3948 : (((heap * heap) * heap) * heap) * int

val g13_example3949 : (((heap * heap) * heap) * heap) * int

val g13_example3950 : (((heap * heap) * heap) * heap) * int

val g13_example3951 : (((heap * heap) * heap) * heap) * int

val g13_example3952 : (((heap * heap) * heap) * heap) * int

val g13_example3953 : (((heap * heap) * heap) * heap) * int

val g13_example3954 : (((heap * heap) * heap) * heap) * int

val g13_example3955 : (((heap * heap) * heap) * heap) * int

val g13_example3956 : (((heap * heap) * heap) * heap) * int

val g13_example3957 : (((heap * heap) * heap) * heap) * int

val g13_example3958 : (((heap * heap) * heap) * heap) * int

val g13_example3959 : (((heap * heap) * heap) * heap) * int

val g13_example3960 : (((heap * heap) * heap) * heap) * int

val g13_example3961 : (((heap * heap) * heap) * heap) * int

val g13_example3962 : (((heap * heap) * heap) * heap) * int

val g13_example3963 : (((heap * heap) * heap) * heap) * int

val g13_example3964 : (((heap * heap) * heap) * heap) * int

val g13_example3965 : (((heap * heap) * heap) * heap) * int

val g13_example3966 : (((heap * heap) * heap) * heap) * int

val g13_example3967 : (((heap * heap) * heap) * heap) * int

val g13_example3968 : (((heap * heap) * heap) * heap) * int

val g13_example3969 : (((heap * heap) * heap) * heap) * int

val g13_example3970 : (((heap * heap) * heap) * heap) * int

val g13_example3971 : (((heap * heap) * heap) * heap) * int

val g13_example3972 : (((heap * heap) * heap) * heap) * int

val g13_example3973 : (((heap * heap) * heap) * heap) * int

val g13_example3974 : (((heap * heap) * heap) * heap) * int

val g13_example3975 : (((heap * heap) * heap) * heap) * int

val g13_example3976 : (((heap * heap) * heap) * heap) * int

val g13_example3977 : (((heap * heap) * heap) * heap) * int

val g13_example3978 : (((heap * heap) * heap) * heap) * int

val g13_example3979 : (((heap * heap) * heap) * heap) * int

val g13_example3980 : (((heap * heap) * heap) * heap) * int

val g13_example3981 : (((heap * heap) * heap) * heap) * int

val g13_example3982 : (((heap * heap) * heap) * heap) * int

val g13_example3983 : (((heap * heap) * heap) * heap) * int

val g13_example3984 : (((heap * heap) * heap) * heap) * int

val g13_example3985 : (((heap * heap) * heap) * heap) * int

val g13_example3986 : (((heap * heap) * heap) * heap) * int

val g13_example3987 : (((heap * heap) * heap) * heap) * int

val g13_example3988 : (((heap * heap) * heap) * heap) * int

val g13_example3989 : (((heap * heap) * heap) * heap) * int

val g13_example3990 : (((heap * heap) * heap) * heap) * int

val g13_example3991 : (((heap * heap) * heap) * heap) * int

val g13_example3992 : (((heap * heap) * heap) * heap) * int

val g13_example3993 : (((heap * heap) * heap) * heap) * int

val g13_example3994 : (((heap * heap) * heap) * heap) * int

val g13_example3995 : (((heap * heap) * heap) * heap) * int

val g13_example3996 : (((heap * heap) * heap) * heap) * int

val g13_example3997 : (((heap * heap) * heap) * heap) * int

val g13_example3998 : (((heap * heap) * heap) * heap) * int

val g13_example3999 : (((heap * heap) * heap) * heap) * int

val g13_example4000 : (((heap * heap) * heap) * heap) * int

val g13_example4001 : (((heap * heap) * heap) * heap) * int

val g13_example4002 : (((heap * heap) * heap) * heap) * int

val g13_example4003 : (((heap * heap) * heap) * heap) * int

val g13_example4004 : (((heap * heap) * heap) * heap) * int

val g13_example4005 : (((heap * heap) * heap) * heap) * int

val g13_example4006 : (((heap * heap) * heap) * heap) * int

val g13_example4007 : (((heap * heap) * heap) * heap) * int

val g13_example4008 : (((heap * heap) * heap) * heap) * int

val g13_example4009 : (((heap * heap) * heap) * heap) * int

val g13_example4010 : (((heap * heap) * heap) * heap) * int

val g13_example4011 : (((heap * heap) * heap) * heap) * int

val g13_example4012 : (((heap * heap) * heap) * heap) * int

val g13_example4013 : (((heap * heap) * heap) * heap) * int

val g13_example4014 : (((heap * heap) * heap) * heap) * int

val g13_example4015 : (((heap * heap) * heap) * heap) * int

val g13_example4016 : (((heap * heap) * heap) * heap) * int

val g13_example4017 : (((heap * heap) * heap) * heap) * int

val g13_example4018 : (((heap * heap) * heap) * heap) * int

val g13_example4019 : (((heap * heap) * heap) * heap) * int

val g13_example4020 : (((heap * heap) * heap) * heap) * int

val g13_example4021 : (((heap * heap) * heap) * heap) * int

val g13_example4022 : (((heap * heap) * heap) * heap) * int

val g13_example4023 : (((heap * heap) * heap) * heap) * int

val g13_example4024 : (((heap * heap) * heap) * heap) * int

val g13_example4025 : (((heap * heap) * heap) * heap) * int

val g13_example4026 : (((heap * heap) * heap) * heap) * int

val g13_example4027 : (((heap * heap) * heap) * heap) * int

val g13_example4028 : (((heap * heap) * heap) * heap) * int

val g13_example4029 : (((heap * heap) * heap) * heap) * int

val g13_example4030 : (((heap * heap) * heap) * heap) * int

val g13_example4031 : (((heap * heap) * heap) * heap) * int

val g13_example4032 : (((heap * heap) * heap) * heap) * int

val g13_example4033 : (((heap * heap) * heap) * heap) * int

val g13_example4034 : (((heap * heap) * heap) * heap) * int

val g13_example4035 : (((heap * heap) * heap) * heap) * int

val g13_example4036 : (((heap * heap) * heap) * heap) * int

val g13_example4037 : (((heap * heap) * heap) * heap) * int

val g13_example4038 : (((heap * heap) * heap) * heap) * int

val g13_example4039 : (((heap * heap) * heap) * heap) * int

val g13_example4040 : (((heap * heap) * heap) * heap) * int

val g13_example4041 : (((heap * heap) * heap) * heap) * int

val g13_example4042 : (((heap * heap) * heap) * heap) * int

val g13_example4043 : (((heap * heap) * heap) * heap) * int

val g13_example4044 : (((heap * heap) * heap) * heap) * int

val g13_example4045 : (((heap * heap) * heap) * heap) * int

val g13_example4046 : (((heap * heap) * heap) * heap) * int

val g13_example4047 : (((heap * heap) * heap) * heap) * int

val g13_example4048 : (((heap * heap) * heap) * heap) * int

val g13_example4049 : (((heap * heap) * heap) * heap) * int

val g13_example4050 : (((heap * heap) * heap) * heap) * int

val g13_example4051 : (((heap * heap) * heap) * heap) * int

val g13_example4052 : (((heap * heap) * heap) * heap) * int

val g13_example4053 : (((heap * heap) * heap) * heap) * int

val g13_example4054 : (((heap * heap) * heap) * heap) * int

val g13_example4055 : (((heap * heap) * heap) * heap) * int

val g13_example4056 : (((heap * heap) * heap) * heap) * int

val g13_example4057 : (((heap * heap) * heap) * heap) * int

val g13_example4058 : (((heap * heap) * heap) * heap) * int

val g13_example4059 : (((heap * heap) * heap) * heap) * int

val g13_example4060 : (((heap * heap) * heap) * heap) * int

val g13_example4061 : (((heap * heap) * heap) * heap) * int

val g13_example4062 : (((heap * heap) * heap) * heap) * int

val g13_example4063 : (((heap * heap) * heap) * heap) * int

val g13_example4064 : (((heap * heap) * heap) * heap) * int

val g13_example4065 : (((heap * heap) * heap) * heap) * int

val g13_example4066 : (((heap * heap) * heap) * heap) * int

val g13_example4067 : (((heap * heap) * heap) * heap) * int

val g13_example4068 : (((heap * heap) * heap) * heap) * int

val g13_example4069 : (((heap * heap) * heap) * heap) * int

val g13_example4070 : (((heap * heap) * heap) * heap) * int

val g13_example4071 : (((heap * heap) * heap) * heap) * int

val g13_example4072 : (((heap * heap) * heap) * heap) * int

val g13_example4073 : (((heap * heap) * heap) * heap) * int

val g13_example4074 : (((heap * heap) * heap) * heap) * int

val g13_example4075 : (((heap * heap) * heap) * heap) * int

val g13_example4076 : (((heap * heap) * heap) * heap) * int

val g13_example4077 : (((heap * heap) * heap) * heap) * int

val g13_example4078 : (((heap * heap) * heap) * heap) * int

val g13_example4079 : (((heap * heap) * heap) * heap) * int

val g13_example4080 : (((heap * heap) * heap) * heap) * int

val g13_example4081 : (((heap * heap) * heap) * heap) * int

val g13_example4082 : (((heap * heap) * heap) * heap) * int

val g13_example4083 : (((heap * heap) * heap) * heap) * int

val g13_example4084 : (((heap * heap) * heap) * heap) * int

val g13_example4085 : (((heap * heap) * heap) * heap) * int

val g13_example4086 : (((heap * heap) * heap) * heap) * int

val g13_example4087 : (((heap * heap) * heap) * heap) * int

val g13_example4088 : (((heap * heap) * heap) * heap) * int

val g13_example4089 : (((heap * heap) * heap) * heap) * int

val g13_example4090 : (((heap * heap) * heap) * heap) * int

val g13_example4091 : (((heap * heap) * heap) * heap) * int

val g13_example4092 : (((heap * heap) * heap) * heap) * int

val g13_example4093 : (((heap * heap) * heap) * heap) * int

val g13_example4094 : (((heap * heap) * heap) * heap) * int

val g13_example4095 : (((heap * heap) * heap) * heap) * int

val g13_example4096 : (((heap * heap) * heap) * heap) * int

val g13_example4097 : (((heap * heap) * heap) * heap) * int

val g13_example4098 : (((heap * heap) * heap) * heap) * int

val g13_example4099 : (((heap * heap) * heap) * heap) * int

val g13_example4100 : (((heap * heap) * heap) * heap) * int

val g13_example4101 : (((heap * heap) * heap) * heap) * int

val g13_example4102 : (((heap * heap) * heap) * heap) * int

val g13_example4103 : (((heap * heap) * heap) * heap) * int

val g13_example4104 : (((heap * heap) * heap) * heap) * int

val g13_example4105 : (((heap * heap) * heap) * heap) * int

val g13_example4106 : (((heap * heap) * heap) * heap) * int

val g13_example4107 : (((heap * heap) * heap) * heap) * int

val g13_example4108 : (((heap * heap) * heap) * heap) * int

val g13_example4109 : (((heap * heap) * heap) * heap) * int

val g13_example4110 : (((heap * heap) * heap) * heap) * int

val g13_example4111 : (((heap * heap) * heap) * heap) * int

val g13_example4112 : (((heap * heap) * heap) * heap) * int

val g13_example4113 : (((heap * heap) * heap) * heap) * int

val g13_example4114 : (((heap * heap) * heap) * heap) * int

val g13_example4115 : (((heap * heap) * heap) * heap) * int

val g13_example4116 : (((heap * heap) * heap) * heap) * int

val g13_example4117 : (((heap * heap) * heap) * heap) * int

val g13_example4118 : (((heap * heap) * heap) * heap) * int

val g13_example4119 : (((heap * heap) * heap) * heap) * int

val g13_example4120 : (((heap * heap) * heap) * heap) * int

val g13_example4121 : (((heap * heap) * heap) * heap) * int

val g13_example4122 : (((heap * heap) * heap) * heap) * int

val g13_example4123 : (((heap * heap) * heap) * heap) * int

val g13_example4124 : (((heap * heap) * heap) * heap) * int

val g13_example4125 : (((heap * heap) * heap) * heap) * int

val g13_example4126 : (((heap * heap) * heap) * heap) * int

val g13_example4127 : (((heap * heap) * heap) * heap) * int

val g13_example4128 : (((heap * heap) * heap) * heap) * int

val g13_example4129 : (((heap * heap) * heap) * heap) * int

val g13_example4130 : (((heap * heap) * heap) * heap) * int

val g13_example4131 : (((heap * heap) * heap) * heap) * int

val g13_example4132 : (((heap * heap) * heap) * heap) * int

val g13_example4133 : (((heap * heap) * heap) * heap) * int

val g13_example4134 : (((heap * heap) * heap) * heap) * int

val g13_example4135 : (((heap * heap) * heap) * heap) * int

val g13_example4136 : (((heap * heap) * heap) * heap) * int

val g13_example4137 : (((heap * heap) * heap) * heap) * int

val g13_example4138 : (((heap * heap) * heap) * heap) * int

val g13_example4139 : (((heap * heap) * heap) * heap) * int

val g13_example4140 : (((heap * heap) * heap) * heap) * int

val g13_example4141 : (((heap * heap) * heap) * heap) * int

val g13_example4142 : (((heap * heap) * heap) * heap) * int

val g13_example4143 : (((heap * heap) * heap) * heap) * int

val g13_example4144 : (((heap * heap) * heap) * heap) * int

val g13_example4145 : (((heap * heap) * heap) * heap) * int

val g13_example4146 : (((heap * heap) * heap) * heap) * int

val g13_example4147 : (((heap * heap) * heap) * heap) * int

val g13_example4148 : (((heap * heap) * heap) * heap) * int

val g13_example4149 : (((heap * heap) * heap) * heap) * int

val g13_example4150 : (((heap * heap) * heap) * heap) * int

val g13_example4151 : (((heap * heap) * heap) * heap) * int

val g13_example4152 : (((heap * heap) * heap) * heap) * int

val g13_example4153 : (((heap * heap) * heap) * heap) * int

val g13_example4154 : (((heap * heap) * heap) * heap) * int

val g13_example4155 : (((heap * heap) * heap) * heap) * int

val g13_example4156 : (((heap * heap) * heap) * heap) * int

val g13_example4157 : (((heap * heap) * heap) * heap) * int

val g13_example4158 : (((heap * heap) * heap) * heap) * int

val g13_example4159 : (((heap * heap) * heap) * heap) * int

val g13_example4160 : (((heap * heap) * heap) * heap) * int

val g13_example4161 : (((heap * heap) * heap) * heap) * int

val g13_example4162 : (((heap * heap) * heap) * heap) * int

val g13_example4163 : (((heap * heap) * heap) * heap) * int

val g13_example4164 : (((heap * heap) * heap) * heap) * int

val g13_example4165 : (((heap * heap) * heap) * heap) * int

val g13_example4166 : (((heap * heap) * heap) * heap) * int

val g13_example4167 : (((heap * heap) * heap) * heap) * int

val g13_example4168 : (((heap * heap) * heap) * heap) * int

val g13_example4169 : (((heap * heap) * heap) * heap) * int

val g13_example4170 : (((heap * heap) * heap) * heap) * int

val g13_example4171 : (((heap * heap) * heap) * heap) * int

val g13_example4172 : (((heap * heap) * heap) * heap) * int

val g13_example4173 : (((heap * heap) * heap) * heap) * int

val g13_example4174 : (((heap * heap) * heap) * heap) * int

val g13_example4175 : (((heap * heap) * heap) * heap) * int

val g13_example4176 : (((heap * heap) * heap) * heap) * int

val g13_example4177 : (((heap * heap) * heap) * heap) * int

val g13_example4178 : (((heap * heap) * heap) * heap) * int

val g13_example4179 : (((heap * heap) * heap) * heap) * int

val g13_example4180 : (((heap * heap) * heap) * heap) * int

val g13_example4181 : (((heap * heap) * heap) * heap) * int

val g13_example4182 : (((heap * heap) * heap) * heap) * int

val g13_example4183 : (((heap * heap) * heap) * heap) * int

val g13_example4184 : (((heap * heap) * heap) * heap) * int

val g13_example4185 : (((heap * heap) * heap) * heap) * int

val g13_example4186 : (((heap * heap) * heap) * heap) * int

val g13_example4187 : (((heap * heap) * heap) * heap) * int

val g13_example4188 : (((heap * heap) * heap) * heap) * int

val g13_example4189 : (((heap * heap) * heap) * heap) * int

val g13_example4190 : (((heap * heap) * heap) * heap) * int

val g13_example4191 : (((heap * heap) * heap) * heap) * int

val g13_example4192 : (((heap * heap) * heap) * heap) * int

val g13_example4193 : (((heap * heap) * heap) * heap) * int

val g13_example4194 : (((heap * heap) * heap) * heap) * int

val g13_example4195 : (((heap * heap) * heap) * heap) * int

val g13_example4196 : (((heap * heap) * heap) * heap) * int

val g13_example4197 : (((heap * heap) * heap) * heap) * int

val g13_example4198 : (((heap * heap) * heap) * heap) * int

val g13_example4199 : (((heap * heap) * heap) * heap) * int

val g13_example4200 : (((heap * heap) * heap) * heap) * int

val g13_example4201 : (((heap * heap) * heap) * heap) * int

val g13_example4202 : (((heap * heap) * heap) * heap) * int

val g13_example4203 : (((heap * heap) * heap) * heap) * int

val g13_example4204 : (((heap * heap) * heap) * heap) * int

val g13_example4205 : (((heap * heap) * heap) * heap) * int

val g13_example4206 : (((heap * heap) * heap) * heap) * int

val g13_example4207 : (((heap * heap) * heap) * heap) * int

val g13_example4208 : (((heap * heap) * heap) * heap) * int

val g13_example4209 : (((heap * heap) * heap) * heap) * int

val g13_example4210 : (((heap * heap) * heap) * heap) * int

val g13_example4211 : (((heap * heap) * heap) * heap) * int

val g13_example4212 : (((heap * heap) * heap) * heap) * int

val g13_example4213 : (((heap * heap) * heap) * heap) * int

val g13_example4214 : (((heap * heap) * heap) * heap) * int

val g13_example4215 : (((heap * heap) * heap) * heap) * int

val g13_example4216 : (((heap * heap) * heap) * heap) * int

val g13_example4217 : (((heap * heap) * heap) * heap) * int

val g13_example4218 : (((heap * heap) * heap) * heap) * int

val g13_example4219 : (((heap * heap) * heap) * heap) * int

val g13_example4220 : (((heap * heap) * heap) * heap) * int

val g13_example4221 : (((heap * heap) * heap) * heap) * int

val g13_example4222 : (((heap * heap) * heap) * heap) * int

val g13_example4223 : (((heap * heap) * heap) * heap) * int

val g13_example4224 : (((heap * heap) * heap) * heap) * int

val g13_example4225 : (((heap * heap) * heap) * heap) * int

val g13_example4226 : (((heap * heap) * heap) * heap) * int

val g13_example4227 : (((heap * heap) * heap) * heap) * int

val g13_example4228 : (((heap * heap) * heap) * heap) * int

val g13_example4229 : (((heap * heap) * heap) * heap) * int

val g13_example4230 : (((heap * heap) * heap) * heap) * int

val g13_example4231 : (((heap * heap) * heap) * heap) * int

val g13_example4232 : (((heap * heap) * heap) * heap) * int

val g13_example4233 : (((heap * heap) * heap) * heap) * int

val g13_example4234 : (((heap * heap) * heap) * heap) * int

val g13_example4235 : (((heap * heap) * heap) * heap) * int

val g13_example4236 : (((heap * heap) * heap) * heap) * int

val g13_example4237 : (((heap * heap) * heap) * heap) * int

val g13_example4238 : (((heap * heap) * heap) * heap) * int

val g13_example4239 : (((heap * heap) * heap) * heap) * int

val g13_example4240 : (((heap * heap) * heap) * heap) * int

val g13_example4241 : (((heap * heap) * heap) * heap) * int

val g13_example4242 : (((heap * heap) * heap) * heap) * int

val g13_example4243 : (((heap * heap) * heap) * heap) * int

val g13_example4244 : (((heap * heap) * heap) * heap) * int

val g13_example4245 : (((heap * heap) * heap) * heap) * int

val g13_example4246 : (((heap * heap) * heap) * heap) * int

val g13_example4247 : (((heap * heap) * heap) * heap) * int

val g13_example4248 : (((heap * heap) * heap) * heap) * int

val g13_example4249 : (((heap * heap) * heap) * heap) * int

val g13_example4250 : (((heap * heap) * heap) * heap) * int

val g13_example4251 : (((heap * heap) * heap) * heap) * int

val g13_example4252 : (((heap * heap) * heap) * heap) * int

val g13_example4253 : (((heap * heap) * heap) * heap) * int

val g13_example4254 : (((heap * heap) * heap) * heap) * int

val g13_example4255 : (((heap * heap) * heap) * heap) * int

val g13_example4256 : (((heap * heap) * heap) * heap) * int

val g13_example4257 : (((heap * heap) * heap) * heap) * int

val g13_example4258 : (((heap * heap) * heap) * heap) * int

val g13_example4259 : (((heap * heap) * heap) * heap) * int

val g13_example4260 : (((heap * heap) * heap) * heap) * int

val g13_example4261 : (((heap * heap) * heap) * heap) * int

val g13_example4262 : (((heap * heap) * heap) * heap) * int

val g13_example4263 : (((heap * heap) * heap) * heap) * int

val g13_example4264 : (((heap * heap) * heap) * heap) * int

val g13_example4265 : (((heap * heap) * heap) * heap) * int

val g13_example4266 : (((heap * heap) * heap) * heap) * int

val g13_example4267 : (((heap * heap) * heap) * heap) * int

val g13_example4268 : (((heap * heap) * heap) * heap) * int

val g13_example4269 : (((heap * heap) * heap) * heap) * int

val g13_example4270 : (((heap * heap) * heap) * heap) * int

val g13_example4271 : (((heap * heap) * heap) * heap) * int

val g13_example4272 : (((heap * heap) * heap) * heap) * int

val g13_example4273 : (((heap * heap) * heap) * heap) * int

val g13_example4274 : (((heap * heap) * heap) * heap) * int

val g13_example4275 : (((heap * heap) * heap) * heap) * int

val g13_example4276 : (((heap * heap) * heap) * heap) * int

val g13_example4277 : (((heap * heap) * heap) * heap) * int

val g13_example4278 : (((heap * heap) * heap) * heap) * int

val g13_example4279 : (((heap * heap) * heap) * heap) * int

val g13_example4280 : (((heap * heap) * heap) * heap) * int

val g13_example4281 : (((heap * heap) * heap) * heap) * int

val g13_example4282 : (((heap * heap) * heap) * heap) * int

val g13_example4283 : (((heap * heap) * heap) * heap) * int

val g13_example4284 : (((heap * heap) * heap) * heap) * int

val g13_example4285 : (((heap * heap) * heap) * heap) * int

val g13_example4286 : (((heap * heap) * heap) * heap) * int

val g13_example4287 : (((heap * heap) * heap) * heap) * int

val g13_example4288 : (((heap * heap) * heap) * heap) * int

val g13_example4289 : (((heap * heap) * heap) * heap) * int

val g13_example4290 : (((heap * heap) * heap) * heap) * int

val g13_example4291 : (((heap * heap) * heap) * heap) * int

val g13_example4292 : (((heap * heap) * heap) * heap) * int

val g13_example4293 : (((heap * heap) * heap) * heap) * int

val g13_example4294 : (((heap * heap) * heap) * heap) * int

val g13_example4295 : (((heap * heap) * heap) * heap) * int

val g13_example4296 : (((heap * heap) * heap) * heap) * int

val g13_example4297 : (((heap * heap) * heap) * heap) * int

val g13_example4298 : (((heap * heap) * heap) * heap) * int

val g13_example4299 : (((heap * heap) * heap) * heap) * int

val g13_example4300 : (((heap * heap) * heap) * heap) * int

val g13_example4301 : (((heap * heap) * heap) * heap) * int

val g13_example4302 : (((heap * heap) * heap) * heap) * int

val g13_example4303 : (((heap * heap) * heap) * heap) * int

val g13_example4304 : (((heap * heap) * heap) * heap) * int

val g13_example4305 : (((heap * heap) * heap) * heap) * int

val g13_example4306 : (((heap * heap) * heap) * heap) * int

val g13_example4307 : (((heap * heap) * heap) * heap) * int

val g13_example4308 : (((heap * heap) * heap) * heap) * int

val g13_example4309 : (((heap * heap) * heap) * heap) * int

val g13_example4310 : (((heap * heap) * heap) * heap) * int

val g13_example4311 : (((heap * heap) * heap) * heap) * int

val g13_example4312 : (((heap * heap) * heap) * heap) * int

val g13_example4313 : (((heap * heap) * heap) * heap) * int

val g13_example4314 : (((heap * heap) * heap) * heap) * int

val g13_example4315 : (((heap * heap) * heap) * heap) * int

val g13_example4316 : (((heap * heap) * heap) * heap) * int

val g13_example4317 : (((heap * heap) * heap) * heap) * int

val g13_example4318 : (((heap * heap) * heap) * heap) * int

val g13_example4319 : (((heap * heap) * heap) * heap) * int

val g13_example4320 : (((heap * heap) * heap) * heap) * int

val g13_example4321 : (((heap * heap) * heap) * heap) * int

val g13_example4322 : (((heap * heap) * heap) * heap) * int

val g13_example4323 : (((heap * heap) * heap) * heap) * int

val g13_example4324 : (((heap * heap) * heap) * heap) * int

val g13_example4325 : (((heap * heap) * heap) * heap) * int

val g13_example4326 : (((heap * heap) * heap) * heap) * int

val g13_example4327 : (((heap * heap) * heap) * heap) * int

val g13_example4328 : (((heap * heap) * heap) * heap) * int

val g13_example4329 : (((heap * heap) * heap) * heap) * int

val g13_example4330 : (((heap * heap) * heap) * heap) * int

val g13_example4331 : (((heap * heap) * heap) * heap) * int

val g13_example4332 : (((heap * heap) * heap) * heap) * int

val g13_example4333 : (((heap * heap) * heap) * heap) * int

val g13_example4334 : (((heap * heap) * heap) * heap) * int

val g13_example4335 : (((heap * heap) * heap) * heap) * int

val g13_example4336 : (((heap * heap) * heap) * heap) * int

val g13_example4337 : (((heap * heap) * heap) * heap) * int

val g13_example4338 : (((heap * heap) * heap) * heap) * int

val g13_example4339 : (((heap * heap) * heap) * heap) * int

val g13_example4340 : (((heap * heap) * heap) * heap) * int

val g13_example4341 : (((heap * heap) * heap) * heap) * int

val g13_example4342 : (((heap * heap) * heap) * heap) * int

val g13_example4343 : (((heap * heap) * heap) * heap) * int

val g13_example4344 : (((heap * heap) * heap) * heap) * int

val g13_example4345 : (((heap * heap) * heap) * heap) * int

val g13_example4346 : (((heap * heap) * heap) * heap) * int

val g13_example4347 : (((heap * heap) * heap) * heap) * int

val g13_example4348 : (((heap * heap) * heap) * heap) * int

val g13_example4349 : (((heap * heap) * heap) * heap) * int

val g13_example4350 : (((heap * heap) * heap) * heap) * int

val g13_example4351 : (((heap * heap) * heap) * heap) * int

val g13_example4352 : (((heap * heap) * heap) * heap) * int

val g13_example4353 : (((heap * heap) * heap) * heap) * int

val g13_example4354 : (((heap * heap) * heap) * heap) * int

val g13_example4355 : (((heap * heap) * heap) * heap) * int

val g13_example4356 : (((heap * heap) * heap) * heap) * int

val g13_example4357 : (((heap * heap) * heap) * heap) * int

val g13_example4358 : (((heap * heap) * heap) * heap) * int

val g13_example4359 : (((heap * heap) * heap) * heap) * int

val g13_example4360 : (((heap * heap) * heap) * heap) * int

val g13_example4361 : (((heap * heap) * heap) * heap) * int

val g13_example4362 : (((heap * heap) * heap) * heap) * int

val g13_example4363 : (((heap * heap) * heap) * heap) * int

val g13_example4364 : (((heap * heap) * heap) * heap) * int

val g13_example4365 : (((heap * heap) * heap) * heap) * int

val g13_example4366 : (((heap * heap) * heap) * heap) * int

val g13_example4367 : (((heap * heap) * heap) * heap) * int

val g13_example4368 : (((heap * heap) * heap) * heap) * int

val g13_example4369 : (((heap * heap) * heap) * heap) * int

val g13_example4370 : (((heap * heap) * heap) * heap) * int

val g13_example4371 : (((heap * heap) * heap) * heap) * int

val g13_example4372 : (((heap * heap) * heap) * heap) * int

val g13_example4373 : (((heap * heap) * heap) * heap) * int

val g13_example4374 : (((heap * heap) * heap) * heap) * int

val g13_example4375 : (((heap * heap) * heap) * heap) * int

val g13_example4376 : (((heap * heap) * heap) * heap) * int

val g13_example4377 : (((heap * heap) * heap) * heap) * int

val g13_example4378 : (((heap * heap) * heap) * heap) * int

val g13_example4379 : (((heap * heap) * heap) * heap) * int

val g13_example4380 : (((heap * heap) * heap) * heap) * int

val g13_example4381 : (((heap * heap) * heap) * heap) * int

val g13_example4382 : (((heap * heap) * heap) * heap) * int

val g13_example4383 : (((heap * heap) * heap) * heap) * int

val g13_example4384 : (((heap * heap) * heap) * heap) * int

val g13_example4385 : (((heap * heap) * heap) * heap) * int

val g13_example4386 : (((heap * heap) * heap) * heap) * int

val g13_example4387 : (((heap * heap) * heap) * heap) * int

val g13_example4388 : (((heap * heap) * heap) * heap) * int

val g13_example4389 : (((heap * heap) * heap) * heap) * int

val g13_example4390 : (((heap * heap) * heap) * heap) * int

val g13_example4391 : (((heap * heap) * heap) * heap) * int

val g13_example4392 : (((heap * heap) * heap) * heap) * int

val g13_example4393 : (((heap * heap) * heap) * heap) * int

val g13_example4394 : (((heap * heap) * heap) * heap) * int

val g13_example4395 : (((heap * heap) * heap) * heap) * int

val g13_example4396 : (((heap * heap) * heap) * heap) * int

val g13_example4397 : (((heap * heap) * heap) * heap) * int

val g13_example4398 : (((heap * heap) * heap) * heap) * int

val g13_example4399 : (((heap * heap) * heap) * heap) * int

val g13_example4400 : (((heap * heap) * heap) * heap) * int

val g13_example4401 : (((heap * heap) * heap) * heap) * int

val g13_example4402 : (((heap * heap) * heap) * heap) * int

val g13_example4403 : (((heap * heap) * heap) * heap) * int

val g13_example4404 : (((heap * heap) * heap) * heap) * int

val g13_example4405 : (((heap * heap) * heap) * heap) * int

val g13_example4406 : (((heap * heap) * heap) * heap) * int

val g13_example4407 : (((heap * heap) * heap) * heap) * int

val g13_example4408 : (((heap * heap) * heap) * heap) * int

val g13_example4409 : (((heap * heap) * heap) * heap) * int

val g13_example4410 : (((heap * heap) * heap) * heap) * int

val g13_example4411 : (((heap * heap) * heap) * heap) * int

val g13_example4412 : (((heap * heap) * heap) * heap) * int

val g13_example4413 : (((heap * heap) * heap) * heap) * int

val g13_example4414 : (((heap * heap) * heap) * heap) * int

val g13_example4415 : (((heap * heap) * heap) * heap) * int

val g13_example4416 : (((heap * heap) * heap) * heap) * int

val g13_example4417 : (((heap * heap) * heap) * heap) * int

val g13_example4418 : (((heap * heap) * heap) * heap) * int

val g13_example4419 : (((heap * heap) * heap) * heap) * int

val g13_example4420 : (((heap * heap) * heap) * heap) * int

val g13_example4421 : (((heap * heap) * heap) * heap) * int

val g13_example4422 : (((heap * heap) * heap) * heap) * int

val g13_example4423 : (((heap * heap) * heap) * heap) * int

val g13_example4424 : (((heap * heap) * heap) * heap) * int

val g13_example4425 : (((heap * heap) * heap) * heap) * int

val g13_example4426 : (((heap * heap) * heap) * heap) * int

val g13_example4427 : (((heap * heap) * heap) * heap) * int

val g13_example4428 : (((heap * heap) * heap) * heap) * int

val g13_example4429 : (((heap * heap) * heap) * heap) * int

val g13_example4430 : (((heap * heap) * heap) * heap) * int

val g13_example4431 : (((heap * heap) * heap) * heap) * int

val g13_example4432 : (((heap * heap) * heap) * heap) * int

val g13_example4433 : (((heap * heap) * heap) * heap) * int

val g13_example4434 : (((heap * heap) * heap) * heap) * int

val g13_example4435 : (((heap * heap) * heap) * heap) * int

val g13_example4436 : (((heap * heap) * heap) * heap) * int

val g13_example4437 : (((heap * heap) * heap) * heap) * int

val g13_example4438 : (((heap * heap) * heap) * heap) * int

val g13_example4439 : (((heap * heap) * heap) * heap) * int

val g13_example4440 : (((heap * heap) * heap) * heap) * int

val g13_example4441 : (((heap * heap) * heap) * heap) * int

val g13_example4442 : (((heap * heap) * heap) * heap) * int

val g13_example4443 : (((heap * heap) * heap) * heap) * int

val g13_example4444 : (((heap * heap) * heap) * heap) * int

val g13_example4445 : (((heap * heap) * heap) * heap) * int

val g13_example4446 : (((heap * heap) * heap) * heap) * int

val g13_example4447 : (((heap * heap) * heap) * heap) * int

val g13_example4448 : (((heap * heap) * heap) * heap) * int

val g13_example4449 : (((heap * heap) * heap) * heap) * int

val g13_example4450 : (((heap * heap) * heap) * heap) * int

val g13_example4451 : (((heap * heap) * heap) * heap) * int

val g13_example4452 : (((heap * heap) * heap) * heap) * int

val g13_example4453 : (((heap * heap) * heap) * heap) * int

val g13_example4454 : (((heap * heap) * heap) * heap) * int

val g13_example4455 : (((heap * heap) * heap) * heap) * int

val g13_example4456 : (((heap * heap) * heap) * heap) * int

val g13_example4457 : (((heap * heap) * heap) * heap) * int

val g13_example4458 : (((heap * heap) * heap) * heap) * int

val g13_example4459 : (((heap * heap) * heap) * heap) * int

val g13_example4460 : (((heap * heap) * heap) * heap) * int

val g13_example4461 : (((heap * heap) * heap) * heap) * int

val g13_example4462 : (((heap * heap) * heap) * heap) * int

val g13_example4463 : (((heap * heap) * heap) * heap) * int

val g13_example4464 : (((heap * heap) * heap) * heap) * int

val g13_example4465 : (((heap * heap) * heap) * heap) * int

val g13_example4466 : (((heap * heap) * heap) * heap) * int

val g13_example4467 : (((heap * heap) * heap) * heap) * int

val g13_example4468 : (((heap * heap) * heap) * heap) * int

val g13_example4469 : (((heap * heap) * heap) * heap) * int

val g13_example4470 : (((heap * heap) * heap) * heap) * int

val g13_example4471 : (((heap * heap) * heap) * heap) * int

val g13_example4472 : (((heap * heap) * heap) * heap) * int

val g13_example4473 : (((heap * heap) * heap) * heap) * int

val g13_example4474 : (((heap * heap) * heap) * heap) * int

val g13_example4475 : (((heap * heap) * heap) * heap) * int

val g13_example4476 : (((heap * heap) * heap) * heap) * int

val g13_example4477 : (((heap * heap) * heap) * heap) * int

val g13_example4478 : (((heap * heap) * heap) * heap) * int

val g13_example4479 : (((heap * heap) * heap) * heap) * int

val g13_example4480 : (((heap * heap) * heap) * heap) * int

val g13_example4481 : (((heap * heap) * heap) * heap) * int

val g13_example4482 : (((heap * heap) * heap) * heap) * int

val g13_example4483 : (((heap * heap) * heap) * heap) * int

val g13_example4484 : (((heap * heap) * heap) * heap) * int

val g13_example4485 : (((heap * heap) * heap) * heap) * int

val g13_example4486 : (((heap * heap) * heap) * heap) * int

val g13_example4487 : (((heap * heap) * heap) * heap) * int

val g13_example4488 : (((heap * heap) * heap) * heap) * int

val g13_example4489 : (((heap * heap) * heap) * heap) * int

val g13_example4490 : (((heap * heap) * heap) * heap) * int

val g13_example4491 : (((heap * heap) * heap) * heap) * int

val g13_example4492 : (((heap * heap) * heap) * heap) * int

val g13_example4493 : (((heap * heap) * heap) * heap) * int

val g13_example4494 : (((heap * heap) * heap) * heap) * int

val g13_example4495 : (((heap * heap) * heap) * heap) * int

val g13_example4496 : (((heap * heap) * heap) * heap) * int

val g13_example4497 : (((heap * heap) * heap) * heap) * int

val g13_example4498 : (((heap * heap) * heap) * heap) * int

val g13_example4499 : (((heap * heap) * heap) * heap) * int

val g13_example4500 : (((heap * heap) * heap) * heap) * int

val g13_example4501 : (((heap * heap) * heap) * heap) * int

val g13_example4502 : (((heap * heap) * heap) * heap) * int

val g13_example4503 : (((heap * heap) * heap) * heap) * int

val g13_example4504 : (((heap * heap) * heap) * heap) * int

val g13_example4505 : (((heap * heap) * heap) * heap) * int

val g13_example4506 : (((heap * heap) * heap) * heap) * int

val g13_example4507 : (((heap * heap) * heap) * heap) * int

val g13_example4508 : (((heap * heap) * heap) * heap) * int

val g13_example4509 : (((heap * heap) * heap) * heap) * int

val g13_example4510 : (((heap * heap) * heap) * heap) * int

val g13_example4511 : (((heap * heap) * heap) * heap) * int

val g13_example4512 : (((heap * heap) * heap) * heap) * int

val g13_example4513 : (((heap * heap) * heap) * heap) * int

val g13_example4514 : (((heap * heap) * heap) * heap) * int

val g13_example4515 : (((heap * heap) * heap) * heap) * int

val g13_example4516 : (((heap * heap) * heap) * heap) * int

val g13_example4517 : (((heap * heap) * heap) * heap) * int

val g13_example4518 : (((heap * heap) * heap) * heap) * int

val g13_example4519 : (((heap * heap) * heap) * heap) * int

val g13_example4520 : (((heap * heap) * heap) * heap) * int

val g13_example4521 : (((heap * heap) * heap) * heap) * int

val g13_example4522 : (((heap * heap) * heap) * heap) * int

val g13_example4523 : (((heap * heap) * heap) * heap) * int

val g13_example4524 : (((heap * heap) * heap) * heap) * int

val g13_example4525 : (((heap * heap) * heap) * heap) * int

val g13_example4526 : (((heap * heap) * heap) * heap) * int

val g13_example4527 : (((heap * heap) * heap) * heap) * int

val g13_example4528 : (((heap * heap) * heap) * heap) * int

val g13_example4529 : (((heap * heap) * heap) * heap) * int

val g13_example4530 : (((heap * heap) * heap) * heap) * int

val g13_example4531 : (((heap * heap) * heap) * heap) * int

val g13_example4532 : (((heap * heap) * heap) * heap) * int

val g13_example4533 : (((heap * heap) * heap) * heap) * int

val g13_example4534 : (((heap * heap) * heap) * heap) * int

val g13_example4535 : (((heap * heap) * heap) * heap) * int

val g13_example4536 : (((heap * heap) * heap) * heap) * int

val g13_example4537 : (((heap * heap) * heap) * heap) * int

val g13_example4538 : (((heap * heap) * heap) * heap) * int

val g13_example4539 : (((heap * heap) * heap) * heap) * int

val g13_example4540 : (((heap * heap) * heap) * heap) * int

val g13_example4541 : (((heap * heap) * heap) * heap) * int

val g13_example4542 : (((heap * heap) * heap) * heap) * int

val g13_example4543 : (((heap * heap) * heap) * heap) * int

val g13_example4544 : (((heap * heap) * heap) * heap) * int

val g13_example4545 : (((heap * heap) * heap) * heap) * int

val g13_example4546 : (((heap * heap) * heap) * heap) * int

val g13_example4547 : (((heap * heap) * heap) * heap) * int

val g13_example4548 : (((heap * heap) * heap) * heap) * int

val g13_example4549 : (((heap * heap) * heap) * heap) * int

val g13_example4550 : (((heap * heap) * heap) * heap) * int

val g13_example4551 : (((heap * heap) * heap) * heap) * int

val g13_example4552 : (((heap * heap) * heap) * heap) * int

val g13_example4553 : (((heap * heap) * heap) * heap) * int

val g13_example4554 : (((heap * heap) * heap) * heap) * int

val g13_example4555 : (((heap * heap) * heap) * heap) * int

val g13_example4556 : (((heap * heap) * heap) * heap) * int

val g13_example4557 : (((heap * heap) * heap) * heap) * int

val g13_example4558 : (((heap * heap) * heap) * heap) * int

val g13_example4559 : (((heap * heap) * heap) * heap) * int

val g13_example4560 : (((heap * heap) * heap) * heap) * int

val g13_example4561 : (((heap * heap) * heap) * heap) * int

val g13_example4562 : (((heap * heap) * heap) * heap) * int

val g13_example4563 : (((heap * heap) * heap) * heap) * int

val g13_example4564 : (((heap * heap) * heap) * heap) * int

val g13_example4565 : (((heap * heap) * heap) * heap) * int

val g13_example4566 : (((heap * heap) * heap) * heap) * int

val g13_example4567 : (((heap * heap) * heap) * heap) * int

val g13_example4568 : (((heap * heap) * heap) * heap) * int

val g13_example4569 : (((heap * heap) * heap) * heap) * int

val g13_example4570 : (((heap * heap) * heap) * heap) * int

val g13_example4571 : (((heap * heap) * heap) * heap) * int

val g13_example4572 : (((heap * heap) * heap) * heap) * int

val g13_example4573 : (((heap * heap) * heap) * heap) * int

val g13_example4574 : (((heap * heap) * heap) * heap) * int

val g13_example4575 : (((heap * heap) * heap) * heap) * int

val g13_example4576 : (((heap * heap) * heap) * heap) * int

val g13_example4577 : (((heap * heap) * heap) * heap) * int

val g13_example4578 : (((heap * heap) * heap) * heap) * int

val g13_example4579 : (((heap * heap) * heap) * heap) * int

val g13_example4580 : (((heap * heap) * heap) * heap) * int

val g13_example4581 : (((heap * heap) * heap) * heap) * int

val g13_example4582 : (((heap * heap) * heap) * heap) * int

val g13_example4583 : (((heap * heap) * heap) * heap) * int

val g13_example4584 : (((heap * heap) * heap) * heap) * int

val g13_example4585 : (((heap * heap) * heap) * heap) * int

val g13_example4586 : (((heap * heap) * heap) * heap) * int

val g13_example4587 : (((heap * heap) * heap) * heap) * int

val g13_example4588 : (((heap * heap) * heap) * heap) * int

val g13_example4589 : (((heap * heap) * heap) * heap) * int

val g13_example4590 : (((heap * heap) * heap) * heap) * int

val g13_example4591 : (((heap * heap) * heap) * heap) * int

val g13_example4592 : (((heap * heap) * heap) * heap) * int

val g13_example4593 : (((heap * heap) * heap) * heap) * int

val g13_example4594 : (((heap * heap) * heap) * heap) * int

val g13_example4595 : (((heap * heap) * heap) * heap) * int

val g13_example4596 : (((heap * heap) * heap) * heap) * int

val g13_example4597 : (((heap * heap) * heap) * heap) * int

val g13_example4598 : (((heap * heap) * heap) * heap) * int

val g13_example4599 : (((heap * heap) * heap) * heap) * int

val g13_example4600 : (((heap * heap) * heap) * heap) * int

val g13_example4601 : (((heap * heap) * heap) * heap) * int

val g13_example4602 : (((heap * heap) * heap) * heap) * int

val g13_example4603 : (((heap * heap) * heap) * heap) * int

val g13_example4604 : (((heap * heap) * heap) * heap) * int

val g13_example4605 : (((heap * heap) * heap) * heap) * int

val g13_example4606 : (((heap * heap) * heap) * heap) * int

val g13_example4607 : (((heap * heap) * heap) * heap) * int

val g13_example4608 : (((heap * heap) * heap) * heap) * int

val g13_example4609 : (((heap * heap) * heap) * heap) * int

val g13_example4610 : (((heap * heap) * heap) * heap) * int

val g13_example4611 : (((heap * heap) * heap) * heap) * int

val g13_example4612 : (((heap * heap) * heap) * heap) * int

val g13_example4613 : (((heap * heap) * heap) * heap) * int

val g13_example4614 : (((heap * heap) * heap) * heap) * int

val g13_example4615 : (((heap * heap) * heap) * heap) * int

val g13_example4616 : (((heap * heap) * heap) * heap) * int

val g13_example4617 : (((heap * heap) * heap) * heap) * int

val g13_example4618 : (((heap * heap) * heap) * heap) * int

val g13_example4619 : (((heap * heap) * heap) * heap) * int

val g13_example4620 : (((heap * heap) * heap) * heap) * int

val g13_example4621 : (((heap * heap) * heap) * heap) * int

val g13_example4622 : (((heap * heap) * heap) * heap) * int

val g13_example4623 : (((heap * heap) * heap) * heap) * int

val g13_example4624 : (((heap * heap) * heap) * heap) * int

val g13_example4625 : (((heap * heap) * heap) * heap) * int

val g13_example4626 : (((heap * heap) * heap) * heap) * int

val g13_example4627 : (((heap * heap) * heap) * heap) * int

val g13_example4628 : (((heap * heap) * heap) * heap) * int

val g13_example4629 : (((heap * heap) * heap) * heap) * int

val g13_example4630 : (((heap * heap) * heap) * heap) * int

val g13_example4631 : (((heap * heap) * heap) * heap) * int

val g13_example4632 : (((heap * heap) * heap) * heap) * int

val g13_example4633 : (((heap * heap) * heap) * heap) * int

val g13_example4634 : (((heap * heap) * heap) * heap) * int

val g13_example4635 : (((heap * heap) * heap) * heap) * int

val g13_example4636 : (((heap * heap) * heap) * heap) * int

val g13_example4637 : (((heap * heap) * heap) * heap) * int

val g13_example4638 : (((heap * heap) * heap) * heap) * int

val g13_example4639 : (((heap * heap) * heap) * heap) * int

val g13_example4640 : (((heap * heap) * heap) * heap) * int

val g13_example4641 : (((heap * heap) * heap) * heap) * int

val g13_example4642 : (((heap * heap) * heap) * heap) * int

val g13_example4643 : (((heap * heap) * heap) * heap) * int

val g13_example4644 : (((heap * heap) * heap) * heap) * int

val g13_example4645 : (((heap * heap) * heap) * heap) * int

val g13_example4646 : (((heap * heap) * heap) * heap) * int

val g13_example4647 : (((heap * heap) * heap) * heap) * int

val g13_example4648 : (((heap * heap) * heap) * heap) * int

val g13_example4649 : (((heap * heap) * heap) * heap) * int

val g13_example4650 : (((heap * heap) * heap) * heap) * int

val g13_example4651 : (((heap * heap) * heap) * heap) * int

val g13_example4652 : (((heap * heap) * heap) * heap) * int

val g13_example4653 : (((heap * heap) * heap) * heap) * int

val g13_example4654 : (((heap * heap) * heap) * heap) * int

val g13_example4655 : (((heap * heap) * heap) * heap) * int

val g13_example4656 : (((heap * heap) * heap) * heap) * int

val g13_example4657 : (((heap * heap) * heap) * heap) * int

val g13_example4658 : (((heap * heap) * heap) * heap) * int

val g13_example4659 : (((heap * heap) * heap) * heap) * int

val g13_example4660 : (((heap * heap) * heap) * heap) * int

val g13_example4661 : (((heap * heap) * heap) * heap) * int

val g13_example4662 : (((heap * heap) * heap) * heap) * int

val g13_example4663 : (((heap * heap) * heap) * heap) * int

val g13_example4664 : (((heap * heap) * heap) * heap) * int

val g13_example4665 : (((heap * heap) * heap) * heap) * int

val g13_example4666 : (((heap * heap) * heap) * heap) * int

val g13_example4667 : (((heap * heap) * heap) * heap) * int

val g13_example4668 : (((heap * heap) * heap) * heap) * int

val g13_example4669 : (((heap * heap) * heap) * heap) * int

val g13_example4670 : (((heap * heap) * heap) * heap) * int

val g13_example4671 : (((heap * heap) * heap) * heap) * int

val g13_example4672 : (((heap * heap) * heap) * heap) * int

val g13_example4673 : (((heap * heap) * heap) * heap) * int

val g13_example4674 : (((heap * heap) * heap) * heap) * int

val g13_example4675 : (((heap * heap) * heap) * heap) * int

val g13_example4676 : (((heap * heap) * heap) * heap) * int

val g13_example4677 : (((heap * heap) * heap) * heap) * int

val g13_example4678 : (((heap * heap) * heap) * heap) * int

val g13_example4679 : (((heap * heap) * heap) * heap) * int

val g13_example4680 : (((heap * heap) * heap) * heap) * int

val g13_example4681 : (((heap * heap) * heap) * heap) * int

val g13_example4682 : (((heap * heap) * heap) * heap) * int

val g13_example4683 : (((heap * heap) * heap) * heap) * int

val g13_example4684 : (((heap * heap) * heap) * heap) * int

val g13_example4685 : (((heap * heap) * heap) * heap) * int

val g13_example4686 : (((heap * heap) * heap) * heap) * int

val g13_example4687 : (((heap * heap) * heap) * heap) * int

val g13_example4688 : (((heap * heap) * heap) * heap) * int

val g13_example4689 : (((heap * heap) * heap) * heap) * int

val g13_example4690 : (((heap * heap) * heap) * heap) * int

val g13_example4691 : (((heap * heap) * heap) * heap) * int

val g13_example4692 : (((heap * heap) * heap) * heap) * int

val g13_example4693 : (((heap * heap) * heap) * heap) * int

val g13_example4694 : (((heap * heap) * heap) * heap) * int

val g13_example4695 : (((heap * heap) * heap) * heap) * int

val g13_example4696 : (((heap * heap) * heap) * heap) * int

val g13_example4697 : (((heap * heap) * heap) * heap) * int

val g13_example4698 : (((heap * heap) * heap) * heap) * int

val g13_example4699 : (((heap * heap) * heap) * heap) * int

val g13_example4700 : (((heap * heap) * heap) * heap) * int

val g13_example4701 : (((heap * heap) * heap) * heap) * int

val g13_example4702 : (((heap * heap) * heap) * heap) * int

val g13_example4703 : (((heap * heap) * heap) * heap) * int

val g13_example4704 : (((heap * heap) * heap) * heap) * int

val g13_example4705 : (((heap * heap) * heap) * heap) * int

val g13_example4706 : (((heap * heap) * heap) * heap) * int

val g13_example4707 : (((heap * heap) * heap) * heap) * int

val g13_example4708 : (((heap * heap) * heap) * heap) * int

val g13_example4709 : (((heap * heap) * heap) * heap) * int

val g13_example4710 : (((heap * heap) * heap) * heap) * int

val g13_example4711 : (((heap * heap) * heap) * heap) * int

val g13_example4712 : (((heap * heap) * heap) * heap) * int

val g13_example4713 : (((heap * heap) * heap) * heap) * int

val g13_example4714 : (((heap * heap) * heap) * heap) * int

val g13_example4715 : (((heap * heap) * heap) * heap) * int

val g13_example4716 : (((heap * heap) * heap) * heap) * int

val g13_example4717 : (((heap * heap) * heap) * heap) * int

val g13_example4718 : (((heap * heap) * heap) * heap) * int

val g13_example4719 : (((heap * heap) * heap) * heap) * int

val g13_example4720 : (((heap * heap) * heap) * heap) * int

val g13_example4721 : (((heap * heap) * heap) * heap) * int

val g13_example4722 : (((heap * heap) * heap) * heap) * int

val g13_example4723 : (((heap * heap) * heap) * heap) * int

val g13_example4724 : (((heap * heap) * heap) * heap) * int

val g13_example4725 : (((heap * heap) * heap) * heap) * int

val g13_example4726 : (((heap * heap) * heap) * heap) * int

val g13_example4727 : (((heap * heap) * heap) * heap) * int

val g13_example4728 : (((heap * heap) * heap) * heap) * int

val g13_example4729 : (((heap * heap) * heap) * heap) * int

val g13_example4730 : (((heap * heap) * heap) * heap) * int

val g13_example4731 : (((heap * heap) * heap) * heap) * int

val g13_example4732 : (((heap * heap) * heap) * heap) * int

val g13_example4733 : (((heap * heap) * heap) * heap) * int

val g13_example4734 : (((heap * heap) * heap) * heap) * int

val g13_example4735 : (((heap * heap) * heap) * heap) * int

val g13_example4736 : (((heap * heap) * heap) * heap) * int

val g13_example4737 : (((heap * heap) * heap) * heap) * int

val g13_example4738 : (((heap * heap) * heap) * heap) * int

val g13_example4739 : (((heap * heap) * heap) * heap) * int

val g13_example4740 : (((heap * heap) * heap) * heap) * int

val g13_example4741 : (((heap * heap) * heap) * heap) * int

val g13_example4742 : (((heap * heap) * heap) * heap) * int

val g13_example4743 : (((heap * heap) * heap) * heap) * int

val g13_example4744 : (((heap * heap) * heap) * heap) * int

val g13_example4745 : (((heap * heap) * heap) * heap) * int

val g13_example4746 : (((heap * heap) * heap) * heap) * int

val g13_example4747 : (((heap * heap) * heap) * heap) * int

val g13_example4748 : (((heap * heap) * heap) * heap) * int

val g13_example4749 : (((heap * heap) * heap) * heap) * int

val g13_example4750 : (((heap * heap) * heap) * heap) * int

val g13_example4751 : (((heap * heap) * heap) * heap) * int

val g13_example4752 : (((heap * heap) * heap) * heap) * int

val g13_example4753 : (((heap * heap) * heap) * heap) * int

val g13_example4754 : (((heap * heap) * heap) * heap) * int

val g13_example4755 : (((heap * heap) * heap) * heap) * int

val g13_example4756 : (((heap * heap) * heap) * heap) * int

val g13_example4757 : (((heap * heap) * heap) * heap) * int

val g13_example4758 : (((heap * heap) * heap) * heap) * int

val g13_example4759 : (((heap * heap) * heap) * heap) * int

val g13_example4760 : (((heap * heap) * heap) * heap) * int

val g13_example4761 : (((heap * heap) * heap) * heap) * int

val g13_example4762 : (((heap * heap) * heap) * heap) * int

val g13_example4763 : (((heap * heap) * heap) * heap) * int

val g13_example4764 : (((heap * heap) * heap) * heap) * int

val g13_example4765 : (((heap * heap) * heap) * heap) * int

val g13_example4766 : (((heap * heap) * heap) * heap) * int

val g13_example4767 : (((heap * heap) * heap) * heap) * int

val g13_example4768 : (((heap * heap) * heap) * heap) * int

val g13_example4769 : (((heap * heap) * heap) * heap) * int

val g13_example4770 : (((heap * heap) * heap) * heap) * int

val g13_example4771 : (((heap * heap) * heap) * heap) * int

val g13_example4772 : (((heap * heap) * heap) * heap) * int

val g13_example4773 : (((heap * heap) * heap) * heap) * int

val g13_example4774 : (((heap * heap) * heap) * heap) * int

val g13_example4775 : (((heap * heap) * heap) * heap) * int

val g13_example4776 : (((heap * heap) * heap) * heap) * int

val g13_example4777 : (((heap * heap) * heap) * heap) * int

val g13_example4778 : (((heap * heap) * heap) * heap) * int

val g13_example4779 : (((heap * heap) * heap) * heap) * int

val g13_example4780 : (((heap * heap) * heap) * heap) * int

val g13_example4781 : (((heap * heap) * heap) * heap) * int

val g13_example4782 : (((heap * heap) * heap) * heap) * int

val g13_example4783 : (((heap * heap) * heap) * heap) * int

val g13_example4784 : (((heap * heap) * heap) * heap) * int

val g13_example4785 : (((heap * heap) * heap) * heap) * int

val g13_example4786 : (((heap * heap) * heap) * heap) * int

val g13_example4787 : (((heap * heap) * heap) * heap) * int

val g13_example4788 : (((heap * heap) * heap) * heap) * int

val g13_example4789 : (((heap * heap) * heap) * heap) * int

val g13_example4790 : (((heap * heap) * heap) * heap) * int

val g13_example4791 : (((heap * heap) * heap) * heap) * int

val g13_example4792 : (((heap * heap) * heap) * heap) * int

val g13_example4793 : (((heap * heap) * heap) * heap) * int

val g13_example4794 : (((heap * heap) * heap) * heap) * int

val g13_example4795 : (((heap * heap) * heap) * heap) * int

val g13_example4796 : (((heap * heap) * heap) * heap) * int

val g13_example4797 : (((heap * heap) * heap) * heap) * int

val g13_example4798 : (((heap * heap) * heap) * heap) * int

val g13_example4799 : (((heap * heap) * heap) * heap) * int

val g13_example4800 : (((heap * heap) * heap) * heap) * int

val g13_example4801 : (((heap * heap) * heap) * heap) * int

val g13_example4802 : (((heap * heap) * heap) * heap) * int

val g13_example4803 : (((heap * heap) * heap) * heap) * int

val g13_example4804 : (((heap * heap) * heap) * heap) * int

val g13_example4805 : (((heap * heap) * heap) * heap) * int

val g13_example4806 : (((heap * heap) * heap) * heap) * int

val g13_example4807 : (((heap * heap) * heap) * heap) * int

val g13_example4808 : (((heap * heap) * heap) * heap) * int

val g13_example4809 : (((heap * heap) * heap) * heap) * int

val g13_example4810 : (((heap * heap) * heap) * heap) * int

val g13_example4811 : (((heap * heap) * heap) * heap) * int

val g13_example4812 : (((heap * heap) * heap) * heap) * int

val g13_example4813 : (((heap * heap) * heap) * heap) * int

val g13_example4814 : (((heap * heap) * heap) * heap) * int

val g13_example4815 : (((heap * heap) * heap) * heap) * int

val g13_example4816 : (((heap * heap) * heap) * heap) * int

val g13_example4817 : (((heap * heap) * heap) * heap) * int

val g13_example4818 : (((heap * heap) * heap) * heap) * int

val g13_example4819 : (((heap * heap) * heap) * heap) * int

val g13_example4820 : (((heap * heap) * heap) * heap) * int

val g13_example4821 : (((heap * heap) * heap) * heap) * int

val g13_example4822 : (((heap * heap) * heap) * heap) * int

val g13_example4823 : (((heap * heap) * heap) * heap) * int

val g13_example4824 : (((heap * heap) * heap) * heap) * int

val g13_example4825 : (((heap * heap) * heap) * heap) * int

val g13_example4826 : (((heap * heap) * heap) * heap) * int

val g13_example4827 : (((heap * heap) * heap) * heap) * int

val g13_example4828 : (((heap * heap) * heap) * heap) * int

val g13_example4829 : (((heap * heap) * heap) * heap) * int

val g13_example4830 : (((heap * heap) * heap) * heap) * int

val g13_example4831 : (((heap * heap) * heap) * heap) * int

val g13_example4832 : (((heap * heap) * heap) * heap) * int

val g13_example4833 : (((heap * heap) * heap) * heap) * int

val g13_example4834 : (((heap * heap) * heap) * heap) * int

val g13_example4835 : (((heap * heap) * heap) * heap) * int

val g13_example4836 : (((heap * heap) * heap) * heap) * int

val g13_example4837 : (((heap * heap) * heap) * heap) * int

val g13_example4838 : (((heap * heap) * heap) * heap) * int

val g13_example4839 : (((heap * heap) * heap) * heap) * int

val g13_example4840 : (((heap * heap) * heap) * heap) * int

val g13_example4841 : (((heap * heap) * heap) * heap) * int

val g13_example4842 : (((heap * heap) * heap) * heap) * int

val g13_example4843 : (((heap * heap) * heap) * heap) * int

val g13_example4844 : (((heap * heap) * heap) * heap) * int

val g13_example4845 : (((heap * heap) * heap) * heap) * int

val g13_example4846 : (((heap * heap) * heap) * heap) * int

val g13_example4847 : (((heap * heap) * heap) * heap) * int

val g13_example4848 : (((heap * heap) * heap) * heap) * int

val g13_example4849 : (((heap * heap) * heap) * heap) * int

val g13_example4850 : (((heap * heap) * heap) * heap) * int

val g13_example4851 : (((heap * heap) * heap) * heap) * int

val g13_example4852 : (((heap * heap) * heap) * heap) * int

val g13_example4853 : (((heap * heap) * heap) * heap) * int

val g13_example4854 : (((heap * heap) * heap) * heap) * int

val g13_example4855 : (((heap * heap) * heap) * heap) * int

val g13_example4856 : (((heap * heap) * heap) * heap) * int

val g13_example4857 : (((heap * heap) * heap) * heap) * int

val g13_example4858 : (((heap * heap) * heap) * heap) * int

val g13_example4859 : (((heap * heap) * heap) * heap) * int

val g13_example4860 : (((heap * heap) * heap) * heap) * int

val g13_example4861 : (((heap * heap) * heap) * heap) * int

val g13_example4862 : (((heap * heap) * heap) * heap) * int

val g13_example4863 : (((heap * heap) * heap) * heap) * int

val g13_example4864 : (((heap * heap) * heap) * heap) * int

val g13_example4865 : (((heap * heap) * heap) * heap) * int

val g13_example4866 : (((heap * heap) * heap) * heap) * int

val g13_example4867 : (((heap * heap) * heap) * heap) * int

val g13_example4868 : (((heap * heap) * heap) * heap) * int

val g13_example4869 : (((heap * heap) * heap) * heap) * int

val g13_example4870 : (((heap * heap) * heap) * heap) * int

val g13_example4871 : (((heap * heap) * heap) * heap) * int

val g13_example4872 : (((heap * heap) * heap) * heap) * int

val g13_example4873 : (((heap * heap) * heap) * heap) * int

val g13_example4874 : (((heap * heap) * heap) * heap) * int

val g13_example4875 : (((heap * heap) * heap) * heap) * int

val g13_example4876 : (((heap * heap) * heap) * heap) * int

val g13_example4877 : (((heap * heap) * heap) * heap) * int

val g13_example4878 : (((heap * heap) * heap) * heap) * int

val g13_example4879 : (((heap * heap) * heap) * heap) * int

val g13_example4880 : (((heap * heap) * heap) * heap) * int

val g13_example4881 : (((heap * heap) * heap) * heap) * int

val g13_example4882 : (((heap * heap) * heap) * heap) * int

val g13_example4883 : (((heap * heap) * heap) * heap) * int

val g13_example4884 : (((heap * heap) * heap) * heap) * int

val g13_example4885 : (((heap * heap) * heap) * heap) * int

val g13_example4886 : (((heap * heap) * heap) * heap) * int

val g13_example4887 : (((heap * heap) * heap) * heap) * int

val g13_example4888 : (((heap * heap) * heap) * heap) * int

val g13_example4889 : (((heap * heap) * heap) * heap) * int

val g13_example4890 : (((heap * heap) * heap) * heap) * int

val g13_example4891 : (((heap * heap) * heap) * heap) * int

val g13_example4892 : (((heap * heap) * heap) * heap) * int

val g13_example4893 : (((heap * heap) * heap) * heap) * int

val g13_example4894 : (((heap * heap) * heap) * heap) * int

val g13_example4895 : (((heap * heap) * heap) * heap) * int

val g13_example4896 : (((heap * heap) * heap) * heap) * int

val g13_example4897 : (((heap * heap) * heap) * heap) * int

val g13_example4898 : (((heap * heap) * heap) * heap) * int

val g13_example4899 : (((heap * heap) * heap) * heap) * int

val g13_example4900 : (((heap * heap) * heap) * heap) * int

val g13_example4901 : (((heap * heap) * heap) * heap) * int

val g13_example4902 : (((heap * heap) * heap) * heap) * int

val g13_example4903 : (((heap * heap) * heap) * heap) * int

val g13_example4904 : (((heap * heap) * heap) * heap) * int

val g13_example4905 : (((heap * heap) * heap) * heap) * int

val g13_example4906 : (((heap * heap) * heap) * heap) * int

val g13_example4907 : (((heap * heap) * heap) * heap) * int

val g13_example4908 : (((heap * heap) * heap) * heap) * int

val g13_example4909 : (((heap * heap) * heap) * heap) * int

val g13_example4910 : (((heap * heap) * heap) * heap) * int

val g13_example4911 : (((heap * heap) * heap) * heap) * int

val g13_example4912 : (((heap * heap) * heap) * heap) * int

val g13_example4913 : (((heap * heap) * heap) * heap) * int

val g13_example4914 : (((heap * heap) * heap) * heap) * int

val g13_example4915 : (((heap * heap) * heap) * heap) * int

val g13_example4916 : (((heap * heap) * heap) * heap) * int

val g13_example4917 : (((heap * heap) * heap) * heap) * int

val g13_example4918 : (((heap * heap) * heap) * heap) * int

val g13_example4919 : (((heap * heap) * heap) * heap) * int

val g13_example4920 : (((heap * heap) * heap) * heap) * int

val g13_example4921 : (((heap * heap) * heap) * heap) * int

val g13_example4922 : (((heap * heap) * heap) * heap) * int

val g13_example4923 : (((heap * heap) * heap) * heap) * int

val g13_example4924 : (((heap * heap) * heap) * heap) * int

val g13_example4925 : (((heap * heap) * heap) * heap) * int

val g13_example4926 : (((heap * heap) * heap) * heap) * int

val g13_example4927 : (((heap * heap) * heap) * heap) * int

val g13_example4928 : (((heap * heap) * heap) * heap) * int

val g13_example4929 : (((heap * heap) * heap) * heap) * int

val g13_example4930 : (((heap * heap) * heap) * heap) * int

val g13_example4931 : (((heap * heap) * heap) * heap) * int

val g13_example4932 : (((heap * heap) * heap) * heap) * int

val g13_example4933 : (((heap * heap) * heap) * heap) * int

val g13_example4934 : (((heap * heap) * heap) * heap) * int

val g13_example4935 : (((heap * heap) * heap) * heap) * int

val g13_example4936 : (((heap * heap) * heap) * heap) * int

val g13_example4937 : (((heap * heap) * heap) * heap) * int

val g13_example4938 : (((heap * heap) * heap) * heap) * int

val g13_example4939 : (((heap * heap) * heap) * heap) * int

val g13_example4940 : (((heap * heap) * heap) * heap) * int

val g13_example4941 : (((heap * heap) * heap) * heap) * int

val g13_example4942 : (((heap * heap) * heap) * heap) * int

val g13_example4943 : (((heap * heap) * heap) * heap) * int

val g13_example4944 : (((heap * heap) * heap) * heap) * int

val g13_example4945 : (((heap * heap) * heap) * heap) * int

val g13_example4946 : (((heap * heap) * heap) * heap) * int

val g13_example4947 : (((heap * heap) * heap) * heap) * int

val g13_example4948 : (((heap * heap) * heap) * heap) * int

val g13_example4949 : (((heap * heap) * heap) * heap) * int

val g13_example4950 : (((heap * heap) * heap) * heap) * int

val g13_example4951 : (((heap * heap) * heap) * heap) * int

val g13_example4952 : (((heap * heap) * heap) * heap) * int

val g13_example4953 : (((heap * heap) * heap) * heap) * int

val g13_example4954 : (((heap * heap) * heap) * heap) * int

val g13_example4955 : (((heap * heap) * heap) * heap) * int

val g13_example4956 : (((heap * heap) * heap) * heap) * int

val g13_example4957 : (((heap * heap) * heap) * heap) * int

val g13_example4958 : (((heap * heap) * heap) * heap) * int

val g13_example4959 : (((heap * heap) * heap) * heap) * int

val g13_example4960 : (((heap * heap) * heap) * heap) * int

val g13_example4961 : (((heap * heap) * heap) * heap) * int

val g13_example4962 : (((heap * heap) * heap) * heap) * int

val g13_example4963 : (((heap * heap) * heap) * heap) * int

val g13_example4964 : (((heap * heap) * heap) * heap) * int

val g13_example4965 : (((heap * heap) * heap) * heap) * int

val g13_example4966 : (((heap * heap) * heap) * heap) * int

val g13_example4967 : (((heap * heap) * heap) * heap) * int

val g13_example4968 : (((heap * heap) * heap) * heap) * int

val g13_example4969 : (((heap * heap) * heap) * heap) * int

val g13_example4970 : (((heap * heap) * heap) * heap) * int

val g13_example4971 : (((heap * heap) * heap) * heap) * int

val g13_example4972 : (((heap * heap) * heap) * heap) * int

val g13_example4973 : (((heap * heap) * heap) * heap) * int

val g13_example4974 : (((heap * heap) * heap) * heap) * int

val g13_example4975 : (((heap * heap) * heap) * heap) * int

val g13_example4976 : (((heap * heap) * heap) * heap) * int

val g13_example4977 : (((heap * heap) * heap) * heap) * int

val g13_example4978 : (((heap * heap) * heap) * heap) * int

val g13_example4979 : (((heap * heap) * heap) * heap) * int

val g13_example4980 : (((heap * heap) * heap) * heap) * int

val g13_example4981 : (((heap * heap) * heap) * heap) * int

val g13_example4982 : (((heap * heap) * heap) * heap) * int

val g13_example4983 : (((heap * heap) * heap) * heap) * int

val g13_example4984 : (((heap * heap) * heap) * heap) * int

val g13_example4985 : (((heap * heap) * heap) * heap) * int

val g13_example4986 : (((heap * heap) * heap) * heap) * int

val g13_example4987 : (((heap * heap) * heap) * heap) * int

val g13_example4988 : (((heap * heap) * heap) * heap) * int

val g13_example4989 : (((heap * heap) * heap) * heap) * int

val g13_example4990 : (((heap * heap) * heap) * heap) * int

val g13_example4991 : (((heap * heap) * heap) * heap) * int

val g13_example4992 : (((heap * heap) * heap) * heap) * int

val g13_example4993 : (((heap * heap) * heap) * heap) * int

val g13_example4994 : (((heap * heap) * heap) * heap) * int

val g13_example4995 : (((heap * heap) * heap) * heap) * int

val g13_example4996 : (((heap * heap) * heap) * heap) * int

val g13_example4997 : (((heap * heap) * heap) * heap) * int

val g13_example4998 : (((heap * heap) * heap) * heap) * int

val g13_example4999 : (((heap * heap) * heap) * heap) * int

val g13_example5000 : (((heap * heap) * heap) * heap) * int

val g13_example5001 : (((heap * heap) * heap) * heap) * int

val g13_example5002 : (((heap * heap) * heap) * heap) * int

val g13_example5003 : (((heap * heap) * heap) * heap) * int

val g13_example5004 : (((heap * heap) * heap) * heap) * int

val g13_example5005 : (((heap * heap) * heap) * heap) * int

val g13_example5006 : (((heap * heap) * heap) * heap) * int

val g13_example5007 : (((heap * heap) * heap) * heap) * int

val g13_example5008 : (((heap * heap) * heap) * heap) * int

val g13_example5009 : (((heap * heap) * heap) * heap) * int

val g13_example5010 : (((heap * heap) * heap) * heap) * int

val g13_example5011 : (((heap * heap) * heap) * heap) * int

val g13_example5012 : (((heap * heap) * heap) * heap) * int

val g13_example5013 : (((heap * heap) * heap) * heap) * int

val g13_example5014 : (((heap * heap) * heap) * heap) * int

val g13_example5015 : (((heap * heap) * heap) * heap) * int

val g13_example5016 : (((heap * heap) * heap) * heap) * int

val g13_example5017 : (((heap * heap) * heap) * heap) * int

val g13_example5018 : (((heap * heap) * heap) * heap) * int

val g13_example5019 : (((heap * heap) * heap) * heap) * int

val g13_example5020 : (((heap * heap) * heap) * heap) * int

val g13_example5021 : (((heap * heap) * heap) * heap) * int

val g13_example5022 : (((heap * heap) * heap) * heap) * int

val g13_example5023 : (((heap * heap) * heap) * heap) * int

val g13_example5024 : (((heap * heap) * heap) * heap) * int

val g13_example5025 : (((heap * heap) * heap) * heap) * int

val g13_example5026 : (((heap * heap) * heap) * heap) * int

val g13_example5027 : (((heap * heap) * heap) * heap) * int

val g13_example5028 : (((heap * heap) * heap) * heap) * int

val g13_example5029 : (((heap * heap) * heap) * heap) * int

val g13_example5030 : (((heap * heap) * heap) * heap) * int

val g13_example5031 : (((heap * heap) * heap) * heap) * int

val g13_example5032 : (((heap * heap) * heap) * heap) * int

val g13_example5033 : (((heap * heap) * heap) * heap) * int

val g13_example5034 : (((heap * heap) * heap) * heap) * int

val g13_example5035 : (((heap * heap) * heap) * heap) * int

val g13_example5036 : (((heap * heap) * heap) * heap) * int

val g13_example5037 : (((heap * heap) * heap) * heap) * int

val g13_example5038 : (((heap * heap) * heap) * heap) * int

val g13_example5039 : (((heap * heap) * heap) * heap) * int

val g13_example5040 : (((heap * heap) * heap) * heap) * int

val g13_example5041 : (((heap * heap) * heap) * heap) * int

val g13_example5042 : (((heap * heap) * heap) * heap) * int

val g13_example5043 : (((heap * heap) * heap) * heap) * int

val g13_example5044 : (((heap * heap) * heap) * heap) * int

val g13_example5045 : (((heap * heap) * heap) * heap) * int

val g13_example5046 : (((heap * heap) * heap) * heap) * int

val g13_example5047 : (((heap * heap) * heap) * heap) * int

val g13_example5048 : (((heap * heap) * heap) * heap) * int

val g13_example5049 : (((heap * heap) * heap) * heap) * int

val g13_example5050 : (((heap * heap) * heap) * heap) * int

val g13_example5051 : (((heap * heap) * heap) * heap) * int

val g13_example5052 : (((heap * heap) * heap) * heap) * int

val g13_example5053 : (((heap * heap) * heap) * heap) * int

val g13_example5054 : (((heap * heap) * heap) * heap) * int

val g13_example5055 : (((heap * heap) * heap) * heap) * int

val g13_example5056 : (((heap * heap) * heap) * heap) * int

val g13_example5057 : (((heap * heap) * heap) * heap) * int

val g13_example5058 : (((heap * heap) * heap) * heap) * int

val g13_example5059 : (((heap * heap) * heap) * heap) * int

val g13_example5060 : (((heap * heap) * heap) * heap) * int

val g13_example5061 : (((heap * heap) * heap) * heap) * int

val g13_example5062 : (((heap * heap) * heap) * heap) * int

val g13_example5063 : (((heap * heap) * heap) * heap) * int

val g13_example5064 : (((heap * heap) * heap) * heap) * int

val g13_example5065 : (((heap * heap) * heap) * heap) * int

val g13_example5066 : (((heap * heap) * heap) * heap) * int

val g13_example5067 : (((heap * heap) * heap) * heap) * int

val g13_example5068 : (((heap * heap) * heap) * heap) * int

val g13_example5069 : (((heap * heap) * heap) * heap) * int

val g13_example5070 : (((heap * heap) * heap) * heap) * int

val g13_example5071 : (((heap * heap) * heap) * heap) * int

val g13_example5072 : (((heap * heap) * heap) * heap) * int

val g13_example5073 : (((heap * heap) * heap) * heap) * int

val g13_example5074 : (((heap * heap) * heap) * heap) * int

val g13_example5075 : (((heap * heap) * heap) * heap) * int

val g13_example5076 : (((heap * heap) * heap) * heap) * int

val g13_example5077 : (((heap * heap) * heap) * heap) * int

val g13_example5078 : (((heap * heap) * heap) * heap) * int

val g13_example5079 : (((heap * heap) * heap) * heap) * int

val g13_example5080 : (((heap * heap) * heap) * heap) * int

val g13_example5081 : (((heap * heap) * heap) * heap) * int

val g13_example5082 : (((heap * heap) * heap) * heap) * int

val g13_example5083 : (((heap * heap) * heap) * heap) * int

val g13_example5084 : (((heap * heap) * heap) * heap) * int

val g13_example5085 : (((heap * heap) * heap) * heap) * int

val g13_example5086 : (((heap * heap) * heap) * heap) * int

val g13_example5087 : (((heap * heap) * heap) * heap) * int

val g13_example5088 : (((heap * heap) * heap) * heap) * int

val g13_example5089 : (((heap * heap) * heap) * heap) * int

val g13_example5090 : (((heap * heap) * heap) * heap) * int

val g13_example5091 : (((heap * heap) * heap) * heap) * int

val g13_example5092 : (((heap * heap) * heap) * heap) * int

val g13_example5093 : (((heap * heap) * heap) * heap) * int

val g13_example5094 : (((heap * heap) * heap) * heap) * int

val g13_example5095 : (((heap * heap) * heap) * heap) * int

val g13_example5096 : (((heap * heap) * heap) * heap) * int

val g13_example5097 : (((heap * heap) * heap) * heap) * int

val g13_example5098 : (((heap * heap) * heap) * heap) * int

val g13_example5099 : (((heap * heap) * heap) * heap) * int

val g13_example5100 : (((heap * heap) * heap) * heap) * int

val g13_example5101 : (((heap * heap) * heap) * heap) * int

val g13_example5102 : (((heap * heap) * heap) * heap) * int

val g13_example5103 : (((heap * heap) * heap) * heap) * int

val g13_example5104 : (((heap * heap) * heap) * heap) * int

val g13_example5105 : (((heap * heap) * heap) * heap) * int

val g13_example5106 : (((heap * heap) * heap) * heap) * int

val g13_example5107 : (((heap * heap) * heap) * heap) * int

val g13_example5108 : (((heap * heap) * heap) * heap) * int

val g13_example5109 : (((heap * heap) * heap) * heap) * int

val g13_example5110 : (((heap * heap) * heap) * heap) * int

val g13_example5111 : (((heap * heap) * heap) * heap) * int

val g13_example5112 : (((heap * heap) * heap) * heap) * int

val g13_example5113 : (((heap * heap) * heap) * heap) * int

val g13_example5114 : (((heap * heap) * heap) * heap) * int

val g13_example5115 : (((heap * heap) * heap) * heap) * int

val g13_example5116 : (((heap * heap) * heap) * heap) * int

val g13_example5117 : (((heap * heap) * heap) * heap) * int

val g13_example5118 : (((heap * heap) * heap) * heap) * int

val g13_example5119 : (((heap * heap) * heap) * heap) * int

val g13_example5120 : (((heap * heap) * heap) * heap) * int

val g13_example5121 : (((heap * heap) * heap) * heap) * int

val g13_example5122 : (((heap * heap) * heap) * heap) * int

val g13_example5123 : (((heap * heap) * heap) * heap) * int

val g13_example5124 : (((heap * heap) * heap) * heap) * int

val g13_example5125 : (((heap * heap) * heap) * heap) * int

val g13_example5126 : (((heap * heap) * heap) * heap) * int

val g13_example5127 : (((heap * heap) * heap) * heap) * int

val g13_example5128 : (((heap * heap) * heap) * heap) * int

val g13_example5129 : (((heap * heap) * heap) * heap) * int

val g13_example5130 : (((heap * heap) * heap) * heap) * int

val g13_example5131 : (((heap * heap) * heap) * heap) * int

val g13_example5132 : (((heap * heap) * heap) * heap) * int

val g13_example5133 : (((heap * heap) * heap) * heap) * int

val g13_example5134 : (((heap * heap) * heap) * heap) * int

val g13_example5135 : (((heap * heap) * heap) * heap) * int

val g13_example5136 : (((heap * heap) * heap) * heap) * int

val g13_example5137 : (((heap * heap) * heap) * heap) * int

val g13_example5138 : (((heap * heap) * heap) * heap) * int

val g13_example5139 : (((heap * heap) * heap) * heap) * int

val g13_example5140 : (((heap * heap) * heap) * heap) * int

val g13_example5141 : (((heap * heap) * heap) * heap) * int

val g13_example5142 : (((heap * heap) * heap) * heap) * int

val g13_example5143 : (((heap * heap) * heap) * heap) * int

val g13_example5144 : (((heap * heap) * heap) * heap) * int

val g13_example5145 : (((heap * heap) * heap) * heap) * int

val g13_example5146 : (((heap * heap) * heap) * heap) * int

val g13_example5147 : (((heap * heap) * heap) * heap) * int

val g13_example5148 : (((heap * heap) * heap) * heap) * int

val g13_example5149 : (((heap * heap) * heap) * heap) * int

val g13_example5150 : (((heap * heap) * heap) * heap) * int

val g13_example5151 : (((heap * heap) * heap) * heap) * int

val g13_example5152 : (((heap * heap) * heap) * heap) * int

val g13_example5153 : (((heap * heap) * heap) * heap) * int

val g13_example5154 : (((heap * heap) * heap) * heap) * int

val g13_example5155 : (((heap * heap) * heap) * heap) * int

val g13_example5156 : (((heap * heap) * heap) * heap) * int

val g13_example5157 : (((heap * heap) * heap) * heap) * int

val g13_example5158 : (((heap * heap) * heap) * heap) * int

val g13_example5159 : (((heap * heap) * heap) * heap) * int

val g13_example5160 : (((heap * heap) * heap) * heap) * int

val g13_example5161 : (((heap * heap) * heap) * heap) * int

val g13_example5162 : (((heap * heap) * heap) * heap) * int

val g13_example5163 : (((heap * heap) * heap) * heap) * int

val g13_example5164 : (((heap * heap) * heap) * heap) * int

val g13_example5165 : (((heap * heap) * heap) * heap) * int

val g13_example5166 : (((heap * heap) * heap) * heap) * int

val g13_example5167 : (((heap * heap) * heap) * heap) * int

val g13_example5168 : (((heap * heap) * heap) * heap) * int

val g13_example5169 : (((heap * heap) * heap) * heap) * int

val g13_example5170 : (((heap * heap) * heap) * heap) * int

val g13_example5171 : (((heap * heap) * heap) * heap) * int

val g13_example5172 : (((heap * heap) * heap) * heap) * int

val g13_example5173 : (((heap * heap) * heap) * heap) * int

val g13_example5174 : (((heap * heap) * heap) * heap) * int

val g13_example5175 : (((heap * heap) * heap) * heap) * int

val g13_example5176 : (((heap * heap) * heap) * heap) * int

val g13_example5177 : (((heap * heap) * heap) * heap) * int

val g13_example5178 : (((heap * heap) * heap) * heap) * int

val g13_example5179 : (((heap * heap) * heap) * heap) * int

val g13_example5180 : (((heap * heap) * heap) * heap) * int

val g13_example5181 : (((heap * heap) * heap) * heap) * int

val g13_example5182 : (((heap * heap) * heap) * heap) * int

val g13_example5183 : (((heap * heap) * heap) * heap) * int

val g13_example5184 : (((heap * heap) * heap) * heap) * int

val g13_example5185 : (((heap * heap) * heap) * heap) * int

val g13_example5186 : (((heap * heap) * heap) * heap) * int

val g13_example5187 : (((heap * heap) * heap) * heap) * int

val g13_example5188 : (((heap * heap) * heap) * heap) * int

val g13_example5189 : (((heap * heap) * heap) * heap) * int

val g13_example5190 : (((heap * heap) * heap) * heap) * int

val g13_example5191 : (((heap * heap) * heap) * heap) * int

val g13_example5192 : (((heap * heap) * heap) * heap) * int

val g13_example5193 : (((heap * heap) * heap) * heap) * int

val g13_example5194 : (((heap * heap) * heap) * heap) * int

val g13_example5195 : (((heap * heap) * heap) * heap) * int

val g13_example5196 : (((heap * heap) * heap) * heap) * int

val g13_example5197 : (((heap * heap) * heap) * heap) * int

val g13_example5198 : (((heap * heap) * heap) * heap) * int

val g13_example5199 : (((heap * heap) * heap) * heap) * int

val g13_example5200 : (((heap * heap) * heap) * heap) * int

val g13_example5201 : (((heap * heap) * heap) * heap) * int

val g13_example5202 : (((heap * heap) * heap) * heap) * int

val g13_example5203 : (((heap * heap) * heap) * heap) * int

val g13_example5204 : (((heap * heap) * heap) * heap) * int

val g13_example5205 : (((heap * heap) * heap) * heap) * int

val g13_example5206 : (((heap * heap) * heap) * heap) * int

val g13_example5207 : (((heap * heap) * heap) * heap) * int

val g13_example5208 : (((heap * heap) * heap) * heap) * int

val g13_example5209 : (((heap * heap) * heap) * heap) * int

val g13_example5210 : (((heap * heap) * heap) * heap) * int

val g13_example5211 : (((heap * heap) * heap) * heap) * int

val g13_example5212 : (((heap * heap) * heap) * heap) * int

val g13_example5213 : (((heap * heap) * heap) * heap) * int

val g13_example5214 : (((heap * heap) * heap) * heap) * int

val g13_example5215 : (((heap * heap) * heap) * heap) * int

val g13_example5216 : (((heap * heap) * heap) * heap) * int

val g13_example5217 : (((heap * heap) * heap) * heap) * int

val g13_example5218 : (((heap * heap) * heap) * heap) * int

val g13_example5219 : (((heap * heap) * heap) * heap) * int

val g13_example5220 : (((heap * heap) * heap) * heap) * int

val g13_example5221 : (((heap * heap) * heap) * heap) * int

val g13_example5222 : (((heap * heap) * heap) * heap) * int

val g13_example5223 : (((heap * heap) * heap) * heap) * int

val g13_example5224 : (((heap * heap) * heap) * heap) * int

val g13_example5225 : (((heap * heap) * heap) * heap) * int

val g13_example5226 : (((heap * heap) * heap) * heap) * int

val g13_example5227 : (((heap * heap) * heap) * heap) * int

val g13_example5228 : (((heap * heap) * heap) * heap) * int

val g13_example5229 : (((heap * heap) * heap) * heap) * int

val g13_example5230 : (((heap * heap) * heap) * heap) * int

val g13_example5231 : (((heap * heap) * heap) * heap) * int

val g13_example5232 : (((heap * heap) * heap) * heap) * int

val g13_example5233 : (((heap * heap) * heap) * heap) * int

val g13_example5234 : (((heap * heap) * heap) * heap) * int

val g13_example5235 : (((heap * heap) * heap) * heap) * int

val g13_example5236 : (((heap * heap) * heap) * heap) * int

val g13_example5237 : (((heap * heap) * heap) * heap) * int

val g13_example5238 : (((heap * heap) * heap) * heap) * int

val g13_example5239 : (((heap * heap) * heap) * heap) * int

val g13_example5240 : (((heap * heap) * heap) * heap) * int

val g13_example5241 : (((heap * heap) * heap) * heap) * int

val g13_example5242 : (((heap * heap) * heap) * heap) * int

val g13_example5243 : (((heap * heap) * heap) * heap) * int

val g13_example5244 : (((heap * heap) * heap) * heap) * int

val g13_example5245 : (((heap * heap) * heap) * heap) * int

val g13_example5246 : (((heap * heap) * heap) * heap) * int

val g13_example5247 : (((heap * heap) * heap) * heap) * int

val g13_example5248 : (((heap * heap) * heap) * heap) * int

val g13_example5249 : (((heap * heap) * heap) * heap) * int

val g13_example5250 : (((heap * heap) * heap) * heap) * int

val g13_example5251 : (((heap * heap) * heap) * heap) * int

val g13_example5252 : (((heap * heap) * heap) * heap) * int

val g13_example5253 : (((heap * heap) * heap) * heap) * int

val g13_example5254 : (((heap * heap) * heap) * heap) * int

val g13_example5255 : (((heap * heap) * heap) * heap) * int

val g13_example5256 : (((heap * heap) * heap) * heap) * int

val g13_example5257 : (((heap * heap) * heap) * heap) * int

val g13_example5258 : (((heap * heap) * heap) * heap) * int

val g13_example5259 : (((heap * heap) * heap) * heap) * int

val g13_example5260 : (((heap * heap) * heap) * heap) * int

val g13_example5261 : (((heap * heap) * heap) * heap) * int

val g13_example5262 : (((heap * heap) * heap) * heap) * int

val g13_example5263 : (((heap * heap) * heap) * heap) * int

val g13_example5264 : (((heap * heap) * heap) * heap) * int

val g13_example5265 : (((heap * heap) * heap) * heap) * int

val g13_example5266 : (((heap * heap) * heap) * heap) * int

val g13_example5267 : (((heap * heap) * heap) * heap) * int

val g13_example5268 : (((heap * heap) * heap) * heap) * int

val g13_example5269 : (((heap * heap) * heap) * heap) * int

val g13_example5270 : (((heap * heap) * heap) * heap) * int

val g13_example5271 : (((heap * heap) * heap) * heap) * int

val g13_example5272 : (((heap * heap) * heap) * heap) * int

val g13_example5273 : (((heap * heap) * heap) * heap) * int

val g13_example5274 : (((heap * heap) * heap) * heap) * int

val g13_example5275 : (((heap * heap) * heap) * heap) * int

val g13_example5276 : (((heap * heap) * heap) * heap) * int

val g13_example5277 : (((heap * heap) * heap) * heap) * int

val g13_example5278 : (((heap * heap) * heap) * heap) * int

val g13_example5279 : (((heap * heap) * heap) * heap) * int

val g13_example5280 : (((heap * heap) * heap) * heap) * int

val g13_example5281 : (((heap * heap) * heap) * heap) * int

val g13_example5282 : (((heap * heap) * heap) * heap) * int

val g13_example5283 : (((heap * heap) * heap) * heap) * int

val g13_example5284 : (((heap * heap) * heap) * heap) * int

val g13_example5285 : (((heap * heap) * heap) * heap) * int

val g13_example5286 : (((heap * heap) * heap) * heap) * int

val g13_example5287 : (((heap * heap) * heap) * heap) * int

val g13_example5288 : (((heap * heap) * heap) * heap) * int

val g13_example5289 : (((heap * heap) * heap) * heap) * int

val g13_example5290 : (((heap * heap) * heap) * heap) * int

val g13_example5291 : (((heap * heap) * heap) * heap) * int

val g13_example5292 : (((heap * heap) * heap) * heap) * int

val g13_example5293 : (((heap * heap) * heap) * heap) * int

val g13_example5294 : (((heap * heap) * heap) * heap) * int

val g13_example5295 : (((heap * heap) * heap) * heap) * int

val g13_example5296 : (((heap * heap) * heap) * heap) * int

val g13_example5297 : (((heap * heap) * heap) * heap) * int

val g13_example5298 : (((heap * heap) * heap) * heap) * int

val g13_example5299 : (((heap * heap) * heap) * heap) * int

val g13_example5300 : (((heap * heap) * heap) * heap) * int

val g13_example5301 : (((heap * heap) * heap) * heap) * int

val g13_example5302 : (((heap * heap) * heap) * heap) * int

val g13_example5303 : (((heap * heap) * heap) * heap) * int

val g13_example5304 : (((heap * heap) * heap) * heap) * int

val g13_example5305 : (((heap * heap) * heap) * heap) * int

val g13_example5306 : (((heap * heap) * heap) * heap) * int

val g13_example5307 : (((heap * heap) * heap) * heap) * int

val g13_example5308 : (((heap * heap) * heap) * heap) * int

val g13_example5309 : (((heap * heap) * heap) * heap) * int

val g13_example5310 : (((heap * heap) * heap) * heap) * int

val g13_example5311 : (((heap * heap) * heap) * heap) * int

val g13_example5312 : (((heap * heap) * heap) * heap) * int

val g13_example5313 : (((heap * heap) * heap) * heap) * int

val g13_example5314 : (((heap * heap) * heap) * heap) * int

val g13_example5315 : (((heap * heap) * heap) * heap) * int

val g13_example5316 : (((heap * heap) * heap) * heap) * int

val g13_example5317 : (((heap * heap) * heap) * heap) * int

val g13_example5318 : (((heap * heap) * heap) * heap) * int

val g13_example5319 : (((heap * heap) * heap) * heap) * int

val g13_example5320 : (((heap * heap) * heap) * heap) * int

val g13_example5321 : (((heap * heap) * heap) * heap) * int

val g13_example5322 : (((heap * heap) * heap) * heap) * int

val g13_example5323 : (((heap * heap) * heap) * heap) * int

val g13_example5324 : (((heap * heap) * heap) * heap) * int

val g13_example5325 : (((heap * heap) * heap) * heap) * int

val g13_example5326 : (((heap * heap) * heap) * heap) * int

val g13_example5327 : (((heap * heap) * heap) * heap) * int

val g13_example5328 : (((heap * heap) * heap) * heap) * int

val g13_example5329 : (((heap * heap) * heap) * heap) * int

val g13_example5330 : (((heap * heap) * heap) * heap) * int

val g13_example5331 : (((heap * heap) * heap) * heap) * int

val g13_example5332 : (((heap * heap) * heap) * heap) * int

val g13_example5333 : (((heap * heap) * heap) * heap) * int

val g13_example5334 : (((heap * heap) * heap) * heap) * int

val g13_example5335 : (((heap * heap) * heap) * heap) * int

val g13_example5336 : (((heap * heap) * heap) * heap) * int

val g13_example5337 : (((heap * heap) * heap) * heap) * int

val g13_example5338 : (((heap * heap) * heap) * heap) * int

val g13_example5339 : (((heap * heap) * heap) * heap) * int

val g13_example5340 : (((heap * heap) * heap) * heap) * int

val g13_example5341 : (((heap * heap) * heap) * heap) * int

val g13_example5342 : (((heap * heap) * heap) * heap) * int

val g13_example5343 : (((heap * heap) * heap) * heap) * int

val g13_example5344 : (((heap * heap) * heap) * heap) * int

val g13_example5345 : (((heap * heap) * heap) * heap) * int

val g13_example5346 : (((heap * heap) * heap) * heap) * int

val g13_example5347 : (((heap * heap) * heap) * heap) * int

val g13_example5348 : (((heap * heap) * heap) * heap) * int

val g13_example5349 : (((heap * heap) * heap) * heap) * int

val g13_example5350 : (((heap * heap) * heap) * heap) * int

val g13_example5351 : (((heap * heap) * heap) * heap) * int

val g13_example5352 : (((heap * heap) * heap) * heap) * int

val g13_example5353 : (((heap * heap) * heap) * heap) * int

val g13_example5354 : (((heap * heap) * heap) * heap) * int

val g13_example5355 : (((heap * heap) * heap) * heap) * int

val g13_example5356 : (((heap * heap) * heap) * heap) * int

val g13_example5357 : (((heap * heap) * heap) * heap) * int

val g13_example5358 : (((heap * heap) * heap) * heap) * int

val g13_example5359 : (((heap * heap) * heap) * heap) * int

val g13_example5360 : (((heap * heap) * heap) * heap) * int

val g13_example5361 : (((heap * heap) * heap) * heap) * int

val g13_example5362 : (((heap * heap) * heap) * heap) * int

val g13_example5363 : (((heap * heap) * heap) * heap) * int

val g13_example5364 : (((heap * heap) * heap) * heap) * int

val g13_example5365 : (((heap * heap) * heap) * heap) * int

val g13_example5366 : (((heap * heap) * heap) * heap) * int

val g13_example5367 : (((heap * heap) * heap) * heap) * int

val g13_example5368 : (((heap * heap) * heap) * heap) * int

val g13_example5369 : (((heap * heap) * heap) * heap) * int

val g13_example5370 : (((heap * heap) * heap) * heap) * int

val g13_example5371 : (((heap * heap) * heap) * heap) * int

val g13_example5372 : (((heap * heap) * heap) * heap) * int

val g13_example5373 : (((heap * heap) * heap) * heap) * int

val g13_example5374 : (((heap * heap) * heap) * heap) * int

val g13_example5375 : (((heap * heap) * heap) * heap) * int

val g13_example5376 : (((heap * heap) * heap) * heap) * int

val g13_example5377 : (((heap * heap) * heap) * heap) * int

val g13_example5378 : (((heap * heap) * heap) * heap) * int

val g13_example5379 : (((heap * heap) * heap) * heap) * int

val g13_example5380 : (((heap * heap) * heap) * heap) * int

val g13_example5381 : (((heap * heap) * heap) * heap) * int

val g13_example5382 : (((heap * heap) * heap) * heap) * int

val g13_example5383 : (((heap * heap) * heap) * heap) * int

val g13_example5384 : (((heap * heap) * heap) * heap) * int

val g13_example5385 : (((heap * heap) * heap) * heap) * int

val g13_example5386 : (((heap * heap) * heap) * heap) * int

val g13_example5387 : (((heap * heap) * heap) * heap) * int

val g13_example5388 : (((heap * heap) * heap) * heap) * int

val g13_example5389 : (((heap * heap) * heap) * heap) * int

val g13_example5390 : (((heap * heap) * heap) * heap) * int

val g13_example5391 : (((heap * heap) * heap) * heap) * int

val g13_example5392 : (((heap * heap) * heap) * heap) * int

val g13_example5393 : (((heap * heap) * heap) * heap) * int

val g13_example5394 : (((heap * heap) * heap) * heap) * int

val g13_example5395 : (((heap * heap) * heap) * heap) * int

val g13_example5396 : (((heap * heap) * heap) * heap) * int

val g13_example5397 : (((heap * heap) * heap) * heap) * int

val g13_example5398 : (((heap * heap) * heap) * heap) * int

val g13_example5399 : (((heap * heap) * heap) * heap) * int

val g13_example5400 : (((heap * heap) * heap) * heap) * int

val g13_example5401 : (((heap * heap) * heap) * heap) * int

val g13_example5402 : (((heap * heap) * heap) * heap) * int

val g13_example5403 : (((heap * heap) * heap) * heap) * int

val g13_example5404 : (((heap * heap) * heap) * heap) * int

val g13_example5405 : (((heap * heap) * heap) * heap) * int

val g13_example5406 : (((heap * heap) * heap) * heap) * int

val g13_example5407 : (((heap * heap) * heap) * heap) * int

val g13_example5408 : (((heap * heap) * heap) * heap) * int

val g13_example5409 : (((heap * heap) * heap) * heap) * int

val g13_example5410 : (((heap * heap) * heap) * heap) * int

val g13_example5411 : (((heap * heap) * heap) * heap) * int

val g13_example5412 : (((heap * heap) * heap) * heap) * int

val g13_example5413 : (((heap * heap) * heap) * heap) * int

val g13_example5414 : (((heap * heap) * heap) * heap) * int

val g13_example5415 : (((heap * heap) * heap) * heap) * int

val g13_example5416 : (((heap * heap) * heap) * heap) * int

val g13_example5417 : (((heap * heap) * heap) * heap) * int

val g13_example5418 : (((heap * heap) * heap) * heap) * int

val g13_example5419 : (((heap * heap) * heap) * heap) * int

val g13_example5420 : (((heap * heap) * heap) * heap) * int

val g13_example5421 : (((heap * heap) * heap) * heap) * int

val g13_example5422 : (((heap * heap) * heap) * heap) * int

val g13_example5423 : (((heap * heap) * heap) * heap) * int

val g13_example5424 : (((heap * heap) * heap) * heap) * int

val g13_example5425 : (((heap * heap) * heap) * heap) * int

val g13_example5426 : (((heap * heap) * heap) * heap) * int

val g13_example5427 : (((heap * heap) * heap) * heap) * int

val g13_example5428 : (((heap * heap) * heap) * heap) * int

val g13_example5429 : (((heap * heap) * heap) * heap) * int

val g13_example5430 : (((heap * heap) * heap) * heap) * int

val g13_example5431 : (((heap * heap) * heap) * heap) * int

val g13_example5432 : (((heap * heap) * heap) * heap) * int

val g13_example5433 : (((heap * heap) * heap) * heap) * int

val g13_example5434 : (((heap * heap) * heap) * heap) * int

val g13_example5435 : (((heap * heap) * heap) * heap) * int

val g13_example5436 : (((heap * heap) * heap) * heap) * int

val g13_example5437 : (((heap * heap) * heap) * heap) * int

val g13_example5438 : (((heap * heap) * heap) * heap) * int

val g13_example5439 : (((heap * heap) * heap) * heap) * int

val g13_example5440 : (((heap * heap) * heap) * heap) * int

val g13_example5441 : (((heap * heap) * heap) * heap) * int

val g13_example5442 : (((heap * heap) * heap) * heap) * int

val g13_example5443 : (((heap * heap) * heap) * heap) * int

val g13_example5444 : (((heap * heap) * heap) * heap) * int

val g13_example5445 : (((heap * heap) * heap) * heap) * int

val g13_example5446 : (((heap * heap) * heap) * heap) * int

val g13_example5447 : (((heap * heap) * heap) * heap) * int

val g13_example5448 : (((heap * heap) * heap) * heap) * int

val g13_example5449 : (((heap * heap) * heap) * heap) * int

val g13_example5450 : (((heap * heap) * heap) * heap) * int

val g13_example5451 : (((heap * heap) * heap) * heap) * int

val g13_example5452 : (((heap * heap) * heap) * heap) * int

val g13_example5453 : (((heap * heap) * heap) * heap) * int

val g13_example5454 : (((heap * heap) * heap) * heap) * int

val g13_example5455 : (((heap * heap) * heap) * heap) * int

val g13_example5456 : (((heap * heap) * heap) * heap) * int

val g13_example5457 : (((heap * heap) * heap) * heap) * int

val g13_example5458 : (((heap * heap) * heap) * heap) * int

val g13_example5459 : (((heap * heap) * heap) * heap) * int

val g13_example5460 : (((heap * heap) * heap) * heap) * int

val g13_example5461 : (((heap * heap) * heap) * heap) * int

val g13_example5462 : (((heap * heap) * heap) * heap) * int

val g13_example5463 : (((heap * heap) * heap) * heap) * int

val g13_example5464 : (((heap * heap) * heap) * heap) * int

val g13_example5465 : (((heap * heap) * heap) * heap) * int

val g13_example5466 : (((heap * heap) * heap) * heap) * int

val g13_example5467 : (((heap * heap) * heap) * heap) * int

val g13_example5468 : (((heap * heap) * heap) * heap) * int

val g13_example5469 : (((heap * heap) * heap) * heap) * int

val g13_example5470 : (((heap * heap) * heap) * heap) * int

val g13_example5471 : (((heap * heap) * heap) * heap) * int

val g13_example5472 : (((heap * heap) * heap) * heap) * int

val g13_example5473 : (((heap * heap) * heap) * heap) * int

val g13_example5474 : (((heap * heap) * heap) * heap) * int

val g13_example5475 : (((heap * heap) * heap) * heap) * int

val g13_example5476 : (((heap * heap) * heap) * heap) * int

val g13_example5477 : (((heap * heap) * heap) * heap) * int

val g13_example5478 : (((heap * heap) * heap) * heap) * int

val g13_example5479 : (((heap * heap) * heap) * heap) * int

val g13_example5480 : (((heap * heap) * heap) * heap) * int

val g13_example5481 : (((heap * heap) * heap) * heap) * int

val g13_example5482 : (((heap * heap) * heap) * heap) * int

val g13_example5483 : (((heap * heap) * heap) * heap) * int

val g13_example5484 : (((heap * heap) * heap) * heap) * int

val g13_example5485 : (((heap * heap) * heap) * heap) * int

val g13_example5486 : (((heap * heap) * heap) * heap) * int

val g13_example5487 : (((heap * heap) * heap) * heap) * int

val g13_example5488 : (((heap * heap) * heap) * heap) * int

val g13_example5489 : (((heap * heap) * heap) * heap) * int

val g13_example5490 : (((heap * heap) * heap) * heap) * int

val g13_example5491 : (((heap * heap) * heap) * heap) * int

val g13_example5492 : (((heap * heap) * heap) * heap) * int

val g13_example5493 : (((heap * heap) * heap) * heap) * int

val g13_example5494 : (((heap * heap) * heap) * heap) * int

val g13_example5495 : (((heap * heap) * heap) * heap) * int

val g13_example5496 : (((heap * heap) * heap) * heap) * int

val g13_example5497 : (((heap * heap) * heap) * heap) * int

val g13_example5498 : (((heap * heap) * heap) * heap) * int

val g13_example5499 : (((heap * heap) * heap) * heap) * int

val g13_example5500 : (((heap * heap) * heap) * heap) * int

val g13_example5501 : (((heap * heap) * heap) * heap) * int

val g13_example5502 : (((heap * heap) * heap) * heap) * int

val g13_example5503 : (((heap * heap) * heap) * heap) * int

val g13_example5504 : (((heap * heap) * heap) * heap) * int

val g13_example5505 : (((heap * heap) * heap) * heap) * int

val g13_example5506 : (((heap * heap) * heap) * heap) * int

val g13_example5507 : (((heap * heap) * heap) * heap) * int

val g13_example5508 : (((heap * heap) * heap) * heap) * int

val g13_example5509 : (((heap * heap) * heap) * heap) * int

val g13_example5510 : (((heap * heap) * heap) * heap) * int

val g13_example5511 : (((heap * heap) * heap) * heap) * int

val g13_example5512 : (((heap * heap) * heap) * heap) * int

val g13_example5513 : (((heap * heap) * heap) * heap) * int

val g13_example5514 : (((heap * heap) * heap) * heap) * int

val g13_example5515 : (((heap * heap) * heap) * heap) * int

val g13_example5516 : (((heap * heap) * heap) * heap) * int

val g13_example5517 : (((heap * heap) * heap) * heap) * int

val g13_example5518 : (((heap * heap) * heap) * heap) * int

val g13_example5519 : (((heap * heap) * heap) * heap) * int

val g13_example5520 : (((heap * heap) * heap) * heap) * int

val g13_example5521 : (((heap * heap) * heap) * heap) * int

val g13_example5522 : (((heap * heap) * heap) * heap) * int

val g13_example5523 : (((heap * heap) * heap) * heap) * int

val g13_example5524 : (((heap * heap) * heap) * heap) * int

val g13_example5525 : (((heap * heap) * heap) * heap) * int

val g13_example5526 : (((heap * heap) * heap) * heap) * int

val g13_example5527 : (((heap * heap) * heap) * heap) * int

val g13_example5528 : (((heap * heap) * heap) * heap) * int

val g13_example5529 : (((heap * heap) * heap) * heap) * int

val g13_example5530 : (((heap * heap) * heap) * heap) * int

val g13_example5531 : (((heap * heap) * heap) * heap) * int

val g13_example5532 : (((heap * heap) * heap) * heap) * int

val g13_example5533 : (((heap * heap) * heap) * heap) * int

val g13_example5534 : (((heap * heap) * heap) * heap) * int

val g13_example5535 : (((heap * heap) * heap) * heap) * int

val g13_example5536 : (((heap * heap) * heap) * heap) * int

val g13_example5537 : (((heap * heap) * heap) * heap) * int

val g13_example5538 : (((heap * heap) * heap) * heap) * int

val g13_example5539 : (((heap * heap) * heap) * heap) * int

val g13_example5540 : (((heap * heap) * heap) * heap) * int

val g13_example5541 : (((heap * heap) * heap) * heap) * int

val g13_example5542 : (((heap * heap) * heap) * heap) * int

val g13_example5543 : (((heap * heap) * heap) * heap) * int

val g13_example5544 : (((heap * heap) * heap) * heap) * int

val g13_example5545 : (((heap * heap) * heap) * heap) * int

val g13_example5546 : (((heap * heap) * heap) * heap) * int

val g13_example5547 : (((heap * heap) * heap) * heap) * int

val g13_example5548 : (((heap * heap) * heap) * heap) * int

val g13_example5549 : (((heap * heap) * heap) * heap) * int

val g13_example5550 : (((heap * heap) * heap) * heap) * int

val g13_example5551 : (((heap * heap) * heap) * heap) * int

val g13_example5552 : (((heap * heap) * heap) * heap) * int

val g13_example5553 : (((heap * heap) * heap) * heap) * int

val g13_example5554 : (((heap * heap) * heap) * heap) * int

val g13_example5555 : (((heap * heap) * heap) * heap) * int

val g13_example5556 : (((heap * heap) * heap) * heap) * int

val g13_example5557 : (((heap * heap) * heap) * heap) * int

val g13_example5558 : (((heap * heap) * heap) * heap) * int

val g13_example5559 : (((heap * heap) * heap) * heap) * int

val g13_example5560 : (((heap * heap) * heap) * heap) * int

val g13_example5561 : (((heap * heap) * heap) * heap) * int

val g13_example5562 : (((heap * heap) * heap) * heap) * int

val g13_example5563 : (((heap * heap) * heap) * heap) * int

val g13_example5564 : (((heap * heap) * heap) * heap) * int

val g13_example5565 : (((heap * heap) * heap) * heap) * int

val g13_example5566 : (((heap * heap) * heap) * heap) * int

val g13_example5567 : (((heap * heap) * heap) * heap) * int

val g13_example5568 : (((heap * heap) * heap) * heap) * int

val g13_example5569 : (((heap * heap) * heap) * heap) * int

val g13_example5570 : (((heap * heap) * heap) * heap) * int

val g13_example5571 : (((heap * heap) * heap) * heap) * int

val g13_example5572 : (((heap * heap) * heap) * heap) * int

val g13_example5573 : (((heap * heap) * heap) * heap) * int

val g13_example5574 : (((heap * heap) * heap) * heap) * int

val g13_example5575 : (((heap * heap) * heap) * heap) * int

val g13_example5576 : (((heap * heap) * heap) * heap) * int

val g13_example5577 : (((heap * heap) * heap) * heap) * int

val g13_example5578 : (((heap * heap) * heap) * heap) * int

val g13_example5579 : (((heap * heap) * heap) * heap) * int

val g13_example5580 : (((heap * heap) * heap) * heap) * int

val g13_example5581 : (((heap * heap) * heap) * heap) * int

val g13_example5582 : (((heap * heap) * heap) * heap) * int

val g13_example5583 : (((heap * heap) * heap) * heap) * int

val g13_example5584 : (((heap * heap) * heap) * heap) * int

val g13_example5585 : (((heap * heap) * heap) * heap) * int

val g13_example5586 : (((heap * heap) * heap) * heap) * int

val g13_example5587 : (((heap * heap) * heap) * heap) * int

val g13_example5588 : (((heap * heap) * heap) * heap) * int

val g13_example5589 : (((heap * heap) * heap) * heap) * int

val g13_example5590 : (((heap * heap) * heap) * heap) * int

val g13_example5591 : (((heap * heap) * heap) * heap) * int

val g13_example5592 : (((heap * heap) * heap) * heap) * int

val g13_example5593 : (((heap * heap) * heap) * heap) * int

val g13_example5594 : (((heap * heap) * heap) * heap) * int

val g13_example5595 : (((heap * heap) * heap) * heap) * int

val g13_example5596 : (((heap * heap) * heap) * heap) * int

val g13_example5597 : (((heap * heap) * heap) * heap) * int

val g13_example5598 : (((heap * heap) * heap) * heap) * int

val g13_example5599 : (((heap * heap) * heap) * heap) * int

val g13_example5600 : (((heap * heap) * heap) * heap) * int

val g13_example5601 : (((heap * heap) * heap) * heap) * int

val g13_example5602 : (((heap * heap) * heap) * heap) * int

val g13_example5603 : (((heap * heap) * heap) * heap) * int

val g13_example5604 : (((heap * heap) * heap) * heap) * int

val g13_example5605 : (((heap * heap) * heap) * heap) * int

val g13_example5606 : (((heap * heap) * heap) * heap) * int

val g13_example5607 : (((heap * heap) * heap) * heap) * int

val g13_example5608 : (((heap * heap) * heap) * heap) * int

val g13_example5609 : (((heap * heap) * heap) * heap) * int

val g13_example5610 : (((heap * heap) * heap) * heap) * int

val g13_example5611 : (((heap * heap) * heap) * heap) * int

val g13_example5612 : (((heap * heap) * heap) * heap) * int

val g13_example5613 : (((heap * heap) * heap) * heap) * int

val g13_example5614 : (((heap * heap) * heap) * heap) * int

val g13_example5615 : (((heap * heap) * heap) * heap) * int

val g13_example5616 : (((heap * heap) * heap) * heap) * int

val g13_example5617 : (((heap * heap) * heap) * heap) * int

val g13_example5618 : (((heap * heap) * heap) * heap) * int

val g13_example5619 : (((heap * heap) * heap) * heap) * int

val g13_example5620 : (((heap * heap) * heap) * heap) * int

val g13_example5621 : (((heap * heap) * heap) * heap) * int

val g13_example5622 : (((heap * heap) * heap) * heap) * int

val g13_example5623 : (((heap * heap) * heap) * heap) * int

val g13_example5624 : (((heap * heap) * heap) * heap) * int

val g13_example5625 : (((heap * heap) * heap) * heap) * int

val g13_example5626 : (((heap * heap) * heap) * heap) * int

val g13_example5627 : (((heap * heap) * heap) * heap) * int

val g13_example5628 : (((heap * heap) * heap) * heap) * int

val g13_example5629 : (((heap * heap) * heap) * heap) * int

val g13_example5630 : (((heap * heap) * heap) * heap) * int

val g13_example5631 : (((heap * heap) * heap) * heap) * int

val g13_example5632 : (((heap * heap) * heap) * heap) * int

val g13_example5633 : (((heap * heap) * heap) * heap) * int

val g13_example5634 : (((heap * heap) * heap) * heap) * int

val g13_example5635 : (((heap * heap) * heap) * heap) * int

val g13_example5636 : (((heap * heap) * heap) * heap) * int

val g13_example5637 : (((heap * heap) * heap) * heap) * int

val g13_example5638 : (((heap * heap) * heap) * heap) * int

val g13_example5639 : (((heap * heap) * heap) * heap) * int

val g13_example5640 : (((heap * heap) * heap) * heap) * int

val g13_example5641 : (((heap * heap) * heap) * heap) * int

val g13_example5642 : (((heap * heap) * heap) * heap) * int

val g13_example5643 : (((heap * heap) * heap) * heap) * int

val g13_example5644 : (((heap * heap) * heap) * heap) * int

val g13_example5645 : (((heap * heap) * heap) * heap) * int

val g13_example5646 : (((heap * heap) * heap) * heap) * int

val g13_example5647 : (((heap * heap) * heap) * heap) * int

val g13_example5648 : (((heap * heap) * heap) * heap) * int

val g13_example5649 : (((heap * heap) * heap) * heap) * int

val g13_example5650 : (((heap * heap) * heap) * heap) * int

val g13_example5651 : (((heap * heap) * heap) * heap) * int

val g13_example5652 : (((heap * heap) * heap) * heap) * int

val g13_example5653 : (((heap * heap) * heap) * heap) * int

val g13_example5654 : (((heap * heap) * heap) * heap) * int

val g13_example5655 : (((heap * heap) * heap) * heap) * int

val g13_example5656 : (((heap * heap) * heap) * heap) * int

val g13_example5657 : (((heap * heap) * heap) * heap) * int

val g13_example5658 : (((heap * heap) * heap) * heap) * int

val g13_example5659 : (((heap * heap) * heap) * heap) * int

val g13_example5660 : (((heap * heap) * heap) * heap) * int

val g13_example5661 : (((heap * heap) * heap) * heap) * int

val g13_example5662 : (((heap * heap) * heap) * heap) * int

val g13_example5663 : (((heap * heap) * heap) * heap) * int

val g13_example5664 : (((heap * heap) * heap) * heap) * int

val g13_example5665 : (((heap * heap) * heap) * heap) * int

val g13_example5666 : (((heap * heap) * heap) * heap) * int

val g13_example5667 : (((heap * heap) * heap) * heap) * int

val g13_example5668 : (((heap * heap) * heap) * heap) * int

val g13_example5669 : (((heap * heap) * heap) * heap) * int

val g13_example5670 : (((heap * heap) * heap) * heap) * int

val g13_example5671 : (((heap * heap) * heap) * heap) * int

val g13_example5672 : (((heap * heap) * heap) * heap) * int

val g13_example5673 : (((heap * heap) * heap) * heap) * int

val g13_example5674 : (((heap * heap) * heap) * heap) * int

val g13_example5675 : (((heap * heap) * heap) * heap) * int

val g13_example5676 : (((heap * heap) * heap) * heap) * int

val g13_example5677 : (((heap * heap) * heap) * heap) * int

val g13_example5678 : (((heap * heap) * heap) * heap) * int

val g13_example5679 : (((heap * heap) * heap) * heap) * int

val g13_example5680 : (((heap * heap) * heap) * heap) * int

val g13_example5681 : (((heap * heap) * heap) * heap) * int

val g13_example5682 : (((heap * heap) * heap) * heap) * int

val g13_example5683 : (((heap * heap) * heap) * heap) * int

val g13_example5684 : (((heap * heap) * heap) * heap) * int

val g13_example5685 : (((heap * heap) * heap) * heap) * int

val g13_example5686 : (((heap * heap) * heap) * heap) * int

val g13_example5687 : (((heap * heap) * heap) * heap) * int

val g13_example5688 : (((heap * heap) * heap) * heap) * int

val g13_example5689 : (((heap * heap) * heap) * heap) * int

val g13_example5690 : (((heap * heap) * heap) * heap) * int

val g13_example5691 : (((heap * heap) * heap) * heap) * int

val g13_example5692 : (((heap * heap) * heap) * heap) * int

val g13_example5693 : (((heap * heap) * heap) * heap) * int

val g13_example5694 : (((heap * heap) * heap) * heap) * int

val g13_example5695 : (((heap * heap) * heap) * heap) * int

val g13_example5696 : (((heap * heap) * heap) * heap) * int

val g13_example5697 : (((heap * heap) * heap) * heap) * int

val g13_example5698 : (((heap * heap) * heap) * heap) * int

val g13_example5699 : (((heap * heap) * heap) * heap) * int

val g13_example5700 : (((heap * heap) * heap) * heap) * int

val g13_example5701 : (((heap * heap) * heap) * heap) * int

val g13_example5702 : (((heap * heap) * heap) * heap) * int

val g13_example5703 : (((heap * heap) * heap) * heap) * int

val g13_example5704 : (((heap * heap) * heap) * heap) * int

val g13_example5705 : (((heap * heap) * heap) * heap) * int

val g13_example5706 : (((heap * heap) * heap) * heap) * int

val g13_example5707 : (((heap * heap) * heap) * heap) * int

val g13_example5708 : (((heap * heap) * heap) * heap) * int

val g13_example5709 : (((heap * heap) * heap) * heap) * int

val g13_example5710 : (((heap * heap) * heap) * heap) * int

val g13_example5711 : (((heap * heap) * heap) * heap) * int

val g13_example5712 : (((heap * heap) * heap) * heap) * int

val g13_example5713 : (((heap * heap) * heap) * heap) * int

val g13_example5714 : (((heap * heap) * heap) * heap) * int

val g13_example5715 : (((heap * heap) * heap) * heap) * int

val g13_example5716 : (((heap * heap) * heap) * heap) * int

val g13_example5717 : (((heap * heap) * heap) * heap) * int

val g13_example5718 : (((heap * heap) * heap) * heap) * int

val g13_example5719 : (((heap * heap) * heap) * heap) * int

val g13_example5720 : (((heap * heap) * heap) * heap) * int

val g13_example5721 : (((heap * heap) * heap) * heap) * int

val g13_example5722 : (((heap * heap) * heap) * heap) * int

val g13_example5723 : (((heap * heap) * heap) * heap) * int

val g13_example5724 : (((heap * heap) * heap) * heap) * int

val g13_example5725 : (((heap * heap) * heap) * heap) * int

val g13_example5726 : (((heap * heap) * heap) * heap) * int

val g13_example5727 : (((heap * heap) * heap) * heap) * int

val g13_example5728 : (((heap * heap) * heap) * heap) * int

val g13_example5729 : (((heap * heap) * heap) * heap) * int

val g13_example5730 : (((heap * heap) * heap) * heap) * int

val g13_example5731 : (((heap * heap) * heap) * heap) * int

val g13_example5732 : (((heap * heap) * heap) * heap) * int

val g13_example5733 : (((heap * heap) * heap) * heap) * int

val g13_example5734 : (((heap * heap) * heap) * heap) * int

val g13_example5735 : (((heap * heap) * heap) * heap) * int

val g13_example5736 : (((heap * heap) * heap) * heap) * int

val g13_example5737 : (((heap * heap) * heap) * heap) * int

val g13_example5738 : (((heap * heap) * heap) * heap) * int

val g13_example5739 : (((heap * heap) * heap) * heap) * int

val g13_example5740 : (((heap * heap) * heap) * heap) * int

val g13_example5741 : (((heap * heap) * heap) * heap) * int

val g13_example5742 : (((heap * heap) * heap) * heap) * int

val g13_example5743 : (((heap * heap) * heap) * heap) * int

val g13_example5744 : (((heap * heap) * heap) * heap) * int

val g13_example5745 : (((heap * heap) * heap) * heap) * int

val g13_example5746 : (((heap * heap) * heap) * heap) * int

val g13_example5747 : (((heap * heap) * heap) * heap) * int

val g13_example5748 : (((heap * heap) * heap) * heap) * int

val g13_example5749 : (((heap * heap) * heap) * heap) * int

val g13_example5750 : (((heap * heap) * heap) * heap) * int

val g13_example5751 : (((heap * heap) * heap) * heap) * int

val g13_example5752 : (((heap * heap) * heap) * heap) * int

val g13_example5753 : (((heap * heap) * heap) * heap) * int

val g13_example5754 : (((heap * heap) * heap) * heap) * int

val g13_example5755 : (((heap * heap) * heap) * heap) * int

val g13_example5756 : (((heap * heap) * heap) * heap) * int

val g13_example5757 : (((heap * heap) * heap) * heap) * int

val g13_example5758 : (((heap * heap) * heap) * heap) * int

val g13_example5759 : (((heap * heap) * heap) * heap) * int

val g13_example5760 : (((heap * heap) * heap) * heap) * int

val g13_example5761 : (((heap * heap) * heap) * heap) * int

val g13_example5762 : (((heap * heap) * heap) * heap) * int

val g13_example5763 : (((heap * heap) * heap) * heap) * int

val g13_example5764 : (((heap * heap) * heap) * heap) * int

val g13_example5765 : (((heap * heap) * heap) * heap) * int

val g13_example5766 : (((heap * heap) * heap) * heap) * int

val g13_example5767 : (((heap * heap) * heap) * heap) * int

val g13_example5768 : (((heap * heap) * heap) * heap) * int

val g13_example5769 : (((heap * heap) * heap) * heap) * int

val g13_example5770 : (((heap * heap) * heap) * heap) * int

val g13_example5771 : (((heap * heap) * heap) * heap) * int

val g13_example5772 : (((heap * heap) * heap) * heap) * int

val g13_example5773 : (((heap * heap) * heap) * heap) * int

val g13_example5774 : (((heap * heap) * heap) * heap) * int

val g13_example5775 : (((heap * heap) * heap) * heap) * int

val g13_example5776 : (((heap * heap) * heap) * heap) * int

val g13_example5777 : (((heap * heap) * heap) * heap) * int

val g13_example5778 : (((heap * heap) * heap) * heap) * int

val g13_example5779 : (((heap * heap) * heap) * heap) * int

val g13_example5780 : (((heap * heap) * heap) * heap) * int

val g13_example5781 : (((heap * heap) * heap) * heap) * int

val g13_example5782 : (((heap * heap) * heap) * heap) * int

val g13_example5783 : (((heap * heap) * heap) * heap) * int

val g13_example5784 : (((heap * heap) * heap) * heap) * int

val g13_example5785 : (((heap * heap) * heap) * heap) * int

val g13_example5786 : (((heap * heap) * heap) * heap) * int

val g13_example5787 : (((heap * heap) * heap) * heap) * int

val g13_example5788 : (((heap * heap) * heap) * heap) * int

val g13_example5789 : (((heap * heap) * heap) * heap) * int

val g13_example5790 : (((heap * heap) * heap) * heap) * int

val g13_example5791 : (((heap * heap) * heap) * heap) * int

val g13_example5792 : (((heap * heap) * heap) * heap) * int

val g13_example5793 : (((heap * heap) * heap) * heap) * int

val g13_example5794 : (((heap * heap) * heap) * heap) * int

val g13_example5795 : (((heap * heap) * heap) * heap) * int

val g13_example5796 : (((heap * heap) * heap) * heap) * int

val g13_example5797 : (((heap * heap) * heap) * heap) * int

val g13_example5798 : (((heap * heap) * heap) * heap) * int

val g13_example5799 : (((heap * heap) * heap) * heap) * int

val g13_example5800 : (((heap * heap) * heap) * heap) * int

val g13_example5801 : (((heap * heap) * heap) * heap) * int

val g13_example5802 : (((heap * heap) * heap) * heap) * int

val g13_example5803 : (((heap * heap) * heap) * heap) * int

val g13_example5804 : (((heap * heap) * heap) * heap) * int

val g13_example5805 : (((heap * heap) * heap) * heap) * int

val g13_example5806 : (((heap * heap) * heap) * heap) * int

val g13_example5807 : (((heap * heap) * heap) * heap) * int

val g13_example5808 : (((heap * heap) * heap) * heap) * int

val g13_example5809 : (((heap * heap) * heap) * heap) * int

val g13_example5810 : (((heap * heap) * heap) * heap) * int

val g13_example5811 : (((heap * heap) * heap) * heap) * int

val g13_example5812 : (((heap * heap) * heap) * heap) * int

val g13_example5813 : (((heap * heap) * heap) * heap) * int

val g13_example5814 : (((heap * heap) * heap) * heap) * int

val g13_example5815 : (((heap * heap) * heap) * heap) * int

val g13_example5816 : (((heap * heap) * heap) * heap) * int

val g13_example5817 : (((heap * heap) * heap) * heap) * int

val g13_example5818 : (((heap * heap) * heap) * heap) * int

val g13_example5819 : (((heap * heap) * heap) * heap) * int

val g13_example5820 : (((heap * heap) * heap) * heap) * int

val g13_example5821 : (((heap * heap) * heap) * heap) * int

val g13_example5822 : (((heap * heap) * heap) * heap) * int

val g13_example5823 : (((heap * heap) * heap) * heap) * int

val g13_example5824 : (((heap * heap) * heap) * heap) * int

val g13_example5825 : (((heap * heap) * heap) * heap) * int

val g13_example5826 : (((heap * heap) * heap) * heap) * int

val g13_example5827 : (((heap * heap) * heap) * heap) * int

val g13_example5828 : (((heap * heap) * heap) * heap) * int

val g13_example5829 : (((heap * heap) * heap) * heap) * int

val g13_example5830 : (((heap * heap) * heap) * heap) * int

val g13_example5831 : (((heap * heap) * heap) * heap) * int

val g13_example5832 : (((heap * heap) * heap) * heap) * int

val g13_example5833 : (((heap * heap) * heap) * heap) * int

val g13_example5834 : (((heap * heap) * heap) * heap) * int

val g13_example5835 : (((heap * heap) * heap) * heap) * int

val g13_example5836 : (((heap * heap) * heap) * heap) * int

val g13_example5837 : (((heap * heap) * heap) * heap) * int

val g13_example5838 : (((heap * heap) * heap) * heap) * int

val g13_example5839 : (((heap * heap) * heap) * heap) * int

val g13_example5840 : (((heap * heap) * heap) * heap) * int

val g13_example5841 : (((heap * heap) * heap) * heap) * int

val g13_example5842 : (((heap * heap) * heap) * heap) * int

val g13_example5843 : (((heap * heap) * heap) * heap) * int

val g13_example5844 : (((heap * heap) * heap) * heap) * int

val g13_example5845 : (((heap * heap) * heap) * heap) * int

val g13_example5846 : (((heap * heap) * heap) * heap) * int

val g13_example5847 : (((heap * heap) * heap) * heap) * int

val g13_example5848 : (((heap * heap) * heap) * heap) * int

val g13_example5849 : (((heap * heap) * heap) * heap) * int

val g13_example5850 : (((heap * heap) * heap) * heap) * int

val g13_example5851 : (((heap * heap) * heap) * heap) * int

val g13_example5852 : (((heap * heap) * heap) * heap) * int

val g13_example5853 : (((heap * heap) * heap) * heap) * int

val g13_example5854 : (((heap * heap) * heap) * heap) * int

val g13_example5855 : (((heap * heap) * heap) * heap) * int

val g13_example5856 : (((heap * heap) * heap) * heap) * int

val g13_example5857 : (((heap * heap) * heap) * heap) * int

val g13_example5858 : (((heap * heap) * heap) * heap) * int

val g13_example5859 : (((heap * heap) * heap) * heap) * int

val g13_example5860 : (((heap * heap) * heap) * heap) * int

val g13_example5861 : (((heap * heap) * heap) * heap) * int

val g13_example5862 : (((heap * heap) * heap) * heap) * int

val g13_example5863 : (((heap * heap) * heap) * heap) * int

val g13_example5864 : (((heap * heap) * heap) * heap) * int

val g13_example5865 : (((heap * heap) * heap) * heap) * int

val g13_example5866 : (((heap * heap) * heap) * heap) * int

val g13_example5867 : (((heap * heap) * heap) * heap) * int

val g13_example5868 : (((heap * heap) * heap) * heap) * int

val g13_example5869 : (((heap * heap) * heap) * heap) * int

val g13_example5870 : (((heap * heap) * heap) * heap) * int

val g13_example5871 : (((heap * heap) * heap) * heap) * int

val g13_example5872 : (((heap * heap) * heap) * heap) * int

val g13_example5873 : (((heap * heap) * heap) * heap) * int

val g13_example5874 : (((heap * heap) * heap) * heap) * int

val g13_example5875 : (((heap * heap) * heap) * heap) * int

val g13_example5876 : (((heap * heap) * heap) * heap) * int

val g13_example5877 : (((heap * heap) * heap) * heap) * int

val g13_example5878 : (((heap * heap) * heap) * heap) * int

val g13_example5879 : (((heap * heap) * heap) * heap) * int

val g13_example5880 : (((heap * heap) * heap) * heap) * int

val g13_example5881 : (((heap * heap) * heap) * heap) * int

val g13_example5882 : (((heap * heap) * heap) * heap) * int

val g13_example5883 : (((heap * heap) * heap) * heap) * int

val g13_example5884 : (((heap * heap) * heap) * heap) * int

val g13_example5885 : (((heap * heap) * heap) * heap) * int

val g13_example5886 : (((heap * heap) * heap) * heap) * int

val g13_example5887 : (((heap * heap) * heap) * heap) * int

val g13_example5888 : (((heap * heap) * heap) * heap) * int

val g13_example5889 : (((heap * heap) * heap) * heap) * int

val g13_example5890 : (((heap * heap) * heap) * heap) * int

val g13_example5891 : (((heap * heap) * heap) * heap) * int

val g13_example5892 : (((heap * heap) * heap) * heap) * int

val g13_example5893 : (((heap * heap) * heap) * heap) * int

val g13_example5894 : (((heap * heap) * heap) * heap) * int

val g13_example5895 : (((heap * heap) * heap) * heap) * int

val g13_example5896 : (((heap * heap) * heap) * heap) * int

val g13_example5897 : (((heap * heap) * heap) * heap) * int

val g13_example5898 : (((heap * heap) * heap) * heap) * int

val g13_example5899 : (((heap * heap) * heap) * heap) * int

val g13_example5900 : (((heap * heap) * heap) * heap) * int

val g13_example5901 : (((heap * heap) * heap) * heap) * int

val g13_example5902 : (((heap * heap) * heap) * heap) * int

val g13_example5903 : (((heap * heap) * heap) * heap) * int

val g13_example5904 : (((heap * heap) * heap) * heap) * int

val g13_example5905 : (((heap * heap) * heap) * heap) * int

val g13_example5906 : (((heap * heap) * heap) * heap) * int

val g13_example5907 : (((heap * heap) * heap) * heap) * int

val g13_example5908 : (((heap * heap) * heap) * heap) * int

val g13_example5909 : (((heap * heap) * heap) * heap) * int

val g13_example5910 : (((heap * heap) * heap) * heap) * int

val g13_example5911 : (((heap * heap) * heap) * heap) * int

val g13_example5912 : (((heap * heap) * heap) * heap) * int

val g13_example5913 : (((heap * heap) * heap) * heap) * int

val g13_example5914 : (((heap * heap) * heap) * heap) * int

val g13_example5915 : (((heap * heap) * heap) * heap) * int

val g13_example5916 : (((heap * heap) * heap) * heap) * int

val g13_example5917 : (((heap * heap) * heap) * heap) * int

val g13_example5918 : (((heap * heap) * heap) * heap) * int

val g13_example5919 : (((heap * heap) * heap) * heap) * int

val g13_example5920 : (((heap * heap) * heap) * heap) * int

val g13_example5921 : (((heap * heap) * heap) * heap) * int

val g13_example5922 : (((heap * heap) * heap) * heap) * int

val g13_example5923 : (((heap * heap) * heap) * heap) * int

val g13_example5924 : (((heap * heap) * heap) * heap) * int

val g13_example5925 : (((heap * heap) * heap) * heap) * int

val g13_example5926 : (((heap * heap) * heap) * heap) * int

val g13_example5927 : (((heap * heap) * heap) * heap) * int

val g13_example5928 : (((heap * heap) * heap) * heap) * int

val g13_example5929 : (((heap * heap) * heap) * heap) * int

val g13_example5930 : (((heap * heap) * heap) * heap) * int

val g13_example5931 : (((heap * heap) * heap) * heap) * int

val g13_example5932 : (((heap * heap) * heap) * heap) * int

val g13_example5933 : (((heap * heap) * heap) * heap) * int

val g13_example5934 : (((heap * heap) * heap) * heap) * int

val g13_example5935 : (((heap * heap) * heap) * heap) * int

val g13_example5936 : (((heap * heap) * heap) * heap) * int

val g13_example5937 : (((heap * heap) * heap) * heap) * int

val g13_example5938 : (((heap * heap) * heap) * heap) * int

val g13_example5939 : (((heap * heap) * heap) * heap) * int

val g13_example5940 : (((heap * heap) * heap) * heap) * int

val g13_example5941 : (((heap * heap) * heap) * heap) * int

val g13_example5942 : (((heap * heap) * heap) * heap) * int

val g13_example5943 : (((heap * heap) * heap) * heap) * int

val g13_example5944 : (((heap * heap) * heap) * heap) * int

val g13_example5945 : (((heap * heap) * heap) * heap) * int

val g13_example5946 : (((heap * heap) * heap) * heap) * int

val g13_example5947 : (((heap * heap) * heap) * heap) * int

val g13_example5948 : (((heap * heap) * heap) * heap) * int

val g13_example5949 : (((heap * heap) * heap) * heap) * int

val g13_example5950 : (((heap * heap) * heap) * heap) * int

val g13_example5951 : (((heap * heap) * heap) * heap) * int

val g13_example5952 : (((heap * heap) * heap) * heap) * int

val g13_example5953 : (((heap * heap) * heap) * heap) * int

val g13_example5954 : (((heap * heap) * heap) * heap) * int

val g13_example5955 : (((heap * heap) * heap) * heap) * int

val g13_example5956 : (((heap * heap) * heap) * heap) * int

val g13_example5957 : (((heap * heap) * heap) * heap) * int

val g13_example5958 : (((heap * heap) * heap) * heap) * int

val g13_example5959 : (((heap * heap) * heap) * heap) * int

val g13_example5960 : (((heap * heap) * heap) * heap) * int

val g13_example5961 : (((heap * heap) * heap) * heap) * int

val g13_example5962 : (((heap * heap) * heap) * heap) * int

val g13_example5963 : (((heap * heap) * heap) * heap) * int

val g13_example5964 : (((heap * heap) * heap) * heap) * int

val g13_example5965 : (((heap * heap) * heap) * heap) * int

val g13_example5966 : (((heap * heap) * heap) * heap) * int

val g13_example5967 : (((heap * heap) * heap) * heap) * int

val g13_example5968 : (((heap * heap) * heap) * heap) * int

val g13_example5969 : (((heap * heap) * heap) * heap) * int

val g13_example5970 : (((heap * heap) * heap) * heap) * int

val g13_example5971 : (((heap * heap) * heap) * heap) * int

val g13_example5972 : (((heap * heap) * heap) * heap) * int

val g13_example5973 : (((heap * heap) * heap) * heap) * int

val g13_example5974 : (((heap * heap) * heap) * heap) * int

val g13_example5975 : (((heap * heap) * heap) * heap) * int

val g13_example5976 : (((heap * heap) * heap) * heap) * int

val g13_example5977 : (((heap * heap) * heap) * heap) * int

val g13_example5978 : (((heap * heap) * heap) * heap) * int

val g13_example5979 : (((heap * heap) * heap) * heap) * int

val g13_example5980 : (((heap * heap) * heap) * heap) * int

val g13_example5981 : (((heap * heap) * heap) * heap) * int

val g13_example5982 : (((heap * heap) * heap) * heap) * int

val g13_example5983 : (((heap * heap) * heap) * heap) * int

val g13_example5984 : (((heap * heap) * heap) * heap) * int

val g13_example5985 : (((heap * heap) * heap) * heap) * int

val g13_example5986 : (((heap * heap) * heap) * heap) * int

val g13_example5987 : (((heap * heap) * heap) * heap) * int

val g13_example5988 : (((heap * heap) * heap) * heap) * int

val g13_example5989 : (((heap * heap) * heap) * heap) * int

val g13_example5990 : (((heap * heap) * heap) * heap) * int

val g13_example5991 : (((heap * heap) * heap) * heap) * int

val g13_example5992 : (((heap * heap) * heap) * heap) * int

val g13_example5993 : (((heap * heap) * heap) * heap) * int

val g13_example5994 : (((heap * heap) * heap) * heap) * int

val g13_example5995 : (((heap * heap) * heap) * heap) * int

val g13_example5996 : (((heap * heap) * heap) * heap) * int

val g13_example5997 : (((heap * heap) * heap) * heap) * int

val g13_example5998 : (((heap * heap) * heap) * heap) * int

val g13_example5999 : (((heap * heap) * heap) * heap) * int

val g13_example6000 : (((heap * heap) * heap) * heap) * int

val g13_example6001 : (((heap * heap) * heap) * heap) * int

val g13_example6002 : (((heap * heap) * heap) * heap) * int

val g13_example6003 : (((heap * heap) * heap) * heap) * int

val g13_example6004 : (((heap * heap) * heap) * heap) * int

val g13_example6005 : (((heap * heap) * heap) * heap) * int

val g13_example6006 : (((heap * heap) * heap) * heap) * int

val g13_example6007 : (((heap * heap) * heap) * heap) * int

val g13_example6008 : (((heap * heap) * heap) * heap) * int

val g13_example6009 : (((heap * heap) * heap) * heap) * int

val g13_example6010 : (((heap * heap) * heap) * heap) * int

val g13_example6011 : (((heap * heap) * heap) * heap) * int

val g13_example6012 : (((heap * heap) * heap) * heap) * int

val g13_example6013 : (((heap * heap) * heap) * heap) * int

val g13_example6014 : (((heap * heap) * heap) * heap) * int

val g13_example6015 : (((heap * heap) * heap) * heap) * int

val g13_example6016 : (((heap * heap) * heap) * heap) * int

val g13_example6017 : (((heap * heap) * heap) * heap) * int

val g13_example6018 : (((heap * heap) * heap) * heap) * int

val g13_example6019 : (((heap * heap) * heap) * heap) * int

val g13_example6020 : (((heap * heap) * heap) * heap) * int

val g13_example6021 : (((heap * heap) * heap) * heap) * int

val g13_example6022 : (((heap * heap) * heap) * heap) * int

val g13_example6023 : (((heap * heap) * heap) * heap) * int

val g13_example6024 : (((heap * heap) * heap) * heap) * int

val g13_example6025 : (((heap * heap) * heap) * heap) * int

val g13_example6026 : (((heap * heap) * heap) * heap) * int

val g13_example6027 : (((heap * heap) * heap) * heap) * int

val g13_example6028 : (((heap * heap) * heap) * heap) * int

val g13_example6029 : (((heap * heap) * heap) * heap) * int

val g13_example6030 : (((heap * heap) * heap) * heap) * int

val g13_example6031 : (((heap * heap) * heap) * heap) * int

val g13_example6032 : (((heap * heap) * heap) * heap) * int

val g13_example6033 : (((heap * heap) * heap) * heap) * int

val g13_example6034 : (((heap * heap) * heap) * heap) * int

val g13_example6035 : (((heap * heap) * heap) * heap) * int

val g13_example6036 : (((heap * heap) * heap) * heap) * int

val g13_example6037 : (((heap * heap) * heap) * heap) * int

val g13_example6038 : (((heap * heap) * heap) * heap) * int

val g13_example6039 : (((heap * heap) * heap) * heap) * int

val g13_example6040 : (((heap * heap) * heap) * heap) * int

val g13_example6041 : (((heap * heap) * heap) * heap) * int

val g13_example6042 : (((heap * heap) * heap) * heap) * int

val g13_example6043 : (((heap * heap) * heap) * heap) * int

val g13_example6044 : (((heap * heap) * heap) * heap) * int

val g13_example6045 : (((heap * heap) * heap) * heap) * int

val g13_example6046 : (((heap * heap) * heap) * heap) * int

val g13_example6047 : (((heap * heap) * heap) * heap) * int

val g13_example6048 : (((heap * heap) * heap) * heap) * int

val g13_example6049 : (((heap * heap) * heap) * heap) * int

val g13_example6050 : (((heap * heap) * heap) * heap) * int

val g13_example6051 : (((heap * heap) * heap) * heap) * int

val g13_example6052 : (((heap * heap) * heap) * heap) * int

val g13_example6053 : (((heap * heap) * heap) * heap) * int

val g13_example6054 : (((heap * heap) * heap) * heap) * int

val g13_example6055 : (((heap * heap) * heap) * heap) * int

val g13_example6056 : (((heap * heap) * heap) * heap) * int

val g13_example6057 : (((heap * heap) * heap) * heap) * int

val g13_example6058 : (((heap * heap) * heap) * heap) * int

val g13_example6059 : (((heap * heap) * heap) * heap) * int

val g13_example6060 : (((heap * heap) * heap) * heap) * int

val g13_example6061 : (((heap * heap) * heap) * heap) * int

val g13_example6062 : (((heap * heap) * heap) * heap) * int

val g13_example6063 : (((heap * heap) * heap) * heap) * int

val g13_example6064 : (((heap * heap) * heap) * heap) * int

val g13_example6065 : (((heap * heap) * heap) * heap) * int

val g13_example6066 : (((heap * heap) * heap) * heap) * int

val g13_example6067 : (((heap * heap) * heap) * heap) * int

val g13_example6068 : (((heap * heap) * heap) * heap) * int

val g13_example6069 : (((heap * heap) * heap) * heap) * int

val g13_example6070 : (((heap * heap) * heap) * heap) * int

val g13_example6071 : (((heap * heap) * heap) * heap) * int

val g13_example6072 : (((heap * heap) * heap) * heap) * int

val g13_example6073 : (((heap * heap) * heap) * heap) * int

val g13_example6074 : (((heap * heap) * heap) * heap) * int

val g13_example6075 : (((heap * heap) * heap) * heap) * int

val g13_example6076 : (((heap * heap) * heap) * heap) * int

val g13_example6077 : (((heap * heap) * heap) * heap) * int

val g13_example6078 : (((heap * heap) * heap) * heap) * int

val g13_example6079 : (((heap * heap) * heap) * heap) * int

val g13_example6080 : (((heap * heap) * heap) * heap) * int

val g13_example6081 : (((heap * heap) * heap) * heap) * int

val g13_example6082 : (((heap * heap) * heap) * heap) * int

val g13_example6083 : (((heap * heap) * heap) * heap) * int

val g13_example6084 : (((heap * heap) * heap) * heap) * int

val g13_example6085 : (((heap * heap) * heap) * heap) * int

val g13_example6086 : (((heap * heap) * heap) * heap) * int

val g13_example6087 : (((heap * heap) * heap) * heap) * int

val g13_example6088 : (((heap * heap) * heap) * heap) * int

val g13_example6089 : (((heap * heap) * heap) * heap) * int

val g13_example6090 : (((heap * heap) * heap) * heap) * int

val g13_example6091 : (((heap * heap) * heap) * heap) * int

val g13_example6092 : (((heap * heap) * heap) * heap) * int

val g13_example6093 : (((heap * heap) * heap) * heap) * int

val g13_example6094 : (((heap * heap) * heap) * heap) * int

val g13_example6095 : (((heap * heap) * heap) * heap) * int

val g13_example6096 : (((heap * heap) * heap) * heap) * int

val g13_example6097 : (((heap * heap) * heap) * heap) * int

val g13_example6098 : (((heap * heap) * heap) * heap) * int

val g13_example6099 : (((heap * heap) * heap) * heap) * int

val g13_example6100 : (((heap * heap) * heap) * heap) * int

val g13_example6101 : (((heap * heap) * heap) * heap) * int

val g13_example6102 : (((heap * heap) * heap) * heap) * int

val g13_example6103 : (((heap * heap) * heap) * heap) * int

val g13_example6104 : (((heap * heap) * heap) * heap) * int

val g13_example6105 : (((heap * heap) * heap) * heap) * int

val g13_example6106 : (((heap * heap) * heap) * heap) * int

val g13_example6107 : (((heap * heap) * heap) * heap) * int

val g13_example6108 : (((heap * heap) * heap) * heap) * int

val g13_example6109 : (((heap * heap) * heap) * heap) * int

val g13_example6110 : (((heap * heap) * heap) * heap) * int

val g13_example6111 : (((heap * heap) * heap) * heap) * int

val g13_example6112 : (((heap * heap) * heap) * heap) * int

val g13_example6113 : (((heap * heap) * heap) * heap) * int

val g13_example6114 : (((heap * heap) * heap) * heap) * int

val g13_example6115 : (((heap * heap) * heap) * heap) * int

val g13_example6116 : (((heap * heap) * heap) * heap) * int

val g13_example6117 : (((heap * heap) * heap) * heap) * int

val g13_example6118 : (((heap * heap) * heap) * heap) * int

val g13_example6119 : (((heap * heap) * heap) * heap) * int

val g13_example6120 : (((heap * heap) * heap) * heap) * int

val g13_example6121 : (((heap * heap) * heap) * heap) * int

val g13_example6122 : (((heap * heap) * heap) * heap) * int

val g13_example6123 : (((heap * heap) * heap) * heap) * int

val g13_example6124 : (((heap * heap) * heap) * heap) * int

val g13_example6125 : (((heap * heap) * heap) * heap) * int

val g13_example6126 : (((heap * heap) * heap) * heap) * int

val g13_example6127 : (((heap * heap) * heap) * heap) * int

val g13_example6128 : (((heap * heap) * heap) * heap) * int

val g13_example6129 : (((heap * heap) * heap) * heap) * int

val g13_example6130 : (((heap * heap) * heap) * heap) * int

val g13_example6131 : (((heap * heap) * heap) * heap) * int

val g13_example6132 : (((heap * heap) * heap) * heap) * int

val g13_example6133 : (((heap * heap) * heap) * heap) * int

val g13_example6134 : (((heap * heap) * heap) * heap) * int

val g13_example6135 : (((heap * heap) * heap) * heap) * int

val g13_example6136 : (((heap * heap) * heap) * heap) * int

val g13_example6137 : (((heap * heap) * heap) * heap) * int

val g13_example6138 : (((heap * heap) * heap) * heap) * int

val g13_example6139 : (((heap * heap) * heap) * heap) * int

val g13_example6140 : (((heap * heap) * heap) * heap) * int

val g13_example6141 : (((heap * heap) * heap) * heap) * int

val g13_example6142 : (((heap * heap) * heap) * heap) * int

val g13_example6143 : (((heap * heap) * heap) * heap) * int

val g13_example6144 : (((heap * heap) * heap) * heap) * int

val g13_example6145 : (((heap * heap) * heap) * heap) * int

val g13_example6146 : (((heap * heap) * heap) * heap) * int

val g13_example6147 : (((heap * heap) * heap) * heap) * int

val g13_example6148 : (((heap * heap) * heap) * heap) * int

val g13_example6149 : (((heap * heap) * heap) * heap) * int

val g13_example6150 : (((heap * heap) * heap) * heap) * int

val g13_example6151 : (((heap * heap) * heap) * heap) * int

val g13_example6152 : (((heap * heap) * heap) * heap) * int

val g13_example6153 : (((heap * heap) * heap) * heap) * int

val g13_example6154 : (((heap * heap) * heap) * heap) * int

val g13_example6155 : (((heap * heap) * heap) * heap) * int

val g13_example6156 : (((heap * heap) * heap) * heap) * int

val g13_example6157 : (((heap * heap) * heap) * heap) * int

val g13_example6158 : (((heap * heap) * heap) * heap) * int

val g13_example6159 : (((heap * heap) * heap) * heap) * int

val g13_example6160 : (((heap * heap) * heap) * heap) * int

val g13_example6161 : (((heap * heap) * heap) * heap) * int

val g13_example6162 : (((heap * heap) * heap) * heap) * int

val g13_example6163 : (((heap * heap) * heap) * heap) * int

val g13_example6164 : (((heap * heap) * heap) * heap) * int

val g13_example6165 : (((heap * heap) * heap) * heap) * int

val g13_example6166 : (((heap * heap) * heap) * heap) * int

val g13_example6167 : (((heap * heap) * heap) * heap) * int

val g13_example6168 : (((heap * heap) * heap) * heap) * int

val g13_example6169 : (((heap * heap) * heap) * heap) * int

val g13_example6170 : (((heap * heap) * heap) * heap) * int

val g13_example6171 : (((heap * heap) * heap) * heap) * int

val g13_example6172 : (((heap * heap) * heap) * heap) * int

val g13_example6173 : (((heap * heap) * heap) * heap) * int

val g13_example6174 : (((heap * heap) * heap) * heap) * int

val g13_example6175 : (((heap * heap) * heap) * heap) * int

val g13_example6176 : (((heap * heap) * heap) * heap) * int

val g13_example6177 : (((heap * heap) * heap) * heap) * int

val g13_example6178 : (((heap * heap) * heap) * heap) * int

val g13_example6179 : (((heap * heap) * heap) * heap) * int

val g13_example6180 : (((heap * heap) * heap) * heap) * int

val g13_example6181 : (((heap * heap) * heap) * heap) * int

val g13_example6182 : (((heap * heap) * heap) * heap) * int

val g13_example6183 : (((heap * heap) * heap) * heap) * int

val g13_example6184 : (((heap * heap) * heap) * heap) * int

val g13_example6185 : (((heap * heap) * heap) * heap) * int

val g13_example6186 : (((heap * heap) * heap) * heap) * int

val g13_example6187 : (((heap * heap) * heap) * heap) * int

val g13_example6188 : (((heap * heap) * heap) * heap) * int

val g13_example6189 : (((heap * heap) * heap) * heap) * int

val g13_example6190 : (((heap * heap) * heap) * heap) * int

val g13_example6191 : (((heap * heap) * heap) * heap) * int

val g13_example6192 : (((heap * heap) * heap) * heap) * int

val g13_example6193 : (((heap * heap) * heap) * heap) * int

val g13_example6194 : (((heap * heap) * heap) * heap) * int

val g13_example6195 : (((heap * heap) * heap) * heap) * int

val g13_example6196 : (((heap * heap) * heap) * heap) * int

val g13_example6197 : (((heap * heap) * heap) * heap) * int

val g13_example6198 : (((heap * heap) * heap) * heap) * int

val g13_example6199 : (((heap * heap) * heap) * heap) * int

val g13_example6200 : (((heap * heap) * heap) * heap) * int

val g13_example6201 : (((heap * heap) * heap) * heap) * int

val g13_example6202 : (((heap * heap) * heap) * heap) * int

val g13_example6203 : (((heap * heap) * heap) * heap) * int

val g13_example6204 : (((heap * heap) * heap) * heap) * int

val g13_example6205 : (((heap * heap) * heap) * heap) * int

val g13_example6206 : (((heap * heap) * heap) * heap) * int

val g13_example6207 : (((heap * heap) * heap) * heap) * int

val g13_example6208 : (((heap * heap) * heap) * heap) * int

val g13_example6209 : (((heap * heap) * heap) * heap) * int

val g13_example6210 : (((heap * heap) * heap) * heap) * int

val g13_example6211 : (((heap * heap) * heap) * heap) * int

val g13_example6212 : (((heap * heap) * heap) * heap) * int

val g13_example6213 : (((heap * heap) * heap) * heap) * int

val g13_example6214 : (((heap * heap) * heap) * heap) * int

val g13_example6215 : (((heap * heap) * heap) * heap) * int

val g13_example6216 : (((heap * heap) * heap) * heap) * int

val g13_example6217 : (((heap * heap) * heap) * heap) * int

val g13_example6218 : (((heap * heap) * heap) * heap) * int

val g13_example6219 : (((heap * heap) * heap) * heap) * int

val g13_example6220 : (((heap * heap) * heap) * heap) * int

val g13_example6221 : (((heap * heap) * heap) * heap) * int

val g13_example6222 : (((heap * heap) * heap) * heap) * int

val g13_example6223 : (((heap * heap) * heap) * heap) * int

val g13_example6224 : (((heap * heap) * heap) * heap) * int

val g13_example6225 : (((heap * heap) * heap) * heap) * int

val g13_example6226 : (((heap * heap) * heap) * heap) * int

val g13_example6227 : (((heap * heap) * heap) * heap) * int

val g13_example6228 : (((heap * heap) * heap) * heap) * int

val g13_example6229 : (((heap * heap) * heap) * heap) * int

val g13_example6230 : (((heap * heap) * heap) * heap) * int

val g13_example6231 : (((heap * heap) * heap) * heap) * int

val g13_example6232 : (((heap * heap) * heap) * heap) * int

val g13_example6233 : (((heap * heap) * heap) * heap) * int

val g13_example6234 : (((heap * heap) * heap) * heap) * int

val g13_example6235 : (((heap * heap) * heap) * heap) * int

val g13_example6236 : (((heap * heap) * heap) * heap) * int

val g13_example6237 : (((heap * heap) * heap) * heap) * int

val g13_example6238 : (((heap * heap) * heap) * heap) * int

val g13_example6239 : (((heap * heap) * heap) * heap) * int

val g13_example6240 : (((heap * heap) * heap) * heap) * int

val g13_example6241 : (((heap * heap) * heap) * heap) * int

val g13_example6242 : (((heap * heap) * heap) * heap) * int

val g13_example6243 : (((heap * heap) * heap) * heap) * int

val g13_example6244 : (((heap * heap) * heap) * heap) * int

val g13_example6245 : (((heap * heap) * heap) * heap) * int

val g13_example6246 : (((heap * heap) * heap) * heap) * int

val g13_example6247 : (((heap * heap) * heap) * heap) * int

val g13_example6248 : (((heap * heap) * heap) * heap) * int

val g13_example6249 : (((heap * heap) * heap) * heap) * int

val g13_example6250 : (((heap * heap) * heap) * heap) * int

val g13_example6251 : (((heap * heap) * heap) * heap) * int

val g13_example6252 : (((heap * heap) * heap) * heap) * int

val g13_example6253 : (((heap * heap) * heap) * heap) * int

val g13_example6254 : (((heap * heap) * heap) * heap) * int

val g13_example6255 : (((heap * heap) * heap) * heap) * int

val g13_example6256 : (((heap * heap) * heap) * heap) * int

val g13_example6257 : (((heap * heap) * heap) * heap) * int

val g13_example6258 : (((heap * heap) * heap) * heap) * int

val g13_example6259 : (((heap * heap) * heap) * heap) * int

val g13_example6260 : (((heap * heap) * heap) * heap) * int

val g13_example6261 : (((heap * heap) * heap) * heap) * int

val g13_example6262 : (((heap * heap) * heap) * heap) * int

val g13_example6263 : (((heap * heap) * heap) * heap) * int

val g13_example6264 : (((heap * heap) * heap) * heap) * int

val g13_example6265 : (((heap * heap) * heap) * heap) * int

val g13_example6266 : (((heap * heap) * heap) * heap) * int

val g13_example6267 : (((heap * heap) * heap) * heap) * int

val g13_example6268 : (((heap * heap) * heap) * heap) * int

val g13_example6269 : (((heap * heap) * heap) * heap) * int

val g13_example6270 : (((heap * heap) * heap) * heap) * int

val g13_example6271 : (((heap * heap) * heap) * heap) * int

val g13_example6272 : (((heap * heap) * heap) * heap) * int

val g13_example6273 : (((heap * heap) * heap) * heap) * int

val g13_example6274 : (((heap * heap) * heap) * heap) * int

val g13_example6275 : (((heap * heap) * heap) * heap) * int

val g13_example6276 : (((heap * heap) * heap) * heap) * int

val g13_example6277 : (((heap * heap) * heap) * heap) * int

val g13_example6278 : (((heap * heap) * heap) * heap) * int

val g13_example6279 : (((heap * heap) * heap) * heap) * int

val g13_example6280 : (((heap * heap) * heap) * heap) * int

val g13_example6281 : (((heap * heap) * heap) * heap) * int

val g13_example6282 : (((heap * heap) * heap) * heap) * int

val g13_example6283 : (((heap * heap) * heap) * heap) * int

val g13_example6284 : (((heap * heap) * heap) * heap) * int

val g13_example6285 : (((heap * heap) * heap) * heap) * int

val g13_example6286 : (((heap * heap) * heap) * heap) * int

val g13_example6287 : (((heap * heap) * heap) * heap) * int

val g13_example6288 : (((heap * heap) * heap) * heap) * int

val g13_example6289 : (((heap * heap) * heap) * heap) * int

val g13_example6290 : (((heap * heap) * heap) * heap) * int

val g13_example6291 : (((heap * heap) * heap) * heap) * int

val g13_example6292 : (((heap * heap) * heap) * heap) * int

val g13_example6293 : (((heap * heap) * heap) * heap) * int

val g13_example6294 : (((heap * heap) * heap) * heap) * int

val g13_example6295 : (((heap * heap) * heap) * heap) * int

val g13_example6296 : (((heap * heap) * heap) * heap) * int

val g13_example6297 : (((heap * heap) * heap) * heap) * int

val g13_example6298 : (((heap * heap) * heap) * heap) * int

val g13_example6299 : (((heap * heap) * heap) * heap) * int

val g13_example6300 : (((heap * heap) * heap) * heap) * int

val g13_example6301 : (((heap * heap) * heap) * heap) * int

val g13_example6302 : (((heap * heap) * heap) * heap) * int

val g13_example6303 : (((heap * heap) * heap) * heap) * int

val g13_example6304 : (((heap * heap) * heap) * heap) * int

val g13_example6305 : (((heap * heap) * heap) * heap) * int

val g13_example6306 : (((heap * heap) * heap) * heap) * int

val g13_example6307 : (((heap * heap) * heap) * heap) * int

val g13_example6308 : (((heap * heap) * heap) * heap) * int

val g13_example6309 : (((heap * heap) * heap) * heap) * int

val g13_example6310 : (((heap * heap) * heap) * heap) * int

val g13_example6311 : (((heap * heap) * heap) * heap) * int

val g13_example6312 : (((heap * heap) * heap) * heap) * int

val g13_example6313 : (((heap * heap) * heap) * heap) * int

val g13_example6314 : (((heap * heap) * heap) * heap) * int

val g13_example6315 : (((heap * heap) * heap) * heap) * int

val g13_example6316 : (((heap * heap) * heap) * heap) * int

val g13_example6317 : (((heap * heap) * heap) * heap) * int

val g13_example6318 : (((heap * heap) * heap) * heap) * int

val g13_example6319 : (((heap * heap) * heap) * heap) * int

val g13_example6320 : (((heap * heap) * heap) * heap) * int

val g13_example6321 : (((heap * heap) * heap) * heap) * int

val g13_example6322 : (((heap * heap) * heap) * heap) * int

val g13_example6323 : (((heap * heap) * heap) * heap) * int

val g13_example6324 : (((heap * heap) * heap) * heap) * int

val g13_example6325 : (((heap * heap) * heap) * heap) * int

val g13_example6326 : (((heap * heap) * heap) * heap) * int

val g13_example6327 : (((heap * heap) * heap) * heap) * int

val g13_example6328 : (((heap * heap) * heap) * heap) * int

val g13_example6329 : (((heap * heap) * heap) * heap) * int

val g13_example6330 : (((heap * heap) * heap) * heap) * int

val g13_example6331 : (((heap * heap) * heap) * heap) * int

val g13_example6332 : (((heap * heap) * heap) * heap) * int

val g13_example6333 : (((heap * heap) * heap) * heap) * int

val g13_example6334 : (((heap * heap) * heap) * heap) * int

val g13_example6335 : (((heap * heap) * heap) * heap) * int

val g13_example6336 : (((heap * heap) * heap) * heap) * int

val g13_example6337 : (((heap * heap) * heap) * heap) * int

val g13_example6338 : (((heap * heap) * heap) * heap) * int

val g13_example6339 : (((heap * heap) * heap) * heap) * int

val g13_example6340 : (((heap * heap) * heap) * heap) * int

val g13_example6341 : (((heap * heap) * heap) * heap) * int

val g13_example6342 : (((heap * heap) * heap) * heap) * int

val g13_example6343 : (((heap * heap) * heap) * heap) * int

val g13_example6344 : (((heap * heap) * heap) * heap) * int

val g13_example6345 : (((heap * heap) * heap) * heap) * int

val g13_example6346 : (((heap * heap) * heap) * heap) * int

val g13_example6347 : (((heap * heap) * heap) * heap) * int

val g13_example6348 : (((heap * heap) * heap) * heap) * int

val g13_example6349 : (((heap * heap) * heap) * heap) * int

val g13_example6350 : (((heap * heap) * heap) * heap) * int

val g13_example6351 : (((heap * heap) * heap) * heap) * int

val g13_example6352 : (((heap * heap) * heap) * heap) * int

val g13_example6353 : (((heap * heap) * heap) * heap) * int

val g13_example6354 : (((heap * heap) * heap) * heap) * int

val g13_example6355 : (((heap * heap) * heap) * heap) * int

val g13_example6356 : (((heap * heap) * heap) * heap) * int

val g13_example6357 : (((heap * heap) * heap) * heap) * int

val g13_example6358 : (((heap * heap) * heap) * heap) * int

val g13_example6359 : (((heap * heap) * heap) * heap) * int

val g13_example6360 : (((heap * heap) * heap) * heap) * int

val g13_example6361 : (((heap * heap) * heap) * heap) * int

val g13_example6362 : (((heap * heap) * heap) * heap) * int

val g13_example6363 : (((heap * heap) * heap) * heap) * int

val g13_example6364 : (((heap * heap) * heap) * heap) * int

val g13_example6365 : (((heap * heap) * heap) * heap) * int

val g13_example6366 : (((heap * heap) * heap) * heap) * int

val g13_example6367 : (((heap * heap) * heap) * heap) * int

val g13_example6368 : (((heap * heap) * heap) * heap) * int

val g13_example6369 : (((heap * heap) * heap) * heap) * int

val g13_example6370 : (((heap * heap) * heap) * heap) * int

val g13_example6371 : (((heap * heap) * heap) * heap) * int

val g13_example6372 : (((heap * heap) * heap) * heap) * int

val g13_example6373 : (((heap * heap) * heap) * heap) * int

val g13_example6374 : (((heap * heap) * heap) * heap) * int

val g13_example6375 : (((heap * heap) * heap) * heap) * int

val g13_example6376 : (((heap * heap) * heap) * heap) * int

val g13_example6377 : (((heap * heap) * heap) * heap) * int

val g13_example6378 : (((heap * heap) * heap) * heap) * int

val g13_example6379 : (((heap * heap) * heap) * heap) * int

val g13_example6380 : (((heap * heap) * heap) * heap) * int

val g13_example6381 : (((heap * heap) * heap) * heap) * int

val g13_example6382 : (((heap * heap) * heap) * heap) * int

val g13_example6383 : (((heap * heap) * heap) * heap) * int

val g13_example6384 : (((heap * heap) * heap) * heap) * int

val g13_example6385 : (((heap * heap) * heap) * heap) * int

val g13_example6386 : (((heap * heap) * heap) * heap) * int

val g13_example6387 : (((heap * heap) * heap) * heap) * int

val g13_example6388 : (((heap * heap) * heap) * heap) * int

val g13_example6389 : (((heap * heap) * heap) * heap) * int

val g13_example6390 : (((heap * heap) * heap) * heap) * int

val g13_example6391 : (((heap * heap) * heap) * heap) * int

val g13_example6392 : (((heap * heap) * heap) * heap) * int

val g13_example6393 : (((heap * heap) * heap) * heap) * int

val g13_example6394 : (((heap * heap) * heap) * heap) * int

val g13_example6395 : (((heap * heap) * heap) * heap) * int

val g13_example6396 : (((heap * heap) * heap) * heap) * int

val g13_example6397 : (((heap * heap) * heap) * heap) * int

val g13_example6398 : (((heap * heap) * heap) * heap) * int

val g13_example6399 : (((heap * heap) * heap) * heap) * int

val g13_example6400 : (((heap * heap) * heap) * heap) * int

val g13_example6401 : (((heap * heap) * heap) * heap) * int

val g13_example6402 : (((heap * heap) * heap) * heap) * int

val g13_example6403 : (((heap * heap) * heap) * heap) * int

val g13_example6404 : (((heap * heap) * heap) * heap) * int

val g13_example6405 : (((heap * heap) * heap) * heap) * int

val g13_example6406 : (((heap * heap) * heap) * heap) * int

val g13_example6407 : (((heap * heap) * heap) * heap) * int

val g13_example6408 : (((heap * heap) * heap) * heap) * int

val g13_example6409 : (((heap * heap) * heap) * heap) * int

val g13_example6410 : (((heap * heap) * heap) * heap) * int

val g13_example6411 : (((heap * heap) * heap) * heap) * int

val g13_example6412 : (((heap * heap) * heap) * heap) * int

val g13_example6413 : (((heap * heap) * heap) * heap) * int

val g13_example6414 : (((heap * heap) * heap) * heap) * int

val g13_example6415 : (((heap * heap) * heap) * heap) * int

val g13_example6416 : (((heap * heap) * heap) * heap) * int

val g13_example6417 : (((heap * heap) * heap) * heap) * int

val g13_example6418 : (((heap * heap) * heap) * heap) * int

val g13_example6419 : (((heap * heap) * heap) * heap) * int

val g13_example6420 : (((heap * heap) * heap) * heap) * int

val g13_example6421 : (((heap * heap) * heap) * heap) * int

val g13_example6422 : (((heap * heap) * heap) * heap) * int

val g13_example6423 : (((heap * heap) * heap) * heap) * int

val g13_example6424 : (((heap * heap) * heap) * heap) * int

val g13_example6425 : (((heap * heap) * heap) * heap) * int

val g13_example6426 : (((heap * heap) * heap) * heap) * int

val g13_example6427 : (((heap * heap) * heap) * heap) * int

val g13_example6428 : (((heap * heap) * heap) * heap) * int

val g13_example6429 : (((heap * heap) * heap) * heap) * int

val g13_example6430 : (((heap * heap) * heap) * heap) * int

val g13_example6431 : (((heap * heap) * heap) * heap) * int

val g13_example6432 : (((heap * heap) * heap) * heap) * int

val g13_example6433 : (((heap * heap) * heap) * heap) * int

val g13_example6434 : (((heap * heap) * heap) * heap) * int

val g13_example6435 : (((heap * heap) * heap) * heap) * int

val g13_example6436 : (((heap * heap) * heap) * heap) * int

val g13_example6437 : (((heap * heap) * heap) * heap) * int

val g13_example6438 : (((heap * heap) * heap) * heap) * int

val g13_example6439 : (((heap * heap) * heap) * heap) * int

val g13_example6440 : (((heap * heap) * heap) * heap) * int

val g13_example6441 : (((heap * heap) * heap) * heap) * int

val g13_example6442 : (((heap * heap) * heap) * heap) * int

val g13_example6443 : (((heap * heap) * heap) * heap) * int

val g13_example6444 : (((heap * heap) * heap) * heap) * int

val g13_example6445 : (((heap * heap) * heap) * heap) * int

val g13_example6446 : (((heap * heap) * heap) * heap) * int

val g13_example6447 : (((heap * heap) * heap) * heap) * int

val g13_example6448 : (((heap * heap) * heap) * heap) * int

val g13_example6449 : (((heap * heap) * heap) * heap) * int

val g13_example6450 : (((heap * heap) * heap) * heap) * int

val g13_example6451 : (((heap * heap) * heap) * heap) * int

val g13_example6452 : (((heap * heap) * heap) * heap) * int

val g13_example6453 : (((heap * heap) * heap) * heap) * int

val g13_example6454 : (((heap * heap) * heap) * heap) * int

val g13_example6455 : (((heap * heap) * heap) * heap) * int

val g13_example6456 : (((heap * heap) * heap) * heap) * int

val g13_example6457 : (((heap * heap) * heap) * heap) * int

val g13_example6458 : (((heap * heap) * heap) * heap) * int

val g13_example6459 : (((heap * heap) * heap) * heap) * int

val g13_example6460 : (((heap * heap) * heap) * heap) * int

val g13_example6461 : (((heap * heap) * heap) * heap) * int

val g13_example6462 : (((heap * heap) * heap) * heap) * int

val g13_example6463 : (((heap * heap) * heap) * heap) * int

val g13_example6464 : (((heap * heap) * heap) * heap) * int

val g13_example6465 : (((heap * heap) * heap) * heap) * int

val g13_example6466 : (((heap * heap) * heap) * heap) * int

val g13_example6467 : (((heap * heap) * heap) * heap) * int

val g13_example6468 : (((heap * heap) * heap) * heap) * int

val g13_example6469 : (((heap * heap) * heap) * heap) * int

val g13_example6470 : (((heap * heap) * heap) * heap) * int

val g13_example6471 : (((heap * heap) * heap) * heap) * int

val g13_example6472 : (((heap * heap) * heap) * heap) * int

val g13_example6473 : (((heap * heap) * heap) * heap) * int

val g13_example6474 : (((heap * heap) * heap) * heap) * int

val g13_example6475 : (((heap * heap) * heap) * heap) * int

val g13_example6476 : (((heap * heap) * heap) * heap) * int

val g13_example6477 : (((heap * heap) * heap) * heap) * int

val g13_example6478 : (((heap * heap) * heap) * heap) * int

val g13_example6479 : (((heap * heap) * heap) * heap) * int

val g13_example6480 : (((heap * heap) * heap) * heap) * int

val g13_example6481 : (((heap * heap) * heap) * heap) * int

val g13_example6482 : (((heap * heap) * heap) * heap) * int

val g13_example6483 : (((heap * heap) * heap) * heap) * int

val g13_example6484 : (((heap * heap) * heap) * heap) * int

val g13_example6485 : (((heap * heap) * heap) * heap) * int

val g13_example6486 : (((heap * heap) * heap) * heap) * int

val g13_example6487 : (((heap * heap) * heap) * heap) * int

val g13_example6488 : (((heap * heap) * heap) * heap) * int

val g13_example6489 : (((heap * heap) * heap) * heap) * int

val g13_example6490 : (((heap * heap) * heap) * heap) * int

val g13_example6491 : (((heap * heap) * heap) * heap) * int

val g13_example6492 : (((heap * heap) * heap) * heap) * int

val g13_example6493 : (((heap * heap) * heap) * heap) * int

val g13_example6494 : (((heap * heap) * heap) * heap) * int

val g13_example6495 : (((heap * heap) * heap) * heap) * int

val g13_example6496 : (((heap * heap) * heap) * heap) * int

val g13_example6497 : (((heap * heap) * heap) * heap) * int

val g13_example6498 : (((heap * heap) * heap) * heap) * int

val g13_example6499 : (((heap * heap) * heap) * heap) * int

val g13_example6500 : (((heap * heap) * heap) * heap) * int

val g13_example6501 : (((heap * heap) * heap) * heap) * int

val g13_example6502 : (((heap * heap) * heap) * heap) * int

val g13_example6503 : (((heap * heap) * heap) * heap) * int

val g13_example6504 : (((heap * heap) * heap) * heap) * int

val g13_example6505 : (((heap * heap) * heap) * heap) * int

val g13_example6506 : (((heap * heap) * heap) * heap) * int

val g13_example6507 : (((heap * heap) * heap) * heap) * int

val g13_example6508 : (((heap * heap) * heap) * heap) * int

val g13_example6509 : (((heap * heap) * heap) * heap) * int

val g13_example6510 : (((heap * heap) * heap) * heap) * int

val g13_example6511 : (((heap * heap) * heap) * heap) * int

val g13_example6512 : (((heap * heap) * heap) * heap) * int

val g13_example6513 : (((heap * heap) * heap) * heap) * int

val g13_example6514 : (((heap * heap) * heap) * heap) * int

val g13_example6515 : (((heap * heap) * heap) * heap) * int

val g13_example6516 : (((heap * heap) * heap) * heap) * int

val g13_example6517 : (((heap * heap) * heap) * heap) * int

val g13_example6518 : (((heap * heap) * heap) * heap) * int

val g13_example6519 : (((heap * heap) * heap) * heap) * int

val g13_example6520 : (((heap * heap) * heap) * heap) * int

val g13_example6521 : (((heap * heap) * heap) * heap) * int

val g13_example6522 : (((heap * heap) * heap) * heap) * int

val g13_example6523 : (((heap * heap) * heap) * heap) * int

val g13_example6524 : (((heap * heap) * heap) * heap) * int

val g13_example6525 : (((heap * heap) * heap) * heap) * int

val g13_example6526 : (((heap * heap) * heap) * heap) * int

val g13_example6527 : (((heap * heap) * heap) * heap) * int

val g13_example6528 : (((heap * heap) * heap) * heap) * int

val g13_example6529 : (((heap * heap) * heap) * heap) * int

val g13_example6530 : (((heap * heap) * heap) * heap) * int

val g13_example6531 : (((heap * heap) * heap) * heap) * int

val g13_example6532 : (((heap * heap) * heap) * heap) * int

val g13_example6533 : (((heap * heap) * heap) * heap) * int

val g13_example6534 : (((heap * heap) * heap) * heap) * int

val g13_example6535 : (((heap * heap) * heap) * heap) * int

val g13_example6536 : (((heap * heap) * heap) * heap) * int

val g13_example6537 : (((heap * heap) * heap) * heap) * int

val g13_example6538 : (((heap * heap) * heap) * heap) * int

val g13_example6539 : (((heap * heap) * heap) * heap) * int

val g13_example6540 : (((heap * heap) * heap) * heap) * int

val g13_example6541 : (((heap * heap) * heap) * heap) * int

val g13_example6542 : (((heap * heap) * heap) * heap) * int

val g13_example6543 : (((heap * heap) * heap) * heap) * int

val g13_example6544 : (((heap * heap) * heap) * heap) * int

val g13_example6545 : (((heap * heap) * heap) * heap) * int

val g13_example6546 : (((heap * heap) * heap) * heap) * int

val g13_example6547 : (((heap * heap) * heap) * heap) * int

val g13_example6548 : (((heap * heap) * heap) * heap) * int

val g13_example6549 : (((heap * heap) * heap) * heap) * int

val g13_example6550 : (((heap * heap) * heap) * heap) * int

val g13_example6551 : (((heap * heap) * heap) * heap) * int

val g13_example6552 : (((heap * heap) * heap) * heap) * int

val g13_example6553 : (((heap * heap) * heap) * heap) * int

val g13_example6554 : (((heap * heap) * heap) * heap) * int

val g13_example6555 : (((heap * heap) * heap) * heap) * int

val g13_example6556 : (((heap * heap) * heap) * heap) * int

val g13_example6557 : (((heap * heap) * heap) * heap) * int

val g13_example6558 : (((heap * heap) * heap) * heap) * int

val g13_example6559 : (((heap * heap) * heap) * heap) * int

val g13_example6560 : (((heap * heap) * heap) * heap) * int

val g13_example6561 : (((heap * heap) * heap) * heap) * int

val g13_example6562 : (((heap * heap) * heap) * heap) * int

val g13_example6563 : (((heap * heap) * heap) * heap) * int

val g13_example6564 : (((heap * heap) * heap) * heap) * int

val g13_example6565 : (((heap * heap) * heap) * heap) * int

val g13_example6566 : (((heap * heap) * heap) * heap) * int

val g13_example6567 : (((heap * heap) * heap) * heap) * int

val g13_example6568 : (((heap * heap) * heap) * heap) * int

val g13_example6569 : (((heap * heap) * heap) * heap) * int

val g13_example6570 : (((heap * heap) * heap) * heap) * int

val g13_example6571 : (((heap * heap) * heap) * heap) * int

val g13_example6572 : (((heap * heap) * heap) * heap) * int

val g13_example6573 : (((heap * heap) * heap) * heap) * int

val g13_example6574 : (((heap * heap) * heap) * heap) * int

val g13_example6575 : (((heap * heap) * heap) * heap) * int

val g13_example6576 : (((heap * heap) * heap) * heap) * int

val g13_example6577 : (((heap * heap) * heap) * heap) * int

val g13_example6578 : (((heap * heap) * heap) * heap) * int

val g13_example6579 : (((heap * heap) * heap) * heap) * int

val g13_example6580 : (((heap * heap) * heap) * heap) * int

val g13_example6581 : (((heap * heap) * heap) * heap) * int

val g13_example6582 : (((heap * heap) * heap) * heap) * int

val g13_example6583 : (((heap * heap) * heap) * heap) * int

val g13_example6584 : (((heap * heap) * heap) * heap) * int

val g13_example6585 : (((heap * heap) * heap) * heap) * int

val g13_example6586 : (((heap * heap) * heap) * heap) * int

val g13_example6587 : (((heap * heap) * heap) * heap) * int

val g13_example6588 : (((heap * heap) * heap) * heap) * int

val g13_example6589 : (((heap * heap) * heap) * heap) * int

val g13_example6590 : (((heap * heap) * heap) * heap) * int

val g13_example6591 : (((heap * heap) * heap) * heap) * int

val g13_example6592 : (((heap * heap) * heap) * heap) * int

val g13_example6593 : (((heap * heap) * heap) * heap) * int

val g13_example6594 : (((heap * heap) * heap) * heap) * int

val g13_example6595 : (((heap * heap) * heap) * heap) * int

val g13_example6596 : (((heap * heap) * heap) * heap) * int

val g13_example6597 : (((heap * heap) * heap) * heap) * int

val g13_example6598 : (((heap * heap) * heap) * heap) * int

val g13_example6599 : (((heap * heap) * heap) * heap) * int

val g13_example6600 : (((heap * heap) * heap) * heap) * int

val g13_example6601 : (((heap * heap) * heap) * heap) * int

val g13_example6602 : (((heap * heap) * heap) * heap) * int

val g13_example6603 : (((heap * heap) * heap) * heap) * int

val g13_example6604 : (((heap * heap) * heap) * heap) * int

val g13_example6605 : (((heap * heap) * heap) * heap) * int

val g13_example6606 : (((heap * heap) * heap) * heap) * int

val g13_example6607 : (((heap * heap) * heap) * heap) * int

val g13_example6608 : (((heap * heap) * heap) * heap) * int

val g13_example6609 : (((heap * heap) * heap) * heap) * int

val g13_example6610 : (((heap * heap) * heap) * heap) * int

val g13_example6611 : (((heap * heap) * heap) * heap) * int

val g13_example6612 : (((heap * heap) * heap) * heap) * int

val g13_example6613 : (((heap * heap) * heap) * heap) * int

val g13_example6614 : (((heap * heap) * heap) * heap) * int

val g13_example6615 : (((heap * heap) * heap) * heap) * int

val g13_example6616 : (((heap * heap) * heap) * heap) * int

val g13_example6617 : (((heap * heap) * heap) * heap) * int

val g13_example6618 : (((heap * heap) * heap) * heap) * int

val g13_example6619 : (((heap * heap) * heap) * heap) * int

val g13_example6620 : (((heap * heap) * heap) * heap) * int

val g13_example6621 : (((heap * heap) * heap) * heap) * int

val g13_example6622 : (((heap * heap) * heap) * heap) * int

val g13_example6623 : (((heap * heap) * heap) * heap) * int

val g13_example6624 : (((heap * heap) * heap) * heap) * int

val g13_example6625 : (((heap * heap) * heap) * heap) * int

val g13_example6626 : (((heap * heap) * heap) * heap) * int

val g13_example6627 : (((heap * heap) * heap) * heap) * int

val g13_example6628 : (((heap * heap) * heap) * heap) * int

val g13_example6629 : (((heap * heap) * heap) * heap) * int

val g13_example6630 : (((heap * heap) * heap) * heap) * int

val g13_example6631 : (((heap * heap) * heap) * heap) * int

val g13_example6632 : (((heap * heap) * heap) * heap) * int

val g13_example6633 : (((heap * heap) * heap) * heap) * int

val g13_example6634 : (((heap * heap) * heap) * heap) * int

val g13_example6635 : (((heap * heap) * heap) * heap) * int

val g13_example6636 : (((heap * heap) * heap) * heap) * int

val g13_example6637 : (((heap * heap) * heap) * heap) * int

val g13_example6638 : (((heap * heap) * heap) * heap) * int

val g13_example6639 : (((heap * heap) * heap) * heap) * int

val g13_example6640 : (((heap * heap) * heap) * heap) * int

val g13_example6641 : (((heap * heap) * heap) * heap) * int

val g13_example6642 : (((heap * heap) * heap) * heap) * int

val g13_example6643 : (((heap * heap) * heap) * heap) * int

val g13_example6644 : (((heap * heap) * heap) * heap) * int

val g13_example6645 : (((heap * heap) * heap) * heap) * int

val g13_example6646 : (((heap * heap) * heap) * heap) * int

val g13_example6647 : (((heap * heap) * heap) * heap) * int

val g13_example6648 : (((heap * heap) * heap) * heap) * int

val g13_example6649 : (((heap * heap) * heap) * heap) * int

val g13_example6650 : (((heap * heap) * heap) * heap) * int

val g13_example6651 : (((heap * heap) * heap) * heap) * int

val g13_example6652 : (((heap * heap) * heap) * heap) * int

val g13_example6653 : (((heap * heap) * heap) * heap) * int

val g13_example6654 : (((heap * heap) * heap) * heap) * int

val g13_example6655 : (((heap * heap) * heap) * heap) * int

val g13_example6656 : (((heap * heap) * heap) * heap) * int

val g13_example6657 : (((heap * heap) * heap) * heap) * int

val g13_example6658 : (((heap * heap) * heap) * heap) * int

val g13_example6659 : (((heap * heap) * heap) * heap) * int

val g13_example6660 : (((heap * heap) * heap) * heap) * int

val g13_example6661 : (((heap * heap) * heap) * heap) * int

val g13_example6662 : (((heap * heap) * heap) * heap) * int

val g13_example6663 : (((heap * heap) * heap) * heap) * int

val g13_example6664 : (((heap * heap) * heap) * heap) * int

val g13_example6665 : (((heap * heap) * heap) * heap) * int

val g13_example6666 : (((heap * heap) * heap) * heap) * int

val g13_example6667 : (((heap * heap) * heap) * heap) * int

val g13_example6668 : (((heap * heap) * heap) * heap) * int

val g13_example6669 : (((heap * heap) * heap) * heap) * int

val g13_example6670 : (((heap * heap) * heap) * heap) * int

val g13_example6671 : (((heap * heap) * heap) * heap) * int

val g13_example6672 : (((heap * heap) * heap) * heap) * int

val g13_example6673 : (((heap * heap) * heap) * heap) * int

val g13_example6674 : (((heap * heap) * heap) * heap) * int

val g13_example6675 : (((heap * heap) * heap) * heap) * int

val g13_example6676 : (((heap * heap) * heap) * heap) * int

val g13_example6677 : (((heap * heap) * heap) * heap) * int

val g13_example6678 : (((heap * heap) * heap) * heap) * int

val g13_example6679 : (((heap * heap) * heap) * heap) * int

val g13_example6680 : (((heap * heap) * heap) * heap) * int

val g13_example6681 : (((heap * heap) * heap) * heap) * int

val g13_example6682 : (((heap * heap) * heap) * heap) * int

val g13_example6683 : (((heap * heap) * heap) * heap) * int

val g13_example6684 : (((heap * heap) * heap) * heap) * int

val g13_example6685 : (((heap * heap) * heap) * heap) * int

val g13_example6686 : (((heap * heap) * heap) * heap) * int

val g13_example6687 : (((heap * heap) * heap) * heap) * int

val g13_example6688 : (((heap * heap) * heap) * heap) * int

val g13_example6689 : (((heap * heap) * heap) * heap) * int

val g13_example6690 : (((heap * heap) * heap) * heap) * int

val g13_example6691 : (((heap * heap) * heap) * heap) * int

val g13_example6692 : (((heap * heap) * heap) * heap) * int

val g13_example6693 : (((heap * heap) * heap) * heap) * int

val g13_example6694 : (((heap * heap) * heap) * heap) * int

val g13_example6695 : (((heap * heap) * heap) * heap) * int

val g13_example6696 : (((heap * heap) * heap) * heap) * int

val g13_example6697 : (((heap * heap) * heap) * heap) * int

val g13_example6698 : (((heap * heap) * heap) * heap) * int

val g13_example6699 : (((heap * heap) * heap) * heap) * int

val g13_example6700 : (((heap * heap) * heap) * heap) * int

val g13_example6701 : (((heap * heap) * heap) * heap) * int

val g13_example6702 : (((heap * heap) * heap) * heap) * int

val g13_example6703 : (((heap * heap) * heap) * heap) * int

val g13_example6704 : (((heap * heap) * heap) * heap) * int

val g13_example6705 : (((heap * heap) * heap) * heap) * int

val g13_example6706 : (((heap * heap) * heap) * heap) * int

val g13_example6707 : (((heap * heap) * heap) * heap) * int

val g13_example6708 : (((heap * heap) * heap) * heap) * int

val g13_example6709 : (((heap * heap) * heap) * heap) * int

val g13_example6710 : (((heap * heap) * heap) * heap) * int

val g13_example6711 : (((heap * heap) * heap) * heap) * int

val g13_example6712 : (((heap * heap) * heap) * heap) * int

val g13_example6713 : (((heap * heap) * heap) * heap) * int

val g13_example6714 : (((heap * heap) * heap) * heap) * int

val g13_example6715 : (((heap * heap) * heap) * heap) * int

val g13_example6716 : (((heap * heap) * heap) * heap) * int

val g13_example6717 : (((heap * heap) * heap) * heap) * int

val g13_example6718 : (((heap * heap) * heap) * heap) * int

val g13_example6719 : (((heap * heap) * heap) * heap) * int

val g13_example6720 : (((heap * heap) * heap) * heap) * int

val g13_example6721 : (((heap * heap) * heap) * heap) * int

val g13_example6722 : (((heap * heap) * heap) * heap) * int

val g13_example6723 : (((heap * heap) * heap) * heap) * int

val g13_example6724 : (((heap * heap) * heap) * heap) * int

val g13_example6725 : (((heap * heap) * heap) * heap) * int

val g13_example6726 : (((heap * heap) * heap) * heap) * int

val g13_example6727 : (((heap * heap) * heap) * heap) * int

val g13_example6728 : (((heap * heap) * heap) * heap) * int

val g13_example6729 : (((heap * heap) * heap) * heap) * int

val g13_example6730 : (((heap * heap) * heap) * heap) * int

val g13_example6731 : (((heap * heap) * heap) * heap) * int

val g13_example6732 : (((heap * heap) * heap) * heap) * int

val g13_example6733 : (((heap * heap) * heap) * heap) * int

val g13_example6734 : (((heap * heap) * heap) * heap) * int

val g13_example6735 : (((heap * heap) * heap) * heap) * int

val g13_example6736 : (((heap * heap) * heap) * heap) * int

val g13_example6737 : (((heap * heap) * heap) * heap) * int

val g13_example6738 : (((heap * heap) * heap) * heap) * int

val g13_example6739 : (((heap * heap) * heap) * heap) * int

val g13_example6740 : (((heap * heap) * heap) * heap) * int

val g13_example6741 : (((heap * heap) * heap) * heap) * int

val g13_example6742 : (((heap * heap) * heap) * heap) * int

val g13_example6743 : (((heap * heap) * heap) * heap) * int

val g13_example6744 : (((heap * heap) * heap) * heap) * int

val g13_example6745 : (((heap * heap) * heap) * heap) * int

val g13_example6746 : (((heap * heap) * heap) * heap) * int

val g13_example6747 : (((heap * heap) * heap) * heap) * int

val g13_example6748 : (((heap * heap) * heap) * heap) * int

val g13_example6749 : (((heap * heap) * heap) * heap) * int

val g13_example6750 : (((heap * heap) * heap) * heap) * int

val g13_example6751 : (((heap * heap) * heap) * heap) * int

val g13_example6752 : (((heap * heap) * heap) * heap) * int

val g13_example6753 : (((heap * heap) * heap) * heap) * int

val g13_example6754 : (((heap * heap) * heap) * heap) * int

val g13_example6755 : (((heap * heap) * heap) * heap) * int

val g13_example6756 : (((heap * heap) * heap) * heap) * int

val g13_example6757 : (((heap * heap) * heap) * heap) * int

val g13_example6758 : (((heap * heap) * heap) * heap) * int

val g13_example6759 : (((heap * heap) * heap) * heap) * int

val g13_example6760 : (((heap * heap) * heap) * heap) * int

val g13_example6761 : (((heap * heap) * heap) * heap) * int

val g13_example6762 : (((heap * heap) * heap) * heap) * int

val g13_example6763 : (((heap * heap) * heap) * heap) * int

val g13_example6764 : (((heap * heap) * heap) * heap) * int

val g13_example6765 : (((heap * heap) * heap) * heap) * int

val g13_example6766 : (((heap * heap) * heap) * heap) * int

val g13_example6767 : (((heap * heap) * heap) * heap) * int

val g13_example6768 : (((heap * heap) * heap) * heap) * int

val g13_example6769 : (((heap * heap) * heap) * heap) * int

val g13_example6770 : (((heap * heap) * heap) * heap) * int

val g13_example6771 : (((heap * heap) * heap) * heap) * int

val g13_example6772 : (((heap * heap) * heap) * heap) * int

val g13_example6773 : (((heap * heap) * heap) * heap) * int

val g13_example6774 : (((heap * heap) * heap) * heap) * int

val g13_example6775 : (((heap * heap) * heap) * heap) * int

val g13_example6776 : (((heap * heap) * heap) * heap) * int

val g13_example6777 : (((heap * heap) * heap) * heap) * int

val g13_example6778 : (((heap * heap) * heap) * heap) * int

val g13_example6779 : (((heap * heap) * heap) * heap) * int

val g13_example6780 : (((heap * heap) * heap) * heap) * int

val g13_example6781 : (((heap * heap) * heap) * heap) * int

val g13_example6782 : (((heap * heap) * heap) * heap) * int

val g13_example6783 : (((heap * heap) * heap) * heap) * int

val g13_example6784 : (((heap * heap) * heap) * heap) * int

val g13_example6785 : (((heap * heap) * heap) * heap) * int

val g13_example6786 : (((heap * heap) * heap) * heap) * int

val g13_example6787 : (((heap * heap) * heap) * heap) * int

val g13_example6788 : (((heap * heap) * heap) * heap) * int

val g13_example6789 : (((heap * heap) * heap) * heap) * int

val g13_example6790 : (((heap * heap) * heap) * heap) * int

val g13_example6791 : (((heap * heap) * heap) * heap) * int

val g13_example6792 : (((heap * heap) * heap) * heap) * int

val g13_example6793 : (((heap * heap) * heap) * heap) * int

val g13_example6794 : (((heap * heap) * heap) * heap) * int

val g13_example6795 : (((heap * heap) * heap) * heap) * int

val g13_example6796 : (((heap * heap) * heap) * heap) * int

val g13_example6797 : (((heap * heap) * heap) * heap) * int

val g13_example6798 : (((heap * heap) * heap) * heap) * int

val g13_example6799 : (((heap * heap) * heap) * heap) * int

val g13_example6800 : (((heap * heap) * heap) * heap) * int

val g13_example6801 : (((heap * heap) * heap) * heap) * int

val g13_example6802 : (((heap * heap) * heap) * heap) * int

val g13_example6803 : (((heap * heap) * heap) * heap) * int

val g13_example6804 : (((heap * heap) * heap) * heap) * int

val g13_example6805 : (((heap * heap) * heap) * heap) * int

val g13_example6806 : (((heap * heap) * heap) * heap) * int

val g13_example6807 : (((heap * heap) * heap) * heap) * int

val g13_example6808 : (((heap * heap) * heap) * heap) * int

val g13_example6809 : (((heap * heap) * heap) * heap) * int

val g13_example6810 : (((heap * heap) * heap) * heap) * int

val g13_example6811 : (((heap * heap) * heap) * heap) * int

val g13_example6812 : (((heap * heap) * heap) * heap) * int

val g13_example6813 : (((heap * heap) * heap) * heap) * int

val g13_example6814 : (((heap * heap) * heap) * heap) * int

val g13_example6815 : (((heap * heap) * heap) * heap) * int

val g13_example6816 : (((heap * heap) * heap) * heap) * int

val g13_example6817 : (((heap * heap) * heap) * heap) * int

val g13_example6818 : (((heap * heap) * heap) * heap) * int

val g13_example6819 : (((heap * heap) * heap) * heap) * int

val g13_example6820 : (((heap * heap) * heap) * heap) * int

val g13_example6821 : (((heap * heap) * heap) * heap) * int

val g13_example6822 : (((heap * heap) * heap) * heap) * int

val g13_example6823 : (((heap * heap) * heap) * heap) * int

val g13_example6824 : (((heap * heap) * heap) * heap) * int

val g13_example6825 : (((heap * heap) * heap) * heap) * int

val g13_example6826 : (((heap * heap) * heap) * heap) * int

val g13_example6827 : (((heap * heap) * heap) * heap) * int

val g13_example6828 : (((heap * heap) * heap) * heap) * int

val g13_example6829 : (((heap * heap) * heap) * heap) * int

val g13_example6830 : (((heap * heap) * heap) * heap) * int

val g13_example6831 : (((heap * heap) * heap) * heap) * int

val g13_example6832 : (((heap * heap) * heap) * heap) * int

val g13_example6833 : (((heap * heap) * heap) * heap) * int

val g13_example6834 : (((heap * heap) * heap) * heap) * int

val g13_example6835 : (((heap * heap) * heap) * heap) * int

val g13_example6836 : (((heap * heap) * heap) * heap) * int

val g13_example6837 : (((heap * heap) * heap) * heap) * int

val g13_example6838 : (((heap * heap) * heap) * heap) * int

val g13_example6839 : (((heap * heap) * heap) * heap) * int

val g13_example6840 : (((heap * heap) * heap) * heap) * int

val g13_example6841 : (((heap * heap) * heap) * heap) * int

val g13_example6842 : (((heap * heap) * heap) * heap) * int

val g13_example6843 : (((heap * heap) * heap) * heap) * int

val g13_example6844 : (((heap * heap) * heap) * heap) * int

val g13_example6845 : (((heap * heap) * heap) * heap) * int

val g13_example6846 : (((heap * heap) * heap) * heap) * int

val g13_example6847 : (((heap * heap) * heap) * heap) * int

val g13_example6848 : (((heap * heap) * heap) * heap) * int

val g13_example6849 : (((heap * heap) * heap) * heap) * int

val g13_example6850 : (((heap * heap) * heap) * heap) * int

val g13_example6851 : (((heap * heap) * heap) * heap) * int

val g13_example6852 : (((heap * heap) * heap) * heap) * int

val g13_example6853 : (((heap * heap) * heap) * heap) * int

val g13_example6854 : (((heap * heap) * heap) * heap) * int

val g13_example6855 : (((heap * heap) * heap) * heap) * int

val g13_example6856 : (((heap * heap) * heap) * heap) * int

val g13_example6857 : (((heap * heap) * heap) * heap) * int

val g13_example6858 : (((heap * heap) * heap) * heap) * int

val g13_example6859 : (((heap * heap) * heap) * heap) * int

val g13_example6860 : (((heap * heap) * heap) * heap) * int

val g13_example6861 : (((heap * heap) * heap) * heap) * int

val g13_example6862 : (((heap * heap) * heap) * heap) * int

val g13_example6863 : (((heap * heap) * heap) * heap) * int

val g13_example6864 : (((heap * heap) * heap) * heap) * int

val g13_example6865 : (((heap * heap) * heap) * heap) * int

val g13_example6866 : (((heap * heap) * heap) * heap) * int

val g13_example6867 : (((heap * heap) * heap) * heap) * int

val g13_example6868 : (((heap * heap) * heap) * heap) * int

val g13_example6869 : (((heap * heap) * heap) * heap) * int

val g13_example6870 : (((heap * heap) * heap) * heap) * int

val g13_example6871 : (((heap * heap) * heap) * heap) * int

val g13_example6872 : (((heap * heap) * heap) * heap) * int

val g13_example6873 : (((heap * heap) * heap) * heap) * int

val g13_example6874 : (((heap * heap) * heap) * heap) * int

val g13_example6875 : (((heap * heap) * heap) * heap) * int

val g13_example6876 : (((heap * heap) * heap) * heap) * int

val g13_example6877 : (((heap * heap) * heap) * heap) * int

val g13_example6878 : (((heap * heap) * heap) * heap) * int

val g13_example6879 : (((heap * heap) * heap) * heap) * int

val g13_example6880 : (((heap * heap) * heap) * heap) * int

val g13_example6881 : (((heap * heap) * heap) * heap) * int

val g13_example6882 : (((heap * heap) * heap) * heap) * int

val g13_example6883 : (((heap * heap) * heap) * heap) * int

val g13_example6884 : (((heap * heap) * heap) * heap) * int

val g13_example6885 : (((heap * heap) * heap) * heap) * int

val g13_example6886 : (((heap * heap) * heap) * heap) * int

val g13_example6887 : (((heap * heap) * heap) * heap) * int

val g13_example6888 : (((heap * heap) * heap) * heap) * int

val g13_example6889 : (((heap * heap) * heap) * heap) * int

val g13_example6890 : (((heap * heap) * heap) * heap) * int

val g13_example6891 : (((heap * heap) * heap) * heap) * int

val g13_example6892 : (((heap * heap) * heap) * heap) * int

val g13_example6893 : (((heap * heap) * heap) * heap) * int

val g13_example6894 : (((heap * heap) * heap) * heap) * int

val g13_example6895 : (((heap * heap) * heap) * heap) * int

val g13_example6896 : (((heap * heap) * heap) * heap) * int

val g13_example6897 : (((heap * heap) * heap) * heap) * int

val g13_example6898 : (((heap * heap) * heap) * heap) * int

val g13_example6899 : (((heap * heap) * heap) * heap) * int

val g13_example6900 : (((heap * heap) * heap) * heap) * int

val g13_example6901 : (((heap * heap) * heap) * heap) * int

val g13_example6902 : (((heap * heap) * heap) * heap) * int

val g13_example6903 : (((heap * heap) * heap) * heap) * int

val g13_example6904 : (((heap * heap) * heap) * heap) * int

val g13_example6905 : (((heap * heap) * heap) * heap) * int

val g13_example6906 : (((heap * heap) * heap) * heap) * int

val g13_example6907 : (((heap * heap) * heap) * heap) * int

val g13_example6908 : (((heap * heap) * heap) * heap) * int

val g13_example6909 : (((heap * heap) * heap) * heap) * int

val g13_example6910 : (((heap * heap) * heap) * heap) * int

val g13_example6911 : (((heap * heap) * heap) * heap) * int

val g13_example6912 : (((heap * heap) * heap) * heap) * int

val g13_example6913 : (((heap * heap) * heap) * heap) * int

val g13_example6914 : (((heap * heap) * heap) * heap) * int

val g13_example6915 : (((heap * heap) * heap) * heap) * int

val g13_example6916 : (((heap * heap) * heap) * heap) * int

val g13_example6917 : (((heap * heap) * heap) * heap) * int

val g13_example6918 : (((heap * heap) * heap) * heap) * int

val g13_example6919 : (((heap * heap) * heap) * heap) * int

val g13_example6920 : (((heap * heap) * heap) * heap) * int

val g13_example6921 : (((heap * heap) * heap) * heap) * int

val g13_example6922 : (((heap * heap) * heap) * heap) * int

val g13_example6923 : (((heap * heap) * heap) * heap) * int

val g13_example6924 : (((heap * heap) * heap) * heap) * int

val g13_example6925 : (((heap * heap) * heap) * heap) * int

val g13_example6926 : (((heap * heap) * heap) * heap) * int

val g13_example6927 : (((heap * heap) * heap) * heap) * int

val g13_example6928 : (((heap * heap) * heap) * heap) * int

val g13_example6929 : (((heap * heap) * heap) * heap) * int

val g13_example6930 : (((heap * heap) * heap) * heap) * int

val g13_example6931 : (((heap * heap) * heap) * heap) * int

val g13_example6932 : (((heap * heap) * heap) * heap) * int

val g13_example6933 : (((heap * heap) * heap) * heap) * int

val g13_example6934 : (((heap * heap) * heap) * heap) * int

val g13_example6935 : (((heap * heap) * heap) * heap) * int

val g13_example6936 : (((heap * heap) * heap) * heap) * int

val g13_example6937 : (((heap * heap) * heap) * heap) * int

val g13_example6938 : (((heap * heap) * heap) * heap) * int

val g13_example6939 : (((heap * heap) * heap) * heap) * int

val g13_example6940 : (((heap * heap) * heap) * heap) * int

val g13_example6941 : (((heap * heap) * heap) * heap) * int

val g13_example6942 : (((heap * heap) * heap) * heap) * int

val g13_example6943 : (((heap * heap) * heap) * heap) * int

val g13_example6944 : (((heap * heap) * heap) * heap) * int

val g13_example6945 : (((heap * heap) * heap) * heap) * int

val g13_example6946 : (((heap * heap) * heap) * heap) * int

val g13_example6947 : (((heap * heap) * heap) * heap) * int

val g13_example6948 : (((heap * heap) * heap) * heap) * int

val g13_example6949 : (((heap * heap) * heap) * heap) * int

val g13_example6950 : (((heap * heap) * heap) * heap) * int

val g13_example6951 : (((heap * heap) * heap) * heap) * int

val g13_example6952 : (((heap * heap) * heap) * heap) * int

val g13_example6953 : (((heap * heap) * heap) * heap) * int

val g13_example6954 : (((heap * heap) * heap) * heap) * int

val g13_example6955 : (((heap * heap) * heap) * heap) * int

val g13_example6956 : (((heap * heap) * heap) * heap) * int

val g13_example6957 : (((heap * heap) * heap) * heap) * int

val g13_example6958 : (((heap * heap) * heap) * heap) * int

val g13_example6959 : (((heap * heap) * heap) * heap) * int

val g13_example6960 : (((heap * heap) * heap) * heap) * int

val g13_example6961 : (((heap * heap) * heap) * heap) * int

val g13_example6962 : (((heap * heap) * heap) * heap) * int

val g13_example6963 : (((heap * heap) * heap) * heap) * int

val g13_example6964 : (((heap * heap) * heap) * heap) * int

val g13_example6965 : (((heap * heap) * heap) * heap) * int

val g13_example6966 : (((heap * heap) * heap) * heap) * int

val g13_example6967 : (((heap * heap) * heap) * heap) * int

val g13_example6968 : (((heap * heap) * heap) * heap) * int

val g13_example6969 : (((heap * heap) * heap) * heap) * int

val g13_example6970 : (((heap * heap) * heap) * heap) * int

val g13_example6971 : (((heap * heap) * heap) * heap) * int

val g13_example6972 : (((heap * heap) * heap) * heap) * int

val g13_example6973 : (((heap * heap) * heap) * heap) * int

val g13_example6974 : (((heap * heap) * heap) * heap) * int

val g13_example6975 : (((heap * heap) * heap) * heap) * int

val g13_example6976 : (((heap * heap) * heap) * heap) * int

val g13_example6977 : (((heap * heap) * heap) * heap) * int

val g13_example6978 : (((heap * heap) * heap) * heap) * int

val g13_example6979 : (((heap * heap) * heap) * heap) * int

val g13_example6980 : (((heap * heap) * heap) * heap) * int

val g13_example6981 : (((heap * heap) * heap) * heap) * int

val g13_example6982 : (((heap * heap) * heap) * heap) * int

val g13_example6983 : (((heap * heap) * heap) * heap) * int

val g13_example6984 : (((heap * heap) * heap) * heap) * int

val g13_example6985 : (((heap * heap) * heap) * heap) * int

val g13_example6986 : (((heap * heap) * heap) * heap) * int

val g13_example6987 : (((heap * heap) * heap) * heap) * int

val g13_example6988 : (((heap * heap) * heap) * heap) * int

val g13_example6989 : (((heap * heap) * heap) * heap) * int

val g13_example6990 : (((heap * heap) * heap) * heap) * int

val g13_example6991 : (((heap * heap) * heap) * heap) * int

val g13_example6992 : (((heap * heap) * heap) * heap) * int

val g13_example6993 : (((heap * heap) * heap) * heap) * int

val g13_example6994 : (((heap * heap) * heap) * heap) * int

val g13_example6995 : (((heap * heap) * heap) * heap) * int

val g13_example6996 : (((heap * heap) * heap) * heap) * int

val g13_example6997 : (((heap * heap) * heap) * heap) * int

val g13_example6998 : (((heap * heap) * heap) * heap) * int

val g13_example6999 : (((heap * heap) * heap) * heap) * int

val g13_example7000 : (((heap * heap) * heap) * heap) * int

val g13_example7001 : (((heap * heap) * heap) * heap) * int

val g13_example7002 : (((heap * heap) * heap) * heap) * int

val g13_example7003 : (((heap * heap) * heap) * heap) * int

val g13_example7004 : (((heap * heap) * heap) * heap) * int

val g13_example7005 : (((heap * heap) * heap) * heap) * int

val g13_example7006 : (((heap * heap) * heap) * heap) * int

val g13_example7007 : (((heap * heap) * heap) * heap) * int

val g13_example7008 : (((heap * heap) * heap) * heap) * int

val g13_example7009 : (((heap * heap) * heap) * heap) * int

val g13_example7010 : (((heap * heap) * heap) * heap) * int

val g13_example7011 : (((heap * heap) * heap) * heap) * int

val g13_example7012 : (((heap * heap) * heap) * heap) * int

val g13_example7013 : (((heap * heap) * heap) * heap) * int

val g13_example7014 : (((heap * heap) * heap) * heap) * int

val g13_example7015 : (((heap * heap) * heap) * heap) * int

val g13_example7016 : (((heap * heap) * heap) * heap) * int

val g13_example7017 : (((heap * heap) * heap) * heap) * int

val g13_example7018 : (((heap * heap) * heap) * heap) * int

val g13_example7019 : (((heap * heap) * heap) * heap) * int

val g13_example7020 : (((heap * heap) * heap) * heap) * int

val g13_example7021 : (((heap * heap) * heap) * heap) * int

val g13_example7022 : (((heap * heap) * heap) * heap) * int

val g13_example7023 : (((heap * heap) * heap) * heap) * int

val g13_example7024 : (((heap * heap) * heap) * heap) * int

val g13_example7025 : (((heap * heap) * heap) * heap) * int

val g13_example7026 : (((heap * heap) * heap) * heap) * int

val g13_example7027 : (((heap * heap) * heap) * heap) * int

val g13_example7028 : (((heap * heap) * heap) * heap) * int

val g13_example7029 : (((heap * heap) * heap) * heap) * int

val g13_example7030 : (((heap * heap) * heap) * heap) * int

val g13_example7031 : (((heap * heap) * heap) * heap) * int

val g13_example7032 : (((heap * heap) * heap) * heap) * int

val g13_example7033 : (((heap * heap) * heap) * heap) * int

val g13_example7034 : (((heap * heap) * heap) * heap) * int

val g13_example7035 : (((heap * heap) * heap) * heap) * int

val g13_example7036 : (((heap * heap) * heap) * heap) * int

val g13_example7037 : (((heap * heap) * heap) * heap) * int

val g13_example7038 : (((heap * heap) * heap) * heap) * int

val g13_example7039 : (((heap * heap) * heap) * heap) * int

val g13_example7040 : (((heap * heap) * heap) * heap) * int

val g13_example7041 : (((heap * heap) * heap) * heap) * int

val g13_example7042 : (((heap * heap) * heap) * heap) * int

val g13_example7043 : (((heap * heap) * heap) * heap) * int

val g13_example7044 : (((heap * heap) * heap) * heap) * int

val g13_example7045 : (((heap * heap) * heap) * heap) * int

val g13_example7046 : (((heap * heap) * heap) * heap) * int

val g13_example7047 : (((heap * heap) * heap) * heap) * int

val g13_example7048 : (((heap * heap) * heap) * heap) * int

val g13_example7049 : (((heap * heap) * heap) * heap) * int

val g13_example7050 : (((heap * heap) * heap) * heap) * int

val g13_example7051 : (((heap * heap) * heap) * heap) * int

val g13_example7052 : (((heap * heap) * heap) * heap) * int

val g13_example7053 : (((heap * heap) * heap) * heap) * int

val g13_example7054 : (((heap * heap) * heap) * heap) * int

val g13_example7055 : (((heap * heap) * heap) * heap) * int

val g13_example7056 : (((heap * heap) * heap) * heap) * int

val g13_example7057 : (((heap * heap) * heap) * heap) * int

val g13_example7058 : (((heap * heap) * heap) * heap) * int

val g13_example7059 : (((heap * heap) * heap) * heap) * int

val g13_example7060 : (((heap * heap) * heap) * heap) * int

val g13_example7061 : (((heap * heap) * heap) * heap) * int

val g13_example7062 : (((heap * heap) * heap) * heap) * int

val g13_example7063 : (((heap * heap) * heap) * heap) * int

val g13_example7064 : (((heap * heap) * heap) * heap) * int

val g13_example7065 : (((heap * heap) * heap) * heap) * int

val g13_example7066 : (((heap * heap) * heap) * heap) * int

val g13_example7067 : (((heap * heap) * heap) * heap) * int

val g13_example7068 : (((heap * heap) * heap) * heap) * int

val g13_example7069 : (((heap * heap) * heap) * heap) * int

val g13_example7070 : (((heap * heap) * heap) * heap) * int

val g13_example7071 : (((heap * heap) * heap) * heap) * int

val g13_example7072 : (((heap * heap) * heap) * heap) * int

val g13_example7073 : (((heap * heap) * heap) * heap) * int

val g13_example7074 : (((heap * heap) * heap) * heap) * int

val g13_example7075 : (((heap * heap) * heap) * heap) * int

val g13_example7076 : (((heap * heap) * heap) * heap) * int

val g13_example7077 : (((heap * heap) * heap) * heap) * int

val g13_example7078 : (((heap * heap) * heap) * heap) * int

val g13_example7079 : (((heap * heap) * heap) * heap) * int

val g13_example7080 : (((heap * heap) * heap) * heap) * int

val g13_example7081 : (((heap * heap) * heap) * heap) * int

val g13_example7082 : (((heap * heap) * heap) * heap) * int

val g13_example7083 : (((heap * heap) * heap) * heap) * int

val g13_example7084 : (((heap * heap) * heap) * heap) * int

val g13_example7085 : (((heap * heap) * heap) * heap) * int

val g13_example7086 : (((heap * heap) * heap) * heap) * int

val g13_example7087 : (((heap * heap) * heap) * heap) * int

val g13_example7088 : (((heap * heap) * heap) * heap) * int

val g13_example7089 : (((heap * heap) * heap) * heap) * int

val g13_example7090 : (((heap * heap) * heap) * heap) * int

val g13_example7091 : (((heap * heap) * heap) * heap) * int

val g13_example7092 : (((heap * heap) * heap) * heap) * int

val g13_example7093 : (((heap * heap) * heap) * heap) * int

val g13_example7094 : (((heap * heap) * heap) * heap) * int

val g13_example7095 : (((heap * heap) * heap) * heap) * int

val g13_example7096 : (((heap * heap) * heap) * heap) * int

val g13_example7097 : (((heap * heap) * heap) * heap) * int

val g13_example7098 : (((heap * heap) * heap) * heap) * int

val g13_example7099 : (((heap * heap) * heap) * heap) * int

val g13_example7100 : (((heap * heap) * heap) * heap) * int

val g13_example7101 : (((heap * heap) * heap) * heap) * int

val g13_example7102 : (((heap * heap) * heap) * heap) * int

val g13_example7103 : (((heap * heap) * heap) * heap) * int

val g13_example7104 : (((heap * heap) * heap) * heap) * int

val g13_example7105 : (((heap * heap) * heap) * heap) * int

val g13_example7106 : (((heap * heap) * heap) * heap) * int

val g13_example7107 : (((heap * heap) * heap) * heap) * int

val g13_example7108 : (((heap * heap) * heap) * heap) * int

val g13_example7109 : (((heap * heap) * heap) * heap) * int

val g13_example7110 : (((heap * heap) * heap) * heap) * int

val g13_example7111 : (((heap * heap) * heap) * heap) * int

val g13_example7112 : (((heap * heap) * heap) * heap) * int

val g13_example7113 : (((heap * heap) * heap) * heap) * int

val g13_example7114 : (((heap * heap) * heap) * heap) * int

val g13_example7115 : (((heap * heap) * heap) * heap) * int

val g13_example7116 : (((heap * heap) * heap) * heap) * int

val g13_example7117 : (((heap * heap) * heap) * heap) * int

val g13_example7118 : (((heap * heap) * heap) * heap) * int

val g13_example7119 : (((heap * heap) * heap) * heap) * int

val g13_example7120 : (((heap * heap) * heap) * heap) * int

val g13_example7121 : (((heap * heap) * heap) * heap) * int

val g13_example7122 : (((heap * heap) * heap) * heap) * int

val g13_example7123 : (((heap * heap) * heap) * heap) * int

val g13_example7124 : (((heap * heap) * heap) * heap) * int

val g13_example7125 : (((heap * heap) * heap) * heap) * int

val g13_example7126 : (((heap * heap) * heap) * heap) * int

val g13_example7127 : (((heap * heap) * heap) * heap) * int

val g13_example7128 : (((heap * heap) * heap) * heap) * int

val g13_example7129 : (((heap * heap) * heap) * heap) * int

val g13_example7130 : (((heap * heap) * heap) * heap) * int

val g13_example7131 : (((heap * heap) * heap) * heap) * int

val g13_example7132 : (((heap * heap) * heap) * heap) * int

val g13_example7133 : (((heap * heap) * heap) * heap) * int

val g13_example7134 : (((heap * heap) * heap) * heap) * int

val g13_example7135 : (((heap * heap) * heap) * heap) * int

val g13_example7136 : (((heap * heap) * heap) * heap) * int

val g13_example7137 : (((heap * heap) * heap) * heap) * int

val g13_example7138 : (((heap * heap) * heap) * heap) * int

val g13_example7139 : (((heap * heap) * heap) * heap) * int

val g13_example7140 : (((heap * heap) * heap) * heap) * int

val g13_example7141 : (((heap * heap) * heap) * heap) * int

val g13_example7142 : (((heap * heap) * heap) * heap) * int

val g13_example7143 : (((heap * heap) * heap) * heap) * int

val g13_example7144 : (((heap * heap) * heap) * heap) * int

val g13_example7145 : (((heap * heap) * heap) * heap) * int

val g13_example7146 : (((heap * heap) * heap) * heap) * int

val g13_example7147 : (((heap * heap) * heap) * heap) * int

val g13_example7148 : (((heap * heap) * heap) * heap) * int

val g13_example7149 : (((heap * heap) * heap) * heap) * int

val g13_example7150 : (((heap * heap) * heap) * heap) * int

val g13_example7151 : (((heap * heap) * heap) * heap) * int

val g13_example7152 : (((heap * heap) * heap) * heap) * int

val g13_example7153 : (((heap * heap) * heap) * heap) * int

val g13_example7154 : (((heap * heap) * heap) * heap) * int

val g13_example7155 : (((heap * heap) * heap) * heap) * int

val g13_example7156 : (((heap * heap) * heap) * heap) * int

val g13_example7157 : (((heap * heap) * heap) * heap) * int

val g13_example7158 : (((heap * heap) * heap) * heap) * int

val g13_example7159 : (((heap * heap) * heap) * heap) * int

val g13_example7160 : (((heap * heap) * heap) * heap) * int

val g13_example7161 : (((heap * heap) * heap) * heap) * int

val g13_example7162 : (((heap * heap) * heap) * heap) * int

val g13_example7163 : (((heap * heap) * heap) * heap) * int

val g13_example7164 : (((heap * heap) * heap) * heap) * int

val g13_example7165 : (((heap * heap) * heap) * heap) * int

val g13_example7166 : (((heap * heap) * heap) * heap) * int

val g13_example7167 : (((heap * heap) * heap) * heap) * int

val g13_example7168 : (((heap * heap) * heap) * heap) * int

val g13_example7169 : (((heap * heap) * heap) * heap) * int

val g13_example7170 : (((heap * heap) * heap) * heap) * int

val g13_example7171 : (((heap * heap) * heap) * heap) * int

val g13_example7172 : (((heap * heap) * heap) * heap) * int

val g13_example7173 : (((heap * heap) * heap) * heap) * int

val g13_example7174 : (((heap * heap) * heap) * heap) * int

val g13_example7175 : (((heap * heap) * heap) * heap) * int

val g13_example7176 : (((heap * heap) * heap) * heap) * int

val g13_example7177 : (((heap * heap) * heap) * heap) * int

val g13_example7178 : (((heap * heap) * heap) * heap) * int

val g13_example7179 : (((heap * heap) * heap) * heap) * int

val g13_example7180 : (((heap * heap) * heap) * heap) * int

val g13_example7181 : (((heap * heap) * heap) * heap) * int

val g13_example7182 : (((heap * heap) * heap) * heap) * int

val g13_example7183 : (((heap * heap) * heap) * heap) * int

val g13_example7184 : (((heap * heap) * heap) * heap) * int

val g13_example7185 : (((heap * heap) * heap) * heap) * int

val g13_example7186 : (((heap * heap) * heap) * heap) * int

val g13_example7187 : (((heap * heap) * heap) * heap) * int

val g13_example7188 : (((heap * heap) * heap) * heap) * int

val g13_example7189 : (((heap * heap) * heap) * heap) * int

val g13_example7190 : (((heap * heap) * heap) * heap) * int

val g13_example7191 : (((heap * heap) * heap) * heap) * int

val g13_example7192 : (((heap * heap) * heap) * heap) * int

val g13_example7193 : (((heap * heap) * heap) * heap) * int

val g13_example7194 : (((heap * heap) * heap) * heap) * int

val g13_example7195 : (((heap * heap) * heap) * heap) * int

val g13_example7196 : (((heap * heap) * heap) * heap) * int

val g13_example7197 : (((heap * heap) * heap) * heap) * int

val g13_example7198 : (((heap * heap) * heap) * heap) * int

val g13_example7199 : (((heap * heap) * heap) * heap) * int

val g13_example7200 : (((heap * heap) * heap) * heap) * int

val g13_example7201 : (((heap * heap) * heap) * heap) * int

val g13_example7202 : (((heap * heap) * heap) * heap) * int

val g13_example7203 : (((heap * heap) * heap) * heap) * int

val g13_example7204 : (((heap * heap) * heap) * heap) * int

val g13_example7205 : (((heap * heap) * heap) * heap) * int

val g13_example7206 : (((heap * heap) * heap) * heap) * int

val g13_example7207 : (((heap * heap) * heap) * heap) * int

val g13_example7208 : (((heap * heap) * heap) * heap) * int

val g13_example7209 : (((heap * heap) * heap) * heap) * int

val g13_example7210 : (((heap * heap) * heap) * heap) * int

val g13_example7211 : (((heap * heap) * heap) * heap) * int

val g13_example7212 : (((heap * heap) * heap) * heap) * int

val g13_example7213 : (((heap * heap) * heap) * heap) * int

val g13_example7214 : (((heap * heap) * heap) * heap) * int

val g13_example7215 : (((heap * heap) * heap) * heap) * int

val g13_example7216 : (((heap * heap) * heap) * heap) * int

val g13_example7217 : (((heap * heap) * heap) * heap) * int

val g13_example7218 : (((heap * heap) * heap) * heap) * int

val g13_example7219 : (((heap * heap) * heap) * heap) * int

val g13_example7220 : (((heap * heap) * heap) * heap) * int

val g13_example7221 : (((heap * heap) * heap) * heap) * int

val g13_example7222 : (((heap * heap) * heap) * heap) * int

val g13_example7223 : (((heap * heap) * heap) * heap) * int

val g13_example7224 : (((heap * heap) * heap) * heap) * int

val g13_example7225 : (((heap * heap) * heap) * heap) * int

val g13_example7226 : (((heap * heap) * heap) * heap) * int

val g13_example7227 : (((heap * heap) * heap) * heap) * int

val g13_example7228 : (((heap * heap) * heap) * heap) * int

val g13_example7229 : (((heap * heap) * heap) * heap) * int

val g13_example7230 : (((heap * heap) * heap) * heap) * int

val g13_example7231 : (((heap * heap) * heap) * heap) * int

val g13_example7232 : (((heap * heap) * heap) * heap) * int

val g13_example7233 : (((heap * heap) * heap) * heap) * int

val g13_example7234 : (((heap * heap) * heap) * heap) * int

val g13_example7235 : (((heap * heap) * heap) * heap) * int

val g13_example7236 : (((heap * heap) * heap) * heap) * int

val g13_example7237 : (((heap * heap) * heap) * heap) * int

val g13_example7238 : (((heap * heap) * heap) * heap) * int

val g13_example7239 : (((heap * heap) * heap) * heap) * int

val g13_example7240 : (((heap * heap) * heap) * heap) * int

val g13_example7241 : (((heap * heap) * heap) * heap) * int

val g13_example7242 : (((heap * heap) * heap) * heap) * int

val g13_example7243 : (((heap * heap) * heap) * heap) * int

val g13_example7244 : (((heap * heap) * heap) * heap) * int

val g13_example7245 : (((heap * heap) * heap) * heap) * int

val g13_example7246 : (((heap * heap) * heap) * heap) * int

val g13_example7247 : (((heap * heap) * heap) * heap) * int

val g13_example7248 : (((heap * heap) * heap) * heap) * int

val g13_example7249 : (((heap * heap) * heap) * heap) * int

val g13_example7250 : (((heap * heap) * heap) * heap) * int

val g13_example7251 : (((heap * heap) * heap) * heap) * int

val g13_example7252 : (((heap * heap) * heap) * heap) * int

val g13_example7253 : (((heap * heap) * heap) * heap) * int

val g13_example7254 : (((heap * heap) * heap) * heap) * int

val g13_example7255 : (((heap * heap) * heap) * heap) * int

val g13_example7256 : (((heap * heap) * heap) * heap) * int

val g13_example7257 : (((heap * heap) * heap) * heap) * int

val g13_example7258 : (((heap * heap) * heap) * heap) * int

val g13_example7259 : (((heap * heap) * heap) * heap) * int

val g13_example7260 : (((heap * heap) * heap) * heap) * int

val g13_example7261 : (((heap * heap) * heap) * heap) * int

val g13_example7262 : (((heap * heap) * heap) * heap) * int

val g13_example7263 : (((heap * heap) * heap) * heap) * int

val g13_example7264 : (((heap * heap) * heap) * heap) * int

val g13_example7265 : (((heap * heap) * heap) * heap) * int

val g13_example7266 : (((heap * heap) * heap) * heap) * int

val g13_example7267 : (((heap * heap) * heap) * heap) * int

val g13_example7268 : (((heap * heap) * heap) * heap) * int

val g13_example7269 : (((heap * heap) * heap) * heap) * int

val g13_example7270 : (((heap * heap) * heap) * heap) * int

val g13_example7271 : (((heap * heap) * heap) * heap) * int

val g13_example7272 : (((heap * heap) * heap) * heap) * int

val g13_example7273 : (((heap * heap) * heap) * heap) * int

val g13_example7274 : (((heap * heap) * heap) * heap) * int

val g13_example7275 : (((heap * heap) * heap) * heap) * int

val g13_example7276 : (((heap * heap) * heap) * heap) * int

val g13_example7277 : (((heap * heap) * heap) * heap) * int

val g13_example7278 : (((heap * heap) * heap) * heap) * int

val g13_example7279 : (((heap * heap) * heap) * heap) * int

val g13_example7280 : (((heap * heap) * heap) * heap) * int

val g13_example7281 : (((heap * heap) * heap) * heap) * int

val g13_example7282 : (((heap * heap) * heap) * heap) * int

val g13_example7283 : (((heap * heap) * heap) * heap) * int

val g13_example7284 : (((heap * heap) * heap) * heap) * int

val g13_example7285 : (((heap * heap) * heap) * heap) * int

val g13_example7286 : (((heap * heap) * heap) * heap) * int

val g13_example7287 : (((heap * heap) * heap) * heap) * int

val g13_example7288 : (((heap * heap) * heap) * heap) * int

val g13_example7289 : (((heap * heap) * heap) * heap) * int

val g13_example7290 : (((heap * heap) * heap) * heap) * int

val g13_example7291 : (((heap * heap) * heap) * heap) * int

val g13_example7292 : (((heap * heap) * heap) * heap) * int

val g13_example7293 : (((heap * heap) * heap) * heap) * int

val g13_example7294 : (((heap * heap) * heap) * heap) * int

val g13_example7295 : (((heap * heap) * heap) * heap) * int

val g13_example7296 : (((heap * heap) * heap) * heap) * int

val g13_example7297 : (((heap * heap) * heap) * heap) * int

val g13_example7298 : (((heap * heap) * heap) * heap) * int

val g13_example7299 : (((heap * heap) * heap) * heap) * int

val g13_example7300 : (((heap * heap) * heap) * heap) * int

val g13_example7301 : (((heap * heap) * heap) * heap) * int

val g13_example7302 : (((heap * heap) * heap) * heap) * int

val g13_example7303 : (((heap * heap) * heap) * heap) * int

val g13_example7304 : (((heap * heap) * heap) * heap) * int

val g13_example7305 : (((heap * heap) * heap) * heap) * int

val g13_example7306 : (((heap * heap) * heap) * heap) * int

val g13_example7307 : (((heap * heap) * heap) * heap) * int

val g13_example7308 : (((heap * heap) * heap) * heap) * int

val g13_example7309 : (((heap * heap) * heap) * heap) * int

val g13_example7310 : (((heap * heap) * heap) * heap) * int

val g13_example7311 : (((heap * heap) * heap) * heap) * int

val g13_example7312 : (((heap * heap) * heap) * heap) * int

val g13_example7313 : (((heap * heap) * heap) * heap) * int

val g13_example7314 : (((heap * heap) * heap) * heap) * int

val g13_example7315 : (((heap * heap) * heap) * heap) * int

val g13_example7316 : (((heap * heap) * heap) * heap) * int

val g13_example7317 : (((heap * heap) * heap) * heap) * int

val g13_example7318 : (((heap * heap) * heap) * heap) * int

val g13_example7319 : (((heap * heap) * heap) * heap) * int

val g13_example7320 : (((heap * heap) * heap) * heap) * int

val g13_example7321 : (((heap * heap) * heap) * heap) * int

val g13_example7322 : (((heap * heap) * heap) * heap) * int

val g13_example7323 : (((heap * heap) * heap) * heap) * int

val g13_example7324 : (((heap * heap) * heap) * heap) * int

val g13_example7325 : (((heap * heap) * heap) * heap) * int

val g13_example7326 : (((heap * heap) * heap) * heap) * int

val g13_example7327 : (((heap * heap) * heap) * heap) * int

val g13_example7328 : (((heap * heap) * heap) * heap) * int

val g13_example7329 : (((heap * heap) * heap) * heap) * int

val g13_example7330 : (((heap * heap) * heap) * heap) * int

val g13_example7331 : (((heap * heap) * heap) * heap) * int

val g13_example7332 : (((heap * heap) * heap) * heap) * int

val g13_example7333 : (((heap * heap) * heap) * heap) * int

val g13_example7334 : (((heap * heap) * heap) * heap) * int

val g13_example7335 : (((heap * heap) * heap) * heap) * int

val g13_example7336 : (((heap * heap) * heap) * heap) * int

val g13_example7337 : (((heap * heap) * heap) * heap) * int

val g13_example7338 : (((heap * heap) * heap) * heap) * int

val g13_example7339 : (((heap * heap) * heap) * heap) * int

val g13_example7340 : (((heap * heap) * heap) * heap) * int

val g13_example7341 : (((heap * heap) * heap) * heap) * int

val g13_example7342 : (((heap * heap) * heap) * heap) * int

val g13_example7343 : (((heap * heap) * heap) * heap) * int

val g13_example7344 : (((heap * heap) * heap) * heap) * int

val g13_example7345 : (((heap * heap) * heap) * heap) * int

val g13_example7346 : (((heap * heap) * heap) * heap) * int

val g13_example7347 : (((heap * heap) * heap) * heap) * int

val g13_example7348 : (((heap * heap) * heap) * heap) * int

val g13_example7349 : (((heap * heap) * heap) * heap) * int

val g13_example7350 : (((heap * heap) * heap) * heap) * int

val g13_example7351 : (((heap * heap) * heap) * heap) * int

val g13_example7352 : (((heap * heap) * heap) * heap) * int

val g13_example7353 : (((heap * heap) * heap) * heap) * int

val g13_example7354 : (((heap * heap) * heap) * heap) * int

val g13_example7355 : (((heap * heap) * heap) * heap) * int

val g13_example7356 : (((heap * heap) * heap) * heap) * int

val g13_example7357 : (((heap * heap) * heap) * heap) * int

val g13_example7358 : (((heap * heap) * heap) * heap) * int

val g13_example7359 : (((heap * heap) * heap) * heap) * int

val g13_example7360 : (((heap * heap) * heap) * heap) * int

val g13_example7361 : (((heap * heap) * heap) * heap) * int

val g13_example7362 : (((heap * heap) * heap) * heap) * int

val g13_example7363 : (((heap * heap) * heap) * heap) * int

val g13_example7364 : (((heap * heap) * heap) * heap) * int

val g13_example7365 : (((heap * heap) * heap) * heap) * int

val g13_example7366 : (((heap * heap) * heap) * heap) * int

val g13_example7367 : (((heap * heap) * heap) * heap) * int

val g13_example7368 : (((heap * heap) * heap) * heap) * int

val g13_example7369 : (((heap * heap) * heap) * heap) * int

val g13_example7370 : (((heap * heap) * heap) * heap) * int

val g13_example7371 : (((heap * heap) * heap) * heap) * int

val g13_example7372 : (((heap * heap) * heap) * heap) * int

val g13_example7373 : (((heap * heap) * heap) * heap) * int

val g13_example7374 : (((heap * heap) * heap) * heap) * int

val g13_example7375 : (((heap * heap) * heap) * heap) * int

val g13_example7376 : (((heap * heap) * heap) * heap) * int

val g13_example7377 : (((heap * heap) * heap) * heap) * int

val g13_example7378 : (((heap * heap) * heap) * heap) * int

val g13_example7379 : (((heap * heap) * heap) * heap) * int

val g13_example7380 : (((heap * heap) * heap) * heap) * int

val g13_example7381 : (((heap * heap) * heap) * heap) * int

val g13_example7382 : (((heap * heap) * heap) * heap) * int

val g13_example7383 : (((heap * heap) * heap) * heap) * int

val g13_example7384 : (((heap * heap) * heap) * heap) * int

val g13_example7385 : (((heap * heap) * heap) * heap) * int

val g13_example7386 : (((heap * heap) * heap) * heap) * int

val g13_example7387 : (((heap * heap) * heap) * heap) * int

val g13_example7388 : (((heap * heap) * heap) * heap) * int

val g13_example7389 : (((heap * heap) * heap) * heap) * int

val g13_example7390 : (((heap * heap) * heap) * heap) * int

val g13_example7391 : (((heap * heap) * heap) * heap) * int

val g13_example7392 : (((heap * heap) * heap) * heap) * int

val g13_example7393 : (((heap * heap) * heap) * heap) * int

val g13_example7394 : (((heap * heap) * heap) * heap) * int

val g13_example7395 : (((heap * heap) * heap) * heap) * int

val g13_example7396 : (((heap * heap) * heap) * heap) * int

val g13_example7397 : (((heap * heap) * heap) * heap) * int

val g13_example7398 : (((heap * heap) * heap) * heap) * int

val g13_example7399 : (((heap * heap) * heap) * heap) * int

val g13_example7400 : (((heap * heap) * heap) * heap) * int

val g13_example7401 : (((heap * heap) * heap) * heap) * int

val g13_example7402 : (((heap * heap) * heap) * heap) * int

val g13_example7403 : (((heap * heap) * heap) * heap) * int

val g13_example7404 : (((heap * heap) * heap) * heap) * int

val g13_example7405 : (((heap * heap) * heap) * heap) * int

val g13_example7406 : (((heap * heap) * heap) * heap) * int

val g13_example7407 : (((heap * heap) * heap) * heap) * int

val g13_example7408 : (((heap * heap) * heap) * heap) * int

val g13_example7409 : (((heap * heap) * heap) * heap) * int

val g13_example7410 : (((heap * heap) * heap) * heap) * int

val g13_example7411 : (((heap * heap) * heap) * heap) * int

val g13_example7412 : (((heap * heap) * heap) * heap) * int

val g13_example7413 : (((heap * heap) * heap) * heap) * int

val g13_example7414 : (((heap * heap) * heap) * heap) * int

val g13_example7415 : (((heap * heap) * heap) * heap) * int

val g13_example7416 : (((heap * heap) * heap) * heap) * int

val g13_example7417 : (((heap * heap) * heap) * heap) * int

val g13_example7418 : (((heap * heap) * heap) * heap) * int

val g13_example7419 : (((heap * heap) * heap) * heap) * int

val g13_example7420 : (((heap * heap) * heap) * heap) * int

val g13_example7421 : (((heap * heap) * heap) * heap) * int

val g13_example7422 : (((heap * heap) * heap) * heap) * int

val g13_example7423 : (((heap * heap) * heap) * heap) * int

val g13_example7424 : (((heap * heap) * heap) * heap) * int

val g13_example7425 : (((heap * heap) * heap) * heap) * int

val g13_example7426 : (((heap * heap) * heap) * heap) * int

val g13_example7427 : (((heap * heap) * heap) * heap) * int

val g13_example7428 : (((heap * heap) * heap) * heap) * int

val g13_example7429 : (((heap * heap) * heap) * heap) * int

val g13_example7430 : (((heap * heap) * heap) * heap) * int

val g13_example7431 : (((heap * heap) * heap) * heap) * int

val g13_example7432 : (((heap * heap) * heap) * heap) * int

val g13_example7433 : (((heap * heap) * heap) * heap) * int

val g13_example7434 : (((heap * heap) * heap) * heap) * int

val g13_example7435 : (((heap * heap) * heap) * heap) * int

val g13_example7436 : (((heap * heap) * heap) * heap) * int

val g13_example7437 : (((heap * heap) * heap) * heap) * int

val g13_example7438 : (((heap * heap) * heap) * heap) * int

val g13_example7439 : (((heap * heap) * heap) * heap) * int

val g13_example7440 : (((heap * heap) * heap) * heap) * int

val g13_example7441 : (((heap * heap) * heap) * heap) * int

val g13_example7442 : (((heap * heap) * heap) * heap) * int

val g13_example7443 : (((heap * heap) * heap) * heap) * int

val g13_example7444 : (((heap * heap) * heap) * heap) * int

val g13_example7445 : (((heap * heap) * heap) * heap) * int

val g13_example7446 : (((heap * heap) * heap) * heap) * int

val g13_example7447 : (((heap * heap) * heap) * heap) * int

val g13_example7448 : (((heap * heap) * heap) * heap) * int

val g13_example7449 : (((heap * heap) * heap) * heap) * int

val g13_example7450 : (((heap * heap) * heap) * heap) * int

val g13_example7451 : (((heap * heap) * heap) * heap) * int

val g13_example7452 : (((heap * heap) * heap) * heap) * int

val g13_example7453 : (((heap * heap) * heap) * heap) * int

val g13_example7454 : (((heap * heap) * heap) * heap) * int

val g13_example7455 : (((heap * heap) * heap) * heap) * int

val g13_example7456 : (((heap * heap) * heap) * heap) * int

val g13_example7457 : (((heap * heap) * heap) * heap) * int

val g13_example7458 : (((heap * heap) * heap) * heap) * int

val g13_example7459 : (((heap * heap) * heap) * heap) * int

val g13_example7460 : (((heap * heap) * heap) * heap) * int

val g13_example7461 : (((heap * heap) * heap) * heap) * int

val g13_example7462 : (((heap * heap) * heap) * heap) * int

val g13_example7463 : (((heap * heap) * heap) * heap) * int

val g13_example7464 : (((heap * heap) * heap) * heap) * int

val g13_example7465 : (((heap * heap) * heap) * heap) * int

val g13_example7466 : (((heap * heap) * heap) * heap) * int

val g13_example7467 : (((heap * heap) * heap) * heap) * int

val g13_example7468 : (((heap * heap) * heap) * heap) * int

val g13_example7469 : (((heap * heap) * heap) * heap) * int

val g13_example7470 : (((heap * heap) * heap) * heap) * int

val g13_example7471 : (((heap * heap) * heap) * heap) * int

val g13_example7472 : (((heap * heap) * heap) * heap) * int

val g13_example7473 : (((heap * heap) * heap) * heap) * int

val g13_example7474 : (((heap * heap) * heap) * heap) * int

val g13_example7475 : (((heap * heap) * heap) * heap) * int

val g13_example7476 : (((heap * heap) * heap) * heap) * int

val g13_example7477 : (((heap * heap) * heap) * heap) * int

val g13_example7478 : (((heap * heap) * heap) * heap) * int

val g13_example7479 : (((heap * heap) * heap) * heap) * int

val g13_example7480 : (((heap * heap) * heap) * heap) * int

val g13_example7481 : (((heap * heap) * heap) * heap) * int

val g13_example7482 : (((heap * heap) * heap) * heap) * int

val g13_example7483 : (((heap * heap) * heap) * heap) * int

val g13_example7484 : (((heap * heap) * heap) * heap) * int

val g13_example7485 : (((heap * heap) * heap) * heap) * int

val g13_example7486 : (((heap * heap) * heap) * heap) * int

val g13_example7487 : (((heap * heap) * heap) * heap) * int

val g13_example7488 : (((heap * heap) * heap) * heap) * int

val g13_example7489 : (((heap * heap) * heap) * heap) * int

val g13_example7490 : (((heap * heap) * heap) * heap) * int

val g13_example7491 : (((heap * heap) * heap) * heap) * int

val g13_example7492 : (((heap * heap) * heap) * heap) * int

val g13_example7493 : (((heap * heap) * heap) * heap) * int

val g13_example7494 : (((heap * heap) * heap) * heap) * int

val g13_example7495 : (((heap * heap) * heap) * heap) * int

val g13_example7496 : (((heap * heap) * heap) * heap) * int

val g13_example7497 : (((heap * heap) * heap) * heap) * int

val g13_example7498 : (((heap * heap) * heap) * heap) * int

val g13_example7499 : (((heap * heap) * heap) * heap) * int

val g13_example7500 : (((heap * heap) * heap) * heap) * int

val g13_example7501 : (((heap * heap) * heap) * heap) * int

val g13_example7502 : (((heap * heap) * heap) * heap) * int

val g13_example7503 : (((heap * heap) * heap) * heap) * int

val g13_example7504 : (((heap * heap) * heap) * heap) * int

val g13_example7505 : (((heap * heap) * heap) * heap) * int

val g13_example7506 : (((heap * heap) * heap) * heap) * int

val g13_example7507 : (((heap * heap) * heap) * heap) * int

val g13_example7508 : (((heap * heap) * heap) * heap) * int

val g13_example7509 : (((heap * heap) * heap) * heap) * int

val g13_example7510 : (((heap * heap) * heap) * heap) * int

val g13_example7511 : (((heap * heap) * heap) * heap) * int

val g13_example7512 : (((heap * heap) * heap) * heap) * int

val g13_example7513 : (((heap * heap) * heap) * heap) * int

val g13_example7514 : (((heap * heap) * heap) * heap) * int

val g13_example7515 : (((heap * heap) * heap) * heap) * int

val g13_example7516 : (((heap * heap) * heap) * heap) * int

val g13_example7517 : (((heap * heap) * heap) * heap) * int

val g13_example7518 : (((heap * heap) * heap) * heap) * int

val g13_example7519 : (((heap * heap) * heap) * heap) * int

val g13_example7520 : (((heap * heap) * heap) * heap) * int

val g13_example7521 : (((heap * heap) * heap) * heap) * int

val g13_example7522 : (((heap * heap) * heap) * heap) * int

val g13_example7523 : (((heap * heap) * heap) * heap) * int

val g13_example7524 : (((heap * heap) * heap) * heap) * int

val g13_example7525 : (((heap * heap) * heap) * heap) * int

val g13_example7526 : (((heap * heap) * heap) * heap) * int

val g13_example7527 : (((heap * heap) * heap) * heap) * int

val g13_example7528 : (((heap * heap) * heap) * heap) * int

val g13_example7529 : (((heap * heap) * heap) * heap) * int

val g13_example7530 : (((heap * heap) * heap) * heap) * int

val g13_example7531 : (((heap * heap) * heap) * heap) * int

val g13_example7532 : (((heap * heap) * heap) * heap) * int

val g13_example7533 : (((heap * heap) * heap) * heap) * int

val g13_example7534 : (((heap * heap) * heap) * heap) * int

val g13_example7535 : (((heap * heap) * heap) * heap) * int

val g13_example7536 : (((heap * heap) * heap) * heap) * int

val g13_example7537 : (((heap * heap) * heap) * heap) * int

val g13_example7538 : (((heap * heap) * heap) * heap) * int

val g13_example7539 : (((heap * heap) * heap) * heap) * int

val g13_example7540 : (((heap * heap) * heap) * heap) * int

val g13_example7541 : (((heap * heap) * heap) * heap) * int

val g13_example7542 : (((heap * heap) * heap) * heap) * int

val g13_example7543 : (((heap * heap) * heap) * heap) * int

val g13_example7544 : (((heap * heap) * heap) * heap) * int

val g13_example7545 : (((heap * heap) * heap) * heap) * int

val g13_example7546 : (((heap * heap) * heap) * heap) * int

val g13_example7547 : (((heap * heap) * heap) * heap) * int

val g13_example7548 : (((heap * heap) * heap) * heap) * int

val g13_example7549 : (((heap * heap) * heap) * heap) * int

val g13_example7550 : (((heap * heap) * heap) * heap) * int

val g13_example7551 : (((heap * heap) * heap) * heap) * int

val g13_example7552 : (((heap * heap) * heap) * heap) * int

val g13_example7553 : (((heap * heap) * heap) * heap) * int

val g13_example7554 : (((heap * heap) * heap) * heap) * int

val g13_example7555 : (((heap * heap) * heap) * heap) * int

val g13_example7556 : (((heap * heap) * heap) * heap) * int

val g13_example7557 : (((heap * heap) * heap) * heap) * int

val g13_example7558 : (((heap * heap) * heap) * heap) * int

val g13_example7559 : (((heap * heap) * heap) * heap) * int

val g13_example7560 : (((heap * heap) * heap) * heap) * int

val g13_example7561 : (((heap * heap) * heap) * heap) * int

val g13_example7562 : (((heap * heap) * heap) * heap) * int

val g13_example7563 : (((heap * heap) * heap) * heap) * int

val g13_example7564 : (((heap * heap) * heap) * heap) * int

val g13_example7565 : (((heap * heap) * heap) * heap) * int

val g13_example7566 : (((heap * heap) * heap) * heap) * int

val g13_example7567 : (((heap * heap) * heap) * heap) * int

val g13_example7568 : (((heap * heap) * heap) * heap) * int

val g13_example7569 : (((heap * heap) * heap) * heap) * int

val g13_example7570 : (((heap * heap) * heap) * heap) * int

val g13_example7571 : (((heap * heap) * heap) * heap) * int

val g13_example7572 : (((heap * heap) * heap) * heap) * int

val g13_example7573 : (((heap * heap) * heap) * heap) * int

val g13_example7574 : (((heap * heap) * heap) * heap) * int

val g13_example7575 : (((heap * heap) * heap) * heap) * int

val g13_example7576 : (((heap * heap) * heap) * heap) * int

val g13_example7577 : (((heap * heap) * heap) * heap) * int

val g13_example7578 : (((heap * heap) * heap) * heap) * int

val g13_example7579 : (((heap * heap) * heap) * heap) * int

val g13_example7580 : (((heap * heap) * heap) * heap) * int

val g13_example7581 : (((heap * heap) * heap) * heap) * int

val g13_example7582 : (((heap * heap) * heap) * heap) * int

val g13_example7583 : (((heap * heap) * heap) * heap) * int

val g13_example7584 : (((heap * heap) * heap) * heap) * int

val g13_example7585 : (((heap * heap) * heap) * heap) * int

val g13_example7586 : (((heap * heap) * heap) * heap) * int

val g13_example7587 : (((heap * heap) * heap) * heap) * int

val g13_example7588 : (((heap * heap) * heap) * heap) * int

val g13_example7589 : (((heap * heap) * heap) * heap) * int

val g13_example7590 : (((heap * heap) * heap) * heap) * int

val g13_example7591 : (((heap * heap) * heap) * heap) * int

val g13_example7592 : (((heap * heap) * heap) * heap) * int

val g13_example7593 : (((heap * heap) * heap) * heap) * int

val g13_example7594 : (((heap * heap) * heap) * heap) * int

val g13_example7595 : (((heap * heap) * heap) * heap) * int

val g13_example7596 : (((heap * heap) * heap) * heap) * int

val g13_example7597 : (((heap * heap) * heap) * heap) * int

val g13_example7598 : (((heap * heap) * heap) * heap) * int

val g13_example7599 : (((heap * heap) * heap) * heap) * int

val g13_example7600 : (((heap * heap) * heap) * heap) * int

val g13_example7601 : (((heap * heap) * heap) * heap) * int

val g13_example7602 : (((heap * heap) * heap) * heap) * int

val g13_example7603 : (((heap * heap) * heap) * heap) * int

val g13_example7604 : (((heap * heap) * heap) * heap) * int

val g13_example7605 : (((heap * heap) * heap) * heap) * int

val g13_example7606 : (((heap * heap) * heap) * heap) * int

val g13_example7607 : (((heap * heap) * heap) * heap) * int

val g13_example7608 : (((heap * heap) * heap) * heap) * int

val g13_example7609 : (((heap * heap) * heap) * heap) * int

val g13_example7610 : (((heap * heap) * heap) * heap) * int

val g13_example7611 : (((heap * heap) * heap) * heap) * int

val g13_example7612 : (((heap * heap) * heap) * heap) * int

val g13_example7613 : (((heap * heap) * heap) * heap) * int

val g13_example7614 : (((heap * heap) * heap) * heap) * int

val g13_example7615 : (((heap * heap) * heap) * heap) * int

val g13_example7616 : (((heap * heap) * heap) * heap) * int

val g13_example7617 : (((heap * heap) * heap) * heap) * int

val g13_example7618 : (((heap * heap) * heap) * heap) * int

val g13_example7619 : (((heap * heap) * heap) * heap) * int

val g13_example7620 : (((heap * heap) * heap) * heap) * int

val g13_example7621 : (((heap * heap) * heap) * heap) * int

val g13_example7622 : (((heap * heap) * heap) * heap) * int

val g13_example7623 : (((heap * heap) * heap) * heap) * int

val g13_example7624 : (((heap * heap) * heap) * heap) * int

val g13_example7625 : (((heap * heap) * heap) * heap) * int

val g13_example7626 : (((heap * heap) * heap) * heap) * int

val g13_example7627 : (((heap * heap) * heap) * heap) * int

val g13_example7628 : (((heap * heap) * heap) * heap) * int

val g13_example7629 : (((heap * heap) * heap) * heap) * int

val g13_example7630 : (((heap * heap) * heap) * heap) * int

val g13_example7631 : (((heap * heap) * heap) * heap) * int

val g13_example7632 : (((heap * heap) * heap) * heap) * int

val g13_example7633 : (((heap * heap) * heap) * heap) * int

val g13_example7634 : (((heap * heap) * heap) * heap) * int

val g13_example7635 : (((heap * heap) * heap) * heap) * int

val g13_example7636 : (((heap * heap) * heap) * heap) * int

val g13_example7637 : (((heap * heap) * heap) * heap) * int

val g13_example7638 : (((heap * heap) * heap) * heap) * int

val g13_example7639 : (((heap * heap) * heap) * heap) * int

val g13_example7640 : (((heap * heap) * heap) * heap) * int

val g13_example7641 : (((heap * heap) * heap) * heap) * int

val g13_example7642 : (((heap * heap) * heap) * heap) * int

val g13_example7643 : (((heap * heap) * heap) * heap) * int

val g13_example7644 : (((heap * heap) * heap) * heap) * int

val g13_example7645 : (((heap * heap) * heap) * heap) * int

val g13_example7646 : (((heap * heap) * heap) * heap) * int

val g13_example7647 : (((heap * heap) * heap) * heap) * int

val g13_example7648 : (((heap * heap) * heap) * heap) * int

val g13_example7649 : (((heap * heap) * heap) * heap) * int

val g13_example7650 : (((heap * heap) * heap) * heap) * int

val g13_example7651 : (((heap * heap) * heap) * heap) * int

val g13_example7652 : (((heap * heap) * heap) * heap) * int

val g13_example7653 : (((heap * heap) * heap) * heap) * int

val g13_example7654 : (((heap * heap) * heap) * heap) * int

val g13_example7655 : (((heap * heap) * heap) * heap) * int

val g13_example7656 : (((heap * heap) * heap) * heap) * int

val g13_example7657 : (((heap * heap) * heap) * heap) * int

val g13_example7658 : (((heap * heap) * heap) * heap) * int

val g13_example7659 : (((heap * heap) * heap) * heap) * int

val g13_example7660 : (((heap * heap) * heap) * heap) * int

val g13_example7661 : (((heap * heap) * heap) * heap) * int

val g13_example7662 : (((heap * heap) * heap) * heap) * int

val g13_example7663 : (((heap * heap) * heap) * heap) * int

val g13_example7664 : (((heap * heap) * heap) * heap) * int

val g13_example7665 : (((heap * heap) * heap) * heap) * int

val g13_example7666 : (((heap * heap) * heap) * heap) * int

val g13_example7667 : (((heap * heap) * heap) * heap) * int

val g13_example7668 : (((heap * heap) * heap) * heap) * int

val g13_example7669 : (((heap * heap) * heap) * heap) * int

val g13_example7670 : (((heap * heap) * heap) * heap) * int

val g13_example7671 : (((heap * heap) * heap) * heap) * int

val g13_example7672 : (((heap * heap) * heap) * heap) * int

val g13_example7673 : (((heap * heap) * heap) * heap) * int

val g13_example7674 : (((heap * heap) * heap) * heap) * int

val g13_example7675 : (((heap * heap) * heap) * heap) * int

val g13_example7676 : (((heap * heap) * heap) * heap) * int

val g13_example7677 : (((heap * heap) * heap) * heap) * int

val g13_example7678 : (((heap * heap) * heap) * heap) * int

val g13_example7679 : (((heap * heap) * heap) * heap) * int

val g13_example7680 : (((heap * heap) * heap) * heap) * int

val g13_example7681 : (((heap * heap) * heap) * heap) * int

val g13_example7682 : (((heap * heap) * heap) * heap) * int

val g13_example7683 : (((heap * heap) * heap) * heap) * int

val g13_example7684 : (((heap * heap) * heap) * heap) * int

val g13_example7685 : (((heap * heap) * heap) * heap) * int

val g13_example7686 : (((heap * heap) * heap) * heap) * int

val g13_example7687 : (((heap * heap) * heap) * heap) * int

val g13_example7688 : (((heap * heap) * heap) * heap) * int

val g13_example7689 : (((heap * heap) * heap) * heap) * int

val g13_example7690 : (((heap * heap) * heap) * heap) * int

val g13_example7691 : (((heap * heap) * heap) * heap) * int

val g13_example7692 : (((heap * heap) * heap) * heap) * int

val g13_example7693 : (((heap * heap) * heap) * heap) * int

val g13_example7694 : (((heap * heap) * heap) * heap) * int

val g13_example7695 : (((heap * heap) * heap) * heap) * int

val g13_example7696 : (((heap * heap) * heap) * heap) * int

val g13_example7697 : (((heap * heap) * heap) * heap) * int

val g13_example7698 : (((heap * heap) * heap) * heap) * int

val g13_example7699 : (((heap * heap) * heap) * heap) * int

val g13_example7700 : (((heap * heap) * heap) * heap) * int

val g13_example7701 : (((heap * heap) * heap) * heap) * int

val g13_example7702 : (((heap * heap) * heap) * heap) * int

val g13_example7703 : (((heap * heap) * heap) * heap) * int

val g13_example7704 : (((heap * heap) * heap) * heap) * int

val g13_example7705 : (((heap * heap) * heap) * heap) * int

val g13_example7706 : (((heap * heap) * heap) * heap) * int

val g13_example7707 : (((heap * heap) * heap) * heap) * int

val g13_example7708 : (((heap * heap) * heap) * heap) * int

val g13_example7709 : (((heap * heap) * heap) * heap) * int

val g13_example7710 : (((heap * heap) * heap) * heap) * int

val g13_example7711 : (((heap * heap) * heap) * heap) * int

val g13_example7712 : (((heap * heap) * heap) * heap) * int

val g13_example7713 : (((heap * heap) * heap) * heap) * int

val g13_example7714 : (((heap * heap) * heap) * heap) * int

val g13_example7715 : (((heap * heap) * heap) * heap) * int

val g13_example7716 : (((heap * heap) * heap) * heap) * int

val g13_example7717 : (((heap * heap) * heap) * heap) * int

val g13_example7718 : (((heap * heap) * heap) * heap) * int

val g13_example7719 : (((heap * heap) * heap) * heap) * int

val g13_example7720 : (((heap * heap) * heap) * heap) * int

val g13_example7721 : (((heap * heap) * heap) * heap) * int

val g13_example7722 : (((heap * heap) * heap) * heap) * int

val g13_example7723 : (((heap * heap) * heap) * heap) * int

val g13_example7724 : (((heap * heap) * heap) * heap) * int

val g13_example7725 : (((heap * heap) * heap) * heap) * int

val g13_example7726 : (((heap * heap) * heap) * heap) * int

val g13_example7727 : (((heap * heap) * heap) * heap) * int

val g13_example7728 : (((heap * heap) * heap) * heap) * int

val g13_example7729 : (((heap * heap) * heap) * heap) * int

val g13_example7730 : (((heap * heap) * heap) * heap) * int

val g13_example7731 : (((heap * heap) * heap) * heap) * int

val g13_example7732 : (((heap * heap) * heap) * heap) * int

val g13_example7733 : (((heap * heap) * heap) * heap) * int

val g13_example7734 : (((heap * heap) * heap) * heap) * int

val g13_example7735 : (((heap * heap) * heap) * heap) * int

val g13_example7736 : (((heap * heap) * heap) * heap) * int

val g13_example7737 : (((heap * heap) * heap) * heap) * int

val g13_example7738 : (((heap * heap) * heap) * heap) * int

val g13_example7739 : (((heap * heap) * heap) * heap) * int

val g13_example7740 : (((heap * heap) * heap) * heap) * int

val g13_example7741 : (((heap * heap) * heap) * heap) * int

val g13_example7742 : (((heap * heap) * heap) * heap) * int

val g13_example7743 : (((heap * heap) * heap) * heap) * int

val g13_example7744 : (((heap * heap) * heap) * heap) * int

val g13_example7745 : (((heap * heap) * heap) * heap) * int

val g13_example7746 : (((heap * heap) * heap) * heap) * int

val g13_example7747 : (((heap * heap) * heap) * heap) * int

val g13_example7748 : (((heap * heap) * heap) * heap) * int

val g13_example7749 : (((heap * heap) * heap) * heap) * int

val g13_example7750 : (((heap * heap) * heap) * heap) * int

val g13_example7751 : (((heap * heap) * heap) * heap) * int

val g13_example7752 : (((heap * heap) * heap) * heap) * int

val g13_example7753 : (((heap * heap) * heap) * heap) * int

val g13_example7754 : (((heap * heap) * heap) * heap) * int

val g13_example7755 : (((heap * heap) * heap) * heap) * int

val g13_example7756 : (((heap * heap) * heap) * heap) * int

val g13_example7757 : (((heap * heap) * heap) * heap) * int

val g13_example7758 : (((heap * heap) * heap) * heap) * int

val g13_example7759 : (((heap * heap) * heap) * heap) * int

val g13_example7760 : (((heap * heap) * heap) * heap) * int

val g13_example7761 : (((heap * heap) * heap) * heap) * int

val g13_example7762 : (((heap * heap) * heap) * heap) * int

val g13_example7763 : (((heap * heap) * heap) * heap) * int

val g13_example7764 : (((heap * heap) * heap) * heap) * int

val g13_example7765 : (((heap * heap) * heap) * heap) * int

val g13_example7766 : (((heap * heap) * heap) * heap) * int

val g13_example7767 : (((heap * heap) * heap) * heap) * int

val g13_example7768 : (((heap * heap) * heap) * heap) * int

val g13_example7769 : (((heap * heap) * heap) * heap) * int

val g13_example7770 : (((heap * heap) * heap) * heap) * int

val g13_example7771 : (((heap * heap) * heap) * heap) * int

val g13_example7772 : (((heap * heap) * heap) * heap) * int

val g13_example7773 : (((heap * heap) * heap) * heap) * int

val g13_example7774 : (((heap * heap) * heap) * heap) * int

val g13_example7775 : (((heap * heap) * heap) * heap) * int

val g13_example7776 : (((heap * heap) * heap) * heap) * int

val g13_example7777 : (((heap * heap) * heap) * heap) * int

val g13_example7778 : (((heap * heap) * heap) * heap) * int

val g13_example7779 : (((heap * heap) * heap) * heap) * int

val g13_example7780 : (((heap * heap) * heap) * heap) * int

val g13_example7781 : (((heap * heap) * heap) * heap) * int

val g13_example7782 : (((heap * heap) * heap) * heap) * int

val g13_example7783 : (((heap * heap) * heap) * heap) * int

val g13_example7784 : (((heap * heap) * heap) * heap) * int

val g13_example7785 : (((heap * heap) * heap) * heap) * int

val g13_example7786 : (((heap * heap) * heap) * heap) * int

val g13_example7787 : (((heap * heap) * heap) * heap) * int

val g13_example7788 : (((heap * heap) * heap) * heap) * int

val g13_example7789 : (((heap * heap) * heap) * heap) * int

val g13_example7790 : (((heap * heap) * heap) * heap) * int

val g13_example7791 : (((heap * heap) * heap) * heap) * int

val g13_example7792 : (((heap * heap) * heap) * heap) * int

val g13_example7793 : (((heap * heap) * heap) * heap) * int

val g13_example7794 : (((heap * heap) * heap) * heap) * int

val g13_example7795 : (((heap * heap) * heap) * heap) * int

val g13_example7796 : (((heap * heap) * heap) * heap) * int

val g13_example7797 : (((heap * heap) * heap) * heap) * int

val g13_example7798 : (((heap * heap) * heap) * heap) * int

val g13_example7799 : (((heap * heap) * heap) * heap) * int

val g13_example7800 : (((heap * heap) * heap) * heap) * int

val g13_example7801 : (((heap * heap) * heap) * heap) * int

val g13_example7802 : (((heap * heap) * heap) * heap) * int

val g13_example7803 : (((heap * heap) * heap) * heap) * int

val g13_example7804 : (((heap * heap) * heap) * heap) * int

val g13_example7805 : (((heap * heap) * heap) * heap) * int

val g13_example7806 : (((heap * heap) * heap) * heap) * int

val g13_example7807 : (((heap * heap) * heap) * heap) * int

val g13_example7808 : (((heap * heap) * heap) * heap) * int

val g13_example7809 : (((heap * heap) * heap) * heap) * int

val g13_example7810 : (((heap * heap) * heap) * heap) * int

val g13_example7811 : (((heap * heap) * heap) * heap) * int

val g13_example7812 : (((heap * heap) * heap) * heap) * int

val g13_example7813 : (((heap * heap) * heap) * heap) * int

val g13_example7814 : (((heap * heap) * heap) * heap) * int

val g13_example7815 : (((heap * heap) * heap) * heap) * int

val g13_example7816 : (((heap * heap) * heap) * heap) * int

val g13_example7817 : (((heap * heap) * heap) * heap) * int

val g13_example7818 : (((heap * heap) * heap) * heap) * int

val g13_example7819 : (((heap * heap) * heap) * heap) * int

val g13_example7820 : (((heap * heap) * heap) * heap) * int

val g13_example7821 : (((heap * heap) * heap) * heap) * int

val g13_example7822 : (((heap * heap) * heap) * heap) * int

val g13_example7823 : (((heap * heap) * heap) * heap) * int

val g13_example7824 : (((heap * heap) * heap) * heap) * int

val g13_example7825 : (((heap * heap) * heap) * heap) * int

val g13_example7826 : (((heap * heap) * heap) * heap) * int

val g13_example7827 : (((heap * heap) * heap) * heap) * int

val g13_example7828 : (((heap * heap) * heap) * heap) * int

val g13_example7829 : (((heap * heap) * heap) * heap) * int

val g13_example7830 : (((heap * heap) * heap) * heap) * int

val g13_example7831 : (((heap * heap) * heap) * heap) * int

val g13_example7832 : (((heap * heap) * heap) * heap) * int

val g13_example7833 : (((heap * heap) * heap) * heap) * int

val g13_example7834 : (((heap * heap) * heap) * heap) * int

val g13_example7835 : (((heap * heap) * heap) * heap) * int

val g13_example7836 : (((heap * heap) * heap) * heap) * int

val g13_example7837 : (((heap * heap) * heap) * heap) * int

val g13_example7838 : (((heap * heap) * heap) * heap) * int

val g13_example7839 : (((heap * heap) * heap) * heap) * int

val g13_example7840 : (((heap * heap) * heap) * heap) * int

val g13_example7841 : (((heap * heap) * heap) * heap) * int

val g13_example7842 : (((heap * heap) * heap) * heap) * int

val g13_example7843 : (((heap * heap) * heap) * heap) * int

val g13_example7844 : (((heap * heap) * heap) * heap) * int

val g13_example7845 : (((heap * heap) * heap) * heap) * int

val g13_example7846 : (((heap * heap) * heap) * heap) * int

val g13_example7847 : (((heap * heap) * heap) * heap) * int

val g13_example7848 : (((heap * heap) * heap) * heap) * int

val g13_example7849 : (((heap * heap) * heap) * heap) * int

val g13_example7850 : (((heap * heap) * heap) * heap) * int

val g13_example7851 : (((heap * heap) * heap) * heap) * int

val g13_example7852 : (((heap * heap) * heap) * heap) * int

val g13_example7853 : (((heap * heap) * heap) * heap) * int

val g13_example7854 : (((heap * heap) * heap) * heap) * int

val g13_example7855 : (((heap * heap) * heap) * heap) * int

val g13_example7856 : (((heap * heap) * heap) * heap) * int

val g13_example7857 : (((heap * heap) * heap) * heap) * int

val g13_example7858 : (((heap * heap) * heap) * heap) * int

val g13_example7859 : (((heap * heap) * heap) * heap) * int

val g13_example7860 : (((heap * heap) * heap) * heap) * int

val g13_example7861 : (((heap * heap) * heap) * heap) * int

val g13_example7862 : (((heap * heap) * heap) * heap) * int

val g13_example7863 : (((heap * heap) * heap) * heap) * int

val g13_example7864 : (((heap * heap) * heap) * heap) * int

val g13_example7865 : (((heap * heap) * heap) * heap) * int

val g13_example7866 : (((heap * heap) * heap) * heap) * int

val g13_example7867 : (((heap * heap) * heap) * heap) * int

val g13_example7868 : (((heap * heap) * heap) * heap) * int

val g13_example7869 : (((heap * heap) * heap) * heap) * int

val g13_example7870 : (((heap * heap) * heap) * heap) * int

val g13_example7871 : (((heap * heap) * heap) * heap) * int

val g13_example7872 : (((heap * heap) * heap) * heap) * int

val g13_example7873 : (((heap * heap) * heap) * heap) * int

val g13_example7874 : (((heap * heap) * heap) * heap) * int

val g13_example7875 : (((heap * heap) * heap) * heap) * int

val g13_example7876 : (((heap * heap) * heap) * heap) * int

val g13_example7877 : (((heap * heap) * heap) * heap) * int

val g13_example7878 : (((heap * heap) * heap) * heap) * int

val g13_example7879 : (((heap * heap) * heap) * heap) * int

val g13_example7880 : (((heap * heap) * heap) * heap) * int

val g13_example7881 : (((heap * heap) * heap) * heap) * int

val g13_example7882 : (((heap * heap) * heap) * heap) * int

val g13_example7883 : (((heap * heap) * heap) * heap) * int

val g13_example7884 : (((heap * heap) * heap) * heap) * int

val g13_example7885 : (((heap * heap) * heap) * heap) * int

val g13_example7886 : (((heap * heap) * heap) * heap) * int

val g13_example7887 : (((heap * heap) * heap) * heap) * int

val g13_example7888 : (((heap * heap) * heap) * heap) * int

val g13_example7889 : (((heap * heap) * heap) * heap) * int

val g13_example7890 : (((heap * heap) * heap) * heap) * int

val g13_example7891 : (((heap * heap) * heap) * heap) * int

val g13_example7892 : (((heap * heap) * heap) * heap) * int

val g13_example7893 : (((heap * heap) * heap) * heap) * int

val g13_example7894 : (((heap * heap) * heap) * heap) * int

val g13_example7895 : (((heap * heap) * heap) * heap) * int

val g13_example7896 : (((heap * heap) * heap) * heap) * int

val g13_example7897 : (((heap * heap) * heap) * heap) * int

val g13_example7898 : (((heap * heap) * heap) * heap) * int

val g13_example7899 : (((heap * heap) * heap) * heap) * int

val g13_example7900 : (((heap * heap) * heap) * heap) * int

val g13_example7901 : (((heap * heap) * heap) * heap) * int

val g13_example7902 : (((heap * heap) * heap) * heap) * int

val g13_example7903 : (((heap * heap) * heap) * heap) * int

val g13_example7904 : (((heap * heap) * heap) * heap) * int

val g13_example7905 : (((heap * heap) * heap) * heap) * int

val g13_example7906 : (((heap * heap) * heap) * heap) * int

val g13_example7907 : (((heap * heap) * heap) * heap) * int

val g13_example7908 : (((heap * heap) * heap) * heap) * int

val g13_example7909 : (((heap * heap) * heap) * heap) * int

val g13_example7910 : (((heap * heap) * heap) * heap) * int

val g13_example7911 : (((heap * heap) * heap) * heap) * int

val g13_example7912 : (((heap * heap) * heap) * heap) * int

val g13_example7913 : (((heap * heap) * heap) * heap) * int

val g13_example7914 : (((heap * heap) * heap) * heap) * int

val g13_example7915 : (((heap * heap) * heap) * heap) * int

val g13_example7916 : (((heap * heap) * heap) * heap) * int

val g13_example7917 : (((heap * heap) * heap) * heap) * int

val g13_example7918 : (((heap * heap) * heap) * heap) * int

val g13_example7919 : (((heap * heap) * heap) * heap) * int

val g13_example7920 : (((heap * heap) * heap) * heap) * int

val g13_example7921 : (((heap * heap) * heap) * heap) * int

val g13_example7922 : (((heap * heap) * heap) * heap) * int

val g13_example7923 : (((heap * heap) * heap) * heap) * int

val g13_example7924 : (((heap * heap) * heap) * heap) * int

val g13_example7925 : (((heap * heap) * heap) * heap) * int

val g13_example7926 : (((heap * heap) * heap) * heap) * int

val example_set_13 :
  (char list * ((((heap * heap) * heap) * heap) * int)) list
