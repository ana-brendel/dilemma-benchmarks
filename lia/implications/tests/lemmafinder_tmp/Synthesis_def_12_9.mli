
val negb : bool -> bool



val add : int -> int -> int

type decidable =
  bool
  (* singleton inductive, whose constructor was Build_Decidable *)

val decidable_not : decidable -> decidable

val eqb : bool -> bool -> bool

val decidable_eq_bool : bool -> bool -> decidable

module Nat :
 sig
  val eqb : int -> int -> bool

  val leb : int -> int -> bool

  val ltb : int -> int -> bool

  val coq_Decidable_eq_nat : int -> int -> decidable

  val coq_Decidable_le_nat : int -> int -> decidable
 end

type decidable0 = bool

type dec =
  decidable0
  (* singleton inductive, whose constructor was Build_Dec *)

val dec_neg : dec -> dec

type 'a dec_Eq =
  'a -> 'a -> decidable0
  (* singleton inductive, whose constructor was Build_Dec_Eq *)

val dec_Eq_implies_DecEq : 'a1 dec_Eq -> 'a1 -> 'a1 -> dec

val dec_eq_nat : int dec_Eq

val dec_eq_opt : 'a1 dec_Eq -> 'a1 option dec_Eq

val dec_class_dec : decidable -> dec

type heap =
| Hleaf
| Heap of int * int * heap * heap

val right_height : heap -> int

val rank : heap -> int

val has_leftist_property : heap -> bool

val hsize : heap -> int

val mergea : int -> heap -> heap -> heap

val merge : heap -> heap -> heap

val hinsert : heap -> int -> heap

val dec_Eq_nat : int dec_Eq

val dec_Eq_heap : heap dec_Eq

val prop_to_bool : dec -> bool

val original_goal : ((((heap * heap) * heap) * heap) * int) -> bool

val original_assumption_0 : ((((heap * heap) * heap) * heap) * int) -> bool

val original_assumption_1 : ((((heap * heap) * heap) * heap) * int) -> bool

val original_assumption_2 : ((((heap * heap) * heap) * heap) * int) -> bool

val original_assumption_3 : ((((heap * heap) * heap) * heap) * int) -> bool

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

val candidate_12_9_0 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_2 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_3 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_4 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_5 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_6 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_7 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_8 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_9 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_10 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_11 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_12 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_13 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_14 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_15 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_16 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_17 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_18 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_19 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_20 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_21 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_22 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_23 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_24 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_25 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_26 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_27 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_28 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_29 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_30 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_31 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_32 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_33 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_34 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_35 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_36 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_37 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_38 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_39 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_40 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_41 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_42 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_43 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_44 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_45 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_46 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_47 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_48 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_49 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_50 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_51 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_52 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_53 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_54 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_55 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_56 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_57 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_58 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_59 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_60 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_61 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_62 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_63 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_64 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_65 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_66 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_67 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_68 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_69 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_70 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_71 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_72 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_73 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_74 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_75 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_76 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_77 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_78 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_79 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_80 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_81 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_82 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_83 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_84 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_85 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_86 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_87 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_88 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_89 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_90 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_91 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_92 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_93 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_94 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_95 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_96 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_97 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_98 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_99 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_100 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_101 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_102 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_103 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_104 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_105 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_106 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_107 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_108 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_109 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_110 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_111 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_112 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_113 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_114 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_115 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_116 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_117 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_118 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_119 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_120 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_121 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_122 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_123 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_124 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_125 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_126 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_127 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_128 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_129 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_130 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_131 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_132 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_133 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_134 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_135 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_136 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_137 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_138 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_139 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_140 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_141 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_142 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_143 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_144 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_145 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_146 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_147 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_148 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_149 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_150 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_151 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_152 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_153 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_154 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_155 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_156 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_157 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_158 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_159 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_160 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_161 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_162 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_163 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_164 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_165 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_166 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_167 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_168 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_169 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_170 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_171 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_172 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_173 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_174 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_175 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_176 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_177 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_178 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_179 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_180 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_181 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_182 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_183 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_184 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_185 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_186 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_187 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_188 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_189 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_190 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_191 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_192 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_193 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_194 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_195 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_196 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_197 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_198 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_199 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_200 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_201 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_202 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_203 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_204 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_205 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_206 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_207 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_208 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_209 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_210 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_211 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_212 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_213 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_214 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_215 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_216 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_217 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_218 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_219 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_220 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_221 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_222 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_223 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_224 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_225 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_226 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_227 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_228 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_229 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_230 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_231 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_232 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_233 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_234 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_235 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_236 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_237 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_238 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_239 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_240 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_241 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_242 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_243 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_244 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_245 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_246 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_247 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_248 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_249 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_250 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_251 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_252 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_253 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_254 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_255 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_256 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_257 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_258 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_259 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_260 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_261 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_262 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_263 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_264 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_265 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_266 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_267 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_268 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_269 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_270 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_271 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_272 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_273 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_274 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_275 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_276 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_277 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_278 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_279 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_280 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_281 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_282 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_283 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_284 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_285 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_286 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_287 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_288 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_289 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_290 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_291 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_292 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_293 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_294 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_295 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_296 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_297 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_298 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_299 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_300 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_301 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_302 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_303 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_304 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_305 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_306 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_307 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_308 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_309 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_310 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_311 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_312 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_313 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_314 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_315 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_316 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_317 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_318 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_319 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_320 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_321 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_322 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_323 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_324 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_325 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_326 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_327 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_328 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_329 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_330 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_331 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_332 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_333 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_334 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_335 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_336 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_337 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_338 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_339 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_340 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_341 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_342 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_343 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_344 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_345 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_346 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_347 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_348 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_349 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_350 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_351 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_352 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_353 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_354 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_355 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_356 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_357 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_358 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_359 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_360 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_361 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_362 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_363 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_364 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_365 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_366 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_367 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_368 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_369 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_370 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_371 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_372 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_373 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_374 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_375 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_376 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_377 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_378 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_379 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_380 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_381 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_382 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_383 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_384 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_385 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_386 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_387 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_388 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_389 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_390 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_391 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_392 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_393 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_394 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_395 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_396 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_397 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_398 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_399 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_400 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_401 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_402 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_403 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_404 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_405 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_406 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_407 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_408 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_409 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_410 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_411 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_412 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_413 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_414 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_415 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_416 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_417 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_418 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_419 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_420 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_421 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_422 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_423 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_424 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_425 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_426 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_427 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_428 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_429 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_430 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_431 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_432 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_433 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_434 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_435 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_436 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_437 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_438 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_439 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_440 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_441 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_442 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_443 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_444 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_445 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_446 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_447 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_448 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_449 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_450 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_451 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_452 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_453 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_454 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_455 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_456 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_457 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_458 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_459 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_460 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_461 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_462 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_463 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_464 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_465 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_466 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_467 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_468 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_469 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_470 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_471 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_472 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_473 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_474 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_475 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_476 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_477 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_478 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_479 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_480 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_481 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_482 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_483 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_484 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_485 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_486 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_487 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_488 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_489 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_490 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_491 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_492 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_493 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_494 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_495 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_496 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_497 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_498 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_499 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_500 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_501 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_502 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_503 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_504 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_505 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_506 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_507 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_508 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_509 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_510 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_511 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_512 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_513 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_514 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_515 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_516 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_517 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_518 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_519 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_520 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_521 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_522 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_523 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_524 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_525 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_526 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_527 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_528 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_529 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_530 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_531 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_532 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_533 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_534 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_535 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_536 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_537 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_538 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_539 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_540 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_541 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_542 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_543 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_544 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_545 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_546 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_547 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_548 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_549 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_550 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_551 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_552 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_553 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_554 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_555 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_556 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_557 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_558 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_559 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_560 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_561 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_562 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_563 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_564 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_565 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_566 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_567 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_568 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_569 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_570 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_571 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_572 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_573 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_574 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_575 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_576 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_577 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_578 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_579 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_580 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_581 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_582 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_583 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_584 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_585 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_586 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_587 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_588 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_589 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_590 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_591 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_592 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_593 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_594 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_595 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_596 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_597 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_598 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_599 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_600 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_601 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_602 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_603 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_604 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_605 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_606 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_607 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_608 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_609 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_610 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_611 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_612 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_613 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_614 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_615 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_616 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_617 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_618 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_619 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_620 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_621 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_622 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_623 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_624 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_625 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_626 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_627 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_628 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_629 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_630 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_631 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_632 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_633 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_634 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_635 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_636 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_637 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_638 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_639 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_640 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_641 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_642 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_643 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_644 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_645 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_646 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_647 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_648 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_649 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_650 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_651 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_652 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_653 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_654 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_655 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_656 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_657 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_658 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_659 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_660 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_661 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_662 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_663 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_664 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_665 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_666 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_667 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_668 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_669 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_670 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_671 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_672 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_673 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_674 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_675 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_676 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_677 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_678 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_679 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_680 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_681 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_682 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_683 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_684 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_685 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_686 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_687 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_688 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_689 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_690 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_691 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_692 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_693 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_694 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_695 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_696 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_697 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_698 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_699 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_700 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_701 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_702 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_703 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_704 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_705 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_706 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_707 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_708 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_709 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_710 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_711 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_712 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_713 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_714 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_715 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_716 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_717 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_718 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_719 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_720 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_721 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_722 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_723 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_724 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_725 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_726 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_727 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_728 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_729 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_730 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_731 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_732 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_733 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_734 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_735 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_736 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_737 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_738 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_739 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_740 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_741 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_742 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_743 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_744 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_745 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_746 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_747 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_748 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_749 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_750 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_751 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_752 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_753 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_754 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_755 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_756 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_757 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_758 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_759 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_760 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_761 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_762 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_763 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_764 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_765 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_766 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_767 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_768 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_769 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_770 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_771 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_772 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_773 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_774 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_775 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_776 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_777 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_778 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_779 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_780 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_781 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_782 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_783 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_784 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_785 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_786 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_787 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_788 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_789 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_790 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_791 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_792 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_793 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_794 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_795 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_796 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_797 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_798 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_799 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_800 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_801 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_802 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_803 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_804 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_805 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_806 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_807 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_808 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_809 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_810 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_811 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_812 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_813 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_814 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_815 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_816 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_817 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_818 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_819 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_820 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_821 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_822 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_823 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_824 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_825 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_826 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_827 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_828 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_829 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_830 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_831 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_832 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_833 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_834 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_835 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_836 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_837 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_838 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_839 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_840 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_841 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_842 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_843 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_844 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_845 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_846 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_847 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_848 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_849 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_850 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_851 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_852 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_853 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_854 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_855 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_856 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_857 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_858 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_859 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_860 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_861 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_862 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_863 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_864 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_865 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_866 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_867 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_868 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_869 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_870 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_871 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_872 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_873 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_874 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_875 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_876 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_877 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_878 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_879 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_880 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_881 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_882 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_883 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_884 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_885 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_886 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_887 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_888 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_889 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_890 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_891 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_892 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_893 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_894 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_895 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_896 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_897 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_898 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_899 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_900 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_901 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_902 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_903 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_904 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_905 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_906 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_907 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_908 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_909 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_910 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_911 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_912 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_913 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_914 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_915 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_916 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_917 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_918 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_919 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_920 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_921 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_922 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_923 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_924 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_925 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_926 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_927 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_928 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_929 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_930 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_931 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_932 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_933 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_934 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_935 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_936 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_937 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_938 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_939 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_940 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_941 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_942 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_943 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_944 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_945 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_946 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_947 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_948 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_949 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_950 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_951 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_952 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_953 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_954 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_955 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_956 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_957 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_958 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_959 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_960 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_961 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_962 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_963 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_964 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_965 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_966 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_967 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_968 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_969 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_970 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_971 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_972 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_973 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_974 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_975 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_976 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_977 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_978 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_979 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_980 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_981 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_982 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_983 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_984 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_985 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_986 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_987 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_988 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_989 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_990 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_991 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_992 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_993 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_994 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_995 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_996 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_997 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_998 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_999 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1000 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1001 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1002 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1003 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1004 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1005 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1006 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1007 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1008 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1009 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1010 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1011 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1012 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1013 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1014 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1015 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1016 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1017 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1018 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1019 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1020 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1021 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1022 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1023 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1024 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1025 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1026 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1027 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1028 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1029 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1030 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1031 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1032 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1033 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1034 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1035 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1036 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1037 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1038 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1039 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1040 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1041 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1042 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1043 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1044 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1045 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1046 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1047 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1048 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1049 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1050 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1051 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1052 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1053 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1054 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1055 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1056 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1057 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1058 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1059 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1060 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1061 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1062 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1063 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1064 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1065 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1066 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1067 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1068 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1069 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1070 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1071 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1072 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1073 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1074 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1075 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1076 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1077 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1078 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1079 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1080 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1081 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1082 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1083 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1084 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1085 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1086 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1087 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1088 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1089 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1090 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1091 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1092 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1093 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1094 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1095 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1096 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1097 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1098 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1099 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1100 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1101 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1102 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1103 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1104 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1105 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1106 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1107 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1108 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1109 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1110 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1111 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1112 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1113 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1114 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1115 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1116 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1117 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1118 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1119 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1120 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1121 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1122 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1123 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1124 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1125 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1126 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1127 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1128 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1129 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1130 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1131 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1132 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1133 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1134 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1135 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1136 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1137 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1138 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1139 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1140 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1141 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1142 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1143 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1144 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1145 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1146 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1147 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1148 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1149 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1150 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1151 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1152 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1153 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1154 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1155 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1156 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1157 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1158 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1159 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1160 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1161 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1162 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1163 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1164 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1165 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1166 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1167 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1168 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1169 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1170 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1171 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1172 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1173 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1174 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1175 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1176 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1177 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1178 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1179 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1180 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1181 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1182 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1183 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1184 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1185 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1186 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1187 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1188 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1189 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1190 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1191 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1192 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1193 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1194 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1195 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1196 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1197 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1198 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1199 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1200 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1201 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1202 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1203 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1204 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1205 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1206 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1207 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1208 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1209 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1210 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1211 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1212 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1213 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1214 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1215 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1216 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1217 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1218 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1219 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1220 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1221 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1222 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1223 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1224 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1225 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1226 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1227 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1228 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1229 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1230 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1231 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1232 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1233 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1234 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1235 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1236 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1237 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1238 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1239 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1240 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1241 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1242 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1243 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1244 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1245 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1246 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1247 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1248 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1249 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1250 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1251 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1252 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1253 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1254 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1255 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1256 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1257 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1258 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1259 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1260 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1261 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1262 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1263 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1264 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1265 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1266 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1267 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1268 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1269 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1270 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1271 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1272 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1273 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1274 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1275 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1276 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1277 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1278 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1279 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1280 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1281 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1282 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1283 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1284 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1285 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1286 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1287 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1288 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1289 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1290 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1291 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1292 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1293 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1294 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1295 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1296 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1297 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1298 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1299 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1300 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1301 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1302 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1303 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1304 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1305 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1306 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1307 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1308 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1309 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1310 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1311 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1312 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1313 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1314 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1315 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1316 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1317 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1318 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1319 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1320 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1321 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1322 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1323 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1324 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1325 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1326 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1327 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1328 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1329 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1330 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1331 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1332 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1333 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1334 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1335 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1336 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1337 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1338 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1339 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1340 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1341 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1342 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1343 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1344 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1345 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1346 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1347 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1348 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1349 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1350 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1351 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1352 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1353 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1354 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1355 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1356 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1357 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1358 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1359 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1360 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1361 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1362 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1363 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1364 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1365 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1366 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1367 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1368 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1369 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1370 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1371 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1372 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1373 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1374 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1375 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1376 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1377 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1378 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1379 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1380 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1381 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1382 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1383 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1384 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1385 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1386 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1387 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1388 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1389 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1390 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1391 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1392 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1393 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1394 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1395 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1396 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1397 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1398 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1399 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1400 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1401 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1402 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1403 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1404 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1405 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1406 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1407 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1408 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1409 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1410 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1411 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1412 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1413 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1414 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1415 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1416 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1417 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1418 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1419 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1420 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1421 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1422 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1423 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1424 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1425 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1426 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1427 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1428 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1429 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1430 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1431 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1432 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1433 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1434 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1435 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1436 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1437 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1438 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1439 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1440 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1441 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1442 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1443 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1444 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1445 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1446 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1447 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1448 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1449 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1450 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1451 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1452 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1453 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1454 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1455 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1456 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1457 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1458 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1459 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1460 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1461 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1462 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1463 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1464 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1465 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1466 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1467 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1468 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1469 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1470 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1471 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1472 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1473 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1474 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1475 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1476 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1477 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1478 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1479 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1480 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1481 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1482 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1483 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1484 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1485 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1486 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1487 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1488 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1489 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1490 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1491 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1492 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1493 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1494 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1495 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1496 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1497 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1498 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1499 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1500 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1501 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1502 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1503 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1504 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1505 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1506 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1507 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1508 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1509 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1510 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1511 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1512 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1513 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1514 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1515 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1516 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1517 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1518 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1519 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1520 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1521 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1522 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1523 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1524 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1525 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1526 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1527 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1528 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1529 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1530 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1531 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1532 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1533 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1534 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1535 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1536 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1537 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1538 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1539 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1540 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1541 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1542 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1543 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1544 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1545 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1546 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1547 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1548 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1549 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1550 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1551 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1552 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1553 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1554 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1555 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1556 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1557 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1558 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1559 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1560 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1561 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1562 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1563 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1564 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1565 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1566 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1567 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1568 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1569 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1570 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1571 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1572 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1573 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1574 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1575 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1576 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1577 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1578 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1579 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1580 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1581 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1582 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1583 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1584 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1585 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1586 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1587 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1588 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1589 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1590 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1591 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1592 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1593 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1594 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1595 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1596 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1597 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1598 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1599 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1600 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1601 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1602 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1603 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1604 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1605 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1606 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1607 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1608 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1609 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1610 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1611 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1612 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1613 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1614 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1615 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1616 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1617 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1618 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1619 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1620 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1621 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1622 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1623 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1624 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1625 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1626 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1627 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1628 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1629 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1630 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1631 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1632 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1633 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1634 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1635 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1636 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1637 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1638 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1639 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1640 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1641 : ((((heap * heap) * heap) * heap) * int) -> bool

val candidate_12_9_1642 : ((((heap * heap) * heap) * heap) * int) -> bool

val g12_example0 : (((heap * heap) * heap) * heap) * int

val g12_example1 : (((heap * heap) * heap) * heap) * int

val g12_example2 : (((heap * heap) * heap) * heap) * int

val g12_example3 : (((heap * heap) * heap) * heap) * int

val g12_example4 : (((heap * heap) * heap) * heap) * int

val g12_example5 : (((heap * heap) * heap) * heap) * int

val g12_example6 : (((heap * heap) * heap) * heap) * int

val g12_example7 : (((heap * heap) * heap) * heap) * int

val g12_example8 : (((heap * heap) * heap) * heap) * int

val g12_example9 : (((heap * heap) * heap) * heap) * int

val g12_example10 : (((heap * heap) * heap) * heap) * int

val g12_example11 : (((heap * heap) * heap) * heap) * int

val g12_example12 : (((heap * heap) * heap) * heap) * int

val g12_example13 : (((heap * heap) * heap) * heap) * int

val g12_example14 : (((heap * heap) * heap) * heap) * int

val g12_example15 : (((heap * heap) * heap) * heap) * int

val g12_example16 : (((heap * heap) * heap) * heap) * int

val g12_example17 : (((heap * heap) * heap) * heap) * int

val g12_example18 : (((heap * heap) * heap) * heap) * int

val g12_example19 : (((heap * heap) * heap) * heap) * int

val g12_example20 : (((heap * heap) * heap) * heap) * int

val g12_example21 : (((heap * heap) * heap) * heap) * int

val g12_example22 : (((heap * heap) * heap) * heap) * int

val g12_example23 : (((heap * heap) * heap) * heap) * int

val g12_example24 : (((heap * heap) * heap) * heap) * int

val g12_example25 : (((heap * heap) * heap) * heap) * int

val g12_example26 : (((heap * heap) * heap) * heap) * int

val g12_example27 : (((heap * heap) * heap) * heap) * int

val g12_example28 : (((heap * heap) * heap) * heap) * int

val g12_example29 : (((heap * heap) * heap) * heap) * int

val g12_example30 : (((heap * heap) * heap) * heap) * int

val g12_example31 : (((heap * heap) * heap) * heap) * int

val g12_example32 : (((heap * heap) * heap) * heap) * int

val g12_example33 : (((heap * heap) * heap) * heap) * int

val g12_example34 : (((heap * heap) * heap) * heap) * int

val g12_example35 : (((heap * heap) * heap) * heap) * int

val g12_example36 : (((heap * heap) * heap) * heap) * int

val g12_example37 : (((heap * heap) * heap) * heap) * int

val g12_example38 : (((heap * heap) * heap) * heap) * int

val g12_example39 : (((heap * heap) * heap) * heap) * int

val g12_example40 : (((heap * heap) * heap) * heap) * int

val g12_example41 : (((heap * heap) * heap) * heap) * int

val g12_example42 : (((heap * heap) * heap) * heap) * int

val g12_example43 : (((heap * heap) * heap) * heap) * int

val g12_example44 : (((heap * heap) * heap) * heap) * int

val g12_example45 : (((heap * heap) * heap) * heap) * int

val g12_example46 : (((heap * heap) * heap) * heap) * int

val g12_example47 : (((heap * heap) * heap) * heap) * int

val g12_example48 : (((heap * heap) * heap) * heap) * int

val g12_example49 : (((heap * heap) * heap) * heap) * int

val g12_example50 : (((heap * heap) * heap) * heap) * int

val g12_example51 : (((heap * heap) * heap) * heap) * int

val g12_example52 : (((heap * heap) * heap) * heap) * int

val g12_example53 : (((heap * heap) * heap) * heap) * int

val g12_example54 : (((heap * heap) * heap) * heap) * int

val g12_example55 : (((heap * heap) * heap) * heap) * int

val g12_example56 : (((heap * heap) * heap) * heap) * int

val g12_example57 : (((heap * heap) * heap) * heap) * int

val g12_example58 : (((heap * heap) * heap) * heap) * int

val g12_example59 : (((heap * heap) * heap) * heap) * int

val g12_example60 : (((heap * heap) * heap) * heap) * int

val g12_example61 : (((heap * heap) * heap) * heap) * int

val g12_example62 : (((heap * heap) * heap) * heap) * int

val g12_example63 : (((heap * heap) * heap) * heap) * int

val g12_example64 : (((heap * heap) * heap) * heap) * int

val g12_example65 : (((heap * heap) * heap) * heap) * int

val g12_example66 : (((heap * heap) * heap) * heap) * int

val g12_example67 : (((heap * heap) * heap) * heap) * int

val g12_example68 : (((heap * heap) * heap) * heap) * int

val g12_example69 : (((heap * heap) * heap) * heap) * int

val g12_example70 : (((heap * heap) * heap) * heap) * int

val g12_example71 : (((heap * heap) * heap) * heap) * int

val g12_example72 : (((heap * heap) * heap) * heap) * int

val g12_example73 : (((heap * heap) * heap) * heap) * int

val g12_example74 : (((heap * heap) * heap) * heap) * int

val g12_example75 : (((heap * heap) * heap) * heap) * int

val g12_example76 : (((heap * heap) * heap) * heap) * int

val g12_example77 : (((heap * heap) * heap) * heap) * int

val g12_example78 : (((heap * heap) * heap) * heap) * int

val g12_example79 : (((heap * heap) * heap) * heap) * int

val g12_example80 : (((heap * heap) * heap) * heap) * int

val g12_example81 : (((heap * heap) * heap) * heap) * int

val g12_example82 : (((heap * heap) * heap) * heap) * int

val g12_example83 : (((heap * heap) * heap) * heap) * int

val g12_example84 : (((heap * heap) * heap) * heap) * int

val g12_example85 : (((heap * heap) * heap) * heap) * int

val g12_example86 : (((heap * heap) * heap) * heap) * int

val g12_example87 : (((heap * heap) * heap) * heap) * int

val g12_example88 : (((heap * heap) * heap) * heap) * int

val g12_example89 : (((heap * heap) * heap) * heap) * int

val g12_example90 : (((heap * heap) * heap) * heap) * int

val g12_example91 : (((heap * heap) * heap) * heap) * int

val g12_example92 : (((heap * heap) * heap) * heap) * int

val g12_example93 : (((heap * heap) * heap) * heap) * int

val g12_example94 : (((heap * heap) * heap) * heap) * int

val g12_example95 : (((heap * heap) * heap) * heap) * int

val g12_example96 : (((heap * heap) * heap) * heap) * int

val g12_example97 : (((heap * heap) * heap) * heap) * int

val g12_example98 : (((heap * heap) * heap) * heap) * int

val g12_example99 : (((heap * heap) * heap) * heap) * int

val g12_example100 : (((heap * heap) * heap) * heap) * int

val g12_example101 : (((heap * heap) * heap) * heap) * int

val g12_example102 : (((heap * heap) * heap) * heap) * int

val g12_example103 : (((heap * heap) * heap) * heap) * int

val g12_example104 : (((heap * heap) * heap) * heap) * int

val g12_example105 : (((heap * heap) * heap) * heap) * int

val g12_example106 : (((heap * heap) * heap) * heap) * int

val g12_example107 : (((heap * heap) * heap) * heap) * int

val g12_example108 : (((heap * heap) * heap) * heap) * int

val g12_example109 : (((heap * heap) * heap) * heap) * int

val g12_example110 : (((heap * heap) * heap) * heap) * int

val g12_example111 : (((heap * heap) * heap) * heap) * int

val g12_example112 : (((heap * heap) * heap) * heap) * int

val g12_example113 : (((heap * heap) * heap) * heap) * int

val g12_example114 : (((heap * heap) * heap) * heap) * int

val g12_example115 : (((heap * heap) * heap) * heap) * int

val g12_example116 : (((heap * heap) * heap) * heap) * int

val g12_example117 : (((heap * heap) * heap) * heap) * int

val g12_example118 : (((heap * heap) * heap) * heap) * int

val g12_example119 : (((heap * heap) * heap) * heap) * int

val g12_example120 : (((heap * heap) * heap) * heap) * int

val g12_example121 : (((heap * heap) * heap) * heap) * int

val g12_example122 : (((heap * heap) * heap) * heap) * int

val g12_example123 : (((heap * heap) * heap) * heap) * int

val g12_example124 : (((heap * heap) * heap) * heap) * int

val g12_example125 : (((heap * heap) * heap) * heap) * int

val g12_example126 : (((heap * heap) * heap) * heap) * int

val g12_example127 : (((heap * heap) * heap) * heap) * int

val g12_example128 : (((heap * heap) * heap) * heap) * int

val g12_example129 : (((heap * heap) * heap) * heap) * int

val g12_example130 : (((heap * heap) * heap) * heap) * int

val g12_example131 : (((heap * heap) * heap) * heap) * int

val g12_example132 : (((heap * heap) * heap) * heap) * int

val g12_example133 : (((heap * heap) * heap) * heap) * int

val g12_example134 : (((heap * heap) * heap) * heap) * int

val g12_example135 : (((heap * heap) * heap) * heap) * int

val g12_example136 : (((heap * heap) * heap) * heap) * int

val g12_example137 : (((heap * heap) * heap) * heap) * int

val g12_example138 : (((heap * heap) * heap) * heap) * int

val g12_example139 : (((heap * heap) * heap) * heap) * int

val g12_example140 : (((heap * heap) * heap) * heap) * int

val g12_example141 : (((heap * heap) * heap) * heap) * int

val g12_example142 : (((heap * heap) * heap) * heap) * int

val g12_example143 : (((heap * heap) * heap) * heap) * int

val g12_example144 : (((heap * heap) * heap) * heap) * int

val g12_example145 : (((heap * heap) * heap) * heap) * int

val g12_example146 : (((heap * heap) * heap) * heap) * int

val g12_example147 : (((heap * heap) * heap) * heap) * int

val g12_example148 : (((heap * heap) * heap) * heap) * int

val g12_example149 : (((heap * heap) * heap) * heap) * int

val g12_example150 : (((heap * heap) * heap) * heap) * int

val g12_example151 : (((heap * heap) * heap) * heap) * int

val g12_example152 : (((heap * heap) * heap) * heap) * int

val g12_example153 : (((heap * heap) * heap) * heap) * int

val g12_example154 : (((heap * heap) * heap) * heap) * int

val g12_example155 : (((heap * heap) * heap) * heap) * int

val g12_example156 : (((heap * heap) * heap) * heap) * int

val g12_example157 : (((heap * heap) * heap) * heap) * int

val g12_example158 : (((heap * heap) * heap) * heap) * int

val g12_example159 : (((heap * heap) * heap) * heap) * int

val g12_example160 : (((heap * heap) * heap) * heap) * int

val g12_example161 : (((heap * heap) * heap) * heap) * int

val g12_example162 : (((heap * heap) * heap) * heap) * int

val g12_example163 : (((heap * heap) * heap) * heap) * int

val g12_example164 : (((heap * heap) * heap) * heap) * int

val g12_example165 : (((heap * heap) * heap) * heap) * int

val g12_example166 : (((heap * heap) * heap) * heap) * int

val g12_example167 : (((heap * heap) * heap) * heap) * int

val g12_example168 : (((heap * heap) * heap) * heap) * int

val g12_example169 : (((heap * heap) * heap) * heap) * int

val g12_example170 : (((heap * heap) * heap) * heap) * int

val g12_example171 : (((heap * heap) * heap) * heap) * int

val g12_example172 : (((heap * heap) * heap) * heap) * int

val g12_example173 : (((heap * heap) * heap) * heap) * int

val g12_example174 : (((heap * heap) * heap) * heap) * int

val g12_example175 : (((heap * heap) * heap) * heap) * int

val g12_example176 : (((heap * heap) * heap) * heap) * int

val g12_example177 : (((heap * heap) * heap) * heap) * int

val g12_example178 : (((heap * heap) * heap) * heap) * int

val g12_example179 : (((heap * heap) * heap) * heap) * int

val g12_example180 : (((heap * heap) * heap) * heap) * int

val g12_example181 : (((heap * heap) * heap) * heap) * int

val g12_example182 : (((heap * heap) * heap) * heap) * int

val g12_example183 : (((heap * heap) * heap) * heap) * int

val g12_example184 : (((heap * heap) * heap) * heap) * int

val g12_example185 : (((heap * heap) * heap) * heap) * int

val g12_example186 : (((heap * heap) * heap) * heap) * int

val g12_example187 : (((heap * heap) * heap) * heap) * int

val g12_example188 : (((heap * heap) * heap) * heap) * int

val g12_example189 : (((heap * heap) * heap) * heap) * int

val g12_example190 : (((heap * heap) * heap) * heap) * int

val g12_example191 : (((heap * heap) * heap) * heap) * int

val g12_example192 : (((heap * heap) * heap) * heap) * int

val g12_example193 : (((heap * heap) * heap) * heap) * int

val g12_example194 : (((heap * heap) * heap) * heap) * int

val g12_example195 : (((heap * heap) * heap) * heap) * int

val g12_example196 : (((heap * heap) * heap) * heap) * int

val g12_example197 : (((heap * heap) * heap) * heap) * int

val g12_example198 : (((heap * heap) * heap) * heap) * int

val g12_example199 : (((heap * heap) * heap) * heap) * int

val g12_example200 : (((heap * heap) * heap) * heap) * int

val g12_example201 : (((heap * heap) * heap) * heap) * int

val g12_example202 : (((heap * heap) * heap) * heap) * int

val g12_example203 : (((heap * heap) * heap) * heap) * int

val g12_example204 : (((heap * heap) * heap) * heap) * int

val g12_example205 : (((heap * heap) * heap) * heap) * int

val g12_example206 : (((heap * heap) * heap) * heap) * int

val g12_example207 : (((heap * heap) * heap) * heap) * int

val g12_example208 : (((heap * heap) * heap) * heap) * int

val g12_example209 : (((heap * heap) * heap) * heap) * int

val g12_example210 : (((heap * heap) * heap) * heap) * int

val g12_example211 : (((heap * heap) * heap) * heap) * int

val g12_example212 : (((heap * heap) * heap) * heap) * int

val g12_example213 : (((heap * heap) * heap) * heap) * int

val g12_example214 : (((heap * heap) * heap) * heap) * int

val g12_example215 : (((heap * heap) * heap) * heap) * int

val g12_example216 : (((heap * heap) * heap) * heap) * int

val g12_example217 : (((heap * heap) * heap) * heap) * int

val g12_example218 : (((heap * heap) * heap) * heap) * int

val g12_example219 : (((heap * heap) * heap) * heap) * int

val g12_example220 : (((heap * heap) * heap) * heap) * int

val g12_example221 : (((heap * heap) * heap) * heap) * int

val g12_example222 : (((heap * heap) * heap) * heap) * int

val g12_example223 : (((heap * heap) * heap) * heap) * int

val g12_example224 : (((heap * heap) * heap) * heap) * int

val g12_example225 : (((heap * heap) * heap) * heap) * int

val g12_example226 : (((heap * heap) * heap) * heap) * int

val g12_example227 : (((heap * heap) * heap) * heap) * int

val g12_example228 : (((heap * heap) * heap) * heap) * int

val g12_example229 : (((heap * heap) * heap) * heap) * int

val g12_example230 : (((heap * heap) * heap) * heap) * int

val g12_example231 : (((heap * heap) * heap) * heap) * int

val g12_example232 : (((heap * heap) * heap) * heap) * int

val g12_example233 : (((heap * heap) * heap) * heap) * int

val g12_example234 : (((heap * heap) * heap) * heap) * int

val g12_example235 : (((heap * heap) * heap) * heap) * int

val g12_example236 : (((heap * heap) * heap) * heap) * int

val g12_example237 : (((heap * heap) * heap) * heap) * int

val g12_example238 : (((heap * heap) * heap) * heap) * int

val g12_example239 : (((heap * heap) * heap) * heap) * int

val g12_example240 : (((heap * heap) * heap) * heap) * int

val g12_example241 : (((heap * heap) * heap) * heap) * int

val g12_example242 : (((heap * heap) * heap) * heap) * int

val g12_example243 : (((heap * heap) * heap) * heap) * int

val g12_example244 : (((heap * heap) * heap) * heap) * int

val g12_example245 : (((heap * heap) * heap) * heap) * int

val g12_example246 : (((heap * heap) * heap) * heap) * int

val g12_example247 : (((heap * heap) * heap) * heap) * int

val g12_example248 : (((heap * heap) * heap) * heap) * int

val g12_example249 : (((heap * heap) * heap) * heap) * int

val g12_example250 : (((heap * heap) * heap) * heap) * int

val g12_example251 : (((heap * heap) * heap) * heap) * int

val g12_example252 : (((heap * heap) * heap) * heap) * int

val g12_example253 : (((heap * heap) * heap) * heap) * int

val g12_example254 : (((heap * heap) * heap) * heap) * int

val g12_example255 : (((heap * heap) * heap) * heap) * int

val g12_example256 : (((heap * heap) * heap) * heap) * int

val g12_example257 : (((heap * heap) * heap) * heap) * int

val g12_example258 : (((heap * heap) * heap) * heap) * int

val g12_example259 : (((heap * heap) * heap) * heap) * int

val g12_example260 : (((heap * heap) * heap) * heap) * int

val g12_example261 : (((heap * heap) * heap) * heap) * int

val g12_example262 : (((heap * heap) * heap) * heap) * int

val g12_example263 : (((heap * heap) * heap) * heap) * int

val g12_example264 : (((heap * heap) * heap) * heap) * int

val g12_example265 : (((heap * heap) * heap) * heap) * int

val g12_example266 : (((heap * heap) * heap) * heap) * int

val g12_example267 : (((heap * heap) * heap) * heap) * int

val g12_example268 : (((heap * heap) * heap) * heap) * int

val g12_example269 : (((heap * heap) * heap) * heap) * int

val g12_example270 : (((heap * heap) * heap) * heap) * int

val g12_example271 : (((heap * heap) * heap) * heap) * int

val g12_example272 : (((heap * heap) * heap) * heap) * int

val g12_example273 : (((heap * heap) * heap) * heap) * int

val g12_example274 : (((heap * heap) * heap) * heap) * int

val g12_example275 : (((heap * heap) * heap) * heap) * int

val g12_example276 : (((heap * heap) * heap) * heap) * int

val g12_example277 : (((heap * heap) * heap) * heap) * int

val g12_example278 : (((heap * heap) * heap) * heap) * int

val g12_example279 : (((heap * heap) * heap) * heap) * int

val g12_example280 : (((heap * heap) * heap) * heap) * int

val g12_example281 : (((heap * heap) * heap) * heap) * int

val g12_example282 : (((heap * heap) * heap) * heap) * int

val g12_example283 : (((heap * heap) * heap) * heap) * int

val g12_example284 : (((heap * heap) * heap) * heap) * int

val g12_example285 : (((heap * heap) * heap) * heap) * int

val g12_example286 : (((heap * heap) * heap) * heap) * int

val g12_example287 : (((heap * heap) * heap) * heap) * int

val g12_example288 : (((heap * heap) * heap) * heap) * int

val g12_example289 : (((heap * heap) * heap) * heap) * int

val g12_example290 : (((heap * heap) * heap) * heap) * int

val g12_example291 : (((heap * heap) * heap) * heap) * int

val g12_example292 : (((heap * heap) * heap) * heap) * int

val g12_example293 : (((heap * heap) * heap) * heap) * int

val g12_example294 : (((heap * heap) * heap) * heap) * int

val g12_example295 : (((heap * heap) * heap) * heap) * int

val g12_example296 : (((heap * heap) * heap) * heap) * int

val g12_example297 : (((heap * heap) * heap) * heap) * int

val g12_example298 : (((heap * heap) * heap) * heap) * int

val g12_example299 : (((heap * heap) * heap) * heap) * int

val g12_example300 : (((heap * heap) * heap) * heap) * int

val g12_example301 : (((heap * heap) * heap) * heap) * int

val g12_example302 : (((heap * heap) * heap) * heap) * int

val g12_example303 : (((heap * heap) * heap) * heap) * int

val g12_example304 : (((heap * heap) * heap) * heap) * int

val g12_example305 : (((heap * heap) * heap) * heap) * int

val g12_example306 : (((heap * heap) * heap) * heap) * int

val g12_example307 : (((heap * heap) * heap) * heap) * int

val g12_example308 : (((heap * heap) * heap) * heap) * int

val g12_example309 : (((heap * heap) * heap) * heap) * int

val g12_example310 : (((heap * heap) * heap) * heap) * int

val g12_example311 : (((heap * heap) * heap) * heap) * int

val g12_example312 : (((heap * heap) * heap) * heap) * int

val g12_example313 : (((heap * heap) * heap) * heap) * int

val g12_example314 : (((heap * heap) * heap) * heap) * int

val g12_example315 : (((heap * heap) * heap) * heap) * int

val g12_example316 : (((heap * heap) * heap) * heap) * int

val g12_example317 : (((heap * heap) * heap) * heap) * int

val g12_example318 : (((heap * heap) * heap) * heap) * int

val g12_example319 : (((heap * heap) * heap) * heap) * int

val g12_example320 : (((heap * heap) * heap) * heap) * int

val g12_example321 : (((heap * heap) * heap) * heap) * int

val g12_example322 : (((heap * heap) * heap) * heap) * int

val g12_example323 : (((heap * heap) * heap) * heap) * int

val g12_example324 : (((heap * heap) * heap) * heap) * int

val g12_example325 : (((heap * heap) * heap) * heap) * int

val g12_example326 : (((heap * heap) * heap) * heap) * int

val g12_example327 : (((heap * heap) * heap) * heap) * int

val g12_example328 : (((heap * heap) * heap) * heap) * int

val g12_example329 : (((heap * heap) * heap) * heap) * int

val g12_example330 : (((heap * heap) * heap) * heap) * int

val g12_example331 : (((heap * heap) * heap) * heap) * int

val g12_example332 : (((heap * heap) * heap) * heap) * int

val g12_example333 : (((heap * heap) * heap) * heap) * int

val g12_example334 : (((heap * heap) * heap) * heap) * int

val g12_example335 : (((heap * heap) * heap) * heap) * int

val g12_example336 : (((heap * heap) * heap) * heap) * int

val g12_example337 : (((heap * heap) * heap) * heap) * int

val g12_example338 : (((heap * heap) * heap) * heap) * int

val g12_example339 : (((heap * heap) * heap) * heap) * int

val g12_example340 : (((heap * heap) * heap) * heap) * int

val g12_example341 : (((heap * heap) * heap) * heap) * int

val g12_example342 : (((heap * heap) * heap) * heap) * int

val g12_example343 : (((heap * heap) * heap) * heap) * int

val g12_example344 : (((heap * heap) * heap) * heap) * int

val g12_example345 : (((heap * heap) * heap) * heap) * int

val g12_example346 : (((heap * heap) * heap) * heap) * int

val g12_example347 : (((heap * heap) * heap) * heap) * int

val g12_example348 : (((heap * heap) * heap) * heap) * int

val g12_example349 : (((heap * heap) * heap) * heap) * int

val g12_example350 : (((heap * heap) * heap) * heap) * int

val g12_example351 : (((heap * heap) * heap) * heap) * int

val g12_example352 : (((heap * heap) * heap) * heap) * int

val g12_example353 : (((heap * heap) * heap) * heap) * int

val g12_example354 : (((heap * heap) * heap) * heap) * int

val g12_example355 : (((heap * heap) * heap) * heap) * int

val g12_example356 : (((heap * heap) * heap) * heap) * int

val g12_example357 : (((heap * heap) * heap) * heap) * int

val g12_example358 : (((heap * heap) * heap) * heap) * int

val g12_example359 : (((heap * heap) * heap) * heap) * int

val g12_example360 : (((heap * heap) * heap) * heap) * int

val g12_example361 : (((heap * heap) * heap) * heap) * int

val g12_example362 : (((heap * heap) * heap) * heap) * int

val g12_example363 : (((heap * heap) * heap) * heap) * int

val g12_example364 : (((heap * heap) * heap) * heap) * int

val g12_example365 : (((heap * heap) * heap) * heap) * int

val g12_example366 : (((heap * heap) * heap) * heap) * int

val g12_example367 : (((heap * heap) * heap) * heap) * int

val g12_example368 : (((heap * heap) * heap) * heap) * int

val g12_example369 : (((heap * heap) * heap) * heap) * int

val g12_example370 : (((heap * heap) * heap) * heap) * int

val g12_example371 : (((heap * heap) * heap) * heap) * int

val g12_example372 : (((heap * heap) * heap) * heap) * int

val g12_example373 : (((heap * heap) * heap) * heap) * int

val g12_example374 : (((heap * heap) * heap) * heap) * int

val g12_example375 : (((heap * heap) * heap) * heap) * int

val g12_example376 : (((heap * heap) * heap) * heap) * int

val g12_example377 : (((heap * heap) * heap) * heap) * int

val g12_example378 : (((heap * heap) * heap) * heap) * int

val g12_example379 : (((heap * heap) * heap) * heap) * int

val g12_example380 : (((heap * heap) * heap) * heap) * int

val g12_example381 : (((heap * heap) * heap) * heap) * int

val g12_example382 : (((heap * heap) * heap) * heap) * int

val g12_example383 : (((heap * heap) * heap) * heap) * int

val g12_example384 : (((heap * heap) * heap) * heap) * int

val g12_example385 : (((heap * heap) * heap) * heap) * int

val g12_example386 : (((heap * heap) * heap) * heap) * int

val g12_example387 : (((heap * heap) * heap) * heap) * int

val g12_example388 : (((heap * heap) * heap) * heap) * int

val g12_example389 : (((heap * heap) * heap) * heap) * int

val g12_example390 : (((heap * heap) * heap) * heap) * int

val g12_example391 : (((heap * heap) * heap) * heap) * int

val g12_example392 : (((heap * heap) * heap) * heap) * int

val g12_example393 : (((heap * heap) * heap) * heap) * int

val g12_example394 : (((heap * heap) * heap) * heap) * int

val g12_example395 : (((heap * heap) * heap) * heap) * int

val g12_example396 : (((heap * heap) * heap) * heap) * int

val g12_example397 : (((heap * heap) * heap) * heap) * int

val g12_example398 : (((heap * heap) * heap) * heap) * int

val g12_example399 : (((heap * heap) * heap) * heap) * int

val g12_example400 : (((heap * heap) * heap) * heap) * int

val g12_example401 : (((heap * heap) * heap) * heap) * int

val g12_example402 : (((heap * heap) * heap) * heap) * int

val g12_example403 : (((heap * heap) * heap) * heap) * int

val g12_example404 : (((heap * heap) * heap) * heap) * int

val g12_example405 : (((heap * heap) * heap) * heap) * int

val g12_example406 : (((heap * heap) * heap) * heap) * int

val g12_example407 : (((heap * heap) * heap) * heap) * int

val g12_example408 : (((heap * heap) * heap) * heap) * int

val g12_example409 : (((heap * heap) * heap) * heap) * int

val g12_example410 : (((heap * heap) * heap) * heap) * int

val g12_example411 : (((heap * heap) * heap) * heap) * int

val g12_example412 : (((heap * heap) * heap) * heap) * int

val g12_example413 : (((heap * heap) * heap) * heap) * int

val g12_example414 : (((heap * heap) * heap) * heap) * int

val g12_example415 : (((heap * heap) * heap) * heap) * int

val g12_example416 : (((heap * heap) * heap) * heap) * int

val g12_example417 : (((heap * heap) * heap) * heap) * int

val g12_example418 : (((heap * heap) * heap) * heap) * int

val g12_example419 : (((heap * heap) * heap) * heap) * int

val g12_example420 : (((heap * heap) * heap) * heap) * int

val g12_example421 : (((heap * heap) * heap) * heap) * int

val g12_example422 : (((heap * heap) * heap) * heap) * int

val g12_example423 : (((heap * heap) * heap) * heap) * int

val g12_example424 : (((heap * heap) * heap) * heap) * int

val g12_example425 : (((heap * heap) * heap) * heap) * int

val g12_example426 : (((heap * heap) * heap) * heap) * int

val g12_example427 : (((heap * heap) * heap) * heap) * int

val g12_example428 : (((heap * heap) * heap) * heap) * int

val g12_example429 : (((heap * heap) * heap) * heap) * int

val g12_example430 : (((heap * heap) * heap) * heap) * int

val g12_example431 : (((heap * heap) * heap) * heap) * int

val g12_example432 : (((heap * heap) * heap) * heap) * int

val g12_example433 : (((heap * heap) * heap) * heap) * int

val g12_example434 : (((heap * heap) * heap) * heap) * int

val g12_example435 : (((heap * heap) * heap) * heap) * int

val g12_example436 : (((heap * heap) * heap) * heap) * int

val g12_example437 : (((heap * heap) * heap) * heap) * int

val g12_example438 : (((heap * heap) * heap) * heap) * int

val g12_example439 : (((heap * heap) * heap) * heap) * int

val g12_example440 : (((heap * heap) * heap) * heap) * int

val g12_example441 : (((heap * heap) * heap) * heap) * int

val g12_example442 : (((heap * heap) * heap) * heap) * int

val g12_example443 : (((heap * heap) * heap) * heap) * int

val g12_example444 : (((heap * heap) * heap) * heap) * int

val g12_example445 : (((heap * heap) * heap) * heap) * int

val g12_example446 : (((heap * heap) * heap) * heap) * int

val g12_example447 : (((heap * heap) * heap) * heap) * int

val g12_example448 : (((heap * heap) * heap) * heap) * int

val g12_example449 : (((heap * heap) * heap) * heap) * int

val g12_example450 : (((heap * heap) * heap) * heap) * int

val g12_example451 : (((heap * heap) * heap) * heap) * int

val g12_example452 : (((heap * heap) * heap) * heap) * int

val g12_example453 : (((heap * heap) * heap) * heap) * int

val g12_example454 : (((heap * heap) * heap) * heap) * int

val g12_example455 : (((heap * heap) * heap) * heap) * int

val g12_example456 : (((heap * heap) * heap) * heap) * int

val g12_example457 : (((heap * heap) * heap) * heap) * int

val g12_example458 : (((heap * heap) * heap) * heap) * int

val g12_example459 : (((heap * heap) * heap) * heap) * int

val g12_example460 : (((heap * heap) * heap) * heap) * int

val g12_example461 : (((heap * heap) * heap) * heap) * int

val g12_example462 : (((heap * heap) * heap) * heap) * int

val g12_example463 : (((heap * heap) * heap) * heap) * int

val g12_example464 : (((heap * heap) * heap) * heap) * int

val g12_example465 : (((heap * heap) * heap) * heap) * int

val g12_example466 : (((heap * heap) * heap) * heap) * int

val g12_example467 : (((heap * heap) * heap) * heap) * int

val g12_example468 : (((heap * heap) * heap) * heap) * int

val g12_example469 : (((heap * heap) * heap) * heap) * int

val g12_example470 : (((heap * heap) * heap) * heap) * int

val g12_example471 : (((heap * heap) * heap) * heap) * int

val g12_example472 : (((heap * heap) * heap) * heap) * int

val g12_example473 : (((heap * heap) * heap) * heap) * int

val g12_example474 : (((heap * heap) * heap) * heap) * int

val g12_example475 : (((heap * heap) * heap) * heap) * int

val g12_example476 : (((heap * heap) * heap) * heap) * int

val g12_example477 : (((heap * heap) * heap) * heap) * int

val g12_example478 : (((heap * heap) * heap) * heap) * int

val g12_example479 : (((heap * heap) * heap) * heap) * int

val g12_example480 : (((heap * heap) * heap) * heap) * int

val g12_example481 : (((heap * heap) * heap) * heap) * int

val g12_example482 : (((heap * heap) * heap) * heap) * int

val g12_example483 : (((heap * heap) * heap) * heap) * int

val g12_example484 : (((heap * heap) * heap) * heap) * int

val g12_example485 : (((heap * heap) * heap) * heap) * int

val g12_example486 : (((heap * heap) * heap) * heap) * int

val g12_example487 : (((heap * heap) * heap) * heap) * int

val g12_example488 : (((heap * heap) * heap) * heap) * int

val g12_example489 : (((heap * heap) * heap) * heap) * int

val g12_example490 : (((heap * heap) * heap) * heap) * int

val g12_example491 : (((heap * heap) * heap) * heap) * int

val g12_example492 : (((heap * heap) * heap) * heap) * int

val g12_example493 : (((heap * heap) * heap) * heap) * int

val g12_example494 : (((heap * heap) * heap) * heap) * int

val g12_example495 : (((heap * heap) * heap) * heap) * int

val g12_example496 : (((heap * heap) * heap) * heap) * int

val g12_example497 : (((heap * heap) * heap) * heap) * int

val g12_example498 : (((heap * heap) * heap) * heap) * int

val g12_example499 : (((heap * heap) * heap) * heap) * int

val g12_example500 : (((heap * heap) * heap) * heap) * int

val g12_example501 : (((heap * heap) * heap) * heap) * int

val g12_example502 : (((heap * heap) * heap) * heap) * int

val g12_example503 : (((heap * heap) * heap) * heap) * int

val g12_example504 : (((heap * heap) * heap) * heap) * int

val g12_example505 : (((heap * heap) * heap) * heap) * int

val g12_example506 : (((heap * heap) * heap) * heap) * int

val g12_example507 : (((heap * heap) * heap) * heap) * int

val g12_example508 : (((heap * heap) * heap) * heap) * int

val g12_example509 : (((heap * heap) * heap) * heap) * int

val g12_example510 : (((heap * heap) * heap) * heap) * int

val g12_example511 : (((heap * heap) * heap) * heap) * int

val g12_example512 : (((heap * heap) * heap) * heap) * int

val g12_example513 : (((heap * heap) * heap) * heap) * int

val g12_example514 : (((heap * heap) * heap) * heap) * int

val g12_example515 : (((heap * heap) * heap) * heap) * int

val g12_example516 : (((heap * heap) * heap) * heap) * int

val g12_example517 : (((heap * heap) * heap) * heap) * int

val g12_example518 : (((heap * heap) * heap) * heap) * int

val g12_example519 : (((heap * heap) * heap) * heap) * int

val g12_example520 : (((heap * heap) * heap) * heap) * int

val g12_example521 : (((heap * heap) * heap) * heap) * int

val g12_example522 : (((heap * heap) * heap) * heap) * int

val g12_example523 : (((heap * heap) * heap) * heap) * int

val g12_example524 : (((heap * heap) * heap) * heap) * int

val g12_example525 : (((heap * heap) * heap) * heap) * int

val g12_example526 : (((heap * heap) * heap) * heap) * int

val g12_example527 : (((heap * heap) * heap) * heap) * int

val g12_example528 : (((heap * heap) * heap) * heap) * int

val g12_example529 : (((heap * heap) * heap) * heap) * int

val g12_example530 : (((heap * heap) * heap) * heap) * int

val g12_example531 : (((heap * heap) * heap) * heap) * int

val g12_example532 : (((heap * heap) * heap) * heap) * int

val g12_example533 : (((heap * heap) * heap) * heap) * int

val g12_example534 : (((heap * heap) * heap) * heap) * int

val g12_example535 : (((heap * heap) * heap) * heap) * int

val g12_example536 : (((heap * heap) * heap) * heap) * int

val g12_example537 : (((heap * heap) * heap) * heap) * int

val g12_example538 : (((heap * heap) * heap) * heap) * int

val g12_example539 : (((heap * heap) * heap) * heap) * int

val g12_example540 : (((heap * heap) * heap) * heap) * int

val g12_example541 : (((heap * heap) * heap) * heap) * int

val g12_example542 : (((heap * heap) * heap) * heap) * int

val g12_example543 : (((heap * heap) * heap) * heap) * int

val g12_example544 : (((heap * heap) * heap) * heap) * int

val g12_example545 : (((heap * heap) * heap) * heap) * int

val g12_example546 : (((heap * heap) * heap) * heap) * int

val g12_example547 : (((heap * heap) * heap) * heap) * int

val g12_example548 : (((heap * heap) * heap) * heap) * int

val g12_example549 : (((heap * heap) * heap) * heap) * int

val g12_example550 : (((heap * heap) * heap) * heap) * int

val g12_example551 : (((heap * heap) * heap) * heap) * int

val g12_example552 : (((heap * heap) * heap) * heap) * int

val g12_example553 : (((heap * heap) * heap) * heap) * int

val g12_example554 : (((heap * heap) * heap) * heap) * int

val g12_example555 : (((heap * heap) * heap) * heap) * int

val g12_example556 : (((heap * heap) * heap) * heap) * int

val g12_example557 : (((heap * heap) * heap) * heap) * int

val g12_example558 : (((heap * heap) * heap) * heap) * int

val g12_example559 : (((heap * heap) * heap) * heap) * int

val g12_example560 : (((heap * heap) * heap) * heap) * int

val g12_example561 : (((heap * heap) * heap) * heap) * int

val g12_example562 : (((heap * heap) * heap) * heap) * int

val g12_example563 : (((heap * heap) * heap) * heap) * int

val g12_example564 : (((heap * heap) * heap) * heap) * int

val g12_example565 : (((heap * heap) * heap) * heap) * int

val g12_example566 : (((heap * heap) * heap) * heap) * int

val g12_example567 : (((heap * heap) * heap) * heap) * int

val g12_example568 : (((heap * heap) * heap) * heap) * int

val g12_example569 : (((heap * heap) * heap) * heap) * int

val g12_example570 : (((heap * heap) * heap) * heap) * int

val g12_example571 : (((heap * heap) * heap) * heap) * int

val g12_example572 : (((heap * heap) * heap) * heap) * int

val g12_example573 : (((heap * heap) * heap) * heap) * int

val g12_example574 : (((heap * heap) * heap) * heap) * int

val g12_example575 : (((heap * heap) * heap) * heap) * int

val g12_example576 : (((heap * heap) * heap) * heap) * int

val g12_example577 : (((heap * heap) * heap) * heap) * int

val g12_example578 : (((heap * heap) * heap) * heap) * int

val g12_example579 : (((heap * heap) * heap) * heap) * int

val g12_example580 : (((heap * heap) * heap) * heap) * int

val g12_example581 : (((heap * heap) * heap) * heap) * int

val g12_example582 : (((heap * heap) * heap) * heap) * int

val g12_example583 : (((heap * heap) * heap) * heap) * int

val g12_example584 : (((heap * heap) * heap) * heap) * int

val g12_example585 : (((heap * heap) * heap) * heap) * int

val g12_example586 : (((heap * heap) * heap) * heap) * int

val g12_example587 : (((heap * heap) * heap) * heap) * int

val g12_example588 : (((heap * heap) * heap) * heap) * int

val g12_example589 : (((heap * heap) * heap) * heap) * int

val g12_example590 : (((heap * heap) * heap) * heap) * int

val g12_example591 : (((heap * heap) * heap) * heap) * int

val g12_example592 : (((heap * heap) * heap) * heap) * int

val g12_example593 : (((heap * heap) * heap) * heap) * int

val g12_example594 : (((heap * heap) * heap) * heap) * int

val g12_example595 : (((heap * heap) * heap) * heap) * int

val g12_example596 : (((heap * heap) * heap) * heap) * int

val g12_example597 : (((heap * heap) * heap) * heap) * int

val g12_example598 : (((heap * heap) * heap) * heap) * int

val g12_example599 : (((heap * heap) * heap) * heap) * int

val g12_example600 : (((heap * heap) * heap) * heap) * int

val g12_example601 : (((heap * heap) * heap) * heap) * int

val g12_example602 : (((heap * heap) * heap) * heap) * int

val g12_example603 : (((heap * heap) * heap) * heap) * int

val g12_example604 : (((heap * heap) * heap) * heap) * int

val g12_example605 : (((heap * heap) * heap) * heap) * int

val g12_example606 : (((heap * heap) * heap) * heap) * int

val g12_example607 : (((heap * heap) * heap) * heap) * int

val g12_example608 : (((heap * heap) * heap) * heap) * int

val g12_example609 : (((heap * heap) * heap) * heap) * int

val g12_example610 : (((heap * heap) * heap) * heap) * int

val g12_example611 : (((heap * heap) * heap) * heap) * int

val g12_example612 : (((heap * heap) * heap) * heap) * int

val g12_example613 : (((heap * heap) * heap) * heap) * int

val g12_example614 : (((heap * heap) * heap) * heap) * int

val g12_example615 : (((heap * heap) * heap) * heap) * int

val g12_example616 : (((heap * heap) * heap) * heap) * int

val g12_example617 : (((heap * heap) * heap) * heap) * int

val g12_example618 : (((heap * heap) * heap) * heap) * int

val g12_example619 : (((heap * heap) * heap) * heap) * int

val g12_example620 : (((heap * heap) * heap) * heap) * int

val g12_example621 : (((heap * heap) * heap) * heap) * int

val g12_example622 : (((heap * heap) * heap) * heap) * int

val g12_example623 : (((heap * heap) * heap) * heap) * int

val g12_example624 : (((heap * heap) * heap) * heap) * int

val g12_example625 : (((heap * heap) * heap) * heap) * int

val g12_example626 : (((heap * heap) * heap) * heap) * int

val g12_example627 : (((heap * heap) * heap) * heap) * int

val g12_example628 : (((heap * heap) * heap) * heap) * int

val g12_example629 : (((heap * heap) * heap) * heap) * int

val g12_example630 : (((heap * heap) * heap) * heap) * int

val g12_example631 : (((heap * heap) * heap) * heap) * int

val g12_example632 : (((heap * heap) * heap) * heap) * int

val g12_example633 : (((heap * heap) * heap) * heap) * int

val g12_example634 : (((heap * heap) * heap) * heap) * int

val g12_example635 : (((heap * heap) * heap) * heap) * int

val g12_example636 : (((heap * heap) * heap) * heap) * int

val g12_example637 : (((heap * heap) * heap) * heap) * int

val g12_example638 : (((heap * heap) * heap) * heap) * int

val g12_example639 : (((heap * heap) * heap) * heap) * int

val g12_example640 : (((heap * heap) * heap) * heap) * int

val g12_example641 : (((heap * heap) * heap) * heap) * int

val g12_example642 : (((heap * heap) * heap) * heap) * int

val g12_example643 : (((heap * heap) * heap) * heap) * int

val g12_example644 : (((heap * heap) * heap) * heap) * int

val g12_example645 : (((heap * heap) * heap) * heap) * int

val g12_example646 : (((heap * heap) * heap) * heap) * int

val g12_example647 : (((heap * heap) * heap) * heap) * int

val g12_example648 : (((heap * heap) * heap) * heap) * int

val g12_example649 : (((heap * heap) * heap) * heap) * int

val g12_example650 : (((heap * heap) * heap) * heap) * int

val g12_example651 : (((heap * heap) * heap) * heap) * int

val g12_example652 : (((heap * heap) * heap) * heap) * int

val g12_example653 : (((heap * heap) * heap) * heap) * int

val g12_example654 : (((heap * heap) * heap) * heap) * int

val g12_example655 : (((heap * heap) * heap) * heap) * int

val g12_example656 : (((heap * heap) * heap) * heap) * int

val g12_example657 : (((heap * heap) * heap) * heap) * int

val g12_example658 : (((heap * heap) * heap) * heap) * int

val g12_example659 : (((heap * heap) * heap) * heap) * int

val g12_example660 : (((heap * heap) * heap) * heap) * int

val g12_example661 : (((heap * heap) * heap) * heap) * int

val g12_example662 : (((heap * heap) * heap) * heap) * int

val g12_example663 : (((heap * heap) * heap) * heap) * int

val g12_example664 : (((heap * heap) * heap) * heap) * int

val g12_example665 : (((heap * heap) * heap) * heap) * int

val g12_example666 : (((heap * heap) * heap) * heap) * int

val g12_example667 : (((heap * heap) * heap) * heap) * int

val g12_example668 : (((heap * heap) * heap) * heap) * int

val g12_example669 : (((heap * heap) * heap) * heap) * int

val g12_example670 : (((heap * heap) * heap) * heap) * int

val g12_example671 : (((heap * heap) * heap) * heap) * int

val g12_example672 : (((heap * heap) * heap) * heap) * int

val g12_example673 : (((heap * heap) * heap) * heap) * int

val g12_example674 : (((heap * heap) * heap) * heap) * int

val g12_example675 : (((heap * heap) * heap) * heap) * int

val g12_example676 : (((heap * heap) * heap) * heap) * int

val g12_example677 : (((heap * heap) * heap) * heap) * int

val g12_example678 : (((heap * heap) * heap) * heap) * int

val g12_example679 : (((heap * heap) * heap) * heap) * int

val g12_example680 : (((heap * heap) * heap) * heap) * int

val g12_example681 : (((heap * heap) * heap) * heap) * int

val g12_example682 : (((heap * heap) * heap) * heap) * int

val g12_example683 : (((heap * heap) * heap) * heap) * int

val g12_example684 : (((heap * heap) * heap) * heap) * int

val g12_example685 : (((heap * heap) * heap) * heap) * int

val g12_example686 : (((heap * heap) * heap) * heap) * int

val g12_example687 : (((heap * heap) * heap) * heap) * int

val g12_example688 : (((heap * heap) * heap) * heap) * int

val g12_example689 : (((heap * heap) * heap) * heap) * int

val g12_example690 : (((heap * heap) * heap) * heap) * int

val g12_example691 : (((heap * heap) * heap) * heap) * int

val g12_example692 : (((heap * heap) * heap) * heap) * int

val g12_example693 : (((heap * heap) * heap) * heap) * int

val g12_example694 : (((heap * heap) * heap) * heap) * int

val g12_example695 : (((heap * heap) * heap) * heap) * int

val g12_example696 : (((heap * heap) * heap) * heap) * int

val g12_example697 : (((heap * heap) * heap) * heap) * int

val g12_example698 : (((heap * heap) * heap) * heap) * int

val g12_example699 : (((heap * heap) * heap) * heap) * int

val g12_example700 : (((heap * heap) * heap) * heap) * int

val g12_example701 : (((heap * heap) * heap) * heap) * int

val g12_example702 : (((heap * heap) * heap) * heap) * int

val g12_example703 : (((heap * heap) * heap) * heap) * int

val g12_example704 : (((heap * heap) * heap) * heap) * int

val g12_example705 : (((heap * heap) * heap) * heap) * int

val g12_example706 : (((heap * heap) * heap) * heap) * int

val g12_example707 : (((heap * heap) * heap) * heap) * int

val g12_example708 : (((heap * heap) * heap) * heap) * int

val g12_example709 : (((heap * heap) * heap) * heap) * int

val g12_example710 : (((heap * heap) * heap) * heap) * int

val g12_example711 : (((heap * heap) * heap) * heap) * int

val g12_example712 : (((heap * heap) * heap) * heap) * int

val g12_example713 : (((heap * heap) * heap) * heap) * int

val g12_example714 : (((heap * heap) * heap) * heap) * int

val g12_example715 : (((heap * heap) * heap) * heap) * int

val g12_example716 : (((heap * heap) * heap) * heap) * int

val g12_example717 : (((heap * heap) * heap) * heap) * int

val g12_example718 : (((heap * heap) * heap) * heap) * int

val g12_example719 : (((heap * heap) * heap) * heap) * int

val g12_example720 : (((heap * heap) * heap) * heap) * int

val g12_example721 : (((heap * heap) * heap) * heap) * int

val g12_example722 : (((heap * heap) * heap) * heap) * int

val g12_example723 : (((heap * heap) * heap) * heap) * int

val g12_example724 : (((heap * heap) * heap) * heap) * int

val g12_example725 : (((heap * heap) * heap) * heap) * int

val g12_example726 : (((heap * heap) * heap) * heap) * int

val g12_example727 : (((heap * heap) * heap) * heap) * int

val g12_example728 : (((heap * heap) * heap) * heap) * int

val g12_example729 : (((heap * heap) * heap) * heap) * int

val g12_example730 : (((heap * heap) * heap) * heap) * int

val g12_example731 : (((heap * heap) * heap) * heap) * int

val g12_example732 : (((heap * heap) * heap) * heap) * int

val g12_example733 : (((heap * heap) * heap) * heap) * int

val g12_example734 : (((heap * heap) * heap) * heap) * int

val g12_example735 : (((heap * heap) * heap) * heap) * int

val g12_example736 : (((heap * heap) * heap) * heap) * int

val g12_example737 : (((heap * heap) * heap) * heap) * int

val g12_example738 : (((heap * heap) * heap) * heap) * int

val g12_example739 : (((heap * heap) * heap) * heap) * int

val g12_example740 : (((heap * heap) * heap) * heap) * int

val g12_example741 : (((heap * heap) * heap) * heap) * int

val g12_example742 : (((heap * heap) * heap) * heap) * int

val g12_example743 : (((heap * heap) * heap) * heap) * int

val g12_example744 : (((heap * heap) * heap) * heap) * int

val g12_example745 : (((heap * heap) * heap) * heap) * int

val g12_example746 : (((heap * heap) * heap) * heap) * int

val g12_example747 : (((heap * heap) * heap) * heap) * int

val g12_example748 : (((heap * heap) * heap) * heap) * int

val g12_example749 : (((heap * heap) * heap) * heap) * int

val g12_example750 : (((heap * heap) * heap) * heap) * int

val g12_example751 : (((heap * heap) * heap) * heap) * int

val g12_example752 : (((heap * heap) * heap) * heap) * int

val g12_example753 : (((heap * heap) * heap) * heap) * int

val g12_example754 : (((heap * heap) * heap) * heap) * int

val g12_example755 : (((heap * heap) * heap) * heap) * int

val g12_example756 : (((heap * heap) * heap) * heap) * int

val g12_example757 : (((heap * heap) * heap) * heap) * int

val g12_example758 : (((heap * heap) * heap) * heap) * int

val g12_example759 : (((heap * heap) * heap) * heap) * int

val g12_example760 : (((heap * heap) * heap) * heap) * int

val g12_example761 : (((heap * heap) * heap) * heap) * int

val g12_example762 : (((heap * heap) * heap) * heap) * int

val g12_example763 : (((heap * heap) * heap) * heap) * int

val g12_example764 : (((heap * heap) * heap) * heap) * int

val g12_example765 : (((heap * heap) * heap) * heap) * int

val g12_example766 : (((heap * heap) * heap) * heap) * int

val g12_example767 : (((heap * heap) * heap) * heap) * int

val g12_example768 : (((heap * heap) * heap) * heap) * int

val g12_example769 : (((heap * heap) * heap) * heap) * int

val g12_example770 : (((heap * heap) * heap) * heap) * int

val g12_example771 : (((heap * heap) * heap) * heap) * int

val g12_example772 : (((heap * heap) * heap) * heap) * int

val g12_example773 : (((heap * heap) * heap) * heap) * int

val g12_example774 : (((heap * heap) * heap) * heap) * int

val g12_example775 : (((heap * heap) * heap) * heap) * int

val g12_example776 : (((heap * heap) * heap) * heap) * int

val g12_example777 : (((heap * heap) * heap) * heap) * int

val g12_example778 : (((heap * heap) * heap) * heap) * int

val g12_example779 : (((heap * heap) * heap) * heap) * int

val g12_example780 : (((heap * heap) * heap) * heap) * int

val g12_example781 : (((heap * heap) * heap) * heap) * int

val g12_example782 : (((heap * heap) * heap) * heap) * int

val g12_example783 : (((heap * heap) * heap) * heap) * int

val g12_example784 : (((heap * heap) * heap) * heap) * int

val g12_example785 : (((heap * heap) * heap) * heap) * int

val g12_example786 : (((heap * heap) * heap) * heap) * int

val g12_example787 : (((heap * heap) * heap) * heap) * int

val g12_example788 : (((heap * heap) * heap) * heap) * int

val g12_example789 : (((heap * heap) * heap) * heap) * int

val g12_example790 : (((heap * heap) * heap) * heap) * int

val g12_example791 : (((heap * heap) * heap) * heap) * int

val g12_example792 : (((heap * heap) * heap) * heap) * int

val g12_example793 : (((heap * heap) * heap) * heap) * int

val g12_example794 : (((heap * heap) * heap) * heap) * int

val g12_example795 : (((heap * heap) * heap) * heap) * int

val g12_example796 : (((heap * heap) * heap) * heap) * int

val g12_example797 : (((heap * heap) * heap) * heap) * int

val g12_example798 : (((heap * heap) * heap) * heap) * int

val g12_example799 : (((heap * heap) * heap) * heap) * int

val g12_example800 : (((heap * heap) * heap) * heap) * int

val g12_example801 : (((heap * heap) * heap) * heap) * int

val g12_example802 : (((heap * heap) * heap) * heap) * int

val g12_example803 : (((heap * heap) * heap) * heap) * int

val g12_example804 : (((heap * heap) * heap) * heap) * int

val g12_example805 : (((heap * heap) * heap) * heap) * int

val g12_example806 : (((heap * heap) * heap) * heap) * int

val g12_example807 : (((heap * heap) * heap) * heap) * int

val g12_example808 : (((heap * heap) * heap) * heap) * int

val g12_example809 : (((heap * heap) * heap) * heap) * int

val g12_example810 : (((heap * heap) * heap) * heap) * int

val g12_example811 : (((heap * heap) * heap) * heap) * int

val g12_example812 : (((heap * heap) * heap) * heap) * int

val g12_example813 : (((heap * heap) * heap) * heap) * int

val g12_example814 : (((heap * heap) * heap) * heap) * int

val g12_example815 : (((heap * heap) * heap) * heap) * int

val g12_example816 : (((heap * heap) * heap) * heap) * int

val g12_example817 : (((heap * heap) * heap) * heap) * int

val g12_example818 : (((heap * heap) * heap) * heap) * int

val g12_example819 : (((heap * heap) * heap) * heap) * int

val g12_example820 : (((heap * heap) * heap) * heap) * int

val g12_example821 : (((heap * heap) * heap) * heap) * int

val g12_example822 : (((heap * heap) * heap) * heap) * int

val g12_example823 : (((heap * heap) * heap) * heap) * int

val g12_example824 : (((heap * heap) * heap) * heap) * int

val g12_example825 : (((heap * heap) * heap) * heap) * int

val g12_example826 : (((heap * heap) * heap) * heap) * int

val g12_example827 : (((heap * heap) * heap) * heap) * int

val g12_example828 : (((heap * heap) * heap) * heap) * int

val g12_example829 : (((heap * heap) * heap) * heap) * int

val g12_example830 : (((heap * heap) * heap) * heap) * int

val g12_example831 : (((heap * heap) * heap) * heap) * int

val g12_example832 : (((heap * heap) * heap) * heap) * int

val g12_example833 : (((heap * heap) * heap) * heap) * int

val g12_example834 : (((heap * heap) * heap) * heap) * int

val g12_example835 : (((heap * heap) * heap) * heap) * int

val g12_example836 : (((heap * heap) * heap) * heap) * int

val g12_example837 : (((heap * heap) * heap) * heap) * int

val g12_example838 : (((heap * heap) * heap) * heap) * int

val g12_example839 : (((heap * heap) * heap) * heap) * int

val g12_example840 : (((heap * heap) * heap) * heap) * int

val g12_example841 : (((heap * heap) * heap) * heap) * int

val g12_example842 : (((heap * heap) * heap) * heap) * int

val g12_example843 : (((heap * heap) * heap) * heap) * int

val g12_example844 : (((heap * heap) * heap) * heap) * int

val g12_example845 : (((heap * heap) * heap) * heap) * int

val g12_example846 : (((heap * heap) * heap) * heap) * int

val g12_example847 : (((heap * heap) * heap) * heap) * int

val g12_example848 : (((heap * heap) * heap) * heap) * int

val g12_example849 : (((heap * heap) * heap) * heap) * int

val g12_example850 : (((heap * heap) * heap) * heap) * int

val g12_example851 : (((heap * heap) * heap) * heap) * int

val g12_example852 : (((heap * heap) * heap) * heap) * int

val g12_example853 : (((heap * heap) * heap) * heap) * int

val g12_example854 : (((heap * heap) * heap) * heap) * int

val g12_example855 : (((heap * heap) * heap) * heap) * int

val g12_example856 : (((heap * heap) * heap) * heap) * int

val g12_example857 : (((heap * heap) * heap) * heap) * int

val g12_example858 : (((heap * heap) * heap) * heap) * int

val g12_example859 : (((heap * heap) * heap) * heap) * int

val g12_example860 : (((heap * heap) * heap) * heap) * int

val g12_example861 : (((heap * heap) * heap) * heap) * int

val g12_example862 : (((heap * heap) * heap) * heap) * int

val g12_example863 : (((heap * heap) * heap) * heap) * int

val g12_example864 : (((heap * heap) * heap) * heap) * int

val g12_example865 : (((heap * heap) * heap) * heap) * int

val g12_example866 : (((heap * heap) * heap) * heap) * int

val g12_example867 : (((heap * heap) * heap) * heap) * int

val g12_example868 : (((heap * heap) * heap) * heap) * int

val g12_example869 : (((heap * heap) * heap) * heap) * int

val g12_example870 : (((heap * heap) * heap) * heap) * int

val g12_example871 : (((heap * heap) * heap) * heap) * int

val g12_example872 : (((heap * heap) * heap) * heap) * int

val g12_example873 : (((heap * heap) * heap) * heap) * int

val g12_example874 : (((heap * heap) * heap) * heap) * int

val g12_example875 : (((heap * heap) * heap) * heap) * int

val g12_example876 : (((heap * heap) * heap) * heap) * int

val g12_example877 : (((heap * heap) * heap) * heap) * int

val g12_example878 : (((heap * heap) * heap) * heap) * int

val g12_example879 : (((heap * heap) * heap) * heap) * int

val g12_example880 : (((heap * heap) * heap) * heap) * int

val g12_example881 : (((heap * heap) * heap) * heap) * int

val g12_example882 : (((heap * heap) * heap) * heap) * int

val g12_example883 : (((heap * heap) * heap) * heap) * int

val g12_example884 : (((heap * heap) * heap) * heap) * int

val g12_example885 : (((heap * heap) * heap) * heap) * int

val g12_example886 : (((heap * heap) * heap) * heap) * int

val g12_example887 : (((heap * heap) * heap) * heap) * int

val g12_example888 : (((heap * heap) * heap) * heap) * int

val g12_example889 : (((heap * heap) * heap) * heap) * int

val g12_example890 : (((heap * heap) * heap) * heap) * int

val g12_example891 : (((heap * heap) * heap) * heap) * int

val g12_example892 : (((heap * heap) * heap) * heap) * int

val g12_example893 : (((heap * heap) * heap) * heap) * int

val g12_example894 : (((heap * heap) * heap) * heap) * int

val g12_example895 : (((heap * heap) * heap) * heap) * int

val g12_example896 : (((heap * heap) * heap) * heap) * int

val g12_example897 : (((heap * heap) * heap) * heap) * int

val g12_example898 : (((heap * heap) * heap) * heap) * int

val g12_example899 : (((heap * heap) * heap) * heap) * int

val g12_example900 : (((heap * heap) * heap) * heap) * int

val g12_example901 : (((heap * heap) * heap) * heap) * int

val g12_example902 : (((heap * heap) * heap) * heap) * int

val g12_example903 : (((heap * heap) * heap) * heap) * int

val g12_example904 : (((heap * heap) * heap) * heap) * int

val g12_example905 : (((heap * heap) * heap) * heap) * int

val g12_example906 : (((heap * heap) * heap) * heap) * int

val g12_example907 : (((heap * heap) * heap) * heap) * int

val g12_example908 : (((heap * heap) * heap) * heap) * int

val g12_example909 : (((heap * heap) * heap) * heap) * int

val g12_example910 : (((heap * heap) * heap) * heap) * int

val g12_example911 : (((heap * heap) * heap) * heap) * int

val g12_example912 : (((heap * heap) * heap) * heap) * int

val g12_example913 : (((heap * heap) * heap) * heap) * int

val g12_example914 : (((heap * heap) * heap) * heap) * int

val g12_example915 : (((heap * heap) * heap) * heap) * int

val g12_example916 : (((heap * heap) * heap) * heap) * int

val g12_example917 : (((heap * heap) * heap) * heap) * int

val g12_example918 : (((heap * heap) * heap) * heap) * int

val g12_example919 : (((heap * heap) * heap) * heap) * int

val g12_example920 : (((heap * heap) * heap) * heap) * int

val g12_example921 : (((heap * heap) * heap) * heap) * int

val g12_example922 : (((heap * heap) * heap) * heap) * int

val g12_example923 : (((heap * heap) * heap) * heap) * int

val g12_example924 : (((heap * heap) * heap) * heap) * int

val g12_example925 : (((heap * heap) * heap) * heap) * int

val g12_example926 : (((heap * heap) * heap) * heap) * int

val g12_example927 : (((heap * heap) * heap) * heap) * int

val g12_example928 : (((heap * heap) * heap) * heap) * int

val g12_example929 : (((heap * heap) * heap) * heap) * int

val g12_example930 : (((heap * heap) * heap) * heap) * int

val g12_example931 : (((heap * heap) * heap) * heap) * int

val g12_example932 : (((heap * heap) * heap) * heap) * int

val g12_example933 : (((heap * heap) * heap) * heap) * int

val g12_example934 : (((heap * heap) * heap) * heap) * int

val g12_example935 : (((heap * heap) * heap) * heap) * int

val g12_example936 : (((heap * heap) * heap) * heap) * int

val g12_example937 : (((heap * heap) * heap) * heap) * int

val g12_example938 : (((heap * heap) * heap) * heap) * int

val g12_example939 : (((heap * heap) * heap) * heap) * int

val g12_example940 : (((heap * heap) * heap) * heap) * int

val g12_example941 : (((heap * heap) * heap) * heap) * int

val g12_example942 : (((heap * heap) * heap) * heap) * int

val g12_example943 : (((heap * heap) * heap) * heap) * int

val g12_example944 : (((heap * heap) * heap) * heap) * int

val g12_example945 : (((heap * heap) * heap) * heap) * int

val g12_example946 : (((heap * heap) * heap) * heap) * int

val g12_example947 : (((heap * heap) * heap) * heap) * int

val g12_example948 : (((heap * heap) * heap) * heap) * int

val g12_example949 : (((heap * heap) * heap) * heap) * int

val g12_example950 : (((heap * heap) * heap) * heap) * int

val g12_example951 : (((heap * heap) * heap) * heap) * int

val g12_example952 : (((heap * heap) * heap) * heap) * int

val g12_example953 : (((heap * heap) * heap) * heap) * int

val g12_example954 : (((heap * heap) * heap) * heap) * int

val g12_example955 : (((heap * heap) * heap) * heap) * int

val g12_example956 : (((heap * heap) * heap) * heap) * int

val g12_example957 : (((heap * heap) * heap) * heap) * int

val g12_example958 : (((heap * heap) * heap) * heap) * int

val g12_example959 : (((heap * heap) * heap) * heap) * int

val g12_example960 : (((heap * heap) * heap) * heap) * int

val g12_example961 : (((heap * heap) * heap) * heap) * int

val g12_example962 : (((heap * heap) * heap) * heap) * int

val g12_example963 : (((heap * heap) * heap) * heap) * int

val g12_example964 : (((heap * heap) * heap) * heap) * int

val g12_example965 : (((heap * heap) * heap) * heap) * int

val g12_example966 : (((heap * heap) * heap) * heap) * int

val g12_example967 : (((heap * heap) * heap) * heap) * int

val g12_example968 : (((heap * heap) * heap) * heap) * int

val g12_example969 : (((heap * heap) * heap) * heap) * int

val g12_example970 : (((heap * heap) * heap) * heap) * int

val g12_example971 : (((heap * heap) * heap) * heap) * int

val g12_example972 : (((heap * heap) * heap) * heap) * int

val g12_example973 : (((heap * heap) * heap) * heap) * int

val g12_example974 : (((heap * heap) * heap) * heap) * int

val g12_example975 : (((heap * heap) * heap) * heap) * int

val g12_example976 : (((heap * heap) * heap) * heap) * int

val g12_example977 : (((heap * heap) * heap) * heap) * int

val g12_example978 : (((heap * heap) * heap) * heap) * int

val g12_example979 : (((heap * heap) * heap) * heap) * int

val g12_example980 : (((heap * heap) * heap) * heap) * int

val g12_example981 : (((heap * heap) * heap) * heap) * int

val g12_example982 : (((heap * heap) * heap) * heap) * int

val g12_example983 : (((heap * heap) * heap) * heap) * int

val g12_example984 : (((heap * heap) * heap) * heap) * int

val g12_example985 : (((heap * heap) * heap) * heap) * int

val g12_example986 : (((heap * heap) * heap) * heap) * int

val g12_example987 : (((heap * heap) * heap) * heap) * int

val g12_example988 : (((heap * heap) * heap) * heap) * int

val g12_example989 : (((heap * heap) * heap) * heap) * int

val g12_example990 : (((heap * heap) * heap) * heap) * int

val g12_example991 : (((heap * heap) * heap) * heap) * int

val g12_example992 : (((heap * heap) * heap) * heap) * int

val g12_example993 : (((heap * heap) * heap) * heap) * int

val g12_example994 : (((heap * heap) * heap) * heap) * int

val g12_example995 : (((heap * heap) * heap) * heap) * int

val g12_example996 : (((heap * heap) * heap) * heap) * int

val g12_example997 : (((heap * heap) * heap) * heap) * int

val g12_example998 : (((heap * heap) * heap) * heap) * int

val g12_example999 : (((heap * heap) * heap) * heap) * int

val g12_example1000 : (((heap * heap) * heap) * heap) * int

val g12_example1001 : (((heap * heap) * heap) * heap) * int

val g12_example1002 : (((heap * heap) * heap) * heap) * int

val g12_example1003 : (((heap * heap) * heap) * heap) * int

val g12_example1004 : (((heap * heap) * heap) * heap) * int

val g12_example1005 : (((heap * heap) * heap) * heap) * int

val g12_example1006 : (((heap * heap) * heap) * heap) * int

val g12_example1007 : (((heap * heap) * heap) * heap) * int

val g12_example1008 : (((heap * heap) * heap) * heap) * int

val g12_example1009 : (((heap * heap) * heap) * heap) * int

val g12_example1010 : (((heap * heap) * heap) * heap) * int

val g12_example1011 : (((heap * heap) * heap) * heap) * int

val g12_example1012 : (((heap * heap) * heap) * heap) * int

val g12_example1013 : (((heap * heap) * heap) * heap) * int

val g12_example1014 : (((heap * heap) * heap) * heap) * int

val g12_example1015 : (((heap * heap) * heap) * heap) * int

val g12_example1016 : (((heap * heap) * heap) * heap) * int

val g12_example1017 : (((heap * heap) * heap) * heap) * int

val g12_example1018 : (((heap * heap) * heap) * heap) * int

val g12_example1019 : (((heap * heap) * heap) * heap) * int

val g12_example1020 : (((heap * heap) * heap) * heap) * int

val g12_example1021 : (((heap * heap) * heap) * heap) * int

val g12_example1022 : (((heap * heap) * heap) * heap) * int

val g12_example1023 : (((heap * heap) * heap) * heap) * int

val g12_example1024 : (((heap * heap) * heap) * heap) * int

val g12_example1025 : (((heap * heap) * heap) * heap) * int

val g12_example1026 : (((heap * heap) * heap) * heap) * int

val g12_example1027 : (((heap * heap) * heap) * heap) * int

val g12_example1028 : (((heap * heap) * heap) * heap) * int

val g12_example1029 : (((heap * heap) * heap) * heap) * int

val g12_example1030 : (((heap * heap) * heap) * heap) * int

val g12_example1031 : (((heap * heap) * heap) * heap) * int

val g12_example1032 : (((heap * heap) * heap) * heap) * int

val g12_example1033 : (((heap * heap) * heap) * heap) * int

val g12_example1034 : (((heap * heap) * heap) * heap) * int

val g12_example1035 : (((heap * heap) * heap) * heap) * int

val g12_example1036 : (((heap * heap) * heap) * heap) * int

val g12_example1037 : (((heap * heap) * heap) * heap) * int

val g12_example1038 : (((heap * heap) * heap) * heap) * int

val g12_example1039 : (((heap * heap) * heap) * heap) * int

val g12_example1040 : (((heap * heap) * heap) * heap) * int

val g12_example1041 : (((heap * heap) * heap) * heap) * int

val g12_example1042 : (((heap * heap) * heap) * heap) * int

val g12_example1043 : (((heap * heap) * heap) * heap) * int

val g12_example1044 : (((heap * heap) * heap) * heap) * int

val g12_example1045 : (((heap * heap) * heap) * heap) * int

val g12_example1046 : (((heap * heap) * heap) * heap) * int

val g12_example1047 : (((heap * heap) * heap) * heap) * int

val g12_example1048 : (((heap * heap) * heap) * heap) * int

val g12_example1049 : (((heap * heap) * heap) * heap) * int

val g12_example1050 : (((heap * heap) * heap) * heap) * int

val g12_example1051 : (((heap * heap) * heap) * heap) * int

val g12_example1052 : (((heap * heap) * heap) * heap) * int

val g12_example1053 : (((heap * heap) * heap) * heap) * int

val g12_example1054 : (((heap * heap) * heap) * heap) * int

val g12_example1055 : (((heap * heap) * heap) * heap) * int

val g12_example1056 : (((heap * heap) * heap) * heap) * int

val g12_example1057 : (((heap * heap) * heap) * heap) * int

val g12_example1058 : (((heap * heap) * heap) * heap) * int

val g12_example1059 : (((heap * heap) * heap) * heap) * int

val g12_example1060 : (((heap * heap) * heap) * heap) * int

val g12_example1061 : (((heap * heap) * heap) * heap) * int

val g12_example1062 : (((heap * heap) * heap) * heap) * int

val g12_example1063 : (((heap * heap) * heap) * heap) * int

val g12_example1064 : (((heap * heap) * heap) * heap) * int

val g12_example1065 : (((heap * heap) * heap) * heap) * int

val g12_example1066 : (((heap * heap) * heap) * heap) * int

val g12_example1067 : (((heap * heap) * heap) * heap) * int

val g12_example1068 : (((heap * heap) * heap) * heap) * int

val g12_example1069 : (((heap * heap) * heap) * heap) * int

val g12_example1070 : (((heap * heap) * heap) * heap) * int

val g12_example1071 : (((heap * heap) * heap) * heap) * int

val g12_example1072 : (((heap * heap) * heap) * heap) * int

val g12_example1073 : (((heap * heap) * heap) * heap) * int

val g12_example1074 : (((heap * heap) * heap) * heap) * int

val g12_example1075 : (((heap * heap) * heap) * heap) * int

val g12_example1076 : (((heap * heap) * heap) * heap) * int

val g12_example1077 : (((heap * heap) * heap) * heap) * int

val g12_example1078 : (((heap * heap) * heap) * heap) * int

val g12_example1079 : (((heap * heap) * heap) * heap) * int

val g12_example1080 : (((heap * heap) * heap) * heap) * int

val g12_example1081 : (((heap * heap) * heap) * heap) * int

val g12_example1082 : (((heap * heap) * heap) * heap) * int

val g12_example1083 : (((heap * heap) * heap) * heap) * int

val g12_example1084 : (((heap * heap) * heap) * heap) * int

val g12_example1085 : (((heap * heap) * heap) * heap) * int

val g12_example1086 : (((heap * heap) * heap) * heap) * int

val g12_example1087 : (((heap * heap) * heap) * heap) * int

val g12_example1088 : (((heap * heap) * heap) * heap) * int

val g12_example1089 : (((heap * heap) * heap) * heap) * int

val g12_example1090 : (((heap * heap) * heap) * heap) * int

val g12_example1091 : (((heap * heap) * heap) * heap) * int

val g12_example1092 : (((heap * heap) * heap) * heap) * int

val g12_example1093 : (((heap * heap) * heap) * heap) * int

val g12_example1094 : (((heap * heap) * heap) * heap) * int

val g12_example1095 : (((heap * heap) * heap) * heap) * int

val g12_example1096 : (((heap * heap) * heap) * heap) * int

val g12_example1097 : (((heap * heap) * heap) * heap) * int

val g12_example1098 : (((heap * heap) * heap) * heap) * int

val g12_example1099 : (((heap * heap) * heap) * heap) * int

val g12_example1100 : (((heap * heap) * heap) * heap) * int

val g12_example1101 : (((heap * heap) * heap) * heap) * int

val g12_example1102 : (((heap * heap) * heap) * heap) * int

val g12_example1103 : (((heap * heap) * heap) * heap) * int

val g12_example1104 : (((heap * heap) * heap) * heap) * int

val g12_example1105 : (((heap * heap) * heap) * heap) * int

val g12_example1106 : (((heap * heap) * heap) * heap) * int

val g12_example1107 : (((heap * heap) * heap) * heap) * int

val g12_example1108 : (((heap * heap) * heap) * heap) * int

val g12_example1109 : (((heap * heap) * heap) * heap) * int

val g12_example1110 : (((heap * heap) * heap) * heap) * int

val g12_example1111 : (((heap * heap) * heap) * heap) * int

val g12_example1112 : (((heap * heap) * heap) * heap) * int

val g12_example1113 : (((heap * heap) * heap) * heap) * int

val g12_example1114 : (((heap * heap) * heap) * heap) * int

val g12_example1115 : (((heap * heap) * heap) * heap) * int

val g12_example1116 : (((heap * heap) * heap) * heap) * int

val g12_example1117 : (((heap * heap) * heap) * heap) * int

val g12_example1118 : (((heap * heap) * heap) * heap) * int

val g12_example1119 : (((heap * heap) * heap) * heap) * int

val g12_example1120 : (((heap * heap) * heap) * heap) * int

val g12_example1121 : (((heap * heap) * heap) * heap) * int

val g12_example1122 : (((heap * heap) * heap) * heap) * int

val g12_example1123 : (((heap * heap) * heap) * heap) * int

val g12_example1124 : (((heap * heap) * heap) * heap) * int

val g12_example1125 : (((heap * heap) * heap) * heap) * int

val g12_example1126 : (((heap * heap) * heap) * heap) * int

val g12_example1127 : (((heap * heap) * heap) * heap) * int

val g12_example1128 : (((heap * heap) * heap) * heap) * int

val g12_example1129 : (((heap * heap) * heap) * heap) * int

val g12_example1130 : (((heap * heap) * heap) * heap) * int

val g12_example1131 : (((heap * heap) * heap) * heap) * int

val g12_example1132 : (((heap * heap) * heap) * heap) * int

val g12_example1133 : (((heap * heap) * heap) * heap) * int

val g12_example1134 : (((heap * heap) * heap) * heap) * int

val g12_example1135 : (((heap * heap) * heap) * heap) * int

val g12_example1136 : (((heap * heap) * heap) * heap) * int

val g12_example1137 : (((heap * heap) * heap) * heap) * int

val g12_example1138 : (((heap * heap) * heap) * heap) * int

val g12_example1139 : (((heap * heap) * heap) * heap) * int

val g12_example1140 : (((heap * heap) * heap) * heap) * int

val g12_example1141 : (((heap * heap) * heap) * heap) * int

val g12_example1142 : (((heap * heap) * heap) * heap) * int

val g12_example1143 : (((heap * heap) * heap) * heap) * int

val g12_example1144 : (((heap * heap) * heap) * heap) * int

val g12_example1145 : (((heap * heap) * heap) * heap) * int

val g12_example1146 : (((heap * heap) * heap) * heap) * int

val g12_example1147 : (((heap * heap) * heap) * heap) * int

val g12_example1148 : (((heap * heap) * heap) * heap) * int

val g12_example1149 : (((heap * heap) * heap) * heap) * int

val g12_example1150 : (((heap * heap) * heap) * heap) * int

val g12_example1151 : (((heap * heap) * heap) * heap) * int

val g12_example1152 : (((heap * heap) * heap) * heap) * int

val g12_example1153 : (((heap * heap) * heap) * heap) * int

val g12_example1154 : (((heap * heap) * heap) * heap) * int

val g12_example1155 : (((heap * heap) * heap) * heap) * int

val g12_example1156 : (((heap * heap) * heap) * heap) * int

val g12_example1157 : (((heap * heap) * heap) * heap) * int

val g12_example1158 : (((heap * heap) * heap) * heap) * int

val g12_example1159 : (((heap * heap) * heap) * heap) * int

val g12_example1160 : (((heap * heap) * heap) * heap) * int

val g12_example1161 : (((heap * heap) * heap) * heap) * int

val g12_example1162 : (((heap * heap) * heap) * heap) * int

val g12_example1163 : (((heap * heap) * heap) * heap) * int

val g12_example1164 : (((heap * heap) * heap) * heap) * int

val g12_example1165 : (((heap * heap) * heap) * heap) * int

val g12_example1166 : (((heap * heap) * heap) * heap) * int

val g12_example1167 : (((heap * heap) * heap) * heap) * int

val g12_example1168 : (((heap * heap) * heap) * heap) * int

val g12_example1169 : (((heap * heap) * heap) * heap) * int

val g12_example1170 : (((heap * heap) * heap) * heap) * int

val g12_example1171 : (((heap * heap) * heap) * heap) * int

val g12_example1172 : (((heap * heap) * heap) * heap) * int

val g12_example1173 : (((heap * heap) * heap) * heap) * int

val g12_example1174 : (((heap * heap) * heap) * heap) * int

val g12_example1175 : (((heap * heap) * heap) * heap) * int

val g12_example1176 : (((heap * heap) * heap) * heap) * int

val g12_example1177 : (((heap * heap) * heap) * heap) * int

val g12_example1178 : (((heap * heap) * heap) * heap) * int

val g12_example1179 : (((heap * heap) * heap) * heap) * int

val g12_example1180 : (((heap * heap) * heap) * heap) * int

val g12_example1181 : (((heap * heap) * heap) * heap) * int

val g12_example1182 : (((heap * heap) * heap) * heap) * int

val g12_example1183 : (((heap * heap) * heap) * heap) * int

val g12_example1184 : (((heap * heap) * heap) * heap) * int

val g12_example1185 : (((heap * heap) * heap) * heap) * int

val g12_example1186 : (((heap * heap) * heap) * heap) * int

val g12_example1187 : (((heap * heap) * heap) * heap) * int

val g12_example1188 : (((heap * heap) * heap) * heap) * int

val g12_example1189 : (((heap * heap) * heap) * heap) * int

val g12_example1190 : (((heap * heap) * heap) * heap) * int

val g12_example1191 : (((heap * heap) * heap) * heap) * int

val g12_example1192 : (((heap * heap) * heap) * heap) * int

val g12_example1193 : (((heap * heap) * heap) * heap) * int

val g12_example1194 : (((heap * heap) * heap) * heap) * int

val g12_example1195 : (((heap * heap) * heap) * heap) * int

val g12_example1196 : (((heap * heap) * heap) * heap) * int

val g12_example1197 : (((heap * heap) * heap) * heap) * int

val g12_example1198 : (((heap * heap) * heap) * heap) * int

val g12_example1199 : (((heap * heap) * heap) * heap) * int

val g12_example1200 : (((heap * heap) * heap) * heap) * int

val g12_example1201 : (((heap * heap) * heap) * heap) * int

val g12_example1202 : (((heap * heap) * heap) * heap) * int

val g12_example1203 : (((heap * heap) * heap) * heap) * int

val g12_example1204 : (((heap * heap) * heap) * heap) * int

val g12_example1205 : (((heap * heap) * heap) * heap) * int

val g12_example1206 : (((heap * heap) * heap) * heap) * int

val g12_example1207 : (((heap * heap) * heap) * heap) * int

val g12_example1208 : (((heap * heap) * heap) * heap) * int

val g12_example1209 : (((heap * heap) * heap) * heap) * int

val g12_example1210 : (((heap * heap) * heap) * heap) * int

val g12_example1211 : (((heap * heap) * heap) * heap) * int

val g12_example1212 : (((heap * heap) * heap) * heap) * int

val g12_example1213 : (((heap * heap) * heap) * heap) * int

val g12_example1214 : (((heap * heap) * heap) * heap) * int

val g12_example1215 : (((heap * heap) * heap) * heap) * int

val g12_example1216 : (((heap * heap) * heap) * heap) * int

val g12_example1217 : (((heap * heap) * heap) * heap) * int

val g12_example1218 : (((heap * heap) * heap) * heap) * int

val g12_example1219 : (((heap * heap) * heap) * heap) * int

val g12_example1220 : (((heap * heap) * heap) * heap) * int

val g12_example1221 : (((heap * heap) * heap) * heap) * int

val g12_example1222 : (((heap * heap) * heap) * heap) * int

val g12_example1223 : (((heap * heap) * heap) * heap) * int

val g12_example1224 : (((heap * heap) * heap) * heap) * int

val g12_example1225 : (((heap * heap) * heap) * heap) * int

val g12_example1226 : (((heap * heap) * heap) * heap) * int

val g12_example1227 : (((heap * heap) * heap) * heap) * int

val g12_example1228 : (((heap * heap) * heap) * heap) * int

val g12_example1229 : (((heap * heap) * heap) * heap) * int

val g12_example1230 : (((heap * heap) * heap) * heap) * int

val g12_example1231 : (((heap * heap) * heap) * heap) * int

val g12_example1232 : (((heap * heap) * heap) * heap) * int

val g12_example1233 : (((heap * heap) * heap) * heap) * int

val g12_example1234 : (((heap * heap) * heap) * heap) * int

val g12_example1235 : (((heap * heap) * heap) * heap) * int

val g12_example1236 : (((heap * heap) * heap) * heap) * int

val g12_example1237 : (((heap * heap) * heap) * heap) * int

val g12_example1238 : (((heap * heap) * heap) * heap) * int

val g12_example1239 : (((heap * heap) * heap) * heap) * int

val g12_example1240 : (((heap * heap) * heap) * heap) * int

val g12_example1241 : (((heap * heap) * heap) * heap) * int

val g12_example1242 : (((heap * heap) * heap) * heap) * int

val g12_example1243 : (((heap * heap) * heap) * heap) * int

val g12_example1244 : (((heap * heap) * heap) * heap) * int

val g12_example1245 : (((heap * heap) * heap) * heap) * int

val g12_example1246 : (((heap * heap) * heap) * heap) * int

val g12_example1247 : (((heap * heap) * heap) * heap) * int

val g12_example1248 : (((heap * heap) * heap) * heap) * int

val g12_example1249 : (((heap * heap) * heap) * heap) * int

val g12_example1250 : (((heap * heap) * heap) * heap) * int

val g12_example1251 : (((heap * heap) * heap) * heap) * int

val g12_example1252 : (((heap * heap) * heap) * heap) * int

val g12_example1253 : (((heap * heap) * heap) * heap) * int

val g12_example1254 : (((heap * heap) * heap) * heap) * int

val g12_example1255 : (((heap * heap) * heap) * heap) * int

val g12_example1256 : (((heap * heap) * heap) * heap) * int

val g12_example1257 : (((heap * heap) * heap) * heap) * int

val g12_example1258 : (((heap * heap) * heap) * heap) * int

val g12_example1259 : (((heap * heap) * heap) * heap) * int

val g12_example1260 : (((heap * heap) * heap) * heap) * int

val g12_example1261 : (((heap * heap) * heap) * heap) * int

val g12_example1262 : (((heap * heap) * heap) * heap) * int

val g12_example1263 : (((heap * heap) * heap) * heap) * int

val g12_example1264 : (((heap * heap) * heap) * heap) * int

val g12_example1265 : (((heap * heap) * heap) * heap) * int

val g12_example1266 : (((heap * heap) * heap) * heap) * int

val g12_example1267 : (((heap * heap) * heap) * heap) * int

val g12_example1268 : (((heap * heap) * heap) * heap) * int

val g12_example1269 : (((heap * heap) * heap) * heap) * int

val g12_example1270 : (((heap * heap) * heap) * heap) * int

val g12_example1271 : (((heap * heap) * heap) * heap) * int

val g12_example1272 : (((heap * heap) * heap) * heap) * int

val g12_example1273 : (((heap * heap) * heap) * heap) * int

val g12_example1274 : (((heap * heap) * heap) * heap) * int

val g12_example1275 : (((heap * heap) * heap) * heap) * int

val g12_example1276 : (((heap * heap) * heap) * heap) * int

val g12_example1277 : (((heap * heap) * heap) * heap) * int

val g12_example1278 : (((heap * heap) * heap) * heap) * int

val g12_example1279 : (((heap * heap) * heap) * heap) * int

val g12_example1280 : (((heap * heap) * heap) * heap) * int

val g12_example1281 : (((heap * heap) * heap) * heap) * int

val g12_example1282 : (((heap * heap) * heap) * heap) * int

val g12_example1283 : (((heap * heap) * heap) * heap) * int

val g12_example1284 : (((heap * heap) * heap) * heap) * int

val g12_example1285 : (((heap * heap) * heap) * heap) * int

val g12_example1286 : (((heap * heap) * heap) * heap) * int

val g12_example1287 : (((heap * heap) * heap) * heap) * int

val g12_example1288 : (((heap * heap) * heap) * heap) * int

val g12_example1289 : (((heap * heap) * heap) * heap) * int

val g12_example1290 : (((heap * heap) * heap) * heap) * int

val g12_example1291 : (((heap * heap) * heap) * heap) * int

val g12_example1292 : (((heap * heap) * heap) * heap) * int

val g12_example1293 : (((heap * heap) * heap) * heap) * int

val g12_example1294 : (((heap * heap) * heap) * heap) * int

val g12_example1295 : (((heap * heap) * heap) * heap) * int

val g12_example1296 : (((heap * heap) * heap) * heap) * int

val g12_example1297 : (((heap * heap) * heap) * heap) * int

val g12_example1298 : (((heap * heap) * heap) * heap) * int

val g12_example1299 : (((heap * heap) * heap) * heap) * int

val g12_example1300 : (((heap * heap) * heap) * heap) * int

val g12_example1301 : (((heap * heap) * heap) * heap) * int

val g12_example1302 : (((heap * heap) * heap) * heap) * int

val g12_example1303 : (((heap * heap) * heap) * heap) * int

val g12_example1304 : (((heap * heap) * heap) * heap) * int

val g12_example1305 : (((heap * heap) * heap) * heap) * int

val g12_example1306 : (((heap * heap) * heap) * heap) * int

val g12_example1307 : (((heap * heap) * heap) * heap) * int

val g12_example1308 : (((heap * heap) * heap) * heap) * int

val g12_example1309 : (((heap * heap) * heap) * heap) * int

val g12_example1310 : (((heap * heap) * heap) * heap) * int

val g12_example1311 : (((heap * heap) * heap) * heap) * int

val g12_example1312 : (((heap * heap) * heap) * heap) * int

val g12_example1313 : (((heap * heap) * heap) * heap) * int

val g12_example1314 : (((heap * heap) * heap) * heap) * int

val g12_example1315 : (((heap * heap) * heap) * heap) * int

val g12_example1316 : (((heap * heap) * heap) * heap) * int

val g12_example1317 : (((heap * heap) * heap) * heap) * int

val g12_example1318 : (((heap * heap) * heap) * heap) * int

val g12_example1319 : (((heap * heap) * heap) * heap) * int

val g12_example1320 : (((heap * heap) * heap) * heap) * int

val g12_example1321 : (((heap * heap) * heap) * heap) * int

val g12_example1322 : (((heap * heap) * heap) * heap) * int

val g12_example1323 : (((heap * heap) * heap) * heap) * int

val g12_example1324 : (((heap * heap) * heap) * heap) * int

val g12_example1325 : (((heap * heap) * heap) * heap) * int

val g12_example1326 : (((heap * heap) * heap) * heap) * int

val g12_example1327 : (((heap * heap) * heap) * heap) * int

val g12_example1328 : (((heap * heap) * heap) * heap) * int

val g12_example1329 : (((heap * heap) * heap) * heap) * int

val g12_example1330 : (((heap * heap) * heap) * heap) * int

val g12_example1331 : (((heap * heap) * heap) * heap) * int

val g12_example1332 : (((heap * heap) * heap) * heap) * int

val g12_example1333 : (((heap * heap) * heap) * heap) * int

val g12_example1334 : (((heap * heap) * heap) * heap) * int

val g12_example1335 : (((heap * heap) * heap) * heap) * int

val g12_example1336 : (((heap * heap) * heap) * heap) * int

val g12_example1337 : (((heap * heap) * heap) * heap) * int

val g12_example1338 : (((heap * heap) * heap) * heap) * int

val g12_example1339 : (((heap * heap) * heap) * heap) * int

val g12_example1340 : (((heap * heap) * heap) * heap) * int

val g12_example1341 : (((heap * heap) * heap) * heap) * int

val g12_example1342 : (((heap * heap) * heap) * heap) * int

val g12_example1343 : (((heap * heap) * heap) * heap) * int

val g12_example1344 : (((heap * heap) * heap) * heap) * int

val g12_example1345 : (((heap * heap) * heap) * heap) * int

val g12_example1346 : (((heap * heap) * heap) * heap) * int

val g12_example1347 : (((heap * heap) * heap) * heap) * int

val g12_example1348 : (((heap * heap) * heap) * heap) * int

val g12_example1349 : (((heap * heap) * heap) * heap) * int

val g12_example1350 : (((heap * heap) * heap) * heap) * int

val g12_example1351 : (((heap * heap) * heap) * heap) * int

val g12_example1352 : (((heap * heap) * heap) * heap) * int

val g12_example1353 : (((heap * heap) * heap) * heap) * int

val g12_example1354 : (((heap * heap) * heap) * heap) * int

val g12_example1355 : (((heap * heap) * heap) * heap) * int

val g12_example1356 : (((heap * heap) * heap) * heap) * int

val g12_example1357 : (((heap * heap) * heap) * heap) * int

val g12_example1358 : (((heap * heap) * heap) * heap) * int

val g12_example1359 : (((heap * heap) * heap) * heap) * int

val g12_example1360 : (((heap * heap) * heap) * heap) * int

val g12_example1361 : (((heap * heap) * heap) * heap) * int

val g12_example1362 : (((heap * heap) * heap) * heap) * int

val g12_example1363 : (((heap * heap) * heap) * heap) * int

val g12_example1364 : (((heap * heap) * heap) * heap) * int

val g12_example1365 : (((heap * heap) * heap) * heap) * int

val g12_example1366 : (((heap * heap) * heap) * heap) * int

val g12_example1367 : (((heap * heap) * heap) * heap) * int

val g12_example1368 : (((heap * heap) * heap) * heap) * int

val g12_example1369 : (((heap * heap) * heap) * heap) * int

val g12_example1370 : (((heap * heap) * heap) * heap) * int

val g12_example1371 : (((heap * heap) * heap) * heap) * int

val g12_example1372 : (((heap * heap) * heap) * heap) * int

val g12_example1373 : (((heap * heap) * heap) * heap) * int

val g12_example1374 : (((heap * heap) * heap) * heap) * int

val g12_example1375 : (((heap * heap) * heap) * heap) * int

val g12_example1376 : (((heap * heap) * heap) * heap) * int

val g12_example1377 : (((heap * heap) * heap) * heap) * int

val g12_example1378 : (((heap * heap) * heap) * heap) * int

val g12_example1379 : (((heap * heap) * heap) * heap) * int

val g12_example1380 : (((heap * heap) * heap) * heap) * int

val g12_example1381 : (((heap * heap) * heap) * heap) * int

val g12_example1382 : (((heap * heap) * heap) * heap) * int

val g12_example1383 : (((heap * heap) * heap) * heap) * int

val g12_example1384 : (((heap * heap) * heap) * heap) * int

val g12_example1385 : (((heap * heap) * heap) * heap) * int

val g12_example1386 : (((heap * heap) * heap) * heap) * int

val g12_example1387 : (((heap * heap) * heap) * heap) * int

val g12_example1388 : (((heap * heap) * heap) * heap) * int

val g12_example1389 : (((heap * heap) * heap) * heap) * int

val g12_example1390 : (((heap * heap) * heap) * heap) * int

val g12_example1391 : (((heap * heap) * heap) * heap) * int

val g12_example1392 : (((heap * heap) * heap) * heap) * int

val g12_example1393 : (((heap * heap) * heap) * heap) * int

val g12_example1394 : (((heap * heap) * heap) * heap) * int

val g12_example1395 : (((heap * heap) * heap) * heap) * int

val g12_example1396 : (((heap * heap) * heap) * heap) * int

val g12_example1397 : (((heap * heap) * heap) * heap) * int

val g12_example1398 : (((heap * heap) * heap) * heap) * int

val g12_example1399 : (((heap * heap) * heap) * heap) * int

val g12_example1400 : (((heap * heap) * heap) * heap) * int

val g12_example1401 : (((heap * heap) * heap) * heap) * int

val g12_example1402 : (((heap * heap) * heap) * heap) * int

val g12_example1403 : (((heap * heap) * heap) * heap) * int

val g12_example1404 : (((heap * heap) * heap) * heap) * int

val g12_example1405 : (((heap * heap) * heap) * heap) * int

val g12_example1406 : (((heap * heap) * heap) * heap) * int

val g12_example1407 : (((heap * heap) * heap) * heap) * int

val g12_example1408 : (((heap * heap) * heap) * heap) * int

val g12_example1409 : (((heap * heap) * heap) * heap) * int

val g12_example1410 : (((heap * heap) * heap) * heap) * int

val g12_example1411 : (((heap * heap) * heap) * heap) * int

val g12_example1412 : (((heap * heap) * heap) * heap) * int

val g12_example1413 : (((heap * heap) * heap) * heap) * int

val g12_example1414 : (((heap * heap) * heap) * heap) * int

val g12_example1415 : (((heap * heap) * heap) * heap) * int

val g12_example1416 : (((heap * heap) * heap) * heap) * int

val g12_example1417 : (((heap * heap) * heap) * heap) * int

val g12_example1418 : (((heap * heap) * heap) * heap) * int

val g12_example1419 : (((heap * heap) * heap) * heap) * int

val g12_example1420 : (((heap * heap) * heap) * heap) * int

val g12_example1421 : (((heap * heap) * heap) * heap) * int

val g12_example1422 : (((heap * heap) * heap) * heap) * int

val g12_example1423 : (((heap * heap) * heap) * heap) * int

val g12_example1424 : (((heap * heap) * heap) * heap) * int

val g12_example1425 : (((heap * heap) * heap) * heap) * int

val g12_example1426 : (((heap * heap) * heap) * heap) * int

val g12_example1427 : (((heap * heap) * heap) * heap) * int

val g12_example1428 : (((heap * heap) * heap) * heap) * int

val g12_example1429 : (((heap * heap) * heap) * heap) * int

val g12_example1430 : (((heap * heap) * heap) * heap) * int

val g12_example1431 : (((heap * heap) * heap) * heap) * int

val g12_example1432 : (((heap * heap) * heap) * heap) * int

val g12_example1433 : (((heap * heap) * heap) * heap) * int

val g12_example1434 : (((heap * heap) * heap) * heap) * int

val g12_example1435 : (((heap * heap) * heap) * heap) * int

val g12_example1436 : (((heap * heap) * heap) * heap) * int

val g12_example1437 : (((heap * heap) * heap) * heap) * int

val g12_example1438 : (((heap * heap) * heap) * heap) * int

val g12_example1439 : (((heap * heap) * heap) * heap) * int

val g12_example1440 : (((heap * heap) * heap) * heap) * int

val g12_example1441 : (((heap * heap) * heap) * heap) * int

val g12_example1442 : (((heap * heap) * heap) * heap) * int

val g12_example1443 : (((heap * heap) * heap) * heap) * int

val g12_example1444 : (((heap * heap) * heap) * heap) * int

val g12_example1445 : (((heap * heap) * heap) * heap) * int

val g12_example1446 : (((heap * heap) * heap) * heap) * int

val g12_example1447 : (((heap * heap) * heap) * heap) * int

val g12_example1448 : (((heap * heap) * heap) * heap) * int

val g12_example1449 : (((heap * heap) * heap) * heap) * int

val g12_example1450 : (((heap * heap) * heap) * heap) * int

val g12_example1451 : (((heap * heap) * heap) * heap) * int

val g12_example1452 : (((heap * heap) * heap) * heap) * int

val g12_example1453 : (((heap * heap) * heap) * heap) * int

val g12_example1454 : (((heap * heap) * heap) * heap) * int

val g12_example1455 : (((heap * heap) * heap) * heap) * int

val g12_example1456 : (((heap * heap) * heap) * heap) * int

val g12_example1457 : (((heap * heap) * heap) * heap) * int

val g12_example1458 : (((heap * heap) * heap) * heap) * int

val g12_example1459 : (((heap * heap) * heap) * heap) * int

val g12_example1460 : (((heap * heap) * heap) * heap) * int

val g12_example1461 : (((heap * heap) * heap) * heap) * int

val g12_example1462 : (((heap * heap) * heap) * heap) * int

val g12_example1463 : (((heap * heap) * heap) * heap) * int

val g12_example1464 : (((heap * heap) * heap) * heap) * int

val g12_example1465 : (((heap * heap) * heap) * heap) * int

val g12_example1466 : (((heap * heap) * heap) * heap) * int

val g12_example1467 : (((heap * heap) * heap) * heap) * int

val g12_example1468 : (((heap * heap) * heap) * heap) * int

val g12_example1469 : (((heap * heap) * heap) * heap) * int

val g12_example1470 : (((heap * heap) * heap) * heap) * int

val g12_example1471 : (((heap * heap) * heap) * heap) * int

val g12_example1472 : (((heap * heap) * heap) * heap) * int

val g12_example1473 : (((heap * heap) * heap) * heap) * int

val g12_example1474 : (((heap * heap) * heap) * heap) * int

val g12_example1475 : (((heap * heap) * heap) * heap) * int

val g12_example1476 : (((heap * heap) * heap) * heap) * int

val g12_example1477 : (((heap * heap) * heap) * heap) * int

val g12_example1478 : (((heap * heap) * heap) * heap) * int

val g12_example1479 : (((heap * heap) * heap) * heap) * int

val g12_example1480 : (((heap * heap) * heap) * heap) * int

val g12_example1481 : (((heap * heap) * heap) * heap) * int

val g12_example1482 : (((heap * heap) * heap) * heap) * int

val g12_example1483 : (((heap * heap) * heap) * heap) * int

val g12_example1484 : (((heap * heap) * heap) * heap) * int

val g12_example1485 : (((heap * heap) * heap) * heap) * int

val g12_example1486 : (((heap * heap) * heap) * heap) * int

val g12_example1487 : (((heap * heap) * heap) * heap) * int

val g12_example1488 : (((heap * heap) * heap) * heap) * int

val g12_example1489 : (((heap * heap) * heap) * heap) * int

val g12_example1490 : (((heap * heap) * heap) * heap) * int

val g12_example1491 : (((heap * heap) * heap) * heap) * int

val g12_example1492 : (((heap * heap) * heap) * heap) * int

val g12_example1493 : (((heap * heap) * heap) * heap) * int

val g12_example1494 : (((heap * heap) * heap) * heap) * int

val g12_example1495 : (((heap * heap) * heap) * heap) * int

val g12_example1496 : (((heap * heap) * heap) * heap) * int

val g12_example1497 : (((heap * heap) * heap) * heap) * int

val g12_example1498 : (((heap * heap) * heap) * heap) * int

val g12_example1499 : (((heap * heap) * heap) * heap) * int

val g12_example1500 : (((heap * heap) * heap) * heap) * int

val g12_example1501 : (((heap * heap) * heap) * heap) * int

val g12_example1502 : (((heap * heap) * heap) * heap) * int

val g12_example1503 : (((heap * heap) * heap) * heap) * int

val g12_example1504 : (((heap * heap) * heap) * heap) * int

val g12_example1505 : (((heap * heap) * heap) * heap) * int

val g12_example1506 : (((heap * heap) * heap) * heap) * int

val g12_example1507 : (((heap * heap) * heap) * heap) * int

val g12_example1508 : (((heap * heap) * heap) * heap) * int

val g12_example1509 : (((heap * heap) * heap) * heap) * int

val g12_example1510 : (((heap * heap) * heap) * heap) * int

val g12_example1511 : (((heap * heap) * heap) * heap) * int

val g12_example1512 : (((heap * heap) * heap) * heap) * int

val g12_example1513 : (((heap * heap) * heap) * heap) * int

val g12_example1514 : (((heap * heap) * heap) * heap) * int

val g12_example1515 : (((heap * heap) * heap) * heap) * int

val g12_example1516 : (((heap * heap) * heap) * heap) * int

val g12_example1517 : (((heap * heap) * heap) * heap) * int

val g12_example1518 : (((heap * heap) * heap) * heap) * int

val g12_example1519 : (((heap * heap) * heap) * heap) * int

val g12_example1520 : (((heap * heap) * heap) * heap) * int

val g12_example1521 : (((heap * heap) * heap) * heap) * int

val g12_example1522 : (((heap * heap) * heap) * heap) * int

val g12_example1523 : (((heap * heap) * heap) * heap) * int

val g12_example1524 : (((heap * heap) * heap) * heap) * int

val g12_example1525 : (((heap * heap) * heap) * heap) * int

val g12_example1526 : (((heap * heap) * heap) * heap) * int

val g12_example1527 : (((heap * heap) * heap) * heap) * int

val g12_example1528 : (((heap * heap) * heap) * heap) * int

val g12_example1529 : (((heap * heap) * heap) * heap) * int

val g12_example1530 : (((heap * heap) * heap) * heap) * int

val g12_example1531 : (((heap * heap) * heap) * heap) * int

val g12_example1532 : (((heap * heap) * heap) * heap) * int

val g12_example1533 : (((heap * heap) * heap) * heap) * int

val g12_example1534 : (((heap * heap) * heap) * heap) * int

val g12_example1535 : (((heap * heap) * heap) * heap) * int

val g12_example1536 : (((heap * heap) * heap) * heap) * int

val g12_example1537 : (((heap * heap) * heap) * heap) * int

val g12_example1538 : (((heap * heap) * heap) * heap) * int

val g12_example1539 : (((heap * heap) * heap) * heap) * int

val g12_example1540 : (((heap * heap) * heap) * heap) * int

val g12_example1541 : (((heap * heap) * heap) * heap) * int

val g12_example1542 : (((heap * heap) * heap) * heap) * int

val g12_example1543 : (((heap * heap) * heap) * heap) * int

val g12_example1544 : (((heap * heap) * heap) * heap) * int

val g12_example1545 : (((heap * heap) * heap) * heap) * int

val g12_example1546 : (((heap * heap) * heap) * heap) * int

val g12_example1547 : (((heap * heap) * heap) * heap) * int

val g12_example1548 : (((heap * heap) * heap) * heap) * int

val g12_example1549 : (((heap * heap) * heap) * heap) * int

val g12_example1550 : (((heap * heap) * heap) * heap) * int

val g12_example1551 : (((heap * heap) * heap) * heap) * int

val g12_example1552 : (((heap * heap) * heap) * heap) * int

val g12_example1553 : (((heap * heap) * heap) * heap) * int

val g12_example1554 : (((heap * heap) * heap) * heap) * int

val g12_example1555 : (((heap * heap) * heap) * heap) * int

val g12_example1556 : (((heap * heap) * heap) * heap) * int

val g12_example1557 : (((heap * heap) * heap) * heap) * int

val g12_example1558 : (((heap * heap) * heap) * heap) * int

val g12_example1559 : (((heap * heap) * heap) * heap) * int

val g12_example1560 : (((heap * heap) * heap) * heap) * int

val g12_example1561 : (((heap * heap) * heap) * heap) * int

val g12_example1562 : (((heap * heap) * heap) * heap) * int

val g12_example1563 : (((heap * heap) * heap) * heap) * int

val g12_example1564 : (((heap * heap) * heap) * heap) * int

val g12_example1565 : (((heap * heap) * heap) * heap) * int

val g12_example1566 : (((heap * heap) * heap) * heap) * int

val g12_example1567 : (((heap * heap) * heap) * heap) * int

val g12_example1568 : (((heap * heap) * heap) * heap) * int

val g12_example1569 : (((heap * heap) * heap) * heap) * int

val g12_example1570 : (((heap * heap) * heap) * heap) * int

val g12_example1571 : (((heap * heap) * heap) * heap) * int

val g12_example1572 : (((heap * heap) * heap) * heap) * int

val g12_example1573 : (((heap * heap) * heap) * heap) * int

val g12_example1574 : (((heap * heap) * heap) * heap) * int

val g12_example1575 : (((heap * heap) * heap) * heap) * int

val g12_example1576 : (((heap * heap) * heap) * heap) * int

val g12_example1577 : (((heap * heap) * heap) * heap) * int

val g12_example1578 : (((heap * heap) * heap) * heap) * int

val g12_example1579 : (((heap * heap) * heap) * heap) * int

val g12_example1580 : (((heap * heap) * heap) * heap) * int

val g12_example1581 : (((heap * heap) * heap) * heap) * int

val g12_example1582 : (((heap * heap) * heap) * heap) * int

val g12_example1583 : (((heap * heap) * heap) * heap) * int

val g12_example1584 : (((heap * heap) * heap) * heap) * int

val g12_example1585 : (((heap * heap) * heap) * heap) * int

val g12_example1586 : (((heap * heap) * heap) * heap) * int

val g12_example1587 : (((heap * heap) * heap) * heap) * int

val g12_example1588 : (((heap * heap) * heap) * heap) * int

val g12_example1589 : (((heap * heap) * heap) * heap) * int

val g12_example1590 : (((heap * heap) * heap) * heap) * int

val g12_example1591 : (((heap * heap) * heap) * heap) * int

val g12_example1592 : (((heap * heap) * heap) * heap) * int

val g12_example1593 : (((heap * heap) * heap) * heap) * int

val g12_example1594 : (((heap * heap) * heap) * heap) * int

val g12_example1595 : (((heap * heap) * heap) * heap) * int

val g12_example1596 : (((heap * heap) * heap) * heap) * int

val g12_example1597 : (((heap * heap) * heap) * heap) * int

val g12_example1598 : (((heap * heap) * heap) * heap) * int

val g12_example1599 : (((heap * heap) * heap) * heap) * int

val g12_example1600 : (((heap * heap) * heap) * heap) * int

val g12_example1601 : (((heap * heap) * heap) * heap) * int

val g12_example1602 : (((heap * heap) * heap) * heap) * int

val g12_example1603 : (((heap * heap) * heap) * heap) * int

val g12_example1604 : (((heap * heap) * heap) * heap) * int

val g12_example1605 : (((heap * heap) * heap) * heap) * int

val g12_example1606 : (((heap * heap) * heap) * heap) * int

val g12_example1607 : (((heap * heap) * heap) * heap) * int

val g12_example1608 : (((heap * heap) * heap) * heap) * int

val g12_example1609 : (((heap * heap) * heap) * heap) * int

val g12_example1610 : (((heap * heap) * heap) * heap) * int

val g12_example1611 : (((heap * heap) * heap) * heap) * int

val g12_example1612 : (((heap * heap) * heap) * heap) * int

val g12_example1613 : (((heap * heap) * heap) * heap) * int

val g12_example1614 : (((heap * heap) * heap) * heap) * int

val g12_example1615 : (((heap * heap) * heap) * heap) * int

val g12_example1616 : (((heap * heap) * heap) * heap) * int

val g12_example1617 : (((heap * heap) * heap) * heap) * int

val g12_example1618 : (((heap * heap) * heap) * heap) * int

val g12_example1619 : (((heap * heap) * heap) * heap) * int

val g12_example1620 : (((heap * heap) * heap) * heap) * int

val g12_example1621 : (((heap * heap) * heap) * heap) * int

val g12_example1622 : (((heap * heap) * heap) * heap) * int

val g12_example1623 : (((heap * heap) * heap) * heap) * int

val g12_example1624 : (((heap * heap) * heap) * heap) * int

val g12_example1625 : (((heap * heap) * heap) * heap) * int

val g12_example1626 : (((heap * heap) * heap) * heap) * int

val g12_example1627 : (((heap * heap) * heap) * heap) * int

val g12_example1628 : (((heap * heap) * heap) * heap) * int

val g12_example1629 : (((heap * heap) * heap) * heap) * int

val g12_example1630 : (((heap * heap) * heap) * heap) * int

val g12_example1631 : (((heap * heap) * heap) * heap) * int

val g12_example1632 : (((heap * heap) * heap) * heap) * int

val g12_example1633 : (((heap * heap) * heap) * heap) * int

val g12_example1634 : (((heap * heap) * heap) * heap) * int

val g12_example1635 : (((heap * heap) * heap) * heap) * int

val g12_example1636 : (((heap * heap) * heap) * heap) * int

val g12_example1637 : (((heap * heap) * heap) * heap) * int

val g12_example1638 : (((heap * heap) * heap) * heap) * int

val g12_example1639 : (((heap * heap) * heap) * heap) * int

val g12_example1640 : (((heap * heap) * heap) * heap) * int

val g12_example1641 : (((heap * heap) * heap) * heap) * int

val g12_example1642 : (((heap * heap) * heap) * heap) * int

val g12_example1643 : (((heap * heap) * heap) * heap) * int

val g12_example1644 : (((heap * heap) * heap) * heap) * int

val g12_example1645 : (((heap * heap) * heap) * heap) * int

val g12_example1646 : (((heap * heap) * heap) * heap) * int

val g12_example1647 : (((heap * heap) * heap) * heap) * int

val g12_example1648 : (((heap * heap) * heap) * heap) * int

val g12_example1649 : (((heap * heap) * heap) * heap) * int

val g12_example1650 : (((heap * heap) * heap) * heap) * int

val g12_example1651 : (((heap * heap) * heap) * heap) * int

val g12_example1652 : (((heap * heap) * heap) * heap) * int

val g12_example1653 : (((heap * heap) * heap) * heap) * int

val g12_example1654 : (((heap * heap) * heap) * heap) * int

val g12_example1655 : (((heap * heap) * heap) * heap) * int

val g12_example1656 : (((heap * heap) * heap) * heap) * int

val g12_example1657 : (((heap * heap) * heap) * heap) * int

val g12_example1658 : (((heap * heap) * heap) * heap) * int

val g12_example1659 : (((heap * heap) * heap) * heap) * int

val g12_example1660 : (((heap * heap) * heap) * heap) * int

val g12_example1661 : (((heap * heap) * heap) * heap) * int

val g12_example1662 : (((heap * heap) * heap) * heap) * int

val g12_example1663 : (((heap * heap) * heap) * heap) * int

val g12_example1664 : (((heap * heap) * heap) * heap) * int

val g12_example1665 : (((heap * heap) * heap) * heap) * int

val g12_example1666 : (((heap * heap) * heap) * heap) * int

val g12_example1667 : (((heap * heap) * heap) * heap) * int

val g12_example1668 : (((heap * heap) * heap) * heap) * int

val g12_example1669 : (((heap * heap) * heap) * heap) * int

val g12_example1670 : (((heap * heap) * heap) * heap) * int

val g12_example1671 : (((heap * heap) * heap) * heap) * int

val g12_example1672 : (((heap * heap) * heap) * heap) * int

val g12_example1673 : (((heap * heap) * heap) * heap) * int

val g12_example1674 : (((heap * heap) * heap) * heap) * int

val g12_example1675 : (((heap * heap) * heap) * heap) * int

val g12_example1676 : (((heap * heap) * heap) * heap) * int

val g12_example1677 : (((heap * heap) * heap) * heap) * int

val g12_example1678 : (((heap * heap) * heap) * heap) * int

val g12_example1679 : (((heap * heap) * heap) * heap) * int

val g12_example1680 : (((heap * heap) * heap) * heap) * int

val g12_example1681 : (((heap * heap) * heap) * heap) * int

val g12_example1682 : (((heap * heap) * heap) * heap) * int

val g12_example1683 : (((heap * heap) * heap) * heap) * int

val g12_example1684 : (((heap * heap) * heap) * heap) * int

val g12_example1685 : (((heap * heap) * heap) * heap) * int

val g12_example1686 : (((heap * heap) * heap) * heap) * int

val g12_example1687 : (((heap * heap) * heap) * heap) * int

val g12_example1688 : (((heap * heap) * heap) * heap) * int

val g12_example1689 : (((heap * heap) * heap) * heap) * int

val g12_example1690 : (((heap * heap) * heap) * heap) * int

val g12_example1691 : (((heap * heap) * heap) * heap) * int

val g12_example1692 : (((heap * heap) * heap) * heap) * int

val g12_example1693 : (((heap * heap) * heap) * heap) * int

val g12_example1694 : (((heap * heap) * heap) * heap) * int

val g12_example1695 : (((heap * heap) * heap) * heap) * int

val g12_example1696 : (((heap * heap) * heap) * heap) * int

val g12_example1697 : (((heap * heap) * heap) * heap) * int

val g12_example1698 : (((heap * heap) * heap) * heap) * int

val g12_example1699 : (((heap * heap) * heap) * heap) * int

val g12_example1700 : (((heap * heap) * heap) * heap) * int

val g12_example1701 : (((heap * heap) * heap) * heap) * int

val g12_example1702 : (((heap * heap) * heap) * heap) * int

val g12_example1703 : (((heap * heap) * heap) * heap) * int

val g12_example1704 : (((heap * heap) * heap) * heap) * int

val g12_example1705 : (((heap * heap) * heap) * heap) * int

val g12_example1706 : (((heap * heap) * heap) * heap) * int

val g12_example1707 : (((heap * heap) * heap) * heap) * int

val g12_example1708 : (((heap * heap) * heap) * heap) * int

val g12_example1709 : (((heap * heap) * heap) * heap) * int

val g12_example1710 : (((heap * heap) * heap) * heap) * int

val g12_example1711 : (((heap * heap) * heap) * heap) * int

val g12_example1712 : (((heap * heap) * heap) * heap) * int

val g12_example1713 : (((heap * heap) * heap) * heap) * int

val g12_example1714 : (((heap * heap) * heap) * heap) * int

val g12_example1715 : (((heap * heap) * heap) * heap) * int

val g12_example1716 : (((heap * heap) * heap) * heap) * int

val g12_example1717 : (((heap * heap) * heap) * heap) * int

val g12_example1718 : (((heap * heap) * heap) * heap) * int

val g12_example1719 : (((heap * heap) * heap) * heap) * int

val g12_example1720 : (((heap * heap) * heap) * heap) * int

val g12_example1721 : (((heap * heap) * heap) * heap) * int

val g12_example1722 : (((heap * heap) * heap) * heap) * int

val g12_example1723 : (((heap * heap) * heap) * heap) * int

val g12_example1724 : (((heap * heap) * heap) * heap) * int

val g12_example1725 : (((heap * heap) * heap) * heap) * int

val g12_example1726 : (((heap * heap) * heap) * heap) * int

val g12_example1727 : (((heap * heap) * heap) * heap) * int

val g12_example1728 : (((heap * heap) * heap) * heap) * int

val g12_example1729 : (((heap * heap) * heap) * heap) * int

val g12_example1730 : (((heap * heap) * heap) * heap) * int

val g12_example1731 : (((heap * heap) * heap) * heap) * int

val g12_example1732 : (((heap * heap) * heap) * heap) * int

val g12_example1733 : (((heap * heap) * heap) * heap) * int

val g12_example1734 : (((heap * heap) * heap) * heap) * int

val g12_example1735 : (((heap * heap) * heap) * heap) * int

val g12_example1736 : (((heap * heap) * heap) * heap) * int

val g12_example1737 : (((heap * heap) * heap) * heap) * int

val g12_example1738 : (((heap * heap) * heap) * heap) * int

val g12_example1739 : (((heap * heap) * heap) * heap) * int

val g12_example1740 : (((heap * heap) * heap) * heap) * int

val g12_example1741 : (((heap * heap) * heap) * heap) * int

val g12_example1742 : (((heap * heap) * heap) * heap) * int

val g12_example1743 : (((heap * heap) * heap) * heap) * int

val g12_example1744 : (((heap * heap) * heap) * heap) * int

val g12_example1745 : (((heap * heap) * heap) * heap) * int

val g12_example1746 : (((heap * heap) * heap) * heap) * int

val g12_example1747 : (((heap * heap) * heap) * heap) * int

val g12_example1748 : (((heap * heap) * heap) * heap) * int

val g12_example1749 : (((heap * heap) * heap) * heap) * int

val g12_example1750 : (((heap * heap) * heap) * heap) * int

val g12_example1751 : (((heap * heap) * heap) * heap) * int

val g12_example1752 : (((heap * heap) * heap) * heap) * int

val g12_example1753 : (((heap * heap) * heap) * heap) * int

val g12_example1754 : (((heap * heap) * heap) * heap) * int

val g12_example1755 : (((heap * heap) * heap) * heap) * int

val g12_example1756 : (((heap * heap) * heap) * heap) * int

val g12_example1757 : (((heap * heap) * heap) * heap) * int

val g12_example1758 : (((heap * heap) * heap) * heap) * int

val g12_example1759 : (((heap * heap) * heap) * heap) * int

val g12_example1760 : (((heap * heap) * heap) * heap) * int

val g12_example1761 : (((heap * heap) * heap) * heap) * int

val g12_example1762 : (((heap * heap) * heap) * heap) * int

val g12_example1763 : (((heap * heap) * heap) * heap) * int

val g12_example1764 : (((heap * heap) * heap) * heap) * int

val g12_example1765 : (((heap * heap) * heap) * heap) * int

val g12_example1766 : (((heap * heap) * heap) * heap) * int

val g12_example1767 : (((heap * heap) * heap) * heap) * int

val g12_example1768 : (((heap * heap) * heap) * heap) * int

val g12_example1769 : (((heap * heap) * heap) * heap) * int

val g12_example1770 : (((heap * heap) * heap) * heap) * int

val g12_example1771 : (((heap * heap) * heap) * heap) * int

val g12_example1772 : (((heap * heap) * heap) * heap) * int

val g12_example1773 : (((heap * heap) * heap) * heap) * int

val g12_example1774 : (((heap * heap) * heap) * heap) * int

val g12_example1775 : (((heap * heap) * heap) * heap) * int

val g12_example1776 : (((heap * heap) * heap) * heap) * int

val g12_example1777 : (((heap * heap) * heap) * heap) * int

val g12_example1778 : (((heap * heap) * heap) * heap) * int

val g12_example1779 : (((heap * heap) * heap) * heap) * int

val g12_example1780 : (((heap * heap) * heap) * heap) * int

val g12_example1781 : (((heap * heap) * heap) * heap) * int

val g12_example1782 : (((heap * heap) * heap) * heap) * int

val g12_example1783 : (((heap * heap) * heap) * heap) * int

val g12_example1784 : (((heap * heap) * heap) * heap) * int

val g12_example1785 : (((heap * heap) * heap) * heap) * int

val g12_example1786 : (((heap * heap) * heap) * heap) * int

val g12_example1787 : (((heap * heap) * heap) * heap) * int

val g12_example1788 : (((heap * heap) * heap) * heap) * int

val g12_example1789 : (((heap * heap) * heap) * heap) * int

val g12_example1790 : (((heap * heap) * heap) * heap) * int

val g12_example1791 : (((heap * heap) * heap) * heap) * int

val g12_example1792 : (((heap * heap) * heap) * heap) * int

val g12_example1793 : (((heap * heap) * heap) * heap) * int

val g12_example1794 : (((heap * heap) * heap) * heap) * int

val g12_example1795 : (((heap * heap) * heap) * heap) * int

val g12_example1796 : (((heap * heap) * heap) * heap) * int

val g12_example1797 : (((heap * heap) * heap) * heap) * int

val g12_example1798 : (((heap * heap) * heap) * heap) * int

val g12_example1799 : (((heap * heap) * heap) * heap) * int

val g12_example1800 : (((heap * heap) * heap) * heap) * int

val g12_example1801 : (((heap * heap) * heap) * heap) * int

val g12_example1802 : (((heap * heap) * heap) * heap) * int

val g12_example1803 : (((heap * heap) * heap) * heap) * int

val g12_example1804 : (((heap * heap) * heap) * heap) * int

val g12_example1805 : (((heap * heap) * heap) * heap) * int

val g12_example1806 : (((heap * heap) * heap) * heap) * int

val g12_example1807 : (((heap * heap) * heap) * heap) * int

val g12_example1808 : (((heap * heap) * heap) * heap) * int

val g12_example1809 : (((heap * heap) * heap) * heap) * int

val g12_example1810 : (((heap * heap) * heap) * heap) * int

val g12_example1811 : (((heap * heap) * heap) * heap) * int

val g12_example1812 : (((heap * heap) * heap) * heap) * int

val g12_example1813 : (((heap * heap) * heap) * heap) * int

val g12_example1814 : (((heap * heap) * heap) * heap) * int

val g12_example1815 : (((heap * heap) * heap) * heap) * int

val g12_example1816 : (((heap * heap) * heap) * heap) * int

val g12_example1817 : (((heap * heap) * heap) * heap) * int

val g12_example1818 : (((heap * heap) * heap) * heap) * int

val g12_example1819 : (((heap * heap) * heap) * heap) * int

val g12_example1820 : (((heap * heap) * heap) * heap) * int

val g12_example1821 : (((heap * heap) * heap) * heap) * int

val g12_example1822 : (((heap * heap) * heap) * heap) * int

val g12_example1823 : (((heap * heap) * heap) * heap) * int

val g12_example1824 : (((heap * heap) * heap) * heap) * int

val g12_example1825 : (((heap * heap) * heap) * heap) * int

val g12_example1826 : (((heap * heap) * heap) * heap) * int

val g12_example1827 : (((heap * heap) * heap) * heap) * int

val g12_example1828 : (((heap * heap) * heap) * heap) * int

val g12_example1829 : (((heap * heap) * heap) * heap) * int

val g12_example1830 : (((heap * heap) * heap) * heap) * int

val g12_example1831 : (((heap * heap) * heap) * heap) * int

val g12_example1832 : (((heap * heap) * heap) * heap) * int

val g12_example1833 : (((heap * heap) * heap) * heap) * int

val g12_example1834 : (((heap * heap) * heap) * heap) * int

val g12_example1835 : (((heap * heap) * heap) * heap) * int

val g12_example1836 : (((heap * heap) * heap) * heap) * int

val g12_example1837 : (((heap * heap) * heap) * heap) * int

val g12_example1838 : (((heap * heap) * heap) * heap) * int

val g12_example1839 : (((heap * heap) * heap) * heap) * int

val g12_example1840 : (((heap * heap) * heap) * heap) * int

val g12_example1841 : (((heap * heap) * heap) * heap) * int

val g12_example1842 : (((heap * heap) * heap) * heap) * int

val g12_example1843 : (((heap * heap) * heap) * heap) * int

val g12_example1844 : (((heap * heap) * heap) * heap) * int

val g12_example1845 : (((heap * heap) * heap) * heap) * int

val g12_example1846 : (((heap * heap) * heap) * heap) * int

val g12_example1847 : (((heap * heap) * heap) * heap) * int

val g12_example1848 : (((heap * heap) * heap) * heap) * int

val g12_example1849 : (((heap * heap) * heap) * heap) * int

val g12_example1850 : (((heap * heap) * heap) * heap) * int

val g12_example1851 : (((heap * heap) * heap) * heap) * int

val g12_example1852 : (((heap * heap) * heap) * heap) * int

val g12_example1853 : (((heap * heap) * heap) * heap) * int

val g12_example1854 : (((heap * heap) * heap) * heap) * int

val g12_example1855 : (((heap * heap) * heap) * heap) * int

val g12_example1856 : (((heap * heap) * heap) * heap) * int

val g12_example1857 : (((heap * heap) * heap) * heap) * int

val g12_example1858 : (((heap * heap) * heap) * heap) * int

val g12_example1859 : (((heap * heap) * heap) * heap) * int

val g12_example1860 : (((heap * heap) * heap) * heap) * int

val g12_example1861 : (((heap * heap) * heap) * heap) * int

val g12_example1862 : (((heap * heap) * heap) * heap) * int

val g12_example1863 : (((heap * heap) * heap) * heap) * int

val g12_example1864 : (((heap * heap) * heap) * heap) * int

val g12_example1865 : (((heap * heap) * heap) * heap) * int

val g12_example1866 : (((heap * heap) * heap) * heap) * int

val g12_example1867 : (((heap * heap) * heap) * heap) * int

val g12_example1868 : (((heap * heap) * heap) * heap) * int

val g12_example1869 : (((heap * heap) * heap) * heap) * int

val g12_example1870 : (((heap * heap) * heap) * heap) * int

val g12_example1871 : (((heap * heap) * heap) * heap) * int

val g12_example1872 : (((heap * heap) * heap) * heap) * int

val g12_example1873 : (((heap * heap) * heap) * heap) * int

val g12_example1874 : (((heap * heap) * heap) * heap) * int

val g12_example1875 : (((heap * heap) * heap) * heap) * int

val g12_example1876 : (((heap * heap) * heap) * heap) * int

val g12_example1877 : (((heap * heap) * heap) * heap) * int

val g12_example1878 : (((heap * heap) * heap) * heap) * int

val g12_example1879 : (((heap * heap) * heap) * heap) * int

val g12_example1880 : (((heap * heap) * heap) * heap) * int

val g12_example1881 : (((heap * heap) * heap) * heap) * int

val g12_example1882 : (((heap * heap) * heap) * heap) * int

val g12_example1883 : (((heap * heap) * heap) * heap) * int

val g12_example1884 : (((heap * heap) * heap) * heap) * int

val g12_example1885 : (((heap * heap) * heap) * heap) * int

val g12_example1886 : (((heap * heap) * heap) * heap) * int

val g12_example1887 : (((heap * heap) * heap) * heap) * int

val g12_example1888 : (((heap * heap) * heap) * heap) * int

val g12_example1889 : (((heap * heap) * heap) * heap) * int

val g12_example1890 : (((heap * heap) * heap) * heap) * int

val g12_example1891 : (((heap * heap) * heap) * heap) * int

val g12_example1892 : (((heap * heap) * heap) * heap) * int

val g12_example1893 : (((heap * heap) * heap) * heap) * int

val g12_example1894 : (((heap * heap) * heap) * heap) * int

val g12_example1895 : (((heap * heap) * heap) * heap) * int

val g12_example1896 : (((heap * heap) * heap) * heap) * int

val g12_example1897 : (((heap * heap) * heap) * heap) * int

val g12_example1898 : (((heap * heap) * heap) * heap) * int

val g12_example1899 : (((heap * heap) * heap) * heap) * int

val g12_example1900 : (((heap * heap) * heap) * heap) * int

val g12_example1901 : (((heap * heap) * heap) * heap) * int

val g12_example1902 : (((heap * heap) * heap) * heap) * int

val g12_example1903 : (((heap * heap) * heap) * heap) * int

val g12_example1904 : (((heap * heap) * heap) * heap) * int

val g12_example1905 : (((heap * heap) * heap) * heap) * int

val g12_example1906 : (((heap * heap) * heap) * heap) * int

val g12_example1907 : (((heap * heap) * heap) * heap) * int

val g12_example1908 : (((heap * heap) * heap) * heap) * int

val g12_example1909 : (((heap * heap) * heap) * heap) * int

val g12_example1910 : (((heap * heap) * heap) * heap) * int

val g12_example1911 : (((heap * heap) * heap) * heap) * int

val g12_example1912 : (((heap * heap) * heap) * heap) * int

val g12_example1913 : (((heap * heap) * heap) * heap) * int

val g12_example1914 : (((heap * heap) * heap) * heap) * int

val g12_example1915 : (((heap * heap) * heap) * heap) * int

val g12_example1916 : (((heap * heap) * heap) * heap) * int

val g12_example1917 : (((heap * heap) * heap) * heap) * int

val g12_example1918 : (((heap * heap) * heap) * heap) * int

val g12_example1919 : (((heap * heap) * heap) * heap) * int

val g12_example1920 : (((heap * heap) * heap) * heap) * int

val g12_example1921 : (((heap * heap) * heap) * heap) * int

val g12_example1922 : (((heap * heap) * heap) * heap) * int

val g12_example1923 : (((heap * heap) * heap) * heap) * int

val g12_example1924 : (((heap * heap) * heap) * heap) * int

val g12_example1925 : (((heap * heap) * heap) * heap) * int

val g12_example1926 : (((heap * heap) * heap) * heap) * int

val g12_example1927 : (((heap * heap) * heap) * heap) * int

val g12_example1928 : (((heap * heap) * heap) * heap) * int

val g12_example1929 : (((heap * heap) * heap) * heap) * int

val g12_example1930 : (((heap * heap) * heap) * heap) * int

val g12_example1931 : (((heap * heap) * heap) * heap) * int

val g12_example1932 : (((heap * heap) * heap) * heap) * int

val g12_example1933 : (((heap * heap) * heap) * heap) * int

val g12_example1934 : (((heap * heap) * heap) * heap) * int

val g12_example1935 : (((heap * heap) * heap) * heap) * int

val g12_example1936 : (((heap * heap) * heap) * heap) * int

val g12_example1937 : (((heap * heap) * heap) * heap) * int

val g12_example1938 : (((heap * heap) * heap) * heap) * int

val g12_example1939 : (((heap * heap) * heap) * heap) * int

val g12_example1940 : (((heap * heap) * heap) * heap) * int

val g12_example1941 : (((heap * heap) * heap) * heap) * int

val g12_example1942 : (((heap * heap) * heap) * heap) * int

val g12_example1943 : (((heap * heap) * heap) * heap) * int

val g12_example1944 : (((heap * heap) * heap) * heap) * int

val g12_example1945 : (((heap * heap) * heap) * heap) * int

val g12_example1946 : (((heap * heap) * heap) * heap) * int

val g12_example1947 : (((heap * heap) * heap) * heap) * int

val g12_example1948 : (((heap * heap) * heap) * heap) * int

val g12_example1949 : (((heap * heap) * heap) * heap) * int

val g12_example1950 : (((heap * heap) * heap) * heap) * int

val g12_example1951 : (((heap * heap) * heap) * heap) * int

val g12_example1952 : (((heap * heap) * heap) * heap) * int

val g12_example1953 : (((heap * heap) * heap) * heap) * int

val g12_example1954 : (((heap * heap) * heap) * heap) * int

val g12_example1955 : (((heap * heap) * heap) * heap) * int

val g12_example1956 : (((heap * heap) * heap) * heap) * int

val g12_example1957 : (((heap * heap) * heap) * heap) * int

val g12_example1958 : (((heap * heap) * heap) * heap) * int

val g12_example1959 : (((heap * heap) * heap) * heap) * int

val g12_example1960 : (((heap * heap) * heap) * heap) * int

val g12_example1961 : (((heap * heap) * heap) * heap) * int

val g12_example1962 : (((heap * heap) * heap) * heap) * int

val g12_example1963 : (((heap * heap) * heap) * heap) * int

val g12_example1964 : (((heap * heap) * heap) * heap) * int

val g12_example1965 : (((heap * heap) * heap) * heap) * int

val g12_example1966 : (((heap * heap) * heap) * heap) * int

val g12_example1967 : (((heap * heap) * heap) * heap) * int

val g12_example1968 : (((heap * heap) * heap) * heap) * int

val g12_example1969 : (((heap * heap) * heap) * heap) * int

val g12_example1970 : (((heap * heap) * heap) * heap) * int

val g12_example1971 : (((heap * heap) * heap) * heap) * int

val g12_example1972 : (((heap * heap) * heap) * heap) * int

val g12_example1973 : (((heap * heap) * heap) * heap) * int

val g12_example1974 : (((heap * heap) * heap) * heap) * int

val g12_example1975 : (((heap * heap) * heap) * heap) * int

val g12_example1976 : (((heap * heap) * heap) * heap) * int

val g12_example1977 : (((heap * heap) * heap) * heap) * int

val g12_example1978 : (((heap * heap) * heap) * heap) * int

val g12_example1979 : (((heap * heap) * heap) * heap) * int

val g12_example1980 : (((heap * heap) * heap) * heap) * int

val g12_example1981 : (((heap * heap) * heap) * heap) * int

val g12_example1982 : (((heap * heap) * heap) * heap) * int

val g12_example1983 : (((heap * heap) * heap) * heap) * int

val g12_example1984 : (((heap * heap) * heap) * heap) * int

val g12_example1985 : (((heap * heap) * heap) * heap) * int

val g12_example1986 : (((heap * heap) * heap) * heap) * int

val g12_example1987 : (((heap * heap) * heap) * heap) * int

val g12_example1988 : (((heap * heap) * heap) * heap) * int

val g12_example1989 : (((heap * heap) * heap) * heap) * int

val g12_example1990 : (((heap * heap) * heap) * heap) * int

val g12_example1991 : (((heap * heap) * heap) * heap) * int

val g12_example1992 : (((heap * heap) * heap) * heap) * int

val g12_example1993 : (((heap * heap) * heap) * heap) * int

val g12_example1994 : (((heap * heap) * heap) * heap) * int

val g12_example1995 : (((heap * heap) * heap) * heap) * int

val g12_example1996 : (((heap * heap) * heap) * heap) * int

val g12_example1997 : (((heap * heap) * heap) * heap) * int

val g12_example1998 : (((heap * heap) * heap) * heap) * int

val g12_example1999 : (((heap * heap) * heap) * heap) * int

val g12_example2000 : (((heap * heap) * heap) * heap) * int

val g12_example2001 : (((heap * heap) * heap) * heap) * int

val g12_example2002 : (((heap * heap) * heap) * heap) * int

val g12_example2003 : (((heap * heap) * heap) * heap) * int

val g12_example2004 : (((heap * heap) * heap) * heap) * int

val g12_example2005 : (((heap * heap) * heap) * heap) * int

val g12_example2006 : (((heap * heap) * heap) * heap) * int

val g12_example2007 : (((heap * heap) * heap) * heap) * int

val g12_example2008 : (((heap * heap) * heap) * heap) * int

val g12_example2009 : (((heap * heap) * heap) * heap) * int

val g12_example2010 : (((heap * heap) * heap) * heap) * int

val g12_example2011 : (((heap * heap) * heap) * heap) * int

val g12_example2012 : (((heap * heap) * heap) * heap) * int

val g12_example2013 : (((heap * heap) * heap) * heap) * int

val g12_example2014 : (((heap * heap) * heap) * heap) * int

val g12_example2015 : (((heap * heap) * heap) * heap) * int

val g12_example2016 : (((heap * heap) * heap) * heap) * int

val g12_example2017 : (((heap * heap) * heap) * heap) * int

val g12_example2018 : (((heap * heap) * heap) * heap) * int

val g12_example2019 : (((heap * heap) * heap) * heap) * int

val g12_example2020 : (((heap * heap) * heap) * heap) * int

val g12_example2021 : (((heap * heap) * heap) * heap) * int

val g12_example2022 : (((heap * heap) * heap) * heap) * int

val g12_example2023 : (((heap * heap) * heap) * heap) * int

val g12_example2024 : (((heap * heap) * heap) * heap) * int

val g12_example2025 : (((heap * heap) * heap) * heap) * int

val g12_example2026 : (((heap * heap) * heap) * heap) * int

val g12_example2027 : (((heap * heap) * heap) * heap) * int

val g12_example2028 : (((heap * heap) * heap) * heap) * int

val g12_example2029 : (((heap * heap) * heap) * heap) * int

val g12_example2030 : (((heap * heap) * heap) * heap) * int

val g12_example2031 : (((heap * heap) * heap) * heap) * int

val g12_example2032 : (((heap * heap) * heap) * heap) * int

val g12_example2033 : (((heap * heap) * heap) * heap) * int

val g12_example2034 : (((heap * heap) * heap) * heap) * int

val g12_example2035 : (((heap * heap) * heap) * heap) * int

val g12_example2036 : (((heap * heap) * heap) * heap) * int

val g12_example2037 : (((heap * heap) * heap) * heap) * int

val g12_example2038 : (((heap * heap) * heap) * heap) * int

val g12_example2039 : (((heap * heap) * heap) * heap) * int

val g12_example2040 : (((heap * heap) * heap) * heap) * int

val g12_example2041 : (((heap * heap) * heap) * heap) * int

val g12_example2042 : (((heap * heap) * heap) * heap) * int

val g12_example2043 : (((heap * heap) * heap) * heap) * int

val g12_example2044 : (((heap * heap) * heap) * heap) * int

val g12_example2045 : (((heap * heap) * heap) * heap) * int

val g12_example2046 : (((heap * heap) * heap) * heap) * int

val g12_example2047 : (((heap * heap) * heap) * heap) * int

val g12_example2048 : (((heap * heap) * heap) * heap) * int

val g12_example2049 : (((heap * heap) * heap) * heap) * int

val g12_example2050 : (((heap * heap) * heap) * heap) * int

val g12_example2051 : (((heap * heap) * heap) * heap) * int

val g12_example2052 : (((heap * heap) * heap) * heap) * int

val g12_example2053 : (((heap * heap) * heap) * heap) * int

val g12_example2054 : (((heap * heap) * heap) * heap) * int

val g12_example2055 : (((heap * heap) * heap) * heap) * int

val g12_example2056 : (((heap * heap) * heap) * heap) * int

val g12_example2057 : (((heap * heap) * heap) * heap) * int

val g12_example2058 : (((heap * heap) * heap) * heap) * int

val g12_example2059 : (((heap * heap) * heap) * heap) * int

val g12_example2060 : (((heap * heap) * heap) * heap) * int

val g12_example2061 : (((heap * heap) * heap) * heap) * int

val g12_example2062 : (((heap * heap) * heap) * heap) * int

val g12_example2063 : (((heap * heap) * heap) * heap) * int

val g12_example2064 : (((heap * heap) * heap) * heap) * int

val g12_example2065 : (((heap * heap) * heap) * heap) * int

val g12_example2066 : (((heap * heap) * heap) * heap) * int

val g12_example2067 : (((heap * heap) * heap) * heap) * int

val g12_example2068 : (((heap * heap) * heap) * heap) * int

val g12_example2069 : (((heap * heap) * heap) * heap) * int

val g12_example2070 : (((heap * heap) * heap) * heap) * int

val g12_example2071 : (((heap * heap) * heap) * heap) * int

val g12_example2072 : (((heap * heap) * heap) * heap) * int

val g12_example2073 : (((heap * heap) * heap) * heap) * int

val g12_example2074 : (((heap * heap) * heap) * heap) * int

val g12_example2075 : (((heap * heap) * heap) * heap) * int

val g12_example2076 : (((heap * heap) * heap) * heap) * int

val g12_example2077 : (((heap * heap) * heap) * heap) * int

val g12_example2078 : (((heap * heap) * heap) * heap) * int

val g12_example2079 : (((heap * heap) * heap) * heap) * int

val g12_example2080 : (((heap * heap) * heap) * heap) * int

val g12_example2081 : (((heap * heap) * heap) * heap) * int

val g12_example2082 : (((heap * heap) * heap) * heap) * int

val g12_example2083 : (((heap * heap) * heap) * heap) * int

val g12_example2084 : (((heap * heap) * heap) * heap) * int

val g12_example2085 : (((heap * heap) * heap) * heap) * int

val g12_example2086 : (((heap * heap) * heap) * heap) * int

val g12_example2087 : (((heap * heap) * heap) * heap) * int

val g12_example2088 : (((heap * heap) * heap) * heap) * int

val g12_example2089 : (((heap * heap) * heap) * heap) * int

val g12_example2090 : (((heap * heap) * heap) * heap) * int

val g12_example2091 : (((heap * heap) * heap) * heap) * int

val g12_example2092 : (((heap * heap) * heap) * heap) * int

val g12_example2093 : (((heap * heap) * heap) * heap) * int

val g12_example2094 : (((heap * heap) * heap) * heap) * int

val g12_example2095 : (((heap * heap) * heap) * heap) * int

val g12_example2096 : (((heap * heap) * heap) * heap) * int

val g12_example2097 : (((heap * heap) * heap) * heap) * int

val g12_example2098 : (((heap * heap) * heap) * heap) * int

val g12_example2099 : (((heap * heap) * heap) * heap) * int

val g12_example2100 : (((heap * heap) * heap) * heap) * int

val g12_example2101 : (((heap * heap) * heap) * heap) * int

val g12_example2102 : (((heap * heap) * heap) * heap) * int

val g12_example2103 : (((heap * heap) * heap) * heap) * int

val g12_example2104 : (((heap * heap) * heap) * heap) * int

val g12_example2105 : (((heap * heap) * heap) * heap) * int

val g12_example2106 : (((heap * heap) * heap) * heap) * int

val g12_example2107 : (((heap * heap) * heap) * heap) * int

val g12_example2108 : (((heap * heap) * heap) * heap) * int

val g12_example2109 : (((heap * heap) * heap) * heap) * int

val g12_example2110 : (((heap * heap) * heap) * heap) * int

val g12_example2111 : (((heap * heap) * heap) * heap) * int

val g12_example2112 : (((heap * heap) * heap) * heap) * int

val g12_example2113 : (((heap * heap) * heap) * heap) * int

val g12_example2114 : (((heap * heap) * heap) * heap) * int

val g12_example2115 : (((heap * heap) * heap) * heap) * int

val g12_example2116 : (((heap * heap) * heap) * heap) * int

val g12_example2117 : (((heap * heap) * heap) * heap) * int

val g12_example2118 : (((heap * heap) * heap) * heap) * int

val g12_example2119 : (((heap * heap) * heap) * heap) * int

val g12_example2120 : (((heap * heap) * heap) * heap) * int

val g12_example2121 : (((heap * heap) * heap) * heap) * int

val g12_example2122 : (((heap * heap) * heap) * heap) * int

val g12_example2123 : (((heap * heap) * heap) * heap) * int

val g12_example2124 : (((heap * heap) * heap) * heap) * int

val g12_example2125 : (((heap * heap) * heap) * heap) * int

val g12_example2126 : (((heap * heap) * heap) * heap) * int

val g12_example2127 : (((heap * heap) * heap) * heap) * int

val g12_example2128 : (((heap * heap) * heap) * heap) * int

val g12_example2129 : (((heap * heap) * heap) * heap) * int

val g12_example2130 : (((heap * heap) * heap) * heap) * int

val g12_example2131 : (((heap * heap) * heap) * heap) * int

val g12_example2132 : (((heap * heap) * heap) * heap) * int

val g12_example2133 : (((heap * heap) * heap) * heap) * int

val g12_example2134 : (((heap * heap) * heap) * heap) * int

val g12_example2135 : (((heap * heap) * heap) * heap) * int

val g12_example2136 : (((heap * heap) * heap) * heap) * int

val g12_example2137 : (((heap * heap) * heap) * heap) * int

val g12_example2138 : (((heap * heap) * heap) * heap) * int

val g12_example2139 : (((heap * heap) * heap) * heap) * int

val g12_example2140 : (((heap * heap) * heap) * heap) * int

val g12_example2141 : (((heap * heap) * heap) * heap) * int

val g12_example2142 : (((heap * heap) * heap) * heap) * int

val g12_example2143 : (((heap * heap) * heap) * heap) * int

val g12_example2144 : (((heap * heap) * heap) * heap) * int

val g12_example2145 : (((heap * heap) * heap) * heap) * int

val g12_example2146 : (((heap * heap) * heap) * heap) * int

val g12_example2147 : (((heap * heap) * heap) * heap) * int

val g12_example2148 : (((heap * heap) * heap) * heap) * int

val g12_example2149 : (((heap * heap) * heap) * heap) * int

val g12_example2150 : (((heap * heap) * heap) * heap) * int

val g12_example2151 : (((heap * heap) * heap) * heap) * int

val g12_example2152 : (((heap * heap) * heap) * heap) * int

val g12_example2153 : (((heap * heap) * heap) * heap) * int

val g12_example2154 : (((heap * heap) * heap) * heap) * int

val g12_example2155 : (((heap * heap) * heap) * heap) * int

val g12_example2156 : (((heap * heap) * heap) * heap) * int

val g12_example2157 : (((heap * heap) * heap) * heap) * int

val g12_example2158 : (((heap * heap) * heap) * heap) * int

val g12_example2159 : (((heap * heap) * heap) * heap) * int

val g12_example2160 : (((heap * heap) * heap) * heap) * int

val g12_example2161 : (((heap * heap) * heap) * heap) * int

val g12_example2162 : (((heap * heap) * heap) * heap) * int

val g12_example2163 : (((heap * heap) * heap) * heap) * int

val g12_example2164 : (((heap * heap) * heap) * heap) * int

val g12_example2165 : (((heap * heap) * heap) * heap) * int

val g12_example2166 : (((heap * heap) * heap) * heap) * int

val g12_example2167 : (((heap * heap) * heap) * heap) * int

val g12_example2168 : (((heap * heap) * heap) * heap) * int

val g12_example2169 : (((heap * heap) * heap) * heap) * int

val g12_example2170 : (((heap * heap) * heap) * heap) * int

val g12_example2171 : (((heap * heap) * heap) * heap) * int

val g12_example2172 : (((heap * heap) * heap) * heap) * int

val g12_example2173 : (((heap * heap) * heap) * heap) * int

val g12_example2174 : (((heap * heap) * heap) * heap) * int

val g12_example2175 : (((heap * heap) * heap) * heap) * int

val g12_example2176 : (((heap * heap) * heap) * heap) * int

val g12_example2177 : (((heap * heap) * heap) * heap) * int

val g12_example2178 : (((heap * heap) * heap) * heap) * int

val g12_example2179 : (((heap * heap) * heap) * heap) * int

val g12_example2180 : (((heap * heap) * heap) * heap) * int

val g12_example2181 : (((heap * heap) * heap) * heap) * int

val g12_example2182 : (((heap * heap) * heap) * heap) * int

val g12_example2183 : (((heap * heap) * heap) * heap) * int

val g12_example2184 : (((heap * heap) * heap) * heap) * int

val g12_example2185 : (((heap * heap) * heap) * heap) * int

val g12_example2186 : (((heap * heap) * heap) * heap) * int

val g12_example2187 : (((heap * heap) * heap) * heap) * int

val g12_example2188 : (((heap * heap) * heap) * heap) * int

val g12_example2189 : (((heap * heap) * heap) * heap) * int

val g12_example2190 : (((heap * heap) * heap) * heap) * int

val g12_example2191 : (((heap * heap) * heap) * heap) * int

val g12_example2192 : (((heap * heap) * heap) * heap) * int

val g12_example2193 : (((heap * heap) * heap) * heap) * int

val g12_example2194 : (((heap * heap) * heap) * heap) * int

val g12_example2195 : (((heap * heap) * heap) * heap) * int

val g12_example2196 : (((heap * heap) * heap) * heap) * int

val g12_example2197 : (((heap * heap) * heap) * heap) * int

val g12_example2198 : (((heap * heap) * heap) * heap) * int

val g12_example2199 : (((heap * heap) * heap) * heap) * int

val g12_example2200 : (((heap * heap) * heap) * heap) * int

val g12_example2201 : (((heap * heap) * heap) * heap) * int

val g12_example2202 : (((heap * heap) * heap) * heap) * int

val g12_example2203 : (((heap * heap) * heap) * heap) * int

val g12_example2204 : (((heap * heap) * heap) * heap) * int

val g12_example2205 : (((heap * heap) * heap) * heap) * int

val g12_example2206 : (((heap * heap) * heap) * heap) * int

val g12_example2207 : (((heap * heap) * heap) * heap) * int

val g12_example2208 : (((heap * heap) * heap) * heap) * int

val g12_example2209 : (((heap * heap) * heap) * heap) * int

val g12_example2210 : (((heap * heap) * heap) * heap) * int

val g12_example2211 : (((heap * heap) * heap) * heap) * int

val g12_example2212 : (((heap * heap) * heap) * heap) * int

val g12_example2213 : (((heap * heap) * heap) * heap) * int

val g12_example2214 : (((heap * heap) * heap) * heap) * int

val g12_example2215 : (((heap * heap) * heap) * heap) * int

val g12_example2216 : (((heap * heap) * heap) * heap) * int

val g12_example2217 : (((heap * heap) * heap) * heap) * int

val g12_example2218 : (((heap * heap) * heap) * heap) * int

val g12_example2219 : (((heap * heap) * heap) * heap) * int

val g12_example2220 : (((heap * heap) * heap) * heap) * int

val g12_example2221 : (((heap * heap) * heap) * heap) * int

val g12_example2222 : (((heap * heap) * heap) * heap) * int

val g12_example2223 : (((heap * heap) * heap) * heap) * int

val g12_example2224 : (((heap * heap) * heap) * heap) * int

val g12_example2225 : (((heap * heap) * heap) * heap) * int

val g12_example2226 : (((heap * heap) * heap) * heap) * int

val g12_example2227 : (((heap * heap) * heap) * heap) * int

val g12_example2228 : (((heap * heap) * heap) * heap) * int

val g12_example2229 : (((heap * heap) * heap) * heap) * int

val g12_example2230 : (((heap * heap) * heap) * heap) * int

val g12_example2231 : (((heap * heap) * heap) * heap) * int

val g12_example2232 : (((heap * heap) * heap) * heap) * int

val g12_example2233 : (((heap * heap) * heap) * heap) * int

val g12_example2234 : (((heap * heap) * heap) * heap) * int

val g12_example2235 : (((heap * heap) * heap) * heap) * int

val g12_example2236 : (((heap * heap) * heap) * heap) * int

val g12_example2237 : (((heap * heap) * heap) * heap) * int

val g12_example2238 : (((heap * heap) * heap) * heap) * int

val g12_example2239 : (((heap * heap) * heap) * heap) * int

val g12_example2240 : (((heap * heap) * heap) * heap) * int

val g12_example2241 : (((heap * heap) * heap) * heap) * int

val g12_example2242 : (((heap * heap) * heap) * heap) * int

val g12_example2243 : (((heap * heap) * heap) * heap) * int

val g12_example2244 : (((heap * heap) * heap) * heap) * int

val g12_example2245 : (((heap * heap) * heap) * heap) * int

val g12_example2246 : (((heap * heap) * heap) * heap) * int

val g12_example2247 : (((heap * heap) * heap) * heap) * int

val g12_example2248 : (((heap * heap) * heap) * heap) * int

val g12_example2249 : (((heap * heap) * heap) * heap) * int

val g12_example2250 : (((heap * heap) * heap) * heap) * int

val g12_example2251 : (((heap * heap) * heap) * heap) * int

val g12_example2252 : (((heap * heap) * heap) * heap) * int

val g12_example2253 : (((heap * heap) * heap) * heap) * int

val g12_example2254 : (((heap * heap) * heap) * heap) * int

val g12_example2255 : (((heap * heap) * heap) * heap) * int

val g12_example2256 : (((heap * heap) * heap) * heap) * int

val g12_example2257 : (((heap * heap) * heap) * heap) * int

val g12_example2258 : (((heap * heap) * heap) * heap) * int

val g12_example2259 : (((heap * heap) * heap) * heap) * int

val g12_example2260 : (((heap * heap) * heap) * heap) * int

val g12_example2261 : (((heap * heap) * heap) * heap) * int

val g12_example2262 : (((heap * heap) * heap) * heap) * int

val g12_example2263 : (((heap * heap) * heap) * heap) * int

val g12_example2264 : (((heap * heap) * heap) * heap) * int

val g12_example2265 : (((heap * heap) * heap) * heap) * int

val g12_example2266 : (((heap * heap) * heap) * heap) * int

val g12_example2267 : (((heap * heap) * heap) * heap) * int

val g12_example2268 : (((heap * heap) * heap) * heap) * int

val g12_example2269 : (((heap * heap) * heap) * heap) * int

val g12_example2270 : (((heap * heap) * heap) * heap) * int

val g12_example2271 : (((heap * heap) * heap) * heap) * int

val g12_example2272 : (((heap * heap) * heap) * heap) * int

val g12_example2273 : (((heap * heap) * heap) * heap) * int

val g12_example2274 : (((heap * heap) * heap) * heap) * int

val g12_example2275 : (((heap * heap) * heap) * heap) * int

val g12_example2276 : (((heap * heap) * heap) * heap) * int

val g12_example2277 : (((heap * heap) * heap) * heap) * int

val g12_example2278 : (((heap * heap) * heap) * heap) * int

val g12_example2279 : (((heap * heap) * heap) * heap) * int

val g12_example2280 : (((heap * heap) * heap) * heap) * int

val g12_example2281 : (((heap * heap) * heap) * heap) * int

val g12_example2282 : (((heap * heap) * heap) * heap) * int

val g12_example2283 : (((heap * heap) * heap) * heap) * int

val g12_example2284 : (((heap * heap) * heap) * heap) * int

val g12_example2285 : (((heap * heap) * heap) * heap) * int

val g12_example2286 : (((heap * heap) * heap) * heap) * int

val g12_example2287 : (((heap * heap) * heap) * heap) * int

val g12_example2288 : (((heap * heap) * heap) * heap) * int

val g12_example2289 : (((heap * heap) * heap) * heap) * int

val g12_example2290 : (((heap * heap) * heap) * heap) * int

val g12_example2291 : (((heap * heap) * heap) * heap) * int

val g12_example2292 : (((heap * heap) * heap) * heap) * int

val g12_example2293 : (((heap * heap) * heap) * heap) * int

val g12_example2294 : (((heap * heap) * heap) * heap) * int

val g12_example2295 : (((heap * heap) * heap) * heap) * int

val g12_example2296 : (((heap * heap) * heap) * heap) * int

val g12_example2297 : (((heap * heap) * heap) * heap) * int

val g12_example2298 : (((heap * heap) * heap) * heap) * int

val g12_example2299 : (((heap * heap) * heap) * heap) * int

val g12_example2300 : (((heap * heap) * heap) * heap) * int

val g12_example2301 : (((heap * heap) * heap) * heap) * int

val g12_example2302 : (((heap * heap) * heap) * heap) * int

val g12_example2303 : (((heap * heap) * heap) * heap) * int

val g12_example2304 : (((heap * heap) * heap) * heap) * int

val g12_example2305 : (((heap * heap) * heap) * heap) * int

val g12_example2306 : (((heap * heap) * heap) * heap) * int

val g12_example2307 : (((heap * heap) * heap) * heap) * int

val g12_example2308 : (((heap * heap) * heap) * heap) * int

val g12_example2309 : (((heap * heap) * heap) * heap) * int

val g12_example2310 : (((heap * heap) * heap) * heap) * int

val g12_example2311 : (((heap * heap) * heap) * heap) * int

val g12_example2312 : (((heap * heap) * heap) * heap) * int

val g12_example2313 : (((heap * heap) * heap) * heap) * int

val g12_example2314 : (((heap * heap) * heap) * heap) * int

val g12_example2315 : (((heap * heap) * heap) * heap) * int

val g12_example2316 : (((heap * heap) * heap) * heap) * int

val g12_example2317 : (((heap * heap) * heap) * heap) * int

val g12_example2318 : (((heap * heap) * heap) * heap) * int

val g12_example2319 : (((heap * heap) * heap) * heap) * int

val g12_example2320 : (((heap * heap) * heap) * heap) * int

val g12_example2321 : (((heap * heap) * heap) * heap) * int

val g12_example2322 : (((heap * heap) * heap) * heap) * int

val g12_example2323 : (((heap * heap) * heap) * heap) * int

val g12_example2324 : (((heap * heap) * heap) * heap) * int

val g12_example2325 : (((heap * heap) * heap) * heap) * int

val g12_example2326 : (((heap * heap) * heap) * heap) * int

val g12_example2327 : (((heap * heap) * heap) * heap) * int

val g12_example2328 : (((heap * heap) * heap) * heap) * int

val g12_example2329 : (((heap * heap) * heap) * heap) * int

val g12_example2330 : (((heap * heap) * heap) * heap) * int

val g12_example2331 : (((heap * heap) * heap) * heap) * int

val g12_example2332 : (((heap * heap) * heap) * heap) * int

val g12_example2333 : (((heap * heap) * heap) * heap) * int

val g12_example2334 : (((heap * heap) * heap) * heap) * int

val g12_example2335 : (((heap * heap) * heap) * heap) * int

val g12_example2336 : (((heap * heap) * heap) * heap) * int

val g12_example2337 : (((heap * heap) * heap) * heap) * int

val g12_example2338 : (((heap * heap) * heap) * heap) * int

val g12_example2339 : (((heap * heap) * heap) * heap) * int

val g12_example2340 : (((heap * heap) * heap) * heap) * int

val g12_example2341 : (((heap * heap) * heap) * heap) * int

val g12_example2342 : (((heap * heap) * heap) * heap) * int

val g12_example2343 : (((heap * heap) * heap) * heap) * int

val g12_example2344 : (((heap * heap) * heap) * heap) * int

val g12_example2345 : (((heap * heap) * heap) * heap) * int

val g12_example2346 : (((heap * heap) * heap) * heap) * int

val g12_example2347 : (((heap * heap) * heap) * heap) * int

val g12_example2348 : (((heap * heap) * heap) * heap) * int

val g12_example2349 : (((heap * heap) * heap) * heap) * int

val g12_example2350 : (((heap * heap) * heap) * heap) * int

val g12_example2351 : (((heap * heap) * heap) * heap) * int

val g12_example2352 : (((heap * heap) * heap) * heap) * int

val g12_example2353 : (((heap * heap) * heap) * heap) * int

val g12_example2354 : (((heap * heap) * heap) * heap) * int

val g12_example2355 : (((heap * heap) * heap) * heap) * int

val g12_example2356 : (((heap * heap) * heap) * heap) * int

val g12_example2357 : (((heap * heap) * heap) * heap) * int

val g12_example2358 : (((heap * heap) * heap) * heap) * int

val g12_example2359 : (((heap * heap) * heap) * heap) * int

val g12_example2360 : (((heap * heap) * heap) * heap) * int

val g12_example2361 : (((heap * heap) * heap) * heap) * int

val g12_example2362 : (((heap * heap) * heap) * heap) * int

val g12_example2363 : (((heap * heap) * heap) * heap) * int

val g12_example2364 : (((heap * heap) * heap) * heap) * int

val g12_example2365 : (((heap * heap) * heap) * heap) * int

val g12_example2366 : (((heap * heap) * heap) * heap) * int

val g12_example2367 : (((heap * heap) * heap) * heap) * int

val g12_example2368 : (((heap * heap) * heap) * heap) * int

val g12_example2369 : (((heap * heap) * heap) * heap) * int

val g12_example2370 : (((heap * heap) * heap) * heap) * int

val g12_example2371 : (((heap * heap) * heap) * heap) * int

val g12_example2372 : (((heap * heap) * heap) * heap) * int

val g12_example2373 : (((heap * heap) * heap) * heap) * int

val g12_example2374 : (((heap * heap) * heap) * heap) * int

val g12_example2375 : (((heap * heap) * heap) * heap) * int

val g12_example2376 : (((heap * heap) * heap) * heap) * int

val g12_example2377 : (((heap * heap) * heap) * heap) * int

val g12_example2378 : (((heap * heap) * heap) * heap) * int

val g12_example2379 : (((heap * heap) * heap) * heap) * int

val g12_example2380 : (((heap * heap) * heap) * heap) * int

val g12_example2381 : (((heap * heap) * heap) * heap) * int

val g12_example2382 : (((heap * heap) * heap) * heap) * int

val g12_example2383 : (((heap * heap) * heap) * heap) * int

val g12_example2384 : (((heap * heap) * heap) * heap) * int

val g12_example2385 : (((heap * heap) * heap) * heap) * int

val g12_example2386 : (((heap * heap) * heap) * heap) * int

val g12_example2387 : (((heap * heap) * heap) * heap) * int

val g12_example2388 : (((heap * heap) * heap) * heap) * int

val g12_example2389 : (((heap * heap) * heap) * heap) * int

val g12_example2390 : (((heap * heap) * heap) * heap) * int

val g12_example2391 : (((heap * heap) * heap) * heap) * int

val g12_example2392 : (((heap * heap) * heap) * heap) * int

val g12_example2393 : (((heap * heap) * heap) * heap) * int

val g12_example2394 : (((heap * heap) * heap) * heap) * int

val g12_example2395 : (((heap * heap) * heap) * heap) * int

val g12_example2396 : (((heap * heap) * heap) * heap) * int

val g12_example2397 : (((heap * heap) * heap) * heap) * int

val g12_example2398 : (((heap * heap) * heap) * heap) * int

val g12_example2399 : (((heap * heap) * heap) * heap) * int

val g12_example2400 : (((heap * heap) * heap) * heap) * int

val g12_example2401 : (((heap * heap) * heap) * heap) * int

val g12_example2402 : (((heap * heap) * heap) * heap) * int

val g12_example2403 : (((heap * heap) * heap) * heap) * int

val g12_example2404 : (((heap * heap) * heap) * heap) * int

val g12_example2405 : (((heap * heap) * heap) * heap) * int

val g12_example2406 : (((heap * heap) * heap) * heap) * int

val g12_example2407 : (((heap * heap) * heap) * heap) * int

val g12_example2408 : (((heap * heap) * heap) * heap) * int

val g12_example2409 : (((heap * heap) * heap) * heap) * int

val g12_example2410 : (((heap * heap) * heap) * heap) * int

val g12_example2411 : (((heap * heap) * heap) * heap) * int

val g12_example2412 : (((heap * heap) * heap) * heap) * int

val g12_example2413 : (((heap * heap) * heap) * heap) * int

val g12_example2414 : (((heap * heap) * heap) * heap) * int

val g12_example2415 : (((heap * heap) * heap) * heap) * int

val g12_example2416 : (((heap * heap) * heap) * heap) * int

val g12_example2417 : (((heap * heap) * heap) * heap) * int

val g12_example2418 : (((heap * heap) * heap) * heap) * int

val g12_example2419 : (((heap * heap) * heap) * heap) * int

val g12_example2420 : (((heap * heap) * heap) * heap) * int

val g12_example2421 : (((heap * heap) * heap) * heap) * int

val g12_example2422 : (((heap * heap) * heap) * heap) * int

val g12_example2423 : (((heap * heap) * heap) * heap) * int

val g12_example2424 : (((heap * heap) * heap) * heap) * int

val g12_example2425 : (((heap * heap) * heap) * heap) * int

val g12_example2426 : (((heap * heap) * heap) * heap) * int

val g12_example2427 : (((heap * heap) * heap) * heap) * int

val g12_example2428 : (((heap * heap) * heap) * heap) * int

val g12_example2429 : (((heap * heap) * heap) * heap) * int

val g12_example2430 : (((heap * heap) * heap) * heap) * int

val g12_example2431 : (((heap * heap) * heap) * heap) * int

val g12_example2432 : (((heap * heap) * heap) * heap) * int

val g12_example2433 : (((heap * heap) * heap) * heap) * int

val g12_example2434 : (((heap * heap) * heap) * heap) * int

val g12_example2435 : (((heap * heap) * heap) * heap) * int

val g12_example2436 : (((heap * heap) * heap) * heap) * int

val g12_example2437 : (((heap * heap) * heap) * heap) * int

val g12_example2438 : (((heap * heap) * heap) * heap) * int

val g12_example2439 : (((heap * heap) * heap) * heap) * int

val g12_example2440 : (((heap * heap) * heap) * heap) * int

val g12_example2441 : (((heap * heap) * heap) * heap) * int

val g12_example2442 : (((heap * heap) * heap) * heap) * int

val g12_example2443 : (((heap * heap) * heap) * heap) * int

val g12_example2444 : (((heap * heap) * heap) * heap) * int

val g12_example2445 : (((heap * heap) * heap) * heap) * int

val g12_example2446 : (((heap * heap) * heap) * heap) * int

val g12_example2447 : (((heap * heap) * heap) * heap) * int

val g12_example2448 : (((heap * heap) * heap) * heap) * int

val g12_example2449 : (((heap * heap) * heap) * heap) * int

val g12_example2450 : (((heap * heap) * heap) * heap) * int

val g12_example2451 : (((heap * heap) * heap) * heap) * int

val g12_example2452 : (((heap * heap) * heap) * heap) * int

val g12_example2453 : (((heap * heap) * heap) * heap) * int

val g12_example2454 : (((heap * heap) * heap) * heap) * int

val g12_example2455 : (((heap * heap) * heap) * heap) * int

val g12_example2456 : (((heap * heap) * heap) * heap) * int

val g12_example2457 : (((heap * heap) * heap) * heap) * int

val g12_example2458 : (((heap * heap) * heap) * heap) * int

val g12_example2459 : (((heap * heap) * heap) * heap) * int

val g12_example2460 : (((heap * heap) * heap) * heap) * int

val g12_example2461 : (((heap * heap) * heap) * heap) * int

val g12_example2462 : (((heap * heap) * heap) * heap) * int

val g12_example2463 : (((heap * heap) * heap) * heap) * int

val g12_example2464 : (((heap * heap) * heap) * heap) * int

val g12_example2465 : (((heap * heap) * heap) * heap) * int

val g12_example2466 : (((heap * heap) * heap) * heap) * int

val g12_example2467 : (((heap * heap) * heap) * heap) * int

val g12_example2468 : (((heap * heap) * heap) * heap) * int

val g12_example2469 : (((heap * heap) * heap) * heap) * int

val g12_example2470 : (((heap * heap) * heap) * heap) * int

val g12_example2471 : (((heap * heap) * heap) * heap) * int

val g12_example2472 : (((heap * heap) * heap) * heap) * int

val g12_example2473 : (((heap * heap) * heap) * heap) * int

val g12_example2474 : (((heap * heap) * heap) * heap) * int

val g12_example2475 : (((heap * heap) * heap) * heap) * int

val g12_example2476 : (((heap * heap) * heap) * heap) * int

val g12_example2477 : (((heap * heap) * heap) * heap) * int

val g12_example2478 : (((heap * heap) * heap) * heap) * int

val g12_example2479 : (((heap * heap) * heap) * heap) * int

val g12_example2480 : (((heap * heap) * heap) * heap) * int

val g12_example2481 : (((heap * heap) * heap) * heap) * int

val g12_example2482 : (((heap * heap) * heap) * heap) * int

val g12_example2483 : (((heap * heap) * heap) * heap) * int

val g12_example2484 : (((heap * heap) * heap) * heap) * int

val g12_example2485 : (((heap * heap) * heap) * heap) * int

val g12_example2486 : (((heap * heap) * heap) * heap) * int

val g12_example2487 : (((heap * heap) * heap) * heap) * int

val g12_example2488 : (((heap * heap) * heap) * heap) * int

val g12_example2489 : (((heap * heap) * heap) * heap) * int

val g12_example2490 : (((heap * heap) * heap) * heap) * int

val g12_example2491 : (((heap * heap) * heap) * heap) * int

val g12_example2492 : (((heap * heap) * heap) * heap) * int

val g12_example2493 : (((heap * heap) * heap) * heap) * int

val g12_example2494 : (((heap * heap) * heap) * heap) * int

val g12_example2495 : (((heap * heap) * heap) * heap) * int

val g12_example2496 : (((heap * heap) * heap) * heap) * int

val g12_example2497 : (((heap * heap) * heap) * heap) * int

val g12_example2498 : (((heap * heap) * heap) * heap) * int

val g12_example2499 : (((heap * heap) * heap) * heap) * int

val g12_example2500 : (((heap * heap) * heap) * heap) * int

val g12_example2501 : (((heap * heap) * heap) * heap) * int

val g12_example2502 : (((heap * heap) * heap) * heap) * int

val g12_example2503 : (((heap * heap) * heap) * heap) * int

val g12_example2504 : (((heap * heap) * heap) * heap) * int

val g12_example2505 : (((heap * heap) * heap) * heap) * int

val g12_example2506 : (((heap * heap) * heap) * heap) * int

val g12_example2507 : (((heap * heap) * heap) * heap) * int

val g12_example2508 : (((heap * heap) * heap) * heap) * int

val g12_example2509 : (((heap * heap) * heap) * heap) * int

val g12_example2510 : (((heap * heap) * heap) * heap) * int

val g12_example2511 : (((heap * heap) * heap) * heap) * int

val g12_example2512 : (((heap * heap) * heap) * heap) * int

val g12_example2513 : (((heap * heap) * heap) * heap) * int

val g12_example2514 : (((heap * heap) * heap) * heap) * int

val g12_example2515 : (((heap * heap) * heap) * heap) * int

val g12_example2516 : (((heap * heap) * heap) * heap) * int

val g12_example2517 : (((heap * heap) * heap) * heap) * int

val g12_example2518 : (((heap * heap) * heap) * heap) * int

val g12_example2519 : (((heap * heap) * heap) * heap) * int

val g12_example2520 : (((heap * heap) * heap) * heap) * int

val g12_example2521 : (((heap * heap) * heap) * heap) * int

val g12_example2522 : (((heap * heap) * heap) * heap) * int

val g12_example2523 : (((heap * heap) * heap) * heap) * int

val g12_example2524 : (((heap * heap) * heap) * heap) * int

val g12_example2525 : (((heap * heap) * heap) * heap) * int

val g12_example2526 : (((heap * heap) * heap) * heap) * int

val g12_example2527 : (((heap * heap) * heap) * heap) * int

val g12_example2528 : (((heap * heap) * heap) * heap) * int

val g12_example2529 : (((heap * heap) * heap) * heap) * int

val g12_example2530 : (((heap * heap) * heap) * heap) * int

val g12_example2531 : (((heap * heap) * heap) * heap) * int

val g12_example2532 : (((heap * heap) * heap) * heap) * int

val g12_example2533 : (((heap * heap) * heap) * heap) * int

val g12_example2534 : (((heap * heap) * heap) * heap) * int

val g12_example2535 : (((heap * heap) * heap) * heap) * int

val g12_example2536 : (((heap * heap) * heap) * heap) * int

val g12_example2537 : (((heap * heap) * heap) * heap) * int

val g12_example2538 : (((heap * heap) * heap) * heap) * int

val g12_example2539 : (((heap * heap) * heap) * heap) * int

val g12_example2540 : (((heap * heap) * heap) * heap) * int

val g12_example2541 : (((heap * heap) * heap) * heap) * int

val g12_example2542 : (((heap * heap) * heap) * heap) * int

val g12_example2543 : (((heap * heap) * heap) * heap) * int

val g12_example2544 : (((heap * heap) * heap) * heap) * int

val g12_example2545 : (((heap * heap) * heap) * heap) * int

val g12_example2546 : (((heap * heap) * heap) * heap) * int

val g12_example2547 : (((heap * heap) * heap) * heap) * int

val g12_example2548 : (((heap * heap) * heap) * heap) * int

val g12_example2549 : (((heap * heap) * heap) * heap) * int

val g12_example2550 : (((heap * heap) * heap) * heap) * int

val g12_example2551 : (((heap * heap) * heap) * heap) * int

val g12_example2552 : (((heap * heap) * heap) * heap) * int

val g12_example2553 : (((heap * heap) * heap) * heap) * int

val g12_example2554 : (((heap * heap) * heap) * heap) * int

val g12_example2555 : (((heap * heap) * heap) * heap) * int

val g12_example2556 : (((heap * heap) * heap) * heap) * int

val g12_example2557 : (((heap * heap) * heap) * heap) * int

val g12_example2558 : (((heap * heap) * heap) * heap) * int

val g12_example2559 : (((heap * heap) * heap) * heap) * int

val g12_example2560 : (((heap * heap) * heap) * heap) * int

val g12_example2561 : (((heap * heap) * heap) * heap) * int

val g12_example2562 : (((heap * heap) * heap) * heap) * int

val g12_example2563 : (((heap * heap) * heap) * heap) * int

val g12_example2564 : (((heap * heap) * heap) * heap) * int

val g12_example2565 : (((heap * heap) * heap) * heap) * int

val g12_example2566 : (((heap * heap) * heap) * heap) * int

val g12_example2567 : (((heap * heap) * heap) * heap) * int

val g12_example2568 : (((heap * heap) * heap) * heap) * int

val g12_example2569 : (((heap * heap) * heap) * heap) * int

val g12_example2570 : (((heap * heap) * heap) * heap) * int

val g12_example2571 : (((heap * heap) * heap) * heap) * int

val g12_example2572 : (((heap * heap) * heap) * heap) * int

val g12_example2573 : (((heap * heap) * heap) * heap) * int

val g12_example2574 : (((heap * heap) * heap) * heap) * int

val g12_example2575 : (((heap * heap) * heap) * heap) * int

val g12_example2576 : (((heap * heap) * heap) * heap) * int

val g12_example2577 : (((heap * heap) * heap) * heap) * int

val g12_example2578 : (((heap * heap) * heap) * heap) * int

val g12_example2579 : (((heap * heap) * heap) * heap) * int

val g12_example2580 : (((heap * heap) * heap) * heap) * int

val g12_example2581 : (((heap * heap) * heap) * heap) * int

val g12_example2582 : (((heap * heap) * heap) * heap) * int

val g12_example2583 : (((heap * heap) * heap) * heap) * int

val g12_example2584 : (((heap * heap) * heap) * heap) * int

val g12_example2585 : (((heap * heap) * heap) * heap) * int

val g12_example2586 : (((heap * heap) * heap) * heap) * int

val g12_example2587 : (((heap * heap) * heap) * heap) * int

val g12_example2588 : (((heap * heap) * heap) * heap) * int

val g12_example2589 : (((heap * heap) * heap) * heap) * int

val g12_example2590 : (((heap * heap) * heap) * heap) * int

val g12_example2591 : (((heap * heap) * heap) * heap) * int

val g12_example2592 : (((heap * heap) * heap) * heap) * int

val g12_example2593 : (((heap * heap) * heap) * heap) * int

val g12_example2594 : (((heap * heap) * heap) * heap) * int

val g12_example2595 : (((heap * heap) * heap) * heap) * int

val g12_example2596 : (((heap * heap) * heap) * heap) * int

val g12_example2597 : (((heap * heap) * heap) * heap) * int

val g12_example2598 : (((heap * heap) * heap) * heap) * int

val g12_example2599 : (((heap * heap) * heap) * heap) * int

val g12_example2600 : (((heap * heap) * heap) * heap) * int

val g12_example2601 : (((heap * heap) * heap) * heap) * int

val g12_example2602 : (((heap * heap) * heap) * heap) * int

val g12_example2603 : (((heap * heap) * heap) * heap) * int

val g12_example2604 : (((heap * heap) * heap) * heap) * int

val g12_example2605 : (((heap * heap) * heap) * heap) * int

val g12_example2606 : (((heap * heap) * heap) * heap) * int

val g12_example2607 : (((heap * heap) * heap) * heap) * int

val g12_example2608 : (((heap * heap) * heap) * heap) * int

val g12_example2609 : (((heap * heap) * heap) * heap) * int

val g12_example2610 : (((heap * heap) * heap) * heap) * int

val g12_example2611 : (((heap * heap) * heap) * heap) * int

val g12_example2612 : (((heap * heap) * heap) * heap) * int

val g12_example2613 : (((heap * heap) * heap) * heap) * int

val g12_example2614 : (((heap * heap) * heap) * heap) * int

val g12_example2615 : (((heap * heap) * heap) * heap) * int

val g12_example2616 : (((heap * heap) * heap) * heap) * int

val g12_example2617 : (((heap * heap) * heap) * heap) * int

val g12_example2618 : (((heap * heap) * heap) * heap) * int

val g12_example2619 : (((heap * heap) * heap) * heap) * int

val g12_example2620 : (((heap * heap) * heap) * heap) * int

val g12_example2621 : (((heap * heap) * heap) * heap) * int

val g12_example2622 : (((heap * heap) * heap) * heap) * int

val g12_example2623 : (((heap * heap) * heap) * heap) * int

val g12_example2624 : (((heap * heap) * heap) * heap) * int

val g12_example2625 : (((heap * heap) * heap) * heap) * int

val g12_example2626 : (((heap * heap) * heap) * heap) * int

val g12_example2627 : (((heap * heap) * heap) * heap) * int

val g12_example2628 : (((heap * heap) * heap) * heap) * int

val g12_example2629 : (((heap * heap) * heap) * heap) * int

val g12_example2630 : (((heap * heap) * heap) * heap) * int

val g12_example2631 : (((heap * heap) * heap) * heap) * int

val g12_example2632 : (((heap * heap) * heap) * heap) * int

val g12_example2633 : (((heap * heap) * heap) * heap) * int

val g12_example2634 : (((heap * heap) * heap) * heap) * int

val g12_example2635 : (((heap * heap) * heap) * heap) * int

val g12_example2636 : (((heap * heap) * heap) * heap) * int

val g12_example2637 : (((heap * heap) * heap) * heap) * int

val g12_example2638 : (((heap * heap) * heap) * heap) * int

val g12_example2639 : (((heap * heap) * heap) * heap) * int

val g12_example2640 : (((heap * heap) * heap) * heap) * int

val g12_example2641 : (((heap * heap) * heap) * heap) * int

val g12_example2642 : (((heap * heap) * heap) * heap) * int

val g12_example2643 : (((heap * heap) * heap) * heap) * int

val g12_example2644 : (((heap * heap) * heap) * heap) * int

val g12_example2645 : (((heap * heap) * heap) * heap) * int

val g12_example2646 : (((heap * heap) * heap) * heap) * int

val g12_example2647 : (((heap * heap) * heap) * heap) * int

val g12_example2648 : (((heap * heap) * heap) * heap) * int

val g12_example2649 : (((heap * heap) * heap) * heap) * int

val g12_example2650 : (((heap * heap) * heap) * heap) * int

val g12_example2651 : (((heap * heap) * heap) * heap) * int

val g12_example2652 : (((heap * heap) * heap) * heap) * int

val g12_example2653 : (((heap * heap) * heap) * heap) * int

val g12_example2654 : (((heap * heap) * heap) * heap) * int

val g12_example2655 : (((heap * heap) * heap) * heap) * int

val g12_example2656 : (((heap * heap) * heap) * heap) * int

val g12_example2657 : (((heap * heap) * heap) * heap) * int

val g12_example2658 : (((heap * heap) * heap) * heap) * int

val g12_example2659 : (((heap * heap) * heap) * heap) * int

val g12_example2660 : (((heap * heap) * heap) * heap) * int

val g12_example2661 : (((heap * heap) * heap) * heap) * int

val g12_example2662 : (((heap * heap) * heap) * heap) * int

val g12_example2663 : (((heap * heap) * heap) * heap) * int

val g12_example2664 : (((heap * heap) * heap) * heap) * int

val g12_example2665 : (((heap * heap) * heap) * heap) * int

val g12_example2666 : (((heap * heap) * heap) * heap) * int

val g12_example2667 : (((heap * heap) * heap) * heap) * int

val g12_example2668 : (((heap * heap) * heap) * heap) * int

val g12_example2669 : (((heap * heap) * heap) * heap) * int

val g12_example2670 : (((heap * heap) * heap) * heap) * int

val g12_example2671 : (((heap * heap) * heap) * heap) * int

val g12_example2672 : (((heap * heap) * heap) * heap) * int

val g12_example2673 : (((heap * heap) * heap) * heap) * int

val g12_example2674 : (((heap * heap) * heap) * heap) * int

val g12_example2675 : (((heap * heap) * heap) * heap) * int

val g12_example2676 : (((heap * heap) * heap) * heap) * int

val g12_example2677 : (((heap * heap) * heap) * heap) * int

val g12_example2678 : (((heap * heap) * heap) * heap) * int

val g12_example2679 : (((heap * heap) * heap) * heap) * int

val g12_example2680 : (((heap * heap) * heap) * heap) * int

val g12_example2681 : (((heap * heap) * heap) * heap) * int

val g12_example2682 : (((heap * heap) * heap) * heap) * int

val g12_example2683 : (((heap * heap) * heap) * heap) * int

val g12_example2684 : (((heap * heap) * heap) * heap) * int

val g12_example2685 : (((heap * heap) * heap) * heap) * int

val g12_example2686 : (((heap * heap) * heap) * heap) * int

val g12_example2687 : (((heap * heap) * heap) * heap) * int

val g12_example2688 : (((heap * heap) * heap) * heap) * int

val g12_example2689 : (((heap * heap) * heap) * heap) * int

val g12_example2690 : (((heap * heap) * heap) * heap) * int

val g12_example2691 : (((heap * heap) * heap) * heap) * int

val g12_example2692 : (((heap * heap) * heap) * heap) * int

val g12_example2693 : (((heap * heap) * heap) * heap) * int

val g12_example2694 : (((heap * heap) * heap) * heap) * int

val g12_example2695 : (((heap * heap) * heap) * heap) * int

val g12_example2696 : (((heap * heap) * heap) * heap) * int

val g12_example2697 : (((heap * heap) * heap) * heap) * int

val g12_example2698 : (((heap * heap) * heap) * heap) * int

val g12_example2699 : (((heap * heap) * heap) * heap) * int

val g12_example2700 : (((heap * heap) * heap) * heap) * int

val g12_example2701 : (((heap * heap) * heap) * heap) * int

val g12_example2702 : (((heap * heap) * heap) * heap) * int

val g12_example2703 : (((heap * heap) * heap) * heap) * int

val g12_example2704 : (((heap * heap) * heap) * heap) * int

val g12_example2705 : (((heap * heap) * heap) * heap) * int

val g12_example2706 : (((heap * heap) * heap) * heap) * int

val g12_example2707 : (((heap * heap) * heap) * heap) * int

val g12_example2708 : (((heap * heap) * heap) * heap) * int

val g12_example2709 : (((heap * heap) * heap) * heap) * int

val g12_example2710 : (((heap * heap) * heap) * heap) * int

val g12_example2711 : (((heap * heap) * heap) * heap) * int

val g12_example2712 : (((heap * heap) * heap) * heap) * int

val g12_example2713 : (((heap * heap) * heap) * heap) * int

val g12_example2714 : (((heap * heap) * heap) * heap) * int

val g12_example2715 : (((heap * heap) * heap) * heap) * int

val g12_example2716 : (((heap * heap) * heap) * heap) * int

val g12_example2717 : (((heap * heap) * heap) * heap) * int

val g12_example2718 : (((heap * heap) * heap) * heap) * int

val g12_example2719 : (((heap * heap) * heap) * heap) * int

val g12_example2720 : (((heap * heap) * heap) * heap) * int

val g12_example2721 : (((heap * heap) * heap) * heap) * int

val g12_example2722 : (((heap * heap) * heap) * heap) * int

val g12_example2723 : (((heap * heap) * heap) * heap) * int

val g12_example2724 : (((heap * heap) * heap) * heap) * int

val g12_example2725 : (((heap * heap) * heap) * heap) * int

val g12_example2726 : (((heap * heap) * heap) * heap) * int

val g12_example2727 : (((heap * heap) * heap) * heap) * int

val g12_example2728 : (((heap * heap) * heap) * heap) * int

val g12_example2729 : (((heap * heap) * heap) * heap) * int

val g12_example2730 : (((heap * heap) * heap) * heap) * int

val g12_example2731 : (((heap * heap) * heap) * heap) * int

val g12_example2732 : (((heap * heap) * heap) * heap) * int

val g12_example2733 : (((heap * heap) * heap) * heap) * int

val g12_example2734 : (((heap * heap) * heap) * heap) * int

val g12_example2735 : (((heap * heap) * heap) * heap) * int

val g12_example2736 : (((heap * heap) * heap) * heap) * int

val g12_example2737 : (((heap * heap) * heap) * heap) * int

val g12_example2738 : (((heap * heap) * heap) * heap) * int

val g12_example2739 : (((heap * heap) * heap) * heap) * int

val g12_example2740 : (((heap * heap) * heap) * heap) * int

val g12_example2741 : (((heap * heap) * heap) * heap) * int

val g12_example2742 : (((heap * heap) * heap) * heap) * int

val g12_example2743 : (((heap * heap) * heap) * heap) * int

val g12_example2744 : (((heap * heap) * heap) * heap) * int

val g12_example2745 : (((heap * heap) * heap) * heap) * int

val g12_example2746 : (((heap * heap) * heap) * heap) * int

val g12_example2747 : (((heap * heap) * heap) * heap) * int

val g12_example2748 : (((heap * heap) * heap) * heap) * int

val g12_example2749 : (((heap * heap) * heap) * heap) * int

val g12_example2750 : (((heap * heap) * heap) * heap) * int

val g12_example2751 : (((heap * heap) * heap) * heap) * int

val g12_example2752 : (((heap * heap) * heap) * heap) * int

val g12_example2753 : (((heap * heap) * heap) * heap) * int

val g12_example2754 : (((heap * heap) * heap) * heap) * int

val g12_example2755 : (((heap * heap) * heap) * heap) * int

val g12_example2756 : (((heap * heap) * heap) * heap) * int

val g12_example2757 : (((heap * heap) * heap) * heap) * int

val g12_example2758 : (((heap * heap) * heap) * heap) * int

val g12_example2759 : (((heap * heap) * heap) * heap) * int

val g12_example2760 : (((heap * heap) * heap) * heap) * int

val g12_example2761 : (((heap * heap) * heap) * heap) * int

val g12_example2762 : (((heap * heap) * heap) * heap) * int

val g12_example2763 : (((heap * heap) * heap) * heap) * int

val g12_example2764 : (((heap * heap) * heap) * heap) * int

val g12_example2765 : (((heap * heap) * heap) * heap) * int

val g12_example2766 : (((heap * heap) * heap) * heap) * int

val g12_example2767 : (((heap * heap) * heap) * heap) * int

val g12_example2768 : (((heap * heap) * heap) * heap) * int

val g12_example2769 : (((heap * heap) * heap) * heap) * int

val g12_example2770 : (((heap * heap) * heap) * heap) * int

val g12_example2771 : (((heap * heap) * heap) * heap) * int

val g12_example2772 : (((heap * heap) * heap) * heap) * int

val g12_example2773 : (((heap * heap) * heap) * heap) * int

val g12_example2774 : (((heap * heap) * heap) * heap) * int

val g12_example2775 : (((heap * heap) * heap) * heap) * int

val g12_example2776 : (((heap * heap) * heap) * heap) * int

val g12_example2777 : (((heap * heap) * heap) * heap) * int

val g12_example2778 : (((heap * heap) * heap) * heap) * int

val g12_example2779 : (((heap * heap) * heap) * heap) * int

val g12_example2780 : (((heap * heap) * heap) * heap) * int

val g12_example2781 : (((heap * heap) * heap) * heap) * int

val g12_example2782 : (((heap * heap) * heap) * heap) * int

val g12_example2783 : (((heap * heap) * heap) * heap) * int

val g12_example2784 : (((heap * heap) * heap) * heap) * int

val g12_example2785 : (((heap * heap) * heap) * heap) * int

val g12_example2786 : (((heap * heap) * heap) * heap) * int

val g12_example2787 : (((heap * heap) * heap) * heap) * int

val g12_example2788 : (((heap * heap) * heap) * heap) * int

val g12_example2789 : (((heap * heap) * heap) * heap) * int

val g12_example2790 : (((heap * heap) * heap) * heap) * int

val g12_example2791 : (((heap * heap) * heap) * heap) * int

val g12_example2792 : (((heap * heap) * heap) * heap) * int

val g12_example2793 : (((heap * heap) * heap) * heap) * int

val g12_example2794 : (((heap * heap) * heap) * heap) * int

val g12_example2795 : (((heap * heap) * heap) * heap) * int

val g12_example2796 : (((heap * heap) * heap) * heap) * int

val g12_example2797 : (((heap * heap) * heap) * heap) * int

val g12_example2798 : (((heap * heap) * heap) * heap) * int

val g12_example2799 : (((heap * heap) * heap) * heap) * int

val g12_example2800 : (((heap * heap) * heap) * heap) * int

val g12_example2801 : (((heap * heap) * heap) * heap) * int

val g12_example2802 : (((heap * heap) * heap) * heap) * int

val g12_example2803 : (((heap * heap) * heap) * heap) * int

val g12_example2804 : (((heap * heap) * heap) * heap) * int

val g12_example2805 : (((heap * heap) * heap) * heap) * int

val g12_example2806 : (((heap * heap) * heap) * heap) * int

val g12_example2807 : (((heap * heap) * heap) * heap) * int

val g12_example2808 : (((heap * heap) * heap) * heap) * int

val g12_example2809 : (((heap * heap) * heap) * heap) * int

val g12_example2810 : (((heap * heap) * heap) * heap) * int

val g12_example2811 : (((heap * heap) * heap) * heap) * int

val g12_example2812 : (((heap * heap) * heap) * heap) * int

val g12_example2813 : (((heap * heap) * heap) * heap) * int

val g12_example2814 : (((heap * heap) * heap) * heap) * int

val g12_example2815 : (((heap * heap) * heap) * heap) * int

val g12_example2816 : (((heap * heap) * heap) * heap) * int

val g12_example2817 : (((heap * heap) * heap) * heap) * int

val g12_example2818 : (((heap * heap) * heap) * heap) * int

val g12_example2819 : (((heap * heap) * heap) * heap) * int

val g12_example2820 : (((heap * heap) * heap) * heap) * int

val g12_example2821 : (((heap * heap) * heap) * heap) * int

val g12_example2822 : (((heap * heap) * heap) * heap) * int

val g12_example2823 : (((heap * heap) * heap) * heap) * int

val g12_example2824 : (((heap * heap) * heap) * heap) * int

val g12_example2825 : (((heap * heap) * heap) * heap) * int

val g12_example2826 : (((heap * heap) * heap) * heap) * int

val g12_example2827 : (((heap * heap) * heap) * heap) * int

val g12_example2828 : (((heap * heap) * heap) * heap) * int

val g12_example2829 : (((heap * heap) * heap) * heap) * int

val g12_example2830 : (((heap * heap) * heap) * heap) * int

val g12_example2831 : (((heap * heap) * heap) * heap) * int

val g12_example2832 : (((heap * heap) * heap) * heap) * int

val g12_example2833 : (((heap * heap) * heap) * heap) * int

val g12_example2834 : (((heap * heap) * heap) * heap) * int

val g12_example2835 : (((heap * heap) * heap) * heap) * int

val g12_example2836 : (((heap * heap) * heap) * heap) * int

val g12_example2837 : (((heap * heap) * heap) * heap) * int

val g12_example2838 : (((heap * heap) * heap) * heap) * int

val g12_example2839 : (((heap * heap) * heap) * heap) * int

val g12_example2840 : (((heap * heap) * heap) * heap) * int

val g12_example2841 : (((heap * heap) * heap) * heap) * int

val g12_example2842 : (((heap * heap) * heap) * heap) * int

val g12_example2843 : (((heap * heap) * heap) * heap) * int

val g12_example2844 : (((heap * heap) * heap) * heap) * int

val g12_example2845 : (((heap * heap) * heap) * heap) * int

val g12_example2846 : (((heap * heap) * heap) * heap) * int

val g12_example2847 : (((heap * heap) * heap) * heap) * int

val g12_example2848 : (((heap * heap) * heap) * heap) * int

val g12_example2849 : (((heap * heap) * heap) * heap) * int

val g12_example2850 : (((heap * heap) * heap) * heap) * int

val g12_example2851 : (((heap * heap) * heap) * heap) * int

val g12_example2852 : (((heap * heap) * heap) * heap) * int

val g12_example2853 : (((heap * heap) * heap) * heap) * int

val g12_example2854 : (((heap * heap) * heap) * heap) * int

val g12_example2855 : (((heap * heap) * heap) * heap) * int

val g12_example2856 : (((heap * heap) * heap) * heap) * int

val g12_example2857 : (((heap * heap) * heap) * heap) * int

val g12_example2858 : (((heap * heap) * heap) * heap) * int

val g12_example2859 : (((heap * heap) * heap) * heap) * int

val g12_example2860 : (((heap * heap) * heap) * heap) * int

val g12_example2861 : (((heap * heap) * heap) * heap) * int

val g12_example2862 : (((heap * heap) * heap) * heap) * int

val g12_example2863 : (((heap * heap) * heap) * heap) * int

val g12_example2864 : (((heap * heap) * heap) * heap) * int

val g12_example2865 : (((heap * heap) * heap) * heap) * int

val g12_example2866 : (((heap * heap) * heap) * heap) * int

val g12_example2867 : (((heap * heap) * heap) * heap) * int

val g12_example2868 : (((heap * heap) * heap) * heap) * int

val g12_example2869 : (((heap * heap) * heap) * heap) * int

val g12_example2870 : (((heap * heap) * heap) * heap) * int

val g12_example2871 : (((heap * heap) * heap) * heap) * int

val g12_example2872 : (((heap * heap) * heap) * heap) * int

val g12_example2873 : (((heap * heap) * heap) * heap) * int

val g12_example2874 : (((heap * heap) * heap) * heap) * int

val g12_example2875 : (((heap * heap) * heap) * heap) * int

val g12_example2876 : (((heap * heap) * heap) * heap) * int

val g12_example2877 : (((heap * heap) * heap) * heap) * int

val g12_example2878 : (((heap * heap) * heap) * heap) * int

val g12_example2879 : (((heap * heap) * heap) * heap) * int

val g12_example2880 : (((heap * heap) * heap) * heap) * int

val g12_example2881 : (((heap * heap) * heap) * heap) * int

val g12_example2882 : (((heap * heap) * heap) * heap) * int

val g12_example2883 : (((heap * heap) * heap) * heap) * int

val g12_example2884 : (((heap * heap) * heap) * heap) * int

val g12_example2885 : (((heap * heap) * heap) * heap) * int

val g12_example2886 : (((heap * heap) * heap) * heap) * int

val g12_example2887 : (((heap * heap) * heap) * heap) * int

val g12_example2888 : (((heap * heap) * heap) * heap) * int

val g12_example2889 : (((heap * heap) * heap) * heap) * int

val g12_example2890 : (((heap * heap) * heap) * heap) * int

val g12_example2891 : (((heap * heap) * heap) * heap) * int

val g12_example2892 : (((heap * heap) * heap) * heap) * int

val g12_example2893 : (((heap * heap) * heap) * heap) * int

val g12_example2894 : (((heap * heap) * heap) * heap) * int

val g12_example2895 : (((heap * heap) * heap) * heap) * int

val g12_example2896 : (((heap * heap) * heap) * heap) * int

val g12_example2897 : (((heap * heap) * heap) * heap) * int

val g12_example2898 : (((heap * heap) * heap) * heap) * int

val g12_example2899 : (((heap * heap) * heap) * heap) * int

val g12_example2900 : (((heap * heap) * heap) * heap) * int

val g12_example2901 : (((heap * heap) * heap) * heap) * int

val g12_example2902 : (((heap * heap) * heap) * heap) * int

val g12_example2903 : (((heap * heap) * heap) * heap) * int

val g12_example2904 : (((heap * heap) * heap) * heap) * int

val g12_example2905 : (((heap * heap) * heap) * heap) * int

val g12_example2906 : (((heap * heap) * heap) * heap) * int

val g12_example2907 : (((heap * heap) * heap) * heap) * int

val g12_example2908 : (((heap * heap) * heap) * heap) * int

val g12_example2909 : (((heap * heap) * heap) * heap) * int

val g12_example2910 : (((heap * heap) * heap) * heap) * int

val g12_example2911 : (((heap * heap) * heap) * heap) * int

val g12_example2912 : (((heap * heap) * heap) * heap) * int

val g12_example2913 : (((heap * heap) * heap) * heap) * int

val g12_example2914 : (((heap * heap) * heap) * heap) * int

val g12_example2915 : (((heap * heap) * heap) * heap) * int

val g12_example2916 : (((heap * heap) * heap) * heap) * int

val g12_example2917 : (((heap * heap) * heap) * heap) * int

val g12_example2918 : (((heap * heap) * heap) * heap) * int

val g12_example2919 : (((heap * heap) * heap) * heap) * int

val g12_example2920 : (((heap * heap) * heap) * heap) * int

val g12_example2921 : (((heap * heap) * heap) * heap) * int

val g12_example2922 : (((heap * heap) * heap) * heap) * int

val g12_example2923 : (((heap * heap) * heap) * heap) * int

val g12_example2924 : (((heap * heap) * heap) * heap) * int

val g12_example2925 : (((heap * heap) * heap) * heap) * int

val g12_example2926 : (((heap * heap) * heap) * heap) * int

val g12_example2927 : (((heap * heap) * heap) * heap) * int

val g12_example2928 : (((heap * heap) * heap) * heap) * int

val g12_example2929 : (((heap * heap) * heap) * heap) * int

val g12_example2930 : (((heap * heap) * heap) * heap) * int

val g12_example2931 : (((heap * heap) * heap) * heap) * int

val g12_example2932 : (((heap * heap) * heap) * heap) * int

val g12_example2933 : (((heap * heap) * heap) * heap) * int

val g12_example2934 : (((heap * heap) * heap) * heap) * int

val g12_example2935 : (((heap * heap) * heap) * heap) * int

val g12_example2936 : (((heap * heap) * heap) * heap) * int

val g12_example2937 : (((heap * heap) * heap) * heap) * int

val g12_example2938 : (((heap * heap) * heap) * heap) * int

val g12_example2939 : (((heap * heap) * heap) * heap) * int

val g12_example2940 : (((heap * heap) * heap) * heap) * int

val g12_example2941 : (((heap * heap) * heap) * heap) * int

val g12_example2942 : (((heap * heap) * heap) * heap) * int

val g12_example2943 : (((heap * heap) * heap) * heap) * int

val g12_example2944 : (((heap * heap) * heap) * heap) * int

val g12_example2945 : (((heap * heap) * heap) * heap) * int

val g12_example2946 : (((heap * heap) * heap) * heap) * int

val g12_example2947 : (((heap * heap) * heap) * heap) * int

val g12_example2948 : (((heap * heap) * heap) * heap) * int

val g12_example2949 : (((heap * heap) * heap) * heap) * int

val g12_example2950 : (((heap * heap) * heap) * heap) * int

val g12_example2951 : (((heap * heap) * heap) * heap) * int

val g12_example2952 : (((heap * heap) * heap) * heap) * int

val g12_example2953 : (((heap * heap) * heap) * heap) * int

val g12_example2954 : (((heap * heap) * heap) * heap) * int

val g12_example2955 : (((heap * heap) * heap) * heap) * int

val g12_example2956 : (((heap * heap) * heap) * heap) * int

val g12_example2957 : (((heap * heap) * heap) * heap) * int

val g12_example2958 : (((heap * heap) * heap) * heap) * int

val g12_example2959 : (((heap * heap) * heap) * heap) * int

val g12_example2960 : (((heap * heap) * heap) * heap) * int

val g12_example2961 : (((heap * heap) * heap) * heap) * int

val g12_example2962 : (((heap * heap) * heap) * heap) * int

val g12_example2963 : (((heap * heap) * heap) * heap) * int

val g12_example2964 : (((heap * heap) * heap) * heap) * int

val g12_example2965 : (((heap * heap) * heap) * heap) * int

val g12_example2966 : (((heap * heap) * heap) * heap) * int

val g12_example2967 : (((heap * heap) * heap) * heap) * int

val g12_example2968 : (((heap * heap) * heap) * heap) * int

val g12_example2969 : (((heap * heap) * heap) * heap) * int

val g12_example2970 : (((heap * heap) * heap) * heap) * int

val g12_example2971 : (((heap * heap) * heap) * heap) * int

val g12_example2972 : (((heap * heap) * heap) * heap) * int

val g12_example2973 : (((heap * heap) * heap) * heap) * int

val g12_example2974 : (((heap * heap) * heap) * heap) * int

val g12_example2975 : (((heap * heap) * heap) * heap) * int

val g12_example2976 : (((heap * heap) * heap) * heap) * int

val g12_example2977 : (((heap * heap) * heap) * heap) * int

val g12_example2978 : (((heap * heap) * heap) * heap) * int

val g12_example2979 : (((heap * heap) * heap) * heap) * int

val g12_example2980 : (((heap * heap) * heap) * heap) * int

val g12_example2981 : (((heap * heap) * heap) * heap) * int

val g12_example2982 : (((heap * heap) * heap) * heap) * int

val g12_example2983 : (((heap * heap) * heap) * heap) * int

val g12_example2984 : (((heap * heap) * heap) * heap) * int

val g12_example2985 : (((heap * heap) * heap) * heap) * int

val g12_example2986 : (((heap * heap) * heap) * heap) * int

val g12_example2987 : (((heap * heap) * heap) * heap) * int

val g12_example2988 : (((heap * heap) * heap) * heap) * int

val g12_example2989 : (((heap * heap) * heap) * heap) * int

val g12_example2990 : (((heap * heap) * heap) * heap) * int

val g12_example2991 : (((heap * heap) * heap) * heap) * int

val g12_example2992 : (((heap * heap) * heap) * heap) * int

val g12_example2993 : (((heap * heap) * heap) * heap) * int

val g12_example2994 : (((heap * heap) * heap) * heap) * int

val g12_example2995 : (((heap * heap) * heap) * heap) * int

val g12_example2996 : (((heap * heap) * heap) * heap) * int

val g12_example2997 : (((heap * heap) * heap) * heap) * int

val g12_example2998 : (((heap * heap) * heap) * heap) * int

val g12_example2999 : (((heap * heap) * heap) * heap) * int

val g12_example3000 : (((heap * heap) * heap) * heap) * int

val g12_example3001 : (((heap * heap) * heap) * heap) * int

val g12_example3002 : (((heap * heap) * heap) * heap) * int

val g12_example3003 : (((heap * heap) * heap) * heap) * int

val g12_example3004 : (((heap * heap) * heap) * heap) * int

val g12_example3005 : (((heap * heap) * heap) * heap) * int

val g12_example3006 : (((heap * heap) * heap) * heap) * int

val g12_example3007 : (((heap * heap) * heap) * heap) * int

val g12_example3008 : (((heap * heap) * heap) * heap) * int

val g12_example3009 : (((heap * heap) * heap) * heap) * int

val g12_example3010 : (((heap * heap) * heap) * heap) * int

val g12_example3011 : (((heap * heap) * heap) * heap) * int

val g12_example3012 : (((heap * heap) * heap) * heap) * int

val g12_example3013 : (((heap * heap) * heap) * heap) * int

val g12_example3014 : (((heap * heap) * heap) * heap) * int

val g12_example3015 : (((heap * heap) * heap) * heap) * int

val g12_example3016 : (((heap * heap) * heap) * heap) * int

val g12_example3017 : (((heap * heap) * heap) * heap) * int

val g12_example3018 : (((heap * heap) * heap) * heap) * int

val g12_example3019 : (((heap * heap) * heap) * heap) * int

val g12_example3020 : (((heap * heap) * heap) * heap) * int

val g12_example3021 : (((heap * heap) * heap) * heap) * int

val g12_example3022 : (((heap * heap) * heap) * heap) * int

val g12_example3023 : (((heap * heap) * heap) * heap) * int

val g12_example3024 : (((heap * heap) * heap) * heap) * int

val g12_example3025 : (((heap * heap) * heap) * heap) * int

val g12_example3026 : (((heap * heap) * heap) * heap) * int

val g12_example3027 : (((heap * heap) * heap) * heap) * int

val g12_example3028 : (((heap * heap) * heap) * heap) * int

val g12_example3029 : (((heap * heap) * heap) * heap) * int

val g12_example3030 : (((heap * heap) * heap) * heap) * int

val g12_example3031 : (((heap * heap) * heap) * heap) * int

val g12_example3032 : (((heap * heap) * heap) * heap) * int

val g12_example3033 : (((heap * heap) * heap) * heap) * int

val g12_example3034 : (((heap * heap) * heap) * heap) * int

val g12_example3035 : (((heap * heap) * heap) * heap) * int

val g12_example3036 : (((heap * heap) * heap) * heap) * int

val g12_example3037 : (((heap * heap) * heap) * heap) * int

val g12_example3038 : (((heap * heap) * heap) * heap) * int

val g12_example3039 : (((heap * heap) * heap) * heap) * int

val g12_example3040 : (((heap * heap) * heap) * heap) * int

val g12_example3041 : (((heap * heap) * heap) * heap) * int

val g12_example3042 : (((heap * heap) * heap) * heap) * int

val g12_example3043 : (((heap * heap) * heap) * heap) * int

val g12_example3044 : (((heap * heap) * heap) * heap) * int

val g12_example3045 : (((heap * heap) * heap) * heap) * int

val g12_example3046 : (((heap * heap) * heap) * heap) * int

val g12_example3047 : (((heap * heap) * heap) * heap) * int

val g12_example3048 : (((heap * heap) * heap) * heap) * int

val g12_example3049 : (((heap * heap) * heap) * heap) * int

val g12_example3050 : (((heap * heap) * heap) * heap) * int

val g12_example3051 : (((heap * heap) * heap) * heap) * int

val g12_example3052 : (((heap * heap) * heap) * heap) * int

val g12_example3053 : (((heap * heap) * heap) * heap) * int

val g12_example3054 : (((heap * heap) * heap) * heap) * int

val g12_example3055 : (((heap * heap) * heap) * heap) * int

val g12_example3056 : (((heap * heap) * heap) * heap) * int

val g12_example3057 : (((heap * heap) * heap) * heap) * int

val g12_example3058 : (((heap * heap) * heap) * heap) * int

val g12_example3059 : (((heap * heap) * heap) * heap) * int

val g12_example3060 : (((heap * heap) * heap) * heap) * int

val g12_example3061 : (((heap * heap) * heap) * heap) * int

val g12_example3062 : (((heap * heap) * heap) * heap) * int

val g12_example3063 : (((heap * heap) * heap) * heap) * int

val g12_example3064 : (((heap * heap) * heap) * heap) * int

val g12_example3065 : (((heap * heap) * heap) * heap) * int

val g12_example3066 : (((heap * heap) * heap) * heap) * int

val g12_example3067 : (((heap * heap) * heap) * heap) * int

val g12_example3068 : (((heap * heap) * heap) * heap) * int

val g12_example3069 : (((heap * heap) * heap) * heap) * int

val g12_example3070 : (((heap * heap) * heap) * heap) * int

val g12_example3071 : (((heap * heap) * heap) * heap) * int

val g12_example3072 : (((heap * heap) * heap) * heap) * int

val g12_example3073 : (((heap * heap) * heap) * heap) * int

val g12_example3074 : (((heap * heap) * heap) * heap) * int

val g12_example3075 : (((heap * heap) * heap) * heap) * int

val g12_example3076 : (((heap * heap) * heap) * heap) * int

val g12_example3077 : (((heap * heap) * heap) * heap) * int

val g12_example3078 : (((heap * heap) * heap) * heap) * int

val g12_example3079 : (((heap * heap) * heap) * heap) * int

val g12_example3080 : (((heap * heap) * heap) * heap) * int

val g12_example3081 : (((heap * heap) * heap) * heap) * int

val g12_example3082 : (((heap * heap) * heap) * heap) * int

val g12_example3083 : (((heap * heap) * heap) * heap) * int

val g12_example3084 : (((heap * heap) * heap) * heap) * int

val g12_example3085 : (((heap * heap) * heap) * heap) * int

val g12_example3086 : (((heap * heap) * heap) * heap) * int

val g12_example3087 : (((heap * heap) * heap) * heap) * int

val g12_example3088 : (((heap * heap) * heap) * heap) * int

val g12_example3089 : (((heap * heap) * heap) * heap) * int

val g12_example3090 : (((heap * heap) * heap) * heap) * int

val g12_example3091 : (((heap * heap) * heap) * heap) * int

val g12_example3092 : (((heap * heap) * heap) * heap) * int

val g12_example3093 : (((heap * heap) * heap) * heap) * int

val g12_example3094 : (((heap * heap) * heap) * heap) * int

val g12_example3095 : (((heap * heap) * heap) * heap) * int

val g12_example3096 : (((heap * heap) * heap) * heap) * int

val g12_example3097 : (((heap * heap) * heap) * heap) * int

val g12_example3098 : (((heap * heap) * heap) * heap) * int

val g12_example3099 : (((heap * heap) * heap) * heap) * int

val g12_example3100 : (((heap * heap) * heap) * heap) * int

val g12_example3101 : (((heap * heap) * heap) * heap) * int

val g12_example3102 : (((heap * heap) * heap) * heap) * int

val g12_example3103 : (((heap * heap) * heap) * heap) * int

val g12_example3104 : (((heap * heap) * heap) * heap) * int

val g12_example3105 : (((heap * heap) * heap) * heap) * int

val g12_example3106 : (((heap * heap) * heap) * heap) * int

val g12_example3107 : (((heap * heap) * heap) * heap) * int

val g12_example3108 : (((heap * heap) * heap) * heap) * int

val g12_example3109 : (((heap * heap) * heap) * heap) * int

val g12_example3110 : (((heap * heap) * heap) * heap) * int

val g12_example3111 : (((heap * heap) * heap) * heap) * int

val g12_example3112 : (((heap * heap) * heap) * heap) * int

val g12_example3113 : (((heap * heap) * heap) * heap) * int

val g12_example3114 : (((heap * heap) * heap) * heap) * int

val g12_example3115 : (((heap * heap) * heap) * heap) * int

val g12_example3116 : (((heap * heap) * heap) * heap) * int

val g12_example3117 : (((heap * heap) * heap) * heap) * int

val g12_example3118 : (((heap * heap) * heap) * heap) * int

val g12_example3119 : (((heap * heap) * heap) * heap) * int

val g12_example3120 : (((heap * heap) * heap) * heap) * int

val g12_example3121 : (((heap * heap) * heap) * heap) * int

val g12_example3122 : (((heap * heap) * heap) * heap) * int

val g12_example3123 : (((heap * heap) * heap) * heap) * int

val g12_example3124 : (((heap * heap) * heap) * heap) * int

val g12_example3125 : (((heap * heap) * heap) * heap) * int

val g12_example3126 : (((heap * heap) * heap) * heap) * int

val g12_example3127 : (((heap * heap) * heap) * heap) * int

val g12_example3128 : (((heap * heap) * heap) * heap) * int

val g12_example3129 : (((heap * heap) * heap) * heap) * int

val g12_example3130 : (((heap * heap) * heap) * heap) * int

val g12_example3131 : (((heap * heap) * heap) * heap) * int

val g12_example3132 : (((heap * heap) * heap) * heap) * int

val g12_example3133 : (((heap * heap) * heap) * heap) * int

val g12_example3134 : (((heap * heap) * heap) * heap) * int

val g12_example3135 : (((heap * heap) * heap) * heap) * int

val g12_example3136 : (((heap * heap) * heap) * heap) * int

val g12_example3137 : (((heap * heap) * heap) * heap) * int

val g12_example3138 : (((heap * heap) * heap) * heap) * int

val g12_example3139 : (((heap * heap) * heap) * heap) * int

val g12_example3140 : (((heap * heap) * heap) * heap) * int

val g12_example3141 : (((heap * heap) * heap) * heap) * int

val g12_example3142 : (((heap * heap) * heap) * heap) * int

val g12_example3143 : (((heap * heap) * heap) * heap) * int

val g12_example3144 : (((heap * heap) * heap) * heap) * int

val g12_example3145 : (((heap * heap) * heap) * heap) * int

val g12_example3146 : (((heap * heap) * heap) * heap) * int

val g12_example3147 : (((heap * heap) * heap) * heap) * int

val g12_example3148 : (((heap * heap) * heap) * heap) * int

val g12_example3149 : (((heap * heap) * heap) * heap) * int

val g12_example3150 : (((heap * heap) * heap) * heap) * int

val g12_example3151 : (((heap * heap) * heap) * heap) * int

val g12_example3152 : (((heap * heap) * heap) * heap) * int

val g12_example3153 : (((heap * heap) * heap) * heap) * int

val g12_example3154 : (((heap * heap) * heap) * heap) * int

val g12_example3155 : (((heap * heap) * heap) * heap) * int

val g12_example3156 : (((heap * heap) * heap) * heap) * int

val g12_example3157 : (((heap * heap) * heap) * heap) * int

val g12_example3158 : (((heap * heap) * heap) * heap) * int

val g12_example3159 : (((heap * heap) * heap) * heap) * int

val g12_example3160 : (((heap * heap) * heap) * heap) * int

val g12_example3161 : (((heap * heap) * heap) * heap) * int

val g12_example3162 : (((heap * heap) * heap) * heap) * int

val g12_example3163 : (((heap * heap) * heap) * heap) * int

val g12_example3164 : (((heap * heap) * heap) * heap) * int

val g12_example3165 : (((heap * heap) * heap) * heap) * int

val g12_example3166 : (((heap * heap) * heap) * heap) * int

val g12_example3167 : (((heap * heap) * heap) * heap) * int

val g12_example3168 : (((heap * heap) * heap) * heap) * int

val g12_example3169 : (((heap * heap) * heap) * heap) * int

val g12_example3170 : (((heap * heap) * heap) * heap) * int

val g12_example3171 : (((heap * heap) * heap) * heap) * int

val g12_example3172 : (((heap * heap) * heap) * heap) * int

val g12_example3173 : (((heap * heap) * heap) * heap) * int

val g12_example3174 : (((heap * heap) * heap) * heap) * int

val g12_example3175 : (((heap * heap) * heap) * heap) * int

val g12_example3176 : (((heap * heap) * heap) * heap) * int

val g12_example3177 : (((heap * heap) * heap) * heap) * int

val g12_example3178 : (((heap * heap) * heap) * heap) * int

val g12_example3179 : (((heap * heap) * heap) * heap) * int

val g12_example3180 : (((heap * heap) * heap) * heap) * int

val g12_example3181 : (((heap * heap) * heap) * heap) * int

val g12_example3182 : (((heap * heap) * heap) * heap) * int

val g12_example3183 : (((heap * heap) * heap) * heap) * int

val g12_example3184 : (((heap * heap) * heap) * heap) * int

val g12_example3185 : (((heap * heap) * heap) * heap) * int

val g12_example3186 : (((heap * heap) * heap) * heap) * int

val g12_example3187 : (((heap * heap) * heap) * heap) * int

val g12_example3188 : (((heap * heap) * heap) * heap) * int

val g12_example3189 : (((heap * heap) * heap) * heap) * int

val g12_example3190 : (((heap * heap) * heap) * heap) * int

val g12_example3191 : (((heap * heap) * heap) * heap) * int

val g12_example3192 : (((heap * heap) * heap) * heap) * int

val g12_example3193 : (((heap * heap) * heap) * heap) * int

val g12_example3194 : (((heap * heap) * heap) * heap) * int

val g12_example3195 : (((heap * heap) * heap) * heap) * int

val g12_example3196 : (((heap * heap) * heap) * heap) * int

val g12_example3197 : (((heap * heap) * heap) * heap) * int

val g12_example3198 : (((heap * heap) * heap) * heap) * int

val g12_example3199 : (((heap * heap) * heap) * heap) * int

val g12_example3200 : (((heap * heap) * heap) * heap) * int

val g12_example3201 : (((heap * heap) * heap) * heap) * int

val g12_example3202 : (((heap * heap) * heap) * heap) * int

val g12_example3203 : (((heap * heap) * heap) * heap) * int

val g12_example3204 : (((heap * heap) * heap) * heap) * int

val g12_example3205 : (((heap * heap) * heap) * heap) * int

val g12_example3206 : (((heap * heap) * heap) * heap) * int

val g12_example3207 : (((heap * heap) * heap) * heap) * int

val g12_example3208 : (((heap * heap) * heap) * heap) * int

val g12_example3209 : (((heap * heap) * heap) * heap) * int

val g12_example3210 : (((heap * heap) * heap) * heap) * int

val g12_example3211 : (((heap * heap) * heap) * heap) * int

val g12_example3212 : (((heap * heap) * heap) * heap) * int

val g12_example3213 : (((heap * heap) * heap) * heap) * int

val g12_example3214 : (((heap * heap) * heap) * heap) * int

val g12_example3215 : (((heap * heap) * heap) * heap) * int

val g12_example3216 : (((heap * heap) * heap) * heap) * int

val g12_example3217 : (((heap * heap) * heap) * heap) * int

val g12_example3218 : (((heap * heap) * heap) * heap) * int

val g12_example3219 : (((heap * heap) * heap) * heap) * int

val g12_example3220 : (((heap * heap) * heap) * heap) * int

val g12_example3221 : (((heap * heap) * heap) * heap) * int

val g12_example3222 : (((heap * heap) * heap) * heap) * int

val g12_example3223 : (((heap * heap) * heap) * heap) * int

val g12_example3224 : (((heap * heap) * heap) * heap) * int

val g12_example3225 : (((heap * heap) * heap) * heap) * int

val g12_example3226 : (((heap * heap) * heap) * heap) * int

val g12_example3227 : (((heap * heap) * heap) * heap) * int

val g12_example3228 : (((heap * heap) * heap) * heap) * int

val g12_example3229 : (((heap * heap) * heap) * heap) * int

val g12_example3230 : (((heap * heap) * heap) * heap) * int

val g12_example3231 : (((heap * heap) * heap) * heap) * int

val g12_example3232 : (((heap * heap) * heap) * heap) * int

val g12_example3233 : (((heap * heap) * heap) * heap) * int

val g12_example3234 : (((heap * heap) * heap) * heap) * int

val g12_example3235 : (((heap * heap) * heap) * heap) * int

val g12_example3236 : (((heap * heap) * heap) * heap) * int

val g12_example3237 : (((heap * heap) * heap) * heap) * int

val g12_example3238 : (((heap * heap) * heap) * heap) * int

val g12_example3239 : (((heap * heap) * heap) * heap) * int

val g12_example3240 : (((heap * heap) * heap) * heap) * int

val g12_example3241 : (((heap * heap) * heap) * heap) * int

val g12_example3242 : (((heap * heap) * heap) * heap) * int

val g12_example3243 : (((heap * heap) * heap) * heap) * int

val g12_example3244 : (((heap * heap) * heap) * heap) * int

val g12_example3245 : (((heap * heap) * heap) * heap) * int

val g12_example3246 : (((heap * heap) * heap) * heap) * int

val g12_example3247 : (((heap * heap) * heap) * heap) * int

val g12_example3248 : (((heap * heap) * heap) * heap) * int

val g12_example3249 : (((heap * heap) * heap) * heap) * int

val g12_example3250 : (((heap * heap) * heap) * heap) * int

val g12_example3251 : (((heap * heap) * heap) * heap) * int

val g12_example3252 : (((heap * heap) * heap) * heap) * int

val g12_example3253 : (((heap * heap) * heap) * heap) * int

val g12_example3254 : (((heap * heap) * heap) * heap) * int

val g12_example3255 : (((heap * heap) * heap) * heap) * int

val g12_example3256 : (((heap * heap) * heap) * heap) * int

val g12_example3257 : (((heap * heap) * heap) * heap) * int

val g12_example3258 : (((heap * heap) * heap) * heap) * int

val g12_example3259 : (((heap * heap) * heap) * heap) * int

val g12_example3260 : (((heap * heap) * heap) * heap) * int

val g12_example3261 : (((heap * heap) * heap) * heap) * int

val g12_example3262 : (((heap * heap) * heap) * heap) * int

val g12_example3263 : (((heap * heap) * heap) * heap) * int

val g12_example3264 : (((heap * heap) * heap) * heap) * int

val g12_example3265 : (((heap * heap) * heap) * heap) * int

val g12_example3266 : (((heap * heap) * heap) * heap) * int

val g12_example3267 : (((heap * heap) * heap) * heap) * int

val g12_example3268 : (((heap * heap) * heap) * heap) * int

val g12_example3269 : (((heap * heap) * heap) * heap) * int

val g12_example3270 : (((heap * heap) * heap) * heap) * int

val g12_example3271 : (((heap * heap) * heap) * heap) * int

val g12_example3272 : (((heap * heap) * heap) * heap) * int

val g12_example3273 : (((heap * heap) * heap) * heap) * int

val g12_example3274 : (((heap * heap) * heap) * heap) * int

val g12_example3275 : (((heap * heap) * heap) * heap) * int

val g12_example3276 : (((heap * heap) * heap) * heap) * int

val g12_example3277 : (((heap * heap) * heap) * heap) * int

val g12_example3278 : (((heap * heap) * heap) * heap) * int

val g12_example3279 : (((heap * heap) * heap) * heap) * int

val g12_example3280 : (((heap * heap) * heap) * heap) * int

val g12_example3281 : (((heap * heap) * heap) * heap) * int

val g12_example3282 : (((heap * heap) * heap) * heap) * int

val g12_example3283 : (((heap * heap) * heap) * heap) * int

val g12_example3284 : (((heap * heap) * heap) * heap) * int

val g12_example3285 : (((heap * heap) * heap) * heap) * int

val g12_example3286 : (((heap * heap) * heap) * heap) * int

val g12_example3287 : (((heap * heap) * heap) * heap) * int

val g12_example3288 : (((heap * heap) * heap) * heap) * int

val g12_example3289 : (((heap * heap) * heap) * heap) * int

val g12_example3290 : (((heap * heap) * heap) * heap) * int

val g12_example3291 : (((heap * heap) * heap) * heap) * int

val g12_example3292 : (((heap * heap) * heap) * heap) * int

val g12_example3293 : (((heap * heap) * heap) * heap) * int

val g12_example3294 : (((heap * heap) * heap) * heap) * int

val g12_example3295 : (((heap * heap) * heap) * heap) * int

val g12_example3296 : (((heap * heap) * heap) * heap) * int

val g12_example3297 : (((heap * heap) * heap) * heap) * int

val g12_example3298 : (((heap * heap) * heap) * heap) * int

val g12_example3299 : (((heap * heap) * heap) * heap) * int

val g12_example3300 : (((heap * heap) * heap) * heap) * int

val g12_example3301 : (((heap * heap) * heap) * heap) * int

val g12_example3302 : (((heap * heap) * heap) * heap) * int

val g12_example3303 : (((heap * heap) * heap) * heap) * int

val g12_example3304 : (((heap * heap) * heap) * heap) * int

val g12_example3305 : (((heap * heap) * heap) * heap) * int

val g12_example3306 : (((heap * heap) * heap) * heap) * int

val g12_example3307 : (((heap * heap) * heap) * heap) * int

val g12_example3308 : (((heap * heap) * heap) * heap) * int

val g12_example3309 : (((heap * heap) * heap) * heap) * int

val g12_example3310 : (((heap * heap) * heap) * heap) * int

val g12_example3311 : (((heap * heap) * heap) * heap) * int

val g12_example3312 : (((heap * heap) * heap) * heap) * int

val g12_example3313 : (((heap * heap) * heap) * heap) * int

val g12_example3314 : (((heap * heap) * heap) * heap) * int

val g12_example3315 : (((heap * heap) * heap) * heap) * int

val g12_example3316 : (((heap * heap) * heap) * heap) * int

val g12_example3317 : (((heap * heap) * heap) * heap) * int

val g12_example3318 : (((heap * heap) * heap) * heap) * int

val g12_example3319 : (((heap * heap) * heap) * heap) * int

val g12_example3320 : (((heap * heap) * heap) * heap) * int

val g12_example3321 : (((heap * heap) * heap) * heap) * int

val g12_example3322 : (((heap * heap) * heap) * heap) * int

val g12_example3323 : (((heap * heap) * heap) * heap) * int

val g12_example3324 : (((heap * heap) * heap) * heap) * int

val g12_example3325 : (((heap * heap) * heap) * heap) * int

val g12_example3326 : (((heap * heap) * heap) * heap) * int

val g12_example3327 : (((heap * heap) * heap) * heap) * int

val g12_example3328 : (((heap * heap) * heap) * heap) * int

val g12_example3329 : (((heap * heap) * heap) * heap) * int

val g12_example3330 : (((heap * heap) * heap) * heap) * int

val g12_example3331 : (((heap * heap) * heap) * heap) * int

val g12_example3332 : (((heap * heap) * heap) * heap) * int

val g12_example3333 : (((heap * heap) * heap) * heap) * int

val g12_example3334 : (((heap * heap) * heap) * heap) * int

val g12_example3335 : (((heap * heap) * heap) * heap) * int

val g12_example3336 : (((heap * heap) * heap) * heap) * int

val g12_example3337 : (((heap * heap) * heap) * heap) * int

val g12_example3338 : (((heap * heap) * heap) * heap) * int

val g12_example3339 : (((heap * heap) * heap) * heap) * int

val g12_example3340 : (((heap * heap) * heap) * heap) * int

val g12_example3341 : (((heap * heap) * heap) * heap) * int

val g12_example3342 : (((heap * heap) * heap) * heap) * int

val g12_example3343 : (((heap * heap) * heap) * heap) * int

val g12_example3344 : (((heap * heap) * heap) * heap) * int

val g12_example3345 : (((heap * heap) * heap) * heap) * int

val g12_example3346 : (((heap * heap) * heap) * heap) * int

val g12_example3347 : (((heap * heap) * heap) * heap) * int

val g12_example3348 : (((heap * heap) * heap) * heap) * int

val g12_example3349 : (((heap * heap) * heap) * heap) * int

val g12_example3350 : (((heap * heap) * heap) * heap) * int

val g12_example3351 : (((heap * heap) * heap) * heap) * int

val g12_example3352 : (((heap * heap) * heap) * heap) * int

val g12_example3353 : (((heap * heap) * heap) * heap) * int

val g12_example3354 : (((heap * heap) * heap) * heap) * int

val g12_example3355 : (((heap * heap) * heap) * heap) * int

val g12_example3356 : (((heap * heap) * heap) * heap) * int

val g12_example3357 : (((heap * heap) * heap) * heap) * int

val g12_example3358 : (((heap * heap) * heap) * heap) * int

val g12_example3359 : (((heap * heap) * heap) * heap) * int

val g12_example3360 : (((heap * heap) * heap) * heap) * int

val g12_example3361 : (((heap * heap) * heap) * heap) * int

val g12_example3362 : (((heap * heap) * heap) * heap) * int

val g12_example3363 : (((heap * heap) * heap) * heap) * int

val g12_example3364 : (((heap * heap) * heap) * heap) * int

val g12_example3365 : (((heap * heap) * heap) * heap) * int

val g12_example3366 : (((heap * heap) * heap) * heap) * int

val g12_example3367 : (((heap * heap) * heap) * heap) * int

val g12_example3368 : (((heap * heap) * heap) * heap) * int

val g12_example3369 : (((heap * heap) * heap) * heap) * int

val g12_example3370 : (((heap * heap) * heap) * heap) * int

val g12_example3371 : (((heap * heap) * heap) * heap) * int

val g12_example3372 : (((heap * heap) * heap) * heap) * int

val g12_example3373 : (((heap * heap) * heap) * heap) * int

val g12_example3374 : (((heap * heap) * heap) * heap) * int

val g12_example3375 : (((heap * heap) * heap) * heap) * int

val g12_example3376 : (((heap * heap) * heap) * heap) * int

val g12_example3377 : (((heap * heap) * heap) * heap) * int

val g12_example3378 : (((heap * heap) * heap) * heap) * int

val g12_example3379 : (((heap * heap) * heap) * heap) * int

val g12_example3380 : (((heap * heap) * heap) * heap) * int

val g12_example3381 : (((heap * heap) * heap) * heap) * int

val g12_example3382 : (((heap * heap) * heap) * heap) * int

val g12_example3383 : (((heap * heap) * heap) * heap) * int

val g12_example3384 : (((heap * heap) * heap) * heap) * int

val g12_example3385 : (((heap * heap) * heap) * heap) * int

val g12_example3386 : (((heap * heap) * heap) * heap) * int

val g12_example3387 : (((heap * heap) * heap) * heap) * int

val g12_example3388 : (((heap * heap) * heap) * heap) * int

val g12_example3389 : (((heap * heap) * heap) * heap) * int

val g12_example3390 : (((heap * heap) * heap) * heap) * int

val g12_example3391 : (((heap * heap) * heap) * heap) * int

val g12_example3392 : (((heap * heap) * heap) * heap) * int

val g12_example3393 : (((heap * heap) * heap) * heap) * int

val g12_example3394 : (((heap * heap) * heap) * heap) * int

val g12_example3395 : (((heap * heap) * heap) * heap) * int

val g12_example3396 : (((heap * heap) * heap) * heap) * int

val g12_example3397 : (((heap * heap) * heap) * heap) * int

val g12_example3398 : (((heap * heap) * heap) * heap) * int

val g12_example3399 : (((heap * heap) * heap) * heap) * int

val g12_example3400 : (((heap * heap) * heap) * heap) * int

val g12_example3401 : (((heap * heap) * heap) * heap) * int

val g12_example3402 : (((heap * heap) * heap) * heap) * int

val g12_example3403 : (((heap * heap) * heap) * heap) * int

val g12_example3404 : (((heap * heap) * heap) * heap) * int

val g12_example3405 : (((heap * heap) * heap) * heap) * int

val g12_example3406 : (((heap * heap) * heap) * heap) * int

val g12_example3407 : (((heap * heap) * heap) * heap) * int

val g12_example3408 : (((heap * heap) * heap) * heap) * int

val g12_example3409 : (((heap * heap) * heap) * heap) * int

val g12_example3410 : (((heap * heap) * heap) * heap) * int

val g12_example3411 : (((heap * heap) * heap) * heap) * int

val g12_example3412 : (((heap * heap) * heap) * heap) * int

val g12_example3413 : (((heap * heap) * heap) * heap) * int

val g12_example3414 : (((heap * heap) * heap) * heap) * int

val g12_example3415 : (((heap * heap) * heap) * heap) * int

val g12_example3416 : (((heap * heap) * heap) * heap) * int

val g12_example3417 : (((heap * heap) * heap) * heap) * int

val g12_example3418 : (((heap * heap) * heap) * heap) * int

val g12_example3419 : (((heap * heap) * heap) * heap) * int

val g12_example3420 : (((heap * heap) * heap) * heap) * int

val g12_example3421 : (((heap * heap) * heap) * heap) * int

val g12_example3422 : (((heap * heap) * heap) * heap) * int

val g12_example3423 : (((heap * heap) * heap) * heap) * int

val g12_example3424 : (((heap * heap) * heap) * heap) * int

val g12_example3425 : (((heap * heap) * heap) * heap) * int

val g12_example3426 : (((heap * heap) * heap) * heap) * int

val g12_example3427 : (((heap * heap) * heap) * heap) * int

val g12_example3428 : (((heap * heap) * heap) * heap) * int

val g12_example3429 : (((heap * heap) * heap) * heap) * int

val g12_example3430 : (((heap * heap) * heap) * heap) * int

val g12_example3431 : (((heap * heap) * heap) * heap) * int

val g12_example3432 : (((heap * heap) * heap) * heap) * int

val g12_example3433 : (((heap * heap) * heap) * heap) * int

val g12_example3434 : (((heap * heap) * heap) * heap) * int

val g12_example3435 : (((heap * heap) * heap) * heap) * int

val g12_example3436 : (((heap * heap) * heap) * heap) * int

val g12_example3437 : (((heap * heap) * heap) * heap) * int

val g12_example3438 : (((heap * heap) * heap) * heap) * int

val g12_example3439 : (((heap * heap) * heap) * heap) * int

val g12_example3440 : (((heap * heap) * heap) * heap) * int

val g12_example3441 : (((heap * heap) * heap) * heap) * int

val g12_example3442 : (((heap * heap) * heap) * heap) * int

val g12_example3443 : (((heap * heap) * heap) * heap) * int

val g12_example3444 : (((heap * heap) * heap) * heap) * int

val g12_example3445 : (((heap * heap) * heap) * heap) * int

val g12_example3446 : (((heap * heap) * heap) * heap) * int

val g12_example3447 : (((heap * heap) * heap) * heap) * int

val g12_example3448 : (((heap * heap) * heap) * heap) * int

val g12_example3449 : (((heap * heap) * heap) * heap) * int

val g12_example3450 : (((heap * heap) * heap) * heap) * int

val g12_example3451 : (((heap * heap) * heap) * heap) * int

val g12_example3452 : (((heap * heap) * heap) * heap) * int

val g12_example3453 : (((heap * heap) * heap) * heap) * int

val g12_example3454 : (((heap * heap) * heap) * heap) * int

val g12_example3455 : (((heap * heap) * heap) * heap) * int

val g12_example3456 : (((heap * heap) * heap) * heap) * int

val g12_example3457 : (((heap * heap) * heap) * heap) * int

val g12_example3458 : (((heap * heap) * heap) * heap) * int

val g12_example3459 : (((heap * heap) * heap) * heap) * int

val g12_example3460 : (((heap * heap) * heap) * heap) * int

val g12_example3461 : (((heap * heap) * heap) * heap) * int

val g12_example3462 : (((heap * heap) * heap) * heap) * int

val g12_example3463 : (((heap * heap) * heap) * heap) * int

val g12_example3464 : (((heap * heap) * heap) * heap) * int

val g12_example3465 : (((heap * heap) * heap) * heap) * int

val g12_example3466 : (((heap * heap) * heap) * heap) * int

val g12_example3467 : (((heap * heap) * heap) * heap) * int

val g12_example3468 : (((heap * heap) * heap) * heap) * int

val g12_example3469 : (((heap * heap) * heap) * heap) * int

val g12_example3470 : (((heap * heap) * heap) * heap) * int

val g12_example3471 : (((heap * heap) * heap) * heap) * int

val g12_example3472 : (((heap * heap) * heap) * heap) * int

val g12_example3473 : (((heap * heap) * heap) * heap) * int

val g12_example3474 : (((heap * heap) * heap) * heap) * int

val g12_example3475 : (((heap * heap) * heap) * heap) * int

val g12_example3476 : (((heap * heap) * heap) * heap) * int

val g12_example3477 : (((heap * heap) * heap) * heap) * int

val g12_example3478 : (((heap * heap) * heap) * heap) * int

val g12_example3479 : (((heap * heap) * heap) * heap) * int

val g12_example3480 : (((heap * heap) * heap) * heap) * int

val g12_example3481 : (((heap * heap) * heap) * heap) * int

val g12_example3482 : (((heap * heap) * heap) * heap) * int

val g12_example3483 : (((heap * heap) * heap) * heap) * int

val g12_example3484 : (((heap * heap) * heap) * heap) * int

val g12_example3485 : (((heap * heap) * heap) * heap) * int

val g12_example3486 : (((heap * heap) * heap) * heap) * int

val g12_example3487 : (((heap * heap) * heap) * heap) * int

val g12_example3488 : (((heap * heap) * heap) * heap) * int

val g12_example3489 : (((heap * heap) * heap) * heap) * int

val g12_example3490 : (((heap * heap) * heap) * heap) * int

val g12_example3491 : (((heap * heap) * heap) * heap) * int

val g12_example3492 : (((heap * heap) * heap) * heap) * int

val g12_example3493 : (((heap * heap) * heap) * heap) * int

val g12_example3494 : (((heap * heap) * heap) * heap) * int

val g12_example3495 : (((heap * heap) * heap) * heap) * int

val g12_example3496 : (((heap * heap) * heap) * heap) * int

val g12_example3497 : (((heap * heap) * heap) * heap) * int

val g12_example3498 : (((heap * heap) * heap) * heap) * int

val g12_example3499 : (((heap * heap) * heap) * heap) * int

val g12_example3500 : (((heap * heap) * heap) * heap) * int

val g12_example3501 : (((heap * heap) * heap) * heap) * int

val g12_example3502 : (((heap * heap) * heap) * heap) * int

val g12_example3503 : (((heap * heap) * heap) * heap) * int

val g12_example3504 : (((heap * heap) * heap) * heap) * int

val g12_example3505 : (((heap * heap) * heap) * heap) * int

val g12_example3506 : (((heap * heap) * heap) * heap) * int

val g12_example3507 : (((heap * heap) * heap) * heap) * int

val g12_example3508 : (((heap * heap) * heap) * heap) * int

val g12_example3509 : (((heap * heap) * heap) * heap) * int

val g12_example3510 : (((heap * heap) * heap) * heap) * int

val g12_example3511 : (((heap * heap) * heap) * heap) * int

val g12_example3512 : (((heap * heap) * heap) * heap) * int

val g12_example3513 : (((heap * heap) * heap) * heap) * int

val g12_example3514 : (((heap * heap) * heap) * heap) * int

val g12_example3515 : (((heap * heap) * heap) * heap) * int

val g12_example3516 : (((heap * heap) * heap) * heap) * int

val g12_example3517 : (((heap * heap) * heap) * heap) * int

val g12_example3518 : (((heap * heap) * heap) * heap) * int

val g12_example3519 : (((heap * heap) * heap) * heap) * int

val g12_example3520 : (((heap * heap) * heap) * heap) * int

val g12_example3521 : (((heap * heap) * heap) * heap) * int

val g12_example3522 : (((heap * heap) * heap) * heap) * int

val g12_example3523 : (((heap * heap) * heap) * heap) * int

val g12_example3524 : (((heap * heap) * heap) * heap) * int

val g12_example3525 : (((heap * heap) * heap) * heap) * int

val g12_example3526 : (((heap * heap) * heap) * heap) * int

val g12_example3527 : (((heap * heap) * heap) * heap) * int

val g12_example3528 : (((heap * heap) * heap) * heap) * int

val g12_example3529 : (((heap * heap) * heap) * heap) * int

val g12_example3530 : (((heap * heap) * heap) * heap) * int

val g12_example3531 : (((heap * heap) * heap) * heap) * int

val g12_example3532 : (((heap * heap) * heap) * heap) * int

val g12_example3533 : (((heap * heap) * heap) * heap) * int

val g12_example3534 : (((heap * heap) * heap) * heap) * int

val g12_example3535 : (((heap * heap) * heap) * heap) * int

val g12_example3536 : (((heap * heap) * heap) * heap) * int

val g12_example3537 : (((heap * heap) * heap) * heap) * int

val g12_example3538 : (((heap * heap) * heap) * heap) * int

val g12_example3539 : (((heap * heap) * heap) * heap) * int

val g12_example3540 : (((heap * heap) * heap) * heap) * int

val g12_example3541 : (((heap * heap) * heap) * heap) * int

val g12_example3542 : (((heap * heap) * heap) * heap) * int

val g12_example3543 : (((heap * heap) * heap) * heap) * int

val g12_example3544 : (((heap * heap) * heap) * heap) * int

val g12_example3545 : (((heap * heap) * heap) * heap) * int

val g12_example3546 : (((heap * heap) * heap) * heap) * int

val g12_example3547 : (((heap * heap) * heap) * heap) * int

val g12_example3548 : (((heap * heap) * heap) * heap) * int

val g12_example3549 : (((heap * heap) * heap) * heap) * int

val g12_example3550 : (((heap * heap) * heap) * heap) * int

val g12_example3551 : (((heap * heap) * heap) * heap) * int

val g12_example3552 : (((heap * heap) * heap) * heap) * int

val g12_example3553 : (((heap * heap) * heap) * heap) * int

val g12_example3554 : (((heap * heap) * heap) * heap) * int

val g12_example3555 : (((heap * heap) * heap) * heap) * int

val g12_example3556 : (((heap * heap) * heap) * heap) * int

val g12_example3557 : (((heap * heap) * heap) * heap) * int

val g12_example3558 : (((heap * heap) * heap) * heap) * int

val g12_example3559 : (((heap * heap) * heap) * heap) * int

val g12_example3560 : (((heap * heap) * heap) * heap) * int

val g12_example3561 : (((heap * heap) * heap) * heap) * int

val g12_example3562 : (((heap * heap) * heap) * heap) * int

val g12_example3563 : (((heap * heap) * heap) * heap) * int

val g12_example3564 : (((heap * heap) * heap) * heap) * int

val g12_example3565 : (((heap * heap) * heap) * heap) * int

val g12_example3566 : (((heap * heap) * heap) * heap) * int

val g12_example3567 : (((heap * heap) * heap) * heap) * int

val g12_example3568 : (((heap * heap) * heap) * heap) * int

val g12_example3569 : (((heap * heap) * heap) * heap) * int

val g12_example3570 : (((heap * heap) * heap) * heap) * int

val g12_example3571 : (((heap * heap) * heap) * heap) * int

val g12_example3572 : (((heap * heap) * heap) * heap) * int

val g12_example3573 : (((heap * heap) * heap) * heap) * int

val g12_example3574 : (((heap * heap) * heap) * heap) * int

val g12_example3575 : (((heap * heap) * heap) * heap) * int

val g12_example3576 : (((heap * heap) * heap) * heap) * int

val g12_example3577 : (((heap * heap) * heap) * heap) * int

val g12_example3578 : (((heap * heap) * heap) * heap) * int

val g12_example3579 : (((heap * heap) * heap) * heap) * int

val g12_example3580 : (((heap * heap) * heap) * heap) * int

val g12_example3581 : (((heap * heap) * heap) * heap) * int

val g12_example3582 : (((heap * heap) * heap) * heap) * int

val g12_example3583 : (((heap * heap) * heap) * heap) * int

val g12_example3584 : (((heap * heap) * heap) * heap) * int

val g12_example3585 : (((heap * heap) * heap) * heap) * int

val g12_example3586 : (((heap * heap) * heap) * heap) * int

val g12_example3587 : (((heap * heap) * heap) * heap) * int

val g12_example3588 : (((heap * heap) * heap) * heap) * int

val g12_example3589 : (((heap * heap) * heap) * heap) * int

val g12_example3590 : (((heap * heap) * heap) * heap) * int

val g12_example3591 : (((heap * heap) * heap) * heap) * int

val g12_example3592 : (((heap * heap) * heap) * heap) * int

val g12_example3593 : (((heap * heap) * heap) * heap) * int

val g12_example3594 : (((heap * heap) * heap) * heap) * int

val g12_example3595 : (((heap * heap) * heap) * heap) * int

val g12_example3596 : (((heap * heap) * heap) * heap) * int

val g12_example3597 : (((heap * heap) * heap) * heap) * int

val g12_example3598 : (((heap * heap) * heap) * heap) * int

val g12_example3599 : (((heap * heap) * heap) * heap) * int

val g12_example3600 : (((heap * heap) * heap) * heap) * int

val g12_example3601 : (((heap * heap) * heap) * heap) * int

val g12_example3602 : (((heap * heap) * heap) * heap) * int

val g12_example3603 : (((heap * heap) * heap) * heap) * int

val g12_example3604 : (((heap * heap) * heap) * heap) * int

val g12_example3605 : (((heap * heap) * heap) * heap) * int

val g12_example3606 : (((heap * heap) * heap) * heap) * int

val g12_example3607 : (((heap * heap) * heap) * heap) * int

val g12_example3608 : (((heap * heap) * heap) * heap) * int

val g12_example3609 : (((heap * heap) * heap) * heap) * int

val g12_example3610 : (((heap * heap) * heap) * heap) * int

val g12_example3611 : (((heap * heap) * heap) * heap) * int

val g12_example3612 : (((heap * heap) * heap) * heap) * int

val g12_example3613 : (((heap * heap) * heap) * heap) * int

val g12_example3614 : (((heap * heap) * heap) * heap) * int

val g12_example3615 : (((heap * heap) * heap) * heap) * int

val g12_example3616 : (((heap * heap) * heap) * heap) * int

val g12_example3617 : (((heap * heap) * heap) * heap) * int

val g12_example3618 : (((heap * heap) * heap) * heap) * int

val g12_example3619 : (((heap * heap) * heap) * heap) * int

val g12_example3620 : (((heap * heap) * heap) * heap) * int

val g12_example3621 : (((heap * heap) * heap) * heap) * int

val g12_example3622 : (((heap * heap) * heap) * heap) * int

val g12_example3623 : (((heap * heap) * heap) * heap) * int

val g12_example3624 : (((heap * heap) * heap) * heap) * int

val g12_example3625 : (((heap * heap) * heap) * heap) * int

val g12_example3626 : (((heap * heap) * heap) * heap) * int

val g12_example3627 : (((heap * heap) * heap) * heap) * int

val g12_example3628 : (((heap * heap) * heap) * heap) * int

val g12_example3629 : (((heap * heap) * heap) * heap) * int

val g12_example3630 : (((heap * heap) * heap) * heap) * int

val g12_example3631 : (((heap * heap) * heap) * heap) * int

val g12_example3632 : (((heap * heap) * heap) * heap) * int

val g12_example3633 : (((heap * heap) * heap) * heap) * int

val g12_example3634 : (((heap * heap) * heap) * heap) * int

val g12_example3635 : (((heap * heap) * heap) * heap) * int

val g12_example3636 : (((heap * heap) * heap) * heap) * int

val g12_example3637 : (((heap * heap) * heap) * heap) * int

val g12_example3638 : (((heap * heap) * heap) * heap) * int

val g12_example3639 : (((heap * heap) * heap) * heap) * int

val g12_example3640 : (((heap * heap) * heap) * heap) * int

val g12_example3641 : (((heap * heap) * heap) * heap) * int

val g12_example3642 : (((heap * heap) * heap) * heap) * int

val g12_example3643 : (((heap * heap) * heap) * heap) * int

val g12_example3644 : (((heap * heap) * heap) * heap) * int

val g12_example3645 : (((heap * heap) * heap) * heap) * int

val g12_example3646 : (((heap * heap) * heap) * heap) * int

val g12_example3647 : (((heap * heap) * heap) * heap) * int

val g12_example3648 : (((heap * heap) * heap) * heap) * int

val g12_example3649 : (((heap * heap) * heap) * heap) * int

val g12_example3650 : (((heap * heap) * heap) * heap) * int

val g12_example3651 : (((heap * heap) * heap) * heap) * int

val g12_example3652 : (((heap * heap) * heap) * heap) * int

val g12_example3653 : (((heap * heap) * heap) * heap) * int

val g12_example3654 : (((heap * heap) * heap) * heap) * int

val g12_example3655 : (((heap * heap) * heap) * heap) * int

val g12_example3656 : (((heap * heap) * heap) * heap) * int

val g12_example3657 : (((heap * heap) * heap) * heap) * int

val g12_example3658 : (((heap * heap) * heap) * heap) * int

val g12_example3659 : (((heap * heap) * heap) * heap) * int

val g12_example3660 : (((heap * heap) * heap) * heap) * int

val g12_example3661 : (((heap * heap) * heap) * heap) * int

val g12_example3662 : (((heap * heap) * heap) * heap) * int

val g12_example3663 : (((heap * heap) * heap) * heap) * int

val g12_example3664 : (((heap * heap) * heap) * heap) * int

val g12_example3665 : (((heap * heap) * heap) * heap) * int

val g12_example3666 : (((heap * heap) * heap) * heap) * int

val g12_example3667 : (((heap * heap) * heap) * heap) * int

val g12_example3668 : (((heap * heap) * heap) * heap) * int

val g12_example3669 : (((heap * heap) * heap) * heap) * int

val g12_example3670 : (((heap * heap) * heap) * heap) * int

val g12_example3671 : (((heap * heap) * heap) * heap) * int

val g12_example3672 : (((heap * heap) * heap) * heap) * int

val g12_example3673 : (((heap * heap) * heap) * heap) * int

val g12_example3674 : (((heap * heap) * heap) * heap) * int

val g12_example3675 : (((heap * heap) * heap) * heap) * int

val g12_example3676 : (((heap * heap) * heap) * heap) * int

val g12_example3677 : (((heap * heap) * heap) * heap) * int

val g12_example3678 : (((heap * heap) * heap) * heap) * int

val g12_example3679 : (((heap * heap) * heap) * heap) * int

val g12_example3680 : (((heap * heap) * heap) * heap) * int

val g12_example3681 : (((heap * heap) * heap) * heap) * int

val g12_example3682 : (((heap * heap) * heap) * heap) * int

val g12_example3683 : (((heap * heap) * heap) * heap) * int

val g12_example3684 : (((heap * heap) * heap) * heap) * int

val g12_example3685 : (((heap * heap) * heap) * heap) * int

val g12_example3686 : (((heap * heap) * heap) * heap) * int

val g12_example3687 : (((heap * heap) * heap) * heap) * int

val g12_example3688 : (((heap * heap) * heap) * heap) * int

val g12_example3689 : (((heap * heap) * heap) * heap) * int

val g12_example3690 : (((heap * heap) * heap) * heap) * int

val g12_example3691 : (((heap * heap) * heap) * heap) * int

val g12_example3692 : (((heap * heap) * heap) * heap) * int

val g12_example3693 : (((heap * heap) * heap) * heap) * int

val g12_example3694 : (((heap * heap) * heap) * heap) * int

val g12_example3695 : (((heap * heap) * heap) * heap) * int

val g12_example3696 : (((heap * heap) * heap) * heap) * int

val g12_example3697 : (((heap * heap) * heap) * heap) * int

val g12_example3698 : (((heap * heap) * heap) * heap) * int

val g12_example3699 : (((heap * heap) * heap) * heap) * int

val g12_example3700 : (((heap * heap) * heap) * heap) * int

val g12_example3701 : (((heap * heap) * heap) * heap) * int

val g12_example3702 : (((heap * heap) * heap) * heap) * int

val g12_example3703 : (((heap * heap) * heap) * heap) * int

val g12_example3704 : (((heap * heap) * heap) * heap) * int

val g12_example3705 : (((heap * heap) * heap) * heap) * int

val g12_example3706 : (((heap * heap) * heap) * heap) * int

val g12_example3707 : (((heap * heap) * heap) * heap) * int

val g12_example3708 : (((heap * heap) * heap) * heap) * int

val g12_example3709 : (((heap * heap) * heap) * heap) * int

val g12_example3710 : (((heap * heap) * heap) * heap) * int

val g12_example3711 : (((heap * heap) * heap) * heap) * int

val g12_example3712 : (((heap * heap) * heap) * heap) * int

val g12_example3713 : (((heap * heap) * heap) * heap) * int

val g12_example3714 : (((heap * heap) * heap) * heap) * int

val g12_example3715 : (((heap * heap) * heap) * heap) * int

val g12_example3716 : (((heap * heap) * heap) * heap) * int

val g12_example3717 : (((heap * heap) * heap) * heap) * int

val g12_example3718 : (((heap * heap) * heap) * heap) * int

val g12_example3719 : (((heap * heap) * heap) * heap) * int

val g12_example3720 : (((heap * heap) * heap) * heap) * int

val g12_example3721 : (((heap * heap) * heap) * heap) * int

val g12_example3722 : (((heap * heap) * heap) * heap) * int

val g12_example3723 : (((heap * heap) * heap) * heap) * int

val g12_example3724 : (((heap * heap) * heap) * heap) * int

val g12_example3725 : (((heap * heap) * heap) * heap) * int

val g12_example3726 : (((heap * heap) * heap) * heap) * int

val g12_example3727 : (((heap * heap) * heap) * heap) * int

val g12_example3728 : (((heap * heap) * heap) * heap) * int

val g12_example3729 : (((heap * heap) * heap) * heap) * int

val g12_example3730 : (((heap * heap) * heap) * heap) * int

val g12_example3731 : (((heap * heap) * heap) * heap) * int

val g12_example3732 : (((heap * heap) * heap) * heap) * int

val g12_example3733 : (((heap * heap) * heap) * heap) * int

val g12_example3734 : (((heap * heap) * heap) * heap) * int

val g12_example3735 : (((heap * heap) * heap) * heap) * int

val g12_example3736 : (((heap * heap) * heap) * heap) * int

val g12_example3737 : (((heap * heap) * heap) * heap) * int

val g12_example3738 : (((heap * heap) * heap) * heap) * int

val g12_example3739 : (((heap * heap) * heap) * heap) * int

val g12_example3740 : (((heap * heap) * heap) * heap) * int

val g12_example3741 : (((heap * heap) * heap) * heap) * int

val g12_example3742 : (((heap * heap) * heap) * heap) * int

val g12_example3743 : (((heap * heap) * heap) * heap) * int

val g12_example3744 : (((heap * heap) * heap) * heap) * int

val g12_example3745 : (((heap * heap) * heap) * heap) * int

val g12_example3746 : (((heap * heap) * heap) * heap) * int

val g12_example3747 : (((heap * heap) * heap) * heap) * int

val g12_example3748 : (((heap * heap) * heap) * heap) * int

val g12_example3749 : (((heap * heap) * heap) * heap) * int

val g12_example3750 : (((heap * heap) * heap) * heap) * int

val g12_example3751 : (((heap * heap) * heap) * heap) * int

val g12_example3752 : (((heap * heap) * heap) * heap) * int

val g12_example3753 : (((heap * heap) * heap) * heap) * int

val g12_example3754 : (((heap * heap) * heap) * heap) * int

val g12_example3755 : (((heap * heap) * heap) * heap) * int

val g12_example3756 : (((heap * heap) * heap) * heap) * int

val g12_example3757 : (((heap * heap) * heap) * heap) * int

val g12_example3758 : (((heap * heap) * heap) * heap) * int

val g12_example3759 : (((heap * heap) * heap) * heap) * int

val g12_example3760 : (((heap * heap) * heap) * heap) * int

val g12_example3761 : (((heap * heap) * heap) * heap) * int

val g12_example3762 : (((heap * heap) * heap) * heap) * int

val g12_example3763 : (((heap * heap) * heap) * heap) * int

val g12_example3764 : (((heap * heap) * heap) * heap) * int

val g12_example3765 : (((heap * heap) * heap) * heap) * int

val g12_example3766 : (((heap * heap) * heap) * heap) * int

val g12_example3767 : (((heap * heap) * heap) * heap) * int

val g12_example3768 : (((heap * heap) * heap) * heap) * int

val g12_example3769 : (((heap * heap) * heap) * heap) * int

val g12_example3770 : (((heap * heap) * heap) * heap) * int

val g12_example3771 : (((heap * heap) * heap) * heap) * int

val g12_example3772 : (((heap * heap) * heap) * heap) * int

val g12_example3773 : (((heap * heap) * heap) * heap) * int

val g12_example3774 : (((heap * heap) * heap) * heap) * int

val g12_example3775 : (((heap * heap) * heap) * heap) * int

val g12_example3776 : (((heap * heap) * heap) * heap) * int

val g12_example3777 : (((heap * heap) * heap) * heap) * int

val g12_example3778 : (((heap * heap) * heap) * heap) * int

val g12_example3779 : (((heap * heap) * heap) * heap) * int

val g12_example3780 : (((heap * heap) * heap) * heap) * int

val g12_example3781 : (((heap * heap) * heap) * heap) * int

val g12_example3782 : (((heap * heap) * heap) * heap) * int

val g12_example3783 : (((heap * heap) * heap) * heap) * int

val g12_example3784 : (((heap * heap) * heap) * heap) * int

val g12_example3785 : (((heap * heap) * heap) * heap) * int

val g12_example3786 : (((heap * heap) * heap) * heap) * int

val g12_example3787 : (((heap * heap) * heap) * heap) * int

val g12_example3788 : (((heap * heap) * heap) * heap) * int

val g12_example3789 : (((heap * heap) * heap) * heap) * int

val g12_example3790 : (((heap * heap) * heap) * heap) * int

val g12_example3791 : (((heap * heap) * heap) * heap) * int

val g12_example3792 : (((heap * heap) * heap) * heap) * int

val g12_example3793 : (((heap * heap) * heap) * heap) * int

val g12_example3794 : (((heap * heap) * heap) * heap) * int

val g12_example3795 : (((heap * heap) * heap) * heap) * int

val g12_example3796 : (((heap * heap) * heap) * heap) * int

val g12_example3797 : (((heap * heap) * heap) * heap) * int

val g12_example3798 : (((heap * heap) * heap) * heap) * int

val g12_example3799 : (((heap * heap) * heap) * heap) * int

val g12_example3800 : (((heap * heap) * heap) * heap) * int

val g12_example3801 : (((heap * heap) * heap) * heap) * int

val g12_example3802 : (((heap * heap) * heap) * heap) * int

val g12_example3803 : (((heap * heap) * heap) * heap) * int

val g12_example3804 : (((heap * heap) * heap) * heap) * int

val g12_example3805 : (((heap * heap) * heap) * heap) * int

val g12_example3806 : (((heap * heap) * heap) * heap) * int

val g12_example3807 : (((heap * heap) * heap) * heap) * int

val g12_example3808 : (((heap * heap) * heap) * heap) * int

val g12_example3809 : (((heap * heap) * heap) * heap) * int

val g12_example3810 : (((heap * heap) * heap) * heap) * int

val g12_example3811 : (((heap * heap) * heap) * heap) * int

val g12_example3812 : (((heap * heap) * heap) * heap) * int

val g12_example3813 : (((heap * heap) * heap) * heap) * int

val g12_example3814 : (((heap * heap) * heap) * heap) * int

val g12_example3815 : (((heap * heap) * heap) * heap) * int

val g12_example3816 : (((heap * heap) * heap) * heap) * int

val g12_example3817 : (((heap * heap) * heap) * heap) * int

val g12_example3818 : (((heap * heap) * heap) * heap) * int

val g12_example3819 : (((heap * heap) * heap) * heap) * int

val g12_example3820 : (((heap * heap) * heap) * heap) * int

val g12_example3821 : (((heap * heap) * heap) * heap) * int

val g12_example3822 : (((heap * heap) * heap) * heap) * int

val g12_example3823 : (((heap * heap) * heap) * heap) * int

val g12_example3824 : (((heap * heap) * heap) * heap) * int

val g12_example3825 : (((heap * heap) * heap) * heap) * int

val g12_example3826 : (((heap * heap) * heap) * heap) * int

val g12_example3827 : (((heap * heap) * heap) * heap) * int

val g12_example3828 : (((heap * heap) * heap) * heap) * int

val g12_example3829 : (((heap * heap) * heap) * heap) * int

val g12_example3830 : (((heap * heap) * heap) * heap) * int

val g12_example3831 : (((heap * heap) * heap) * heap) * int

val g12_example3832 : (((heap * heap) * heap) * heap) * int

val g12_example3833 : (((heap * heap) * heap) * heap) * int

val g12_example3834 : (((heap * heap) * heap) * heap) * int

val g12_example3835 : (((heap * heap) * heap) * heap) * int

val g12_example3836 : (((heap * heap) * heap) * heap) * int

val g12_example3837 : (((heap * heap) * heap) * heap) * int

val g12_example3838 : (((heap * heap) * heap) * heap) * int

val g12_example3839 : (((heap * heap) * heap) * heap) * int

val g12_example3840 : (((heap * heap) * heap) * heap) * int

val g12_example3841 : (((heap * heap) * heap) * heap) * int

val g12_example3842 : (((heap * heap) * heap) * heap) * int

val g12_example3843 : (((heap * heap) * heap) * heap) * int

val g12_example3844 : (((heap * heap) * heap) * heap) * int

val g12_example3845 : (((heap * heap) * heap) * heap) * int

val g12_example3846 : (((heap * heap) * heap) * heap) * int

val g12_example3847 : (((heap * heap) * heap) * heap) * int

val g12_example3848 : (((heap * heap) * heap) * heap) * int

val g12_example3849 : (((heap * heap) * heap) * heap) * int

val g12_example3850 : (((heap * heap) * heap) * heap) * int

val g12_example3851 : (((heap * heap) * heap) * heap) * int

val g12_example3852 : (((heap * heap) * heap) * heap) * int

val g12_example3853 : (((heap * heap) * heap) * heap) * int

val g12_example3854 : (((heap * heap) * heap) * heap) * int

val g12_example3855 : (((heap * heap) * heap) * heap) * int

val g12_example3856 : (((heap * heap) * heap) * heap) * int

val g12_example3857 : (((heap * heap) * heap) * heap) * int

val g12_example3858 : (((heap * heap) * heap) * heap) * int

val g12_example3859 : (((heap * heap) * heap) * heap) * int

val g12_example3860 : (((heap * heap) * heap) * heap) * int

val g12_example3861 : (((heap * heap) * heap) * heap) * int

val g12_example3862 : (((heap * heap) * heap) * heap) * int

val g12_example3863 : (((heap * heap) * heap) * heap) * int

val g12_example3864 : (((heap * heap) * heap) * heap) * int

val g12_example3865 : (((heap * heap) * heap) * heap) * int

val g12_example3866 : (((heap * heap) * heap) * heap) * int

val g12_example3867 : (((heap * heap) * heap) * heap) * int

val g12_example3868 : (((heap * heap) * heap) * heap) * int

val g12_example3869 : (((heap * heap) * heap) * heap) * int

val g12_example3870 : (((heap * heap) * heap) * heap) * int

val g12_example3871 : (((heap * heap) * heap) * heap) * int

val g12_example3872 : (((heap * heap) * heap) * heap) * int

val g12_example3873 : (((heap * heap) * heap) * heap) * int

val g12_example3874 : (((heap * heap) * heap) * heap) * int

val g12_example3875 : (((heap * heap) * heap) * heap) * int

val g12_example3876 : (((heap * heap) * heap) * heap) * int

val g12_example3877 : (((heap * heap) * heap) * heap) * int

val g12_example3878 : (((heap * heap) * heap) * heap) * int

val g12_example3879 : (((heap * heap) * heap) * heap) * int

val g12_example3880 : (((heap * heap) * heap) * heap) * int

val g12_example3881 : (((heap * heap) * heap) * heap) * int

val g12_example3882 : (((heap * heap) * heap) * heap) * int

val g12_example3883 : (((heap * heap) * heap) * heap) * int

val g12_example3884 : (((heap * heap) * heap) * heap) * int

val g12_example3885 : (((heap * heap) * heap) * heap) * int

val g12_example3886 : (((heap * heap) * heap) * heap) * int

val g12_example3887 : (((heap * heap) * heap) * heap) * int

val g12_example3888 : (((heap * heap) * heap) * heap) * int

val g12_example3889 : (((heap * heap) * heap) * heap) * int

val g12_example3890 : (((heap * heap) * heap) * heap) * int

val g12_example3891 : (((heap * heap) * heap) * heap) * int

val g12_example3892 : (((heap * heap) * heap) * heap) * int

val g12_example3893 : (((heap * heap) * heap) * heap) * int

val g12_example3894 : (((heap * heap) * heap) * heap) * int

val g12_example3895 : (((heap * heap) * heap) * heap) * int

val g12_example3896 : (((heap * heap) * heap) * heap) * int

val g12_example3897 : (((heap * heap) * heap) * heap) * int

val g12_example3898 : (((heap * heap) * heap) * heap) * int

val g12_example3899 : (((heap * heap) * heap) * heap) * int

val g12_example3900 : (((heap * heap) * heap) * heap) * int

val g12_example3901 : (((heap * heap) * heap) * heap) * int

val g12_example3902 : (((heap * heap) * heap) * heap) * int

val g12_example3903 : (((heap * heap) * heap) * heap) * int

val g12_example3904 : (((heap * heap) * heap) * heap) * int

val g12_example3905 : (((heap * heap) * heap) * heap) * int

val g12_example3906 : (((heap * heap) * heap) * heap) * int

val g12_example3907 : (((heap * heap) * heap) * heap) * int

val g12_example3908 : (((heap * heap) * heap) * heap) * int

val g12_example3909 : (((heap * heap) * heap) * heap) * int

val g12_example3910 : (((heap * heap) * heap) * heap) * int

val g12_example3911 : (((heap * heap) * heap) * heap) * int

val g12_example3912 : (((heap * heap) * heap) * heap) * int

val g12_example3913 : (((heap * heap) * heap) * heap) * int

val g12_example3914 : (((heap * heap) * heap) * heap) * int

val g12_example3915 : (((heap * heap) * heap) * heap) * int

val g12_example3916 : (((heap * heap) * heap) * heap) * int

val g12_example3917 : (((heap * heap) * heap) * heap) * int

val g12_example3918 : (((heap * heap) * heap) * heap) * int

val g12_example3919 : (((heap * heap) * heap) * heap) * int

val g12_example3920 : (((heap * heap) * heap) * heap) * int

val g12_example3921 : (((heap * heap) * heap) * heap) * int

val g12_example3922 : (((heap * heap) * heap) * heap) * int

val g12_example3923 : (((heap * heap) * heap) * heap) * int

val g12_example3924 : (((heap * heap) * heap) * heap) * int

val g12_example3925 : (((heap * heap) * heap) * heap) * int

val g12_example3926 : (((heap * heap) * heap) * heap) * int

val g12_example3927 : (((heap * heap) * heap) * heap) * int

val g12_example3928 : (((heap * heap) * heap) * heap) * int

val g12_example3929 : (((heap * heap) * heap) * heap) * int

val g12_example3930 : (((heap * heap) * heap) * heap) * int

val g12_example3931 : (((heap * heap) * heap) * heap) * int

val g12_example3932 : (((heap * heap) * heap) * heap) * int

val g12_example3933 : (((heap * heap) * heap) * heap) * int

val g12_example3934 : (((heap * heap) * heap) * heap) * int

val g12_example3935 : (((heap * heap) * heap) * heap) * int

val g12_example3936 : (((heap * heap) * heap) * heap) * int

val g12_example3937 : (((heap * heap) * heap) * heap) * int

val g12_example3938 : (((heap * heap) * heap) * heap) * int

val g12_example3939 : (((heap * heap) * heap) * heap) * int

val g12_example3940 : (((heap * heap) * heap) * heap) * int

val g12_example3941 : (((heap * heap) * heap) * heap) * int

val g12_example3942 : (((heap * heap) * heap) * heap) * int

val g12_example3943 : (((heap * heap) * heap) * heap) * int

val g12_example3944 : (((heap * heap) * heap) * heap) * int

val g12_example3945 : (((heap * heap) * heap) * heap) * int

val g12_example3946 : (((heap * heap) * heap) * heap) * int

val g12_example3947 : (((heap * heap) * heap) * heap) * int

val g12_example3948 : (((heap * heap) * heap) * heap) * int

val g12_example3949 : (((heap * heap) * heap) * heap) * int

val g12_example3950 : (((heap * heap) * heap) * heap) * int

val g12_example3951 : (((heap * heap) * heap) * heap) * int

val g12_example3952 : (((heap * heap) * heap) * heap) * int

val g12_example3953 : (((heap * heap) * heap) * heap) * int

val g12_example3954 : (((heap * heap) * heap) * heap) * int

val g12_example3955 : (((heap * heap) * heap) * heap) * int

val g12_example3956 : (((heap * heap) * heap) * heap) * int

val g12_example3957 : (((heap * heap) * heap) * heap) * int

val g12_example3958 : (((heap * heap) * heap) * heap) * int

val g12_example3959 : (((heap * heap) * heap) * heap) * int

val g12_example3960 : (((heap * heap) * heap) * heap) * int

val g12_example3961 : (((heap * heap) * heap) * heap) * int

val g12_example3962 : (((heap * heap) * heap) * heap) * int

val g12_example3963 : (((heap * heap) * heap) * heap) * int

val g12_example3964 : (((heap * heap) * heap) * heap) * int

val g12_example3965 : (((heap * heap) * heap) * heap) * int

val g12_example3966 : (((heap * heap) * heap) * heap) * int

val g12_example3967 : (((heap * heap) * heap) * heap) * int

val g12_example3968 : (((heap * heap) * heap) * heap) * int

val g12_example3969 : (((heap * heap) * heap) * heap) * int

val g12_example3970 : (((heap * heap) * heap) * heap) * int

val g12_example3971 : (((heap * heap) * heap) * heap) * int

val g12_example3972 : (((heap * heap) * heap) * heap) * int

val g12_example3973 : (((heap * heap) * heap) * heap) * int

val g12_example3974 : (((heap * heap) * heap) * heap) * int

val g12_example3975 : (((heap * heap) * heap) * heap) * int

val g12_example3976 : (((heap * heap) * heap) * heap) * int

val g12_example3977 : (((heap * heap) * heap) * heap) * int

val g12_example3978 : (((heap * heap) * heap) * heap) * int

val g12_example3979 : (((heap * heap) * heap) * heap) * int

val g12_example3980 : (((heap * heap) * heap) * heap) * int

val g12_example3981 : (((heap * heap) * heap) * heap) * int

val g12_example3982 : (((heap * heap) * heap) * heap) * int

val g12_example3983 : (((heap * heap) * heap) * heap) * int

val g12_example3984 : (((heap * heap) * heap) * heap) * int

val g12_example3985 : (((heap * heap) * heap) * heap) * int

val g12_example3986 : (((heap * heap) * heap) * heap) * int

val g12_example3987 : (((heap * heap) * heap) * heap) * int

val g12_example3988 : (((heap * heap) * heap) * heap) * int

val g12_example3989 : (((heap * heap) * heap) * heap) * int

val g12_example3990 : (((heap * heap) * heap) * heap) * int

val g12_example3991 : (((heap * heap) * heap) * heap) * int

val g12_example3992 : (((heap * heap) * heap) * heap) * int

val g12_example3993 : (((heap * heap) * heap) * heap) * int

val g12_example3994 : (((heap * heap) * heap) * heap) * int

val g12_example3995 : (((heap * heap) * heap) * heap) * int

val g12_example3996 : (((heap * heap) * heap) * heap) * int

val g12_example3997 : (((heap * heap) * heap) * heap) * int

val g12_example3998 : (((heap * heap) * heap) * heap) * int

val g12_example3999 : (((heap * heap) * heap) * heap) * int

val g12_example4000 : (((heap * heap) * heap) * heap) * int

val g12_example4001 : (((heap * heap) * heap) * heap) * int

val g12_example4002 : (((heap * heap) * heap) * heap) * int

val g12_example4003 : (((heap * heap) * heap) * heap) * int

val g12_example4004 : (((heap * heap) * heap) * heap) * int

val g12_example4005 : (((heap * heap) * heap) * heap) * int

val g12_example4006 : (((heap * heap) * heap) * heap) * int

val g12_example4007 : (((heap * heap) * heap) * heap) * int

val g12_example4008 : (((heap * heap) * heap) * heap) * int

val g12_example4009 : (((heap * heap) * heap) * heap) * int

val g12_example4010 : (((heap * heap) * heap) * heap) * int

val g12_example4011 : (((heap * heap) * heap) * heap) * int

val g12_example4012 : (((heap * heap) * heap) * heap) * int

val g12_example4013 : (((heap * heap) * heap) * heap) * int

val g12_example4014 : (((heap * heap) * heap) * heap) * int

val g12_example4015 : (((heap * heap) * heap) * heap) * int

val g12_example4016 : (((heap * heap) * heap) * heap) * int

val g12_example4017 : (((heap * heap) * heap) * heap) * int

val g12_example4018 : (((heap * heap) * heap) * heap) * int

val g12_example4019 : (((heap * heap) * heap) * heap) * int

val g12_example4020 : (((heap * heap) * heap) * heap) * int

val g12_example4021 : (((heap * heap) * heap) * heap) * int

val g12_example4022 : (((heap * heap) * heap) * heap) * int

val g12_example4023 : (((heap * heap) * heap) * heap) * int

val g12_example4024 : (((heap * heap) * heap) * heap) * int

val g12_example4025 : (((heap * heap) * heap) * heap) * int

val g12_example4026 : (((heap * heap) * heap) * heap) * int

val g12_example4027 : (((heap * heap) * heap) * heap) * int

val g12_example4028 : (((heap * heap) * heap) * heap) * int

val g12_example4029 : (((heap * heap) * heap) * heap) * int

val g12_example4030 : (((heap * heap) * heap) * heap) * int

val g12_example4031 : (((heap * heap) * heap) * heap) * int

val g12_example4032 : (((heap * heap) * heap) * heap) * int

val g12_example4033 : (((heap * heap) * heap) * heap) * int

val g12_example4034 : (((heap * heap) * heap) * heap) * int

val g12_example4035 : (((heap * heap) * heap) * heap) * int

val g12_example4036 : (((heap * heap) * heap) * heap) * int

val g12_example4037 : (((heap * heap) * heap) * heap) * int

val g12_example4038 : (((heap * heap) * heap) * heap) * int

val g12_example4039 : (((heap * heap) * heap) * heap) * int

val g12_example4040 : (((heap * heap) * heap) * heap) * int

val g12_example4041 : (((heap * heap) * heap) * heap) * int

val g12_example4042 : (((heap * heap) * heap) * heap) * int

val g12_example4043 : (((heap * heap) * heap) * heap) * int

val g12_example4044 : (((heap * heap) * heap) * heap) * int

val g12_example4045 : (((heap * heap) * heap) * heap) * int

val g12_example4046 : (((heap * heap) * heap) * heap) * int

val g12_example4047 : (((heap * heap) * heap) * heap) * int

val g12_example4048 : (((heap * heap) * heap) * heap) * int

val g12_example4049 : (((heap * heap) * heap) * heap) * int

val g12_example4050 : (((heap * heap) * heap) * heap) * int

val g12_example4051 : (((heap * heap) * heap) * heap) * int

val g12_example4052 : (((heap * heap) * heap) * heap) * int

val g12_example4053 : (((heap * heap) * heap) * heap) * int

val g12_example4054 : (((heap * heap) * heap) * heap) * int

val g12_example4055 : (((heap * heap) * heap) * heap) * int

val g12_example4056 : (((heap * heap) * heap) * heap) * int

val g12_example4057 : (((heap * heap) * heap) * heap) * int

val g12_example4058 : (((heap * heap) * heap) * heap) * int

val g12_example4059 : (((heap * heap) * heap) * heap) * int

val g12_example4060 : (((heap * heap) * heap) * heap) * int

val g12_example4061 : (((heap * heap) * heap) * heap) * int

val g12_example4062 : (((heap * heap) * heap) * heap) * int

val g12_example4063 : (((heap * heap) * heap) * heap) * int

val g12_example4064 : (((heap * heap) * heap) * heap) * int

val g12_example4065 : (((heap * heap) * heap) * heap) * int

val g12_example4066 : (((heap * heap) * heap) * heap) * int

val g12_example4067 : (((heap * heap) * heap) * heap) * int

val g12_example4068 : (((heap * heap) * heap) * heap) * int

val g12_example4069 : (((heap * heap) * heap) * heap) * int

val g12_example4070 : (((heap * heap) * heap) * heap) * int

val g12_example4071 : (((heap * heap) * heap) * heap) * int

val g12_example4072 : (((heap * heap) * heap) * heap) * int

val g12_example4073 : (((heap * heap) * heap) * heap) * int

val g12_example4074 : (((heap * heap) * heap) * heap) * int

val g12_example4075 : (((heap * heap) * heap) * heap) * int

val g12_example4076 : (((heap * heap) * heap) * heap) * int

val g12_example4077 : (((heap * heap) * heap) * heap) * int

val g12_example4078 : (((heap * heap) * heap) * heap) * int

val g12_example4079 : (((heap * heap) * heap) * heap) * int

val g12_example4080 : (((heap * heap) * heap) * heap) * int

val g12_example4081 : (((heap * heap) * heap) * heap) * int

val g12_example4082 : (((heap * heap) * heap) * heap) * int

val g12_example4083 : (((heap * heap) * heap) * heap) * int

val g12_example4084 : (((heap * heap) * heap) * heap) * int

val g12_example4085 : (((heap * heap) * heap) * heap) * int

val g12_example4086 : (((heap * heap) * heap) * heap) * int

val g12_example4087 : (((heap * heap) * heap) * heap) * int

val g12_example4088 : (((heap * heap) * heap) * heap) * int

val g12_example4089 : (((heap * heap) * heap) * heap) * int

val g12_example4090 : (((heap * heap) * heap) * heap) * int

val g12_example4091 : (((heap * heap) * heap) * heap) * int

val g12_example4092 : (((heap * heap) * heap) * heap) * int

val g12_example4093 : (((heap * heap) * heap) * heap) * int

val g12_example4094 : (((heap * heap) * heap) * heap) * int

val g12_example4095 : (((heap * heap) * heap) * heap) * int

val g12_example4096 : (((heap * heap) * heap) * heap) * int

val g12_example4097 : (((heap * heap) * heap) * heap) * int

val g12_example4098 : (((heap * heap) * heap) * heap) * int

val g12_example4099 : (((heap * heap) * heap) * heap) * int

val g12_example4100 : (((heap * heap) * heap) * heap) * int

val g12_example4101 : (((heap * heap) * heap) * heap) * int

val g12_example4102 : (((heap * heap) * heap) * heap) * int

val g12_example4103 : (((heap * heap) * heap) * heap) * int

val g12_example4104 : (((heap * heap) * heap) * heap) * int

val g12_example4105 : (((heap * heap) * heap) * heap) * int

val g12_example4106 : (((heap * heap) * heap) * heap) * int

val g12_example4107 : (((heap * heap) * heap) * heap) * int

val g12_example4108 : (((heap * heap) * heap) * heap) * int

val g12_example4109 : (((heap * heap) * heap) * heap) * int

val g12_example4110 : (((heap * heap) * heap) * heap) * int

val g12_example4111 : (((heap * heap) * heap) * heap) * int

val g12_example4112 : (((heap * heap) * heap) * heap) * int

val g12_example4113 : (((heap * heap) * heap) * heap) * int

val g12_example4114 : (((heap * heap) * heap) * heap) * int

val g12_example4115 : (((heap * heap) * heap) * heap) * int

val g12_example4116 : (((heap * heap) * heap) * heap) * int

val g12_example4117 : (((heap * heap) * heap) * heap) * int

val g12_example4118 : (((heap * heap) * heap) * heap) * int

val g12_example4119 : (((heap * heap) * heap) * heap) * int

val g12_example4120 : (((heap * heap) * heap) * heap) * int

val g12_example4121 : (((heap * heap) * heap) * heap) * int

val g12_example4122 : (((heap * heap) * heap) * heap) * int

val g12_example4123 : (((heap * heap) * heap) * heap) * int

val g12_example4124 : (((heap * heap) * heap) * heap) * int

val g12_example4125 : (((heap * heap) * heap) * heap) * int

val g12_example4126 : (((heap * heap) * heap) * heap) * int

val g12_example4127 : (((heap * heap) * heap) * heap) * int

val g12_example4128 : (((heap * heap) * heap) * heap) * int

val g12_example4129 : (((heap * heap) * heap) * heap) * int

val g12_example4130 : (((heap * heap) * heap) * heap) * int

val g12_example4131 : (((heap * heap) * heap) * heap) * int

val g12_example4132 : (((heap * heap) * heap) * heap) * int

val g12_example4133 : (((heap * heap) * heap) * heap) * int

val g12_example4134 : (((heap * heap) * heap) * heap) * int

val g12_example4135 : (((heap * heap) * heap) * heap) * int

val g12_example4136 : (((heap * heap) * heap) * heap) * int

val g12_example4137 : (((heap * heap) * heap) * heap) * int

val g12_example4138 : (((heap * heap) * heap) * heap) * int

val g12_example4139 : (((heap * heap) * heap) * heap) * int

val g12_example4140 : (((heap * heap) * heap) * heap) * int

val g12_example4141 : (((heap * heap) * heap) * heap) * int

val g12_example4142 : (((heap * heap) * heap) * heap) * int

val g12_example4143 : (((heap * heap) * heap) * heap) * int

val g12_example4144 : (((heap * heap) * heap) * heap) * int

val g12_example4145 : (((heap * heap) * heap) * heap) * int

val g12_example4146 : (((heap * heap) * heap) * heap) * int

val g12_example4147 : (((heap * heap) * heap) * heap) * int

val g12_example4148 : (((heap * heap) * heap) * heap) * int

val g12_example4149 : (((heap * heap) * heap) * heap) * int

val g12_example4150 : (((heap * heap) * heap) * heap) * int

val g12_example4151 : (((heap * heap) * heap) * heap) * int

val g12_example4152 : (((heap * heap) * heap) * heap) * int

val g12_example4153 : (((heap * heap) * heap) * heap) * int

val g12_example4154 : (((heap * heap) * heap) * heap) * int

val g12_example4155 : (((heap * heap) * heap) * heap) * int

val g12_example4156 : (((heap * heap) * heap) * heap) * int

val g12_example4157 : (((heap * heap) * heap) * heap) * int

val g12_example4158 : (((heap * heap) * heap) * heap) * int

val g12_example4159 : (((heap * heap) * heap) * heap) * int

val g12_example4160 : (((heap * heap) * heap) * heap) * int

val g12_example4161 : (((heap * heap) * heap) * heap) * int

val g12_example4162 : (((heap * heap) * heap) * heap) * int

val g12_example4163 : (((heap * heap) * heap) * heap) * int

val g12_example4164 : (((heap * heap) * heap) * heap) * int

val g12_example4165 : (((heap * heap) * heap) * heap) * int

val g12_example4166 : (((heap * heap) * heap) * heap) * int

val g12_example4167 : (((heap * heap) * heap) * heap) * int

val g12_example4168 : (((heap * heap) * heap) * heap) * int

val g12_example4169 : (((heap * heap) * heap) * heap) * int

val g12_example4170 : (((heap * heap) * heap) * heap) * int

val g12_example4171 : (((heap * heap) * heap) * heap) * int

val g12_example4172 : (((heap * heap) * heap) * heap) * int

val g12_example4173 : (((heap * heap) * heap) * heap) * int

val g12_example4174 : (((heap * heap) * heap) * heap) * int

val g12_example4175 : (((heap * heap) * heap) * heap) * int

val g12_example4176 : (((heap * heap) * heap) * heap) * int

val g12_example4177 : (((heap * heap) * heap) * heap) * int

val g12_example4178 : (((heap * heap) * heap) * heap) * int

val g12_example4179 : (((heap * heap) * heap) * heap) * int

val g12_example4180 : (((heap * heap) * heap) * heap) * int

val g12_example4181 : (((heap * heap) * heap) * heap) * int

val g12_example4182 : (((heap * heap) * heap) * heap) * int

val g12_example4183 : (((heap * heap) * heap) * heap) * int

val g12_example4184 : (((heap * heap) * heap) * heap) * int

val g12_example4185 : (((heap * heap) * heap) * heap) * int

val g12_example4186 : (((heap * heap) * heap) * heap) * int

val g12_example4187 : (((heap * heap) * heap) * heap) * int

val g12_example4188 : (((heap * heap) * heap) * heap) * int

val g12_example4189 : (((heap * heap) * heap) * heap) * int

val g12_example4190 : (((heap * heap) * heap) * heap) * int

val g12_example4191 : (((heap * heap) * heap) * heap) * int

val g12_example4192 : (((heap * heap) * heap) * heap) * int

val g12_example4193 : (((heap * heap) * heap) * heap) * int

val g12_example4194 : (((heap * heap) * heap) * heap) * int

val g12_example4195 : (((heap * heap) * heap) * heap) * int

val g12_example4196 : (((heap * heap) * heap) * heap) * int

val g12_example4197 : (((heap * heap) * heap) * heap) * int

val g12_example4198 : (((heap * heap) * heap) * heap) * int

val g12_example4199 : (((heap * heap) * heap) * heap) * int

val g12_example4200 : (((heap * heap) * heap) * heap) * int

val g12_example4201 : (((heap * heap) * heap) * heap) * int

val g12_example4202 : (((heap * heap) * heap) * heap) * int

val g12_example4203 : (((heap * heap) * heap) * heap) * int

val g12_example4204 : (((heap * heap) * heap) * heap) * int

val g12_example4205 : (((heap * heap) * heap) * heap) * int

val g12_example4206 : (((heap * heap) * heap) * heap) * int

val g12_example4207 : (((heap * heap) * heap) * heap) * int

val g12_example4208 : (((heap * heap) * heap) * heap) * int

val g12_example4209 : (((heap * heap) * heap) * heap) * int

val g12_example4210 : (((heap * heap) * heap) * heap) * int

val g12_example4211 : (((heap * heap) * heap) * heap) * int

val g12_example4212 : (((heap * heap) * heap) * heap) * int

val g12_example4213 : (((heap * heap) * heap) * heap) * int

val g12_example4214 : (((heap * heap) * heap) * heap) * int

val g12_example4215 : (((heap * heap) * heap) * heap) * int

val g12_example4216 : (((heap * heap) * heap) * heap) * int

val g12_example4217 : (((heap * heap) * heap) * heap) * int

val g12_example4218 : (((heap * heap) * heap) * heap) * int

val g12_example4219 : (((heap * heap) * heap) * heap) * int

val g12_example4220 : (((heap * heap) * heap) * heap) * int

val g12_example4221 : (((heap * heap) * heap) * heap) * int

val g12_example4222 : (((heap * heap) * heap) * heap) * int

val g12_example4223 : (((heap * heap) * heap) * heap) * int

val g12_example4224 : (((heap * heap) * heap) * heap) * int

val g12_example4225 : (((heap * heap) * heap) * heap) * int

val g12_example4226 : (((heap * heap) * heap) * heap) * int

val g12_example4227 : (((heap * heap) * heap) * heap) * int

val g12_example4228 : (((heap * heap) * heap) * heap) * int

val g12_example4229 : (((heap * heap) * heap) * heap) * int

val g12_example4230 : (((heap * heap) * heap) * heap) * int

val g12_example4231 : (((heap * heap) * heap) * heap) * int

val g12_example4232 : (((heap * heap) * heap) * heap) * int

val g12_example4233 : (((heap * heap) * heap) * heap) * int

val g12_example4234 : (((heap * heap) * heap) * heap) * int

val g12_example4235 : (((heap * heap) * heap) * heap) * int

val g12_example4236 : (((heap * heap) * heap) * heap) * int

val g12_example4237 : (((heap * heap) * heap) * heap) * int

val g12_example4238 : (((heap * heap) * heap) * heap) * int

val g12_example4239 : (((heap * heap) * heap) * heap) * int

val g12_example4240 : (((heap * heap) * heap) * heap) * int

val g12_example4241 : (((heap * heap) * heap) * heap) * int

val g12_example4242 : (((heap * heap) * heap) * heap) * int

val g12_example4243 : (((heap * heap) * heap) * heap) * int

val g12_example4244 : (((heap * heap) * heap) * heap) * int

val g12_example4245 : (((heap * heap) * heap) * heap) * int

val g12_example4246 : (((heap * heap) * heap) * heap) * int

val g12_example4247 : (((heap * heap) * heap) * heap) * int

val g12_example4248 : (((heap * heap) * heap) * heap) * int

val g12_example4249 : (((heap * heap) * heap) * heap) * int

val g12_example4250 : (((heap * heap) * heap) * heap) * int

val g12_example4251 : (((heap * heap) * heap) * heap) * int

val g12_example4252 : (((heap * heap) * heap) * heap) * int

val g12_example4253 : (((heap * heap) * heap) * heap) * int

val g12_example4254 : (((heap * heap) * heap) * heap) * int

val g12_example4255 : (((heap * heap) * heap) * heap) * int

val g12_example4256 : (((heap * heap) * heap) * heap) * int

val g12_example4257 : (((heap * heap) * heap) * heap) * int

val g12_example4258 : (((heap * heap) * heap) * heap) * int

val g12_example4259 : (((heap * heap) * heap) * heap) * int

val g12_example4260 : (((heap * heap) * heap) * heap) * int

val g12_example4261 : (((heap * heap) * heap) * heap) * int

val g12_example4262 : (((heap * heap) * heap) * heap) * int

val g12_example4263 : (((heap * heap) * heap) * heap) * int

val g12_example4264 : (((heap * heap) * heap) * heap) * int

val g12_example4265 : (((heap * heap) * heap) * heap) * int

val g12_example4266 : (((heap * heap) * heap) * heap) * int

val g12_example4267 : (((heap * heap) * heap) * heap) * int

val g12_example4268 : (((heap * heap) * heap) * heap) * int

val g12_example4269 : (((heap * heap) * heap) * heap) * int

val g12_example4270 : (((heap * heap) * heap) * heap) * int

val g12_example4271 : (((heap * heap) * heap) * heap) * int

val g12_example4272 : (((heap * heap) * heap) * heap) * int

val g12_example4273 : (((heap * heap) * heap) * heap) * int

val g12_example4274 : (((heap * heap) * heap) * heap) * int

val g12_example4275 : (((heap * heap) * heap) * heap) * int

val g12_example4276 : (((heap * heap) * heap) * heap) * int

val g12_example4277 : (((heap * heap) * heap) * heap) * int

val g12_example4278 : (((heap * heap) * heap) * heap) * int

val g12_example4279 : (((heap * heap) * heap) * heap) * int

val g12_example4280 : (((heap * heap) * heap) * heap) * int

val g12_example4281 : (((heap * heap) * heap) * heap) * int

val g12_example4282 : (((heap * heap) * heap) * heap) * int

val g12_example4283 : (((heap * heap) * heap) * heap) * int

val g12_example4284 : (((heap * heap) * heap) * heap) * int

val g12_example4285 : (((heap * heap) * heap) * heap) * int

val g12_example4286 : (((heap * heap) * heap) * heap) * int

val g12_example4287 : (((heap * heap) * heap) * heap) * int

val g12_example4288 : (((heap * heap) * heap) * heap) * int

val g12_example4289 : (((heap * heap) * heap) * heap) * int

val g12_example4290 : (((heap * heap) * heap) * heap) * int

val g12_example4291 : (((heap * heap) * heap) * heap) * int

val g12_example4292 : (((heap * heap) * heap) * heap) * int

val g12_example4293 : (((heap * heap) * heap) * heap) * int

val g12_example4294 : (((heap * heap) * heap) * heap) * int

val g12_example4295 : (((heap * heap) * heap) * heap) * int

val g12_example4296 : (((heap * heap) * heap) * heap) * int

val g12_example4297 : (((heap * heap) * heap) * heap) * int

val g12_example4298 : (((heap * heap) * heap) * heap) * int

val g12_example4299 : (((heap * heap) * heap) * heap) * int

val g12_example4300 : (((heap * heap) * heap) * heap) * int

val g12_example4301 : (((heap * heap) * heap) * heap) * int

val g12_example4302 : (((heap * heap) * heap) * heap) * int

val g12_example4303 : (((heap * heap) * heap) * heap) * int

val g12_example4304 : (((heap * heap) * heap) * heap) * int

val g12_example4305 : (((heap * heap) * heap) * heap) * int

val g12_example4306 : (((heap * heap) * heap) * heap) * int

val g12_example4307 : (((heap * heap) * heap) * heap) * int

val g12_example4308 : (((heap * heap) * heap) * heap) * int

val g12_example4309 : (((heap * heap) * heap) * heap) * int

val g12_example4310 : (((heap * heap) * heap) * heap) * int

val g12_example4311 : (((heap * heap) * heap) * heap) * int

val g12_example4312 : (((heap * heap) * heap) * heap) * int

val g12_example4313 : (((heap * heap) * heap) * heap) * int

val g12_example4314 : (((heap * heap) * heap) * heap) * int

val g12_example4315 : (((heap * heap) * heap) * heap) * int

val g12_example4316 : (((heap * heap) * heap) * heap) * int

val g12_example4317 : (((heap * heap) * heap) * heap) * int

val g12_example4318 : (((heap * heap) * heap) * heap) * int

val g12_example4319 : (((heap * heap) * heap) * heap) * int

val g12_example4320 : (((heap * heap) * heap) * heap) * int

val g12_example4321 : (((heap * heap) * heap) * heap) * int

val g12_example4322 : (((heap * heap) * heap) * heap) * int

val g12_example4323 : (((heap * heap) * heap) * heap) * int

val g12_example4324 : (((heap * heap) * heap) * heap) * int

val g12_example4325 : (((heap * heap) * heap) * heap) * int

val g12_example4326 : (((heap * heap) * heap) * heap) * int

val g12_example4327 : (((heap * heap) * heap) * heap) * int

val g12_example4328 : (((heap * heap) * heap) * heap) * int

val g12_example4329 : (((heap * heap) * heap) * heap) * int

val g12_example4330 : (((heap * heap) * heap) * heap) * int

val g12_example4331 : (((heap * heap) * heap) * heap) * int

val g12_example4332 : (((heap * heap) * heap) * heap) * int

val g12_example4333 : (((heap * heap) * heap) * heap) * int

val g12_example4334 : (((heap * heap) * heap) * heap) * int

val g12_example4335 : (((heap * heap) * heap) * heap) * int

val g12_example4336 : (((heap * heap) * heap) * heap) * int

val g12_example4337 : (((heap * heap) * heap) * heap) * int

val g12_example4338 : (((heap * heap) * heap) * heap) * int

val g12_example4339 : (((heap * heap) * heap) * heap) * int

val g12_example4340 : (((heap * heap) * heap) * heap) * int

val g12_example4341 : (((heap * heap) * heap) * heap) * int

val g12_example4342 : (((heap * heap) * heap) * heap) * int

val g12_example4343 : (((heap * heap) * heap) * heap) * int

val g12_example4344 : (((heap * heap) * heap) * heap) * int

val g12_example4345 : (((heap * heap) * heap) * heap) * int

val g12_example4346 : (((heap * heap) * heap) * heap) * int

val g12_example4347 : (((heap * heap) * heap) * heap) * int

val g12_example4348 : (((heap * heap) * heap) * heap) * int

val g12_example4349 : (((heap * heap) * heap) * heap) * int

val g12_example4350 : (((heap * heap) * heap) * heap) * int

val g12_example4351 : (((heap * heap) * heap) * heap) * int

val g12_example4352 : (((heap * heap) * heap) * heap) * int

val g12_example4353 : (((heap * heap) * heap) * heap) * int

val g12_example4354 : (((heap * heap) * heap) * heap) * int

val g12_example4355 : (((heap * heap) * heap) * heap) * int

val g12_example4356 : (((heap * heap) * heap) * heap) * int

val g12_example4357 : (((heap * heap) * heap) * heap) * int

val g12_example4358 : (((heap * heap) * heap) * heap) * int

val g12_example4359 : (((heap * heap) * heap) * heap) * int

val g12_example4360 : (((heap * heap) * heap) * heap) * int

val g12_example4361 : (((heap * heap) * heap) * heap) * int

val g12_example4362 : (((heap * heap) * heap) * heap) * int

val g12_example4363 : (((heap * heap) * heap) * heap) * int

val g12_example4364 : (((heap * heap) * heap) * heap) * int

val g12_example4365 : (((heap * heap) * heap) * heap) * int

val g12_example4366 : (((heap * heap) * heap) * heap) * int

val g12_example4367 : (((heap * heap) * heap) * heap) * int

val g12_example4368 : (((heap * heap) * heap) * heap) * int

val g12_example4369 : (((heap * heap) * heap) * heap) * int

val g12_example4370 : (((heap * heap) * heap) * heap) * int

val g12_example4371 : (((heap * heap) * heap) * heap) * int

val g12_example4372 : (((heap * heap) * heap) * heap) * int

val g12_example4373 : (((heap * heap) * heap) * heap) * int

val g12_example4374 : (((heap * heap) * heap) * heap) * int

val g12_example4375 : (((heap * heap) * heap) * heap) * int

val g12_example4376 : (((heap * heap) * heap) * heap) * int

val g12_example4377 : (((heap * heap) * heap) * heap) * int

val g12_example4378 : (((heap * heap) * heap) * heap) * int

val g12_example4379 : (((heap * heap) * heap) * heap) * int

val g12_example4380 : (((heap * heap) * heap) * heap) * int

val g12_example4381 : (((heap * heap) * heap) * heap) * int

val g12_example4382 : (((heap * heap) * heap) * heap) * int

val g12_example4383 : (((heap * heap) * heap) * heap) * int

val g12_example4384 : (((heap * heap) * heap) * heap) * int

val g12_example4385 : (((heap * heap) * heap) * heap) * int

val g12_example4386 : (((heap * heap) * heap) * heap) * int

val g12_example4387 : (((heap * heap) * heap) * heap) * int

val g12_example4388 : (((heap * heap) * heap) * heap) * int

val g12_example4389 : (((heap * heap) * heap) * heap) * int

val g12_example4390 : (((heap * heap) * heap) * heap) * int

val g12_example4391 : (((heap * heap) * heap) * heap) * int

val g12_example4392 : (((heap * heap) * heap) * heap) * int

val g12_example4393 : (((heap * heap) * heap) * heap) * int

val g12_example4394 : (((heap * heap) * heap) * heap) * int

val g12_example4395 : (((heap * heap) * heap) * heap) * int

val g12_example4396 : (((heap * heap) * heap) * heap) * int

val g12_example4397 : (((heap * heap) * heap) * heap) * int

val g12_example4398 : (((heap * heap) * heap) * heap) * int

val g12_example4399 : (((heap * heap) * heap) * heap) * int

val g12_example4400 : (((heap * heap) * heap) * heap) * int

val g12_example4401 : (((heap * heap) * heap) * heap) * int

val g12_example4402 : (((heap * heap) * heap) * heap) * int

val g12_example4403 : (((heap * heap) * heap) * heap) * int

val g12_example4404 : (((heap * heap) * heap) * heap) * int

val g12_example4405 : (((heap * heap) * heap) * heap) * int

val g12_example4406 : (((heap * heap) * heap) * heap) * int

val g12_example4407 : (((heap * heap) * heap) * heap) * int

val g12_example4408 : (((heap * heap) * heap) * heap) * int

val g12_example4409 : (((heap * heap) * heap) * heap) * int

val g12_example4410 : (((heap * heap) * heap) * heap) * int

val g12_example4411 : (((heap * heap) * heap) * heap) * int

val g12_example4412 : (((heap * heap) * heap) * heap) * int

val g12_example4413 : (((heap * heap) * heap) * heap) * int

val g12_example4414 : (((heap * heap) * heap) * heap) * int

val g12_example4415 : (((heap * heap) * heap) * heap) * int

val g12_example4416 : (((heap * heap) * heap) * heap) * int

val g12_example4417 : (((heap * heap) * heap) * heap) * int

val g12_example4418 : (((heap * heap) * heap) * heap) * int

val g12_example4419 : (((heap * heap) * heap) * heap) * int

val g12_example4420 : (((heap * heap) * heap) * heap) * int

val g12_example4421 : (((heap * heap) * heap) * heap) * int

val g12_example4422 : (((heap * heap) * heap) * heap) * int

val g12_example4423 : (((heap * heap) * heap) * heap) * int

val g12_example4424 : (((heap * heap) * heap) * heap) * int

val g12_example4425 : (((heap * heap) * heap) * heap) * int

val g12_example4426 : (((heap * heap) * heap) * heap) * int

val g12_example4427 : (((heap * heap) * heap) * heap) * int

val g12_example4428 : (((heap * heap) * heap) * heap) * int

val g12_example4429 : (((heap * heap) * heap) * heap) * int

val g12_example4430 : (((heap * heap) * heap) * heap) * int

val g12_example4431 : (((heap * heap) * heap) * heap) * int

val g12_example4432 : (((heap * heap) * heap) * heap) * int

val g12_example4433 : (((heap * heap) * heap) * heap) * int

val g12_example4434 : (((heap * heap) * heap) * heap) * int

val g12_example4435 : (((heap * heap) * heap) * heap) * int

val g12_example4436 : (((heap * heap) * heap) * heap) * int

val g12_example4437 : (((heap * heap) * heap) * heap) * int

val g12_example4438 : (((heap * heap) * heap) * heap) * int

val g12_example4439 : (((heap * heap) * heap) * heap) * int

val g12_example4440 : (((heap * heap) * heap) * heap) * int

val g12_example4441 : (((heap * heap) * heap) * heap) * int

val g12_example4442 : (((heap * heap) * heap) * heap) * int

val g12_example4443 : (((heap * heap) * heap) * heap) * int

val g12_example4444 : (((heap * heap) * heap) * heap) * int

val g12_example4445 : (((heap * heap) * heap) * heap) * int

val g12_example4446 : (((heap * heap) * heap) * heap) * int

val g12_example4447 : (((heap * heap) * heap) * heap) * int

val g12_example4448 : (((heap * heap) * heap) * heap) * int

val g12_example4449 : (((heap * heap) * heap) * heap) * int

val g12_example4450 : (((heap * heap) * heap) * heap) * int

val g12_example4451 : (((heap * heap) * heap) * heap) * int

val g12_example4452 : (((heap * heap) * heap) * heap) * int

val g12_example4453 : (((heap * heap) * heap) * heap) * int

val g12_example4454 : (((heap * heap) * heap) * heap) * int

val g12_example4455 : (((heap * heap) * heap) * heap) * int

val g12_example4456 : (((heap * heap) * heap) * heap) * int

val g12_example4457 : (((heap * heap) * heap) * heap) * int

val g12_example4458 : (((heap * heap) * heap) * heap) * int

val g12_example4459 : (((heap * heap) * heap) * heap) * int

val g12_example4460 : (((heap * heap) * heap) * heap) * int

val g12_example4461 : (((heap * heap) * heap) * heap) * int

val g12_example4462 : (((heap * heap) * heap) * heap) * int

val g12_example4463 : (((heap * heap) * heap) * heap) * int

val g12_example4464 : (((heap * heap) * heap) * heap) * int

val g12_example4465 : (((heap * heap) * heap) * heap) * int

val g12_example4466 : (((heap * heap) * heap) * heap) * int

val g12_example4467 : (((heap * heap) * heap) * heap) * int

val g12_example4468 : (((heap * heap) * heap) * heap) * int

val g12_example4469 : (((heap * heap) * heap) * heap) * int

val g12_example4470 : (((heap * heap) * heap) * heap) * int

val g12_example4471 : (((heap * heap) * heap) * heap) * int

val g12_example4472 : (((heap * heap) * heap) * heap) * int

val g12_example4473 : (((heap * heap) * heap) * heap) * int

val g12_example4474 : (((heap * heap) * heap) * heap) * int

val g12_example4475 : (((heap * heap) * heap) * heap) * int

val g12_example4476 : (((heap * heap) * heap) * heap) * int

val g12_example4477 : (((heap * heap) * heap) * heap) * int

val g12_example4478 : (((heap * heap) * heap) * heap) * int

val g12_example4479 : (((heap * heap) * heap) * heap) * int

val g12_example4480 : (((heap * heap) * heap) * heap) * int

val g12_example4481 : (((heap * heap) * heap) * heap) * int

val g12_example4482 : (((heap * heap) * heap) * heap) * int

val g12_example4483 : (((heap * heap) * heap) * heap) * int

val g12_example4484 : (((heap * heap) * heap) * heap) * int

val g12_example4485 : (((heap * heap) * heap) * heap) * int

val g12_example4486 : (((heap * heap) * heap) * heap) * int

val g12_example4487 : (((heap * heap) * heap) * heap) * int

val g12_example4488 : (((heap * heap) * heap) * heap) * int

val g12_example4489 : (((heap * heap) * heap) * heap) * int

val g12_example4490 : (((heap * heap) * heap) * heap) * int

val g12_example4491 : (((heap * heap) * heap) * heap) * int

val g12_example4492 : (((heap * heap) * heap) * heap) * int

val g12_example4493 : (((heap * heap) * heap) * heap) * int

val g12_example4494 : (((heap * heap) * heap) * heap) * int

val g12_example4495 : (((heap * heap) * heap) * heap) * int

val g12_example4496 : (((heap * heap) * heap) * heap) * int

val g12_example4497 : (((heap * heap) * heap) * heap) * int

val g12_example4498 : (((heap * heap) * heap) * heap) * int

val g12_example4499 : (((heap * heap) * heap) * heap) * int

val g12_example4500 : (((heap * heap) * heap) * heap) * int

val g12_example4501 : (((heap * heap) * heap) * heap) * int

val g12_example4502 : (((heap * heap) * heap) * heap) * int

val g12_example4503 : (((heap * heap) * heap) * heap) * int

val g12_example4504 : (((heap * heap) * heap) * heap) * int

val g12_example4505 : (((heap * heap) * heap) * heap) * int

val g12_example4506 : (((heap * heap) * heap) * heap) * int

val g12_example4507 : (((heap * heap) * heap) * heap) * int

val g12_example4508 : (((heap * heap) * heap) * heap) * int

val g12_example4509 : (((heap * heap) * heap) * heap) * int

val g12_example4510 : (((heap * heap) * heap) * heap) * int

val g12_example4511 : (((heap * heap) * heap) * heap) * int

val g12_example4512 : (((heap * heap) * heap) * heap) * int

val g12_example4513 : (((heap * heap) * heap) * heap) * int

val g12_example4514 : (((heap * heap) * heap) * heap) * int

val g12_example4515 : (((heap * heap) * heap) * heap) * int

val g12_example4516 : (((heap * heap) * heap) * heap) * int

val g12_example4517 : (((heap * heap) * heap) * heap) * int

val g12_example4518 : (((heap * heap) * heap) * heap) * int

val g12_example4519 : (((heap * heap) * heap) * heap) * int

val g12_example4520 : (((heap * heap) * heap) * heap) * int

val g12_example4521 : (((heap * heap) * heap) * heap) * int

val g12_example4522 : (((heap * heap) * heap) * heap) * int

val g12_example4523 : (((heap * heap) * heap) * heap) * int

val g12_example4524 : (((heap * heap) * heap) * heap) * int

val g12_example4525 : (((heap * heap) * heap) * heap) * int

val g12_example4526 : (((heap * heap) * heap) * heap) * int

val g12_example4527 : (((heap * heap) * heap) * heap) * int

val g12_example4528 : (((heap * heap) * heap) * heap) * int

val g12_example4529 : (((heap * heap) * heap) * heap) * int

val g12_example4530 : (((heap * heap) * heap) * heap) * int

val g12_example4531 : (((heap * heap) * heap) * heap) * int

val g12_example4532 : (((heap * heap) * heap) * heap) * int

val g12_example4533 : (((heap * heap) * heap) * heap) * int

val g12_example4534 : (((heap * heap) * heap) * heap) * int

val g12_example4535 : (((heap * heap) * heap) * heap) * int

val g12_example4536 : (((heap * heap) * heap) * heap) * int

val g12_example4537 : (((heap * heap) * heap) * heap) * int

val g12_example4538 : (((heap * heap) * heap) * heap) * int

val g12_example4539 : (((heap * heap) * heap) * heap) * int

val g12_example4540 : (((heap * heap) * heap) * heap) * int

val g12_example4541 : (((heap * heap) * heap) * heap) * int

val g12_example4542 : (((heap * heap) * heap) * heap) * int

val g12_example4543 : (((heap * heap) * heap) * heap) * int

val g12_example4544 : (((heap * heap) * heap) * heap) * int

val g12_example4545 : (((heap * heap) * heap) * heap) * int

val g12_example4546 : (((heap * heap) * heap) * heap) * int

val g12_example4547 : (((heap * heap) * heap) * heap) * int

val g12_example4548 : (((heap * heap) * heap) * heap) * int

val g12_example4549 : (((heap * heap) * heap) * heap) * int

val g12_example4550 : (((heap * heap) * heap) * heap) * int

val g12_example4551 : (((heap * heap) * heap) * heap) * int

val g12_example4552 : (((heap * heap) * heap) * heap) * int

val g12_example4553 : (((heap * heap) * heap) * heap) * int

val g12_example4554 : (((heap * heap) * heap) * heap) * int

val g12_example4555 : (((heap * heap) * heap) * heap) * int

val g12_example4556 : (((heap * heap) * heap) * heap) * int

val g12_example4557 : (((heap * heap) * heap) * heap) * int

val g12_example4558 : (((heap * heap) * heap) * heap) * int

val g12_example4559 : (((heap * heap) * heap) * heap) * int

val g12_example4560 : (((heap * heap) * heap) * heap) * int

val g12_example4561 : (((heap * heap) * heap) * heap) * int

val g12_example4562 : (((heap * heap) * heap) * heap) * int

val g12_example4563 : (((heap * heap) * heap) * heap) * int

val g12_example4564 : (((heap * heap) * heap) * heap) * int

val g12_example4565 : (((heap * heap) * heap) * heap) * int

val g12_example4566 : (((heap * heap) * heap) * heap) * int

val g12_example4567 : (((heap * heap) * heap) * heap) * int

val g12_example4568 : (((heap * heap) * heap) * heap) * int

val g12_example4569 : (((heap * heap) * heap) * heap) * int

val g12_example4570 : (((heap * heap) * heap) * heap) * int

val g12_example4571 : (((heap * heap) * heap) * heap) * int

val g12_example4572 : (((heap * heap) * heap) * heap) * int

val g12_example4573 : (((heap * heap) * heap) * heap) * int

val g12_example4574 : (((heap * heap) * heap) * heap) * int

val g12_example4575 : (((heap * heap) * heap) * heap) * int

val g12_example4576 : (((heap * heap) * heap) * heap) * int

val g12_example4577 : (((heap * heap) * heap) * heap) * int

val g12_example4578 : (((heap * heap) * heap) * heap) * int

val g12_example4579 : (((heap * heap) * heap) * heap) * int

val g12_example4580 : (((heap * heap) * heap) * heap) * int

val g12_example4581 : (((heap * heap) * heap) * heap) * int

val g12_example4582 : (((heap * heap) * heap) * heap) * int

val g12_example4583 : (((heap * heap) * heap) * heap) * int

val g12_example4584 : (((heap * heap) * heap) * heap) * int

val g12_example4585 : (((heap * heap) * heap) * heap) * int

val g12_example4586 : (((heap * heap) * heap) * heap) * int

val g12_example4587 : (((heap * heap) * heap) * heap) * int

val g12_example4588 : (((heap * heap) * heap) * heap) * int

val g12_example4589 : (((heap * heap) * heap) * heap) * int

val g12_example4590 : (((heap * heap) * heap) * heap) * int

val g12_example4591 : (((heap * heap) * heap) * heap) * int

val g12_example4592 : (((heap * heap) * heap) * heap) * int

val g12_example4593 : (((heap * heap) * heap) * heap) * int

val g12_example4594 : (((heap * heap) * heap) * heap) * int

val g12_example4595 : (((heap * heap) * heap) * heap) * int

val g12_example4596 : (((heap * heap) * heap) * heap) * int

val g12_example4597 : (((heap * heap) * heap) * heap) * int

val g12_example4598 : (((heap * heap) * heap) * heap) * int

val g12_example4599 : (((heap * heap) * heap) * heap) * int

val g12_example4600 : (((heap * heap) * heap) * heap) * int

val g12_example4601 : (((heap * heap) * heap) * heap) * int

val g12_example4602 : (((heap * heap) * heap) * heap) * int

val g12_example4603 : (((heap * heap) * heap) * heap) * int

val g12_example4604 : (((heap * heap) * heap) * heap) * int

val g12_example4605 : (((heap * heap) * heap) * heap) * int

val g12_example4606 : (((heap * heap) * heap) * heap) * int

val g12_example4607 : (((heap * heap) * heap) * heap) * int

val g12_example4608 : (((heap * heap) * heap) * heap) * int

val g12_example4609 : (((heap * heap) * heap) * heap) * int

val g12_example4610 : (((heap * heap) * heap) * heap) * int

val g12_example4611 : (((heap * heap) * heap) * heap) * int

val g12_example4612 : (((heap * heap) * heap) * heap) * int

val g12_example4613 : (((heap * heap) * heap) * heap) * int

val g12_example4614 : (((heap * heap) * heap) * heap) * int

val g12_example4615 : (((heap * heap) * heap) * heap) * int

val g12_example4616 : (((heap * heap) * heap) * heap) * int

val g12_example4617 : (((heap * heap) * heap) * heap) * int

val g12_example4618 : (((heap * heap) * heap) * heap) * int

val g12_example4619 : (((heap * heap) * heap) * heap) * int

val g12_example4620 : (((heap * heap) * heap) * heap) * int

val g12_example4621 : (((heap * heap) * heap) * heap) * int

val g12_example4622 : (((heap * heap) * heap) * heap) * int

val g12_example4623 : (((heap * heap) * heap) * heap) * int

val g12_example4624 : (((heap * heap) * heap) * heap) * int

val g12_example4625 : (((heap * heap) * heap) * heap) * int

val g12_example4626 : (((heap * heap) * heap) * heap) * int

val g12_example4627 : (((heap * heap) * heap) * heap) * int

val g12_example4628 : (((heap * heap) * heap) * heap) * int

val g12_example4629 : (((heap * heap) * heap) * heap) * int

val g12_example4630 : (((heap * heap) * heap) * heap) * int

val g12_example4631 : (((heap * heap) * heap) * heap) * int

val g12_example4632 : (((heap * heap) * heap) * heap) * int

val g12_example4633 : (((heap * heap) * heap) * heap) * int

val g12_example4634 : (((heap * heap) * heap) * heap) * int

val g12_example4635 : (((heap * heap) * heap) * heap) * int

val g12_example4636 : (((heap * heap) * heap) * heap) * int

val g12_example4637 : (((heap * heap) * heap) * heap) * int

val g12_example4638 : (((heap * heap) * heap) * heap) * int

val g12_example4639 : (((heap * heap) * heap) * heap) * int

val g12_example4640 : (((heap * heap) * heap) * heap) * int

val g12_example4641 : (((heap * heap) * heap) * heap) * int

val g12_example4642 : (((heap * heap) * heap) * heap) * int

val g12_example4643 : (((heap * heap) * heap) * heap) * int

val g12_example4644 : (((heap * heap) * heap) * heap) * int

val g12_example4645 : (((heap * heap) * heap) * heap) * int

val g12_example4646 : (((heap * heap) * heap) * heap) * int

val g12_example4647 : (((heap * heap) * heap) * heap) * int

val g12_example4648 : (((heap * heap) * heap) * heap) * int

val g12_example4649 : (((heap * heap) * heap) * heap) * int

val g12_example4650 : (((heap * heap) * heap) * heap) * int

val g12_example4651 : (((heap * heap) * heap) * heap) * int

val g12_example4652 : (((heap * heap) * heap) * heap) * int

val g12_example4653 : (((heap * heap) * heap) * heap) * int

val g12_example4654 : (((heap * heap) * heap) * heap) * int

val g12_example4655 : (((heap * heap) * heap) * heap) * int

val g12_example4656 : (((heap * heap) * heap) * heap) * int

val g12_example4657 : (((heap * heap) * heap) * heap) * int

val g12_example4658 : (((heap * heap) * heap) * heap) * int

val g12_example4659 : (((heap * heap) * heap) * heap) * int

val g12_example4660 : (((heap * heap) * heap) * heap) * int

val g12_example4661 : (((heap * heap) * heap) * heap) * int

val g12_example4662 : (((heap * heap) * heap) * heap) * int

val g12_example4663 : (((heap * heap) * heap) * heap) * int

val g12_example4664 : (((heap * heap) * heap) * heap) * int

val g12_example4665 : (((heap * heap) * heap) * heap) * int

val g12_example4666 : (((heap * heap) * heap) * heap) * int

val g12_example4667 : (((heap * heap) * heap) * heap) * int

val g12_example4668 : (((heap * heap) * heap) * heap) * int

val g12_example4669 : (((heap * heap) * heap) * heap) * int

val g12_example4670 : (((heap * heap) * heap) * heap) * int

val g12_example4671 : (((heap * heap) * heap) * heap) * int

val g12_example4672 : (((heap * heap) * heap) * heap) * int

val g12_example4673 : (((heap * heap) * heap) * heap) * int

val g12_example4674 : (((heap * heap) * heap) * heap) * int

val g12_example4675 : (((heap * heap) * heap) * heap) * int

val g12_example4676 : (((heap * heap) * heap) * heap) * int

val g12_example4677 : (((heap * heap) * heap) * heap) * int

val g12_example4678 : (((heap * heap) * heap) * heap) * int

val g12_example4679 : (((heap * heap) * heap) * heap) * int

val g12_example4680 : (((heap * heap) * heap) * heap) * int

val g12_example4681 : (((heap * heap) * heap) * heap) * int

val g12_example4682 : (((heap * heap) * heap) * heap) * int

val g12_example4683 : (((heap * heap) * heap) * heap) * int

val g12_example4684 : (((heap * heap) * heap) * heap) * int

val g12_example4685 : (((heap * heap) * heap) * heap) * int

val g12_example4686 : (((heap * heap) * heap) * heap) * int

val g12_example4687 : (((heap * heap) * heap) * heap) * int

val g12_example4688 : (((heap * heap) * heap) * heap) * int

val g12_example4689 : (((heap * heap) * heap) * heap) * int

val g12_example4690 : (((heap * heap) * heap) * heap) * int

val g12_example4691 : (((heap * heap) * heap) * heap) * int

val g12_example4692 : (((heap * heap) * heap) * heap) * int

val g12_example4693 : (((heap * heap) * heap) * heap) * int

val g12_example4694 : (((heap * heap) * heap) * heap) * int

val g12_example4695 : (((heap * heap) * heap) * heap) * int

val g12_example4696 : (((heap * heap) * heap) * heap) * int

val g12_example4697 : (((heap * heap) * heap) * heap) * int

val g12_example4698 : (((heap * heap) * heap) * heap) * int

val g12_example4699 : (((heap * heap) * heap) * heap) * int

val g12_example4700 : (((heap * heap) * heap) * heap) * int

val g12_example4701 : (((heap * heap) * heap) * heap) * int

val g12_example4702 : (((heap * heap) * heap) * heap) * int

val g12_example4703 : (((heap * heap) * heap) * heap) * int

val g12_example4704 : (((heap * heap) * heap) * heap) * int

val g12_example4705 : (((heap * heap) * heap) * heap) * int

val g12_example4706 : (((heap * heap) * heap) * heap) * int

val g12_example4707 : (((heap * heap) * heap) * heap) * int

val g12_example4708 : (((heap * heap) * heap) * heap) * int

val g12_example4709 : (((heap * heap) * heap) * heap) * int

val g12_example4710 : (((heap * heap) * heap) * heap) * int

val g12_example4711 : (((heap * heap) * heap) * heap) * int

val g12_example4712 : (((heap * heap) * heap) * heap) * int

val g12_example4713 : (((heap * heap) * heap) * heap) * int

val g12_example4714 : (((heap * heap) * heap) * heap) * int

val g12_example4715 : (((heap * heap) * heap) * heap) * int

val g12_example4716 : (((heap * heap) * heap) * heap) * int

val g12_example4717 : (((heap * heap) * heap) * heap) * int

val g12_example4718 : (((heap * heap) * heap) * heap) * int

val g12_example4719 : (((heap * heap) * heap) * heap) * int

val g12_example4720 : (((heap * heap) * heap) * heap) * int

val g12_example4721 : (((heap * heap) * heap) * heap) * int

val g12_example4722 : (((heap * heap) * heap) * heap) * int

val g12_example4723 : (((heap * heap) * heap) * heap) * int

val g12_example4724 : (((heap * heap) * heap) * heap) * int

val g12_example4725 : (((heap * heap) * heap) * heap) * int

val g12_example4726 : (((heap * heap) * heap) * heap) * int

val g12_example4727 : (((heap * heap) * heap) * heap) * int

val g12_example4728 : (((heap * heap) * heap) * heap) * int

val g12_example4729 : (((heap * heap) * heap) * heap) * int

val g12_example4730 : (((heap * heap) * heap) * heap) * int

val g12_example4731 : (((heap * heap) * heap) * heap) * int

val g12_example4732 : (((heap * heap) * heap) * heap) * int

val g12_example4733 : (((heap * heap) * heap) * heap) * int

val g12_example4734 : (((heap * heap) * heap) * heap) * int

val g12_example4735 : (((heap * heap) * heap) * heap) * int

val g12_example4736 : (((heap * heap) * heap) * heap) * int

val g12_example4737 : (((heap * heap) * heap) * heap) * int

val g12_example4738 : (((heap * heap) * heap) * heap) * int

val g12_example4739 : (((heap * heap) * heap) * heap) * int

val g12_example4740 : (((heap * heap) * heap) * heap) * int

val g12_example4741 : (((heap * heap) * heap) * heap) * int

val g12_example4742 : (((heap * heap) * heap) * heap) * int

val g12_example4743 : (((heap * heap) * heap) * heap) * int

val g12_example4744 : (((heap * heap) * heap) * heap) * int

val g12_example4745 : (((heap * heap) * heap) * heap) * int

val g12_example4746 : (((heap * heap) * heap) * heap) * int

val g12_example4747 : (((heap * heap) * heap) * heap) * int

val g12_example4748 : (((heap * heap) * heap) * heap) * int

val g12_example4749 : (((heap * heap) * heap) * heap) * int

val g12_example4750 : (((heap * heap) * heap) * heap) * int

val g12_example4751 : (((heap * heap) * heap) * heap) * int

val g12_example4752 : (((heap * heap) * heap) * heap) * int

val g12_example4753 : (((heap * heap) * heap) * heap) * int

val g12_example4754 : (((heap * heap) * heap) * heap) * int

val g12_example4755 : (((heap * heap) * heap) * heap) * int

val g12_example4756 : (((heap * heap) * heap) * heap) * int

val g12_example4757 : (((heap * heap) * heap) * heap) * int

val g12_example4758 : (((heap * heap) * heap) * heap) * int

val g12_example4759 : (((heap * heap) * heap) * heap) * int

val g12_example4760 : (((heap * heap) * heap) * heap) * int

val g12_example4761 : (((heap * heap) * heap) * heap) * int

val g12_example4762 : (((heap * heap) * heap) * heap) * int

val g12_example4763 : (((heap * heap) * heap) * heap) * int

val g12_example4764 : (((heap * heap) * heap) * heap) * int

val g12_example4765 : (((heap * heap) * heap) * heap) * int

val g12_example4766 : (((heap * heap) * heap) * heap) * int

val g12_example4767 : (((heap * heap) * heap) * heap) * int

val g12_example4768 : (((heap * heap) * heap) * heap) * int

val g12_example4769 : (((heap * heap) * heap) * heap) * int

val g12_example4770 : (((heap * heap) * heap) * heap) * int

val g12_example4771 : (((heap * heap) * heap) * heap) * int

val g12_example4772 : (((heap * heap) * heap) * heap) * int

val g12_example4773 : (((heap * heap) * heap) * heap) * int

val g12_example4774 : (((heap * heap) * heap) * heap) * int

val g12_example4775 : (((heap * heap) * heap) * heap) * int

val g12_example4776 : (((heap * heap) * heap) * heap) * int

val g12_example4777 : (((heap * heap) * heap) * heap) * int

val g12_example4778 : (((heap * heap) * heap) * heap) * int

val g12_example4779 : (((heap * heap) * heap) * heap) * int

val g12_example4780 : (((heap * heap) * heap) * heap) * int

val g12_example4781 : (((heap * heap) * heap) * heap) * int

val g12_example4782 : (((heap * heap) * heap) * heap) * int

val g12_example4783 : (((heap * heap) * heap) * heap) * int

val g12_example4784 : (((heap * heap) * heap) * heap) * int

val g12_example4785 : (((heap * heap) * heap) * heap) * int

val g12_example4786 : (((heap * heap) * heap) * heap) * int

val g12_example4787 : (((heap * heap) * heap) * heap) * int

val g12_example4788 : (((heap * heap) * heap) * heap) * int

val g12_example4789 : (((heap * heap) * heap) * heap) * int

val g12_example4790 : (((heap * heap) * heap) * heap) * int

val g12_example4791 : (((heap * heap) * heap) * heap) * int

val g12_example4792 : (((heap * heap) * heap) * heap) * int

val g12_example4793 : (((heap * heap) * heap) * heap) * int

val g12_example4794 : (((heap * heap) * heap) * heap) * int

val g12_example4795 : (((heap * heap) * heap) * heap) * int

val g12_example4796 : (((heap * heap) * heap) * heap) * int

val g12_example4797 : (((heap * heap) * heap) * heap) * int

val g12_example4798 : (((heap * heap) * heap) * heap) * int

val g12_example4799 : (((heap * heap) * heap) * heap) * int

val g12_example4800 : (((heap * heap) * heap) * heap) * int

val g12_example4801 : (((heap * heap) * heap) * heap) * int

val g12_example4802 : (((heap * heap) * heap) * heap) * int

val g12_example4803 : (((heap * heap) * heap) * heap) * int

val g12_example4804 : (((heap * heap) * heap) * heap) * int

val g12_example4805 : (((heap * heap) * heap) * heap) * int

val g12_example4806 : (((heap * heap) * heap) * heap) * int

val g12_example4807 : (((heap * heap) * heap) * heap) * int

val g12_example4808 : (((heap * heap) * heap) * heap) * int

val g12_example4809 : (((heap * heap) * heap) * heap) * int

val g12_example4810 : (((heap * heap) * heap) * heap) * int

val g12_example4811 : (((heap * heap) * heap) * heap) * int

val g12_example4812 : (((heap * heap) * heap) * heap) * int

val g12_example4813 : (((heap * heap) * heap) * heap) * int

val g12_example4814 : (((heap * heap) * heap) * heap) * int

val g12_example4815 : (((heap * heap) * heap) * heap) * int

val g12_example4816 : (((heap * heap) * heap) * heap) * int

val g12_example4817 : (((heap * heap) * heap) * heap) * int

val g12_example4818 : (((heap * heap) * heap) * heap) * int

val g12_example4819 : (((heap * heap) * heap) * heap) * int

val g12_example4820 : (((heap * heap) * heap) * heap) * int

val g12_example4821 : (((heap * heap) * heap) * heap) * int

val g12_example4822 : (((heap * heap) * heap) * heap) * int

val g12_example4823 : (((heap * heap) * heap) * heap) * int

val g12_example4824 : (((heap * heap) * heap) * heap) * int

val g12_example4825 : (((heap * heap) * heap) * heap) * int

val g12_example4826 : (((heap * heap) * heap) * heap) * int

val g12_example4827 : (((heap * heap) * heap) * heap) * int

val g12_example4828 : (((heap * heap) * heap) * heap) * int

val g12_example4829 : (((heap * heap) * heap) * heap) * int

val g12_example4830 : (((heap * heap) * heap) * heap) * int

val g12_example4831 : (((heap * heap) * heap) * heap) * int

val g12_example4832 : (((heap * heap) * heap) * heap) * int

val g12_example4833 : (((heap * heap) * heap) * heap) * int

val g12_example4834 : (((heap * heap) * heap) * heap) * int

val g12_example4835 : (((heap * heap) * heap) * heap) * int

val g12_example4836 : (((heap * heap) * heap) * heap) * int

val g12_example4837 : (((heap * heap) * heap) * heap) * int

val g12_example4838 : (((heap * heap) * heap) * heap) * int

val g12_example4839 : (((heap * heap) * heap) * heap) * int

val g12_example4840 : (((heap * heap) * heap) * heap) * int

val g12_example4841 : (((heap * heap) * heap) * heap) * int

val g12_example4842 : (((heap * heap) * heap) * heap) * int

val g12_example4843 : (((heap * heap) * heap) * heap) * int

val g12_example4844 : (((heap * heap) * heap) * heap) * int

val g12_example4845 : (((heap * heap) * heap) * heap) * int

val g12_example4846 : (((heap * heap) * heap) * heap) * int

val g12_example4847 : (((heap * heap) * heap) * heap) * int

val g12_example4848 : (((heap * heap) * heap) * heap) * int

val g12_example4849 : (((heap * heap) * heap) * heap) * int

val g12_example4850 : (((heap * heap) * heap) * heap) * int

val g12_example4851 : (((heap * heap) * heap) * heap) * int

val g12_example4852 : (((heap * heap) * heap) * heap) * int

val g12_example4853 : (((heap * heap) * heap) * heap) * int

val g12_example4854 : (((heap * heap) * heap) * heap) * int

val g12_example4855 : (((heap * heap) * heap) * heap) * int

val g12_example4856 : (((heap * heap) * heap) * heap) * int

val g12_example4857 : (((heap * heap) * heap) * heap) * int

val g12_example4858 : (((heap * heap) * heap) * heap) * int

val g12_example4859 : (((heap * heap) * heap) * heap) * int

val g12_example4860 : (((heap * heap) * heap) * heap) * int

val g12_example4861 : (((heap * heap) * heap) * heap) * int

val g12_example4862 : (((heap * heap) * heap) * heap) * int

val g12_example4863 : (((heap * heap) * heap) * heap) * int

val g12_example4864 : (((heap * heap) * heap) * heap) * int

val g12_example4865 : (((heap * heap) * heap) * heap) * int

val g12_example4866 : (((heap * heap) * heap) * heap) * int

val g12_example4867 : (((heap * heap) * heap) * heap) * int

val g12_example4868 : (((heap * heap) * heap) * heap) * int

val g12_example4869 : (((heap * heap) * heap) * heap) * int

val g12_example4870 : (((heap * heap) * heap) * heap) * int

val g12_example4871 : (((heap * heap) * heap) * heap) * int

val g12_example4872 : (((heap * heap) * heap) * heap) * int

val g12_example4873 : (((heap * heap) * heap) * heap) * int

val g12_example4874 : (((heap * heap) * heap) * heap) * int

val g12_example4875 : (((heap * heap) * heap) * heap) * int

val g12_example4876 : (((heap * heap) * heap) * heap) * int

val g12_example4877 : (((heap * heap) * heap) * heap) * int

val g12_example4878 : (((heap * heap) * heap) * heap) * int

val g12_example4879 : (((heap * heap) * heap) * heap) * int

val g12_example4880 : (((heap * heap) * heap) * heap) * int

val g12_example4881 : (((heap * heap) * heap) * heap) * int

val g12_example4882 : (((heap * heap) * heap) * heap) * int

val g12_example4883 : (((heap * heap) * heap) * heap) * int

val g12_example4884 : (((heap * heap) * heap) * heap) * int

val g12_example4885 : (((heap * heap) * heap) * heap) * int

val g12_example4886 : (((heap * heap) * heap) * heap) * int

val g12_example4887 : (((heap * heap) * heap) * heap) * int

val g12_example4888 : (((heap * heap) * heap) * heap) * int

val g12_example4889 : (((heap * heap) * heap) * heap) * int

val g12_example4890 : (((heap * heap) * heap) * heap) * int

val g12_example4891 : (((heap * heap) * heap) * heap) * int

val g12_example4892 : (((heap * heap) * heap) * heap) * int

val g12_example4893 : (((heap * heap) * heap) * heap) * int

val g12_example4894 : (((heap * heap) * heap) * heap) * int

val g12_example4895 : (((heap * heap) * heap) * heap) * int

val g12_example4896 : (((heap * heap) * heap) * heap) * int

val g12_example4897 : (((heap * heap) * heap) * heap) * int

val g12_example4898 : (((heap * heap) * heap) * heap) * int

val g12_example4899 : (((heap * heap) * heap) * heap) * int

val g12_example4900 : (((heap * heap) * heap) * heap) * int

val g12_example4901 : (((heap * heap) * heap) * heap) * int

val g12_example4902 : (((heap * heap) * heap) * heap) * int

val g12_example4903 : (((heap * heap) * heap) * heap) * int

val g12_example4904 : (((heap * heap) * heap) * heap) * int

val g12_example4905 : (((heap * heap) * heap) * heap) * int

val g12_example4906 : (((heap * heap) * heap) * heap) * int

val g12_example4907 : (((heap * heap) * heap) * heap) * int

val g12_example4908 : (((heap * heap) * heap) * heap) * int

val g12_example4909 : (((heap * heap) * heap) * heap) * int

val g12_example4910 : (((heap * heap) * heap) * heap) * int

val g12_example4911 : (((heap * heap) * heap) * heap) * int

val g12_example4912 : (((heap * heap) * heap) * heap) * int

val g12_example4913 : (((heap * heap) * heap) * heap) * int

val g12_example4914 : (((heap * heap) * heap) * heap) * int

val g12_example4915 : (((heap * heap) * heap) * heap) * int

val g12_example4916 : (((heap * heap) * heap) * heap) * int

val g12_example4917 : (((heap * heap) * heap) * heap) * int

val g12_example4918 : (((heap * heap) * heap) * heap) * int

val g12_example4919 : (((heap * heap) * heap) * heap) * int

val g12_example4920 : (((heap * heap) * heap) * heap) * int

val g12_example4921 : (((heap * heap) * heap) * heap) * int

val g12_example4922 : (((heap * heap) * heap) * heap) * int

val g12_example4923 : (((heap * heap) * heap) * heap) * int

val g12_example4924 : (((heap * heap) * heap) * heap) * int

val g12_example4925 : (((heap * heap) * heap) * heap) * int

val g12_example4926 : (((heap * heap) * heap) * heap) * int

val g12_example4927 : (((heap * heap) * heap) * heap) * int

val g12_example4928 : (((heap * heap) * heap) * heap) * int

val g12_example4929 : (((heap * heap) * heap) * heap) * int

val g12_example4930 : (((heap * heap) * heap) * heap) * int

val g12_example4931 : (((heap * heap) * heap) * heap) * int

val g12_example4932 : (((heap * heap) * heap) * heap) * int

val g12_example4933 : (((heap * heap) * heap) * heap) * int

val g12_example4934 : (((heap * heap) * heap) * heap) * int

val g12_example4935 : (((heap * heap) * heap) * heap) * int

val g12_example4936 : (((heap * heap) * heap) * heap) * int

val g12_example4937 : (((heap * heap) * heap) * heap) * int

val g12_example4938 : (((heap * heap) * heap) * heap) * int

val g12_example4939 : (((heap * heap) * heap) * heap) * int

val g12_example4940 : (((heap * heap) * heap) * heap) * int

val g12_example4941 : (((heap * heap) * heap) * heap) * int

val g12_example4942 : (((heap * heap) * heap) * heap) * int

val g12_example4943 : (((heap * heap) * heap) * heap) * int

val g12_example4944 : (((heap * heap) * heap) * heap) * int

val g12_example4945 : (((heap * heap) * heap) * heap) * int

val g12_example4946 : (((heap * heap) * heap) * heap) * int

val g12_example4947 : (((heap * heap) * heap) * heap) * int

val g12_example4948 : (((heap * heap) * heap) * heap) * int

val g12_example4949 : (((heap * heap) * heap) * heap) * int

val g12_example4950 : (((heap * heap) * heap) * heap) * int

val g12_example4951 : (((heap * heap) * heap) * heap) * int

val g12_example4952 : (((heap * heap) * heap) * heap) * int

val g12_example4953 : (((heap * heap) * heap) * heap) * int

val g12_example4954 : (((heap * heap) * heap) * heap) * int

val g12_example4955 : (((heap * heap) * heap) * heap) * int

val g12_example4956 : (((heap * heap) * heap) * heap) * int

val g12_example4957 : (((heap * heap) * heap) * heap) * int

val g12_example4958 : (((heap * heap) * heap) * heap) * int

val g12_example4959 : (((heap * heap) * heap) * heap) * int

val g12_example4960 : (((heap * heap) * heap) * heap) * int

val g12_example4961 : (((heap * heap) * heap) * heap) * int

val g12_example4962 : (((heap * heap) * heap) * heap) * int

val g12_example4963 : (((heap * heap) * heap) * heap) * int

val g12_example4964 : (((heap * heap) * heap) * heap) * int

val g12_example4965 : (((heap * heap) * heap) * heap) * int

val g12_example4966 : (((heap * heap) * heap) * heap) * int

val g12_example4967 : (((heap * heap) * heap) * heap) * int

val g12_example4968 : (((heap * heap) * heap) * heap) * int

val g12_example4969 : (((heap * heap) * heap) * heap) * int

val g12_example4970 : (((heap * heap) * heap) * heap) * int

val g12_example4971 : (((heap * heap) * heap) * heap) * int

val g12_example4972 : (((heap * heap) * heap) * heap) * int

val g12_example4973 : (((heap * heap) * heap) * heap) * int

val g12_example4974 : (((heap * heap) * heap) * heap) * int

val g12_example4975 : (((heap * heap) * heap) * heap) * int

val g12_example4976 : (((heap * heap) * heap) * heap) * int

val g12_example4977 : (((heap * heap) * heap) * heap) * int

val g12_example4978 : (((heap * heap) * heap) * heap) * int

val g12_example4979 : (((heap * heap) * heap) * heap) * int

val g12_example4980 : (((heap * heap) * heap) * heap) * int

val g12_example4981 : (((heap * heap) * heap) * heap) * int

val g12_example4982 : (((heap * heap) * heap) * heap) * int

val g12_example4983 : (((heap * heap) * heap) * heap) * int

val g12_example4984 : (((heap * heap) * heap) * heap) * int

val g12_example4985 : (((heap * heap) * heap) * heap) * int

val g12_example4986 : (((heap * heap) * heap) * heap) * int

val g12_example4987 : (((heap * heap) * heap) * heap) * int

val g12_example4988 : (((heap * heap) * heap) * heap) * int

val g12_example4989 : (((heap * heap) * heap) * heap) * int

val g12_example4990 : (((heap * heap) * heap) * heap) * int

val g12_example4991 : (((heap * heap) * heap) * heap) * int

val g12_example4992 : (((heap * heap) * heap) * heap) * int

val g12_example4993 : (((heap * heap) * heap) * heap) * int

val g12_example4994 : (((heap * heap) * heap) * heap) * int

val g12_example4995 : (((heap * heap) * heap) * heap) * int

val g12_example4996 : (((heap * heap) * heap) * heap) * int

val g12_example4997 : (((heap * heap) * heap) * heap) * int

val g12_example4998 : (((heap * heap) * heap) * heap) * int

val g12_example4999 : (((heap * heap) * heap) * heap) * int

val g12_example5000 : (((heap * heap) * heap) * heap) * int

val g12_example5001 : (((heap * heap) * heap) * heap) * int

val g12_example5002 : (((heap * heap) * heap) * heap) * int

val g12_example5003 : (((heap * heap) * heap) * heap) * int

val g12_example5004 : (((heap * heap) * heap) * heap) * int

val g12_example5005 : (((heap * heap) * heap) * heap) * int

val g12_example5006 : (((heap * heap) * heap) * heap) * int

val g12_example5007 : (((heap * heap) * heap) * heap) * int

val g12_example5008 : (((heap * heap) * heap) * heap) * int

val g12_example5009 : (((heap * heap) * heap) * heap) * int

val g12_example5010 : (((heap * heap) * heap) * heap) * int

val g12_example5011 : (((heap * heap) * heap) * heap) * int

val g12_example5012 : (((heap * heap) * heap) * heap) * int

val g12_example5013 : (((heap * heap) * heap) * heap) * int

val g12_example5014 : (((heap * heap) * heap) * heap) * int

val g12_example5015 : (((heap * heap) * heap) * heap) * int

val g12_example5016 : (((heap * heap) * heap) * heap) * int

val g12_example5017 : (((heap * heap) * heap) * heap) * int

val g12_example5018 : (((heap * heap) * heap) * heap) * int

val g12_example5019 : (((heap * heap) * heap) * heap) * int

val g12_example5020 : (((heap * heap) * heap) * heap) * int

val g12_example5021 : (((heap * heap) * heap) * heap) * int

val g12_example5022 : (((heap * heap) * heap) * heap) * int

val g12_example5023 : (((heap * heap) * heap) * heap) * int

val g12_example5024 : (((heap * heap) * heap) * heap) * int

val g12_example5025 : (((heap * heap) * heap) * heap) * int

val g12_example5026 : (((heap * heap) * heap) * heap) * int

val g12_example5027 : (((heap * heap) * heap) * heap) * int

val g12_example5028 : (((heap * heap) * heap) * heap) * int

val g12_example5029 : (((heap * heap) * heap) * heap) * int

val g12_example5030 : (((heap * heap) * heap) * heap) * int

val g12_example5031 : (((heap * heap) * heap) * heap) * int

val g12_example5032 : (((heap * heap) * heap) * heap) * int

val g12_example5033 : (((heap * heap) * heap) * heap) * int

val g12_example5034 : (((heap * heap) * heap) * heap) * int

val g12_example5035 : (((heap * heap) * heap) * heap) * int

val g12_example5036 : (((heap * heap) * heap) * heap) * int

val g12_example5037 : (((heap * heap) * heap) * heap) * int

val g12_example5038 : (((heap * heap) * heap) * heap) * int

val g12_example5039 : (((heap * heap) * heap) * heap) * int

val g12_example5040 : (((heap * heap) * heap) * heap) * int

val g12_example5041 : (((heap * heap) * heap) * heap) * int

val g12_example5042 : (((heap * heap) * heap) * heap) * int

val g12_example5043 : (((heap * heap) * heap) * heap) * int

val g12_example5044 : (((heap * heap) * heap) * heap) * int

val g12_example5045 : (((heap * heap) * heap) * heap) * int

val g12_example5046 : (((heap * heap) * heap) * heap) * int

val g12_example5047 : (((heap * heap) * heap) * heap) * int

val g12_example5048 : (((heap * heap) * heap) * heap) * int

val g12_example5049 : (((heap * heap) * heap) * heap) * int

val g12_example5050 : (((heap * heap) * heap) * heap) * int

val g12_example5051 : (((heap * heap) * heap) * heap) * int

val g12_example5052 : (((heap * heap) * heap) * heap) * int

val g12_example5053 : (((heap * heap) * heap) * heap) * int

val g12_example5054 : (((heap * heap) * heap) * heap) * int

val g12_example5055 : (((heap * heap) * heap) * heap) * int

val g12_example5056 : (((heap * heap) * heap) * heap) * int

val g12_example5057 : (((heap * heap) * heap) * heap) * int

val g12_example5058 : (((heap * heap) * heap) * heap) * int

val g12_example5059 : (((heap * heap) * heap) * heap) * int

val g12_example5060 : (((heap * heap) * heap) * heap) * int

val g12_example5061 : (((heap * heap) * heap) * heap) * int

val g12_example5062 : (((heap * heap) * heap) * heap) * int

val g12_example5063 : (((heap * heap) * heap) * heap) * int

val g12_example5064 : (((heap * heap) * heap) * heap) * int

val g12_example5065 : (((heap * heap) * heap) * heap) * int

val g12_example5066 : (((heap * heap) * heap) * heap) * int

val g12_example5067 : (((heap * heap) * heap) * heap) * int

val g12_example5068 : (((heap * heap) * heap) * heap) * int

val g12_example5069 : (((heap * heap) * heap) * heap) * int

val g12_example5070 : (((heap * heap) * heap) * heap) * int

val g12_example5071 : (((heap * heap) * heap) * heap) * int

val g12_example5072 : (((heap * heap) * heap) * heap) * int

val g12_example5073 : (((heap * heap) * heap) * heap) * int

val g12_example5074 : (((heap * heap) * heap) * heap) * int

val g12_example5075 : (((heap * heap) * heap) * heap) * int

val g12_example5076 : (((heap * heap) * heap) * heap) * int

val g12_example5077 : (((heap * heap) * heap) * heap) * int

val g12_example5078 : (((heap * heap) * heap) * heap) * int

val g12_example5079 : (((heap * heap) * heap) * heap) * int

val g12_example5080 : (((heap * heap) * heap) * heap) * int

val g12_example5081 : (((heap * heap) * heap) * heap) * int

val g12_example5082 : (((heap * heap) * heap) * heap) * int

val g12_example5083 : (((heap * heap) * heap) * heap) * int

val g12_example5084 : (((heap * heap) * heap) * heap) * int

val g12_example5085 : (((heap * heap) * heap) * heap) * int

val g12_example5086 : (((heap * heap) * heap) * heap) * int

val g12_example5087 : (((heap * heap) * heap) * heap) * int

val g12_example5088 : (((heap * heap) * heap) * heap) * int

val g12_example5089 : (((heap * heap) * heap) * heap) * int

val g12_example5090 : (((heap * heap) * heap) * heap) * int

val g12_example5091 : (((heap * heap) * heap) * heap) * int

val g12_example5092 : (((heap * heap) * heap) * heap) * int

val g12_example5093 : (((heap * heap) * heap) * heap) * int

val g12_example5094 : (((heap * heap) * heap) * heap) * int

val g12_example5095 : (((heap * heap) * heap) * heap) * int

val g12_example5096 : (((heap * heap) * heap) * heap) * int

val g12_example5097 : (((heap * heap) * heap) * heap) * int

val g12_example5098 : (((heap * heap) * heap) * heap) * int

val g12_example5099 : (((heap * heap) * heap) * heap) * int

val g12_example5100 : (((heap * heap) * heap) * heap) * int

val g12_example5101 : (((heap * heap) * heap) * heap) * int

val g12_example5102 : (((heap * heap) * heap) * heap) * int

val g12_example5103 : (((heap * heap) * heap) * heap) * int

val g12_example5104 : (((heap * heap) * heap) * heap) * int

val g12_example5105 : (((heap * heap) * heap) * heap) * int

val g12_example5106 : (((heap * heap) * heap) * heap) * int

val g12_example5107 : (((heap * heap) * heap) * heap) * int

val g12_example5108 : (((heap * heap) * heap) * heap) * int

val g12_example5109 : (((heap * heap) * heap) * heap) * int

val g12_example5110 : (((heap * heap) * heap) * heap) * int

val g12_example5111 : (((heap * heap) * heap) * heap) * int

val g12_example5112 : (((heap * heap) * heap) * heap) * int

val g12_example5113 : (((heap * heap) * heap) * heap) * int

val g12_example5114 : (((heap * heap) * heap) * heap) * int

val g12_example5115 : (((heap * heap) * heap) * heap) * int

val g12_example5116 : (((heap * heap) * heap) * heap) * int

val g12_example5117 : (((heap * heap) * heap) * heap) * int

val g12_example5118 : (((heap * heap) * heap) * heap) * int

val g12_example5119 : (((heap * heap) * heap) * heap) * int

val g12_example5120 : (((heap * heap) * heap) * heap) * int

val g12_example5121 : (((heap * heap) * heap) * heap) * int

val g12_example5122 : (((heap * heap) * heap) * heap) * int

val g12_example5123 : (((heap * heap) * heap) * heap) * int

val g12_example5124 : (((heap * heap) * heap) * heap) * int

val g12_example5125 : (((heap * heap) * heap) * heap) * int

val g12_example5126 : (((heap * heap) * heap) * heap) * int

val g12_example5127 : (((heap * heap) * heap) * heap) * int

val g12_example5128 : (((heap * heap) * heap) * heap) * int

val g12_example5129 : (((heap * heap) * heap) * heap) * int

val g12_example5130 : (((heap * heap) * heap) * heap) * int

val g12_example5131 : (((heap * heap) * heap) * heap) * int

val g12_example5132 : (((heap * heap) * heap) * heap) * int

val g12_example5133 : (((heap * heap) * heap) * heap) * int

val g12_example5134 : (((heap * heap) * heap) * heap) * int

val g12_example5135 : (((heap * heap) * heap) * heap) * int

val g12_example5136 : (((heap * heap) * heap) * heap) * int

val g12_example5137 : (((heap * heap) * heap) * heap) * int

val g12_example5138 : (((heap * heap) * heap) * heap) * int

val g12_example5139 : (((heap * heap) * heap) * heap) * int

val g12_example5140 : (((heap * heap) * heap) * heap) * int

val g12_example5141 : (((heap * heap) * heap) * heap) * int

val g12_example5142 : (((heap * heap) * heap) * heap) * int

val g12_example5143 : (((heap * heap) * heap) * heap) * int

val g12_example5144 : (((heap * heap) * heap) * heap) * int

val g12_example5145 : (((heap * heap) * heap) * heap) * int

val g12_example5146 : (((heap * heap) * heap) * heap) * int

val g12_example5147 : (((heap * heap) * heap) * heap) * int

val g12_example5148 : (((heap * heap) * heap) * heap) * int

val g12_example5149 : (((heap * heap) * heap) * heap) * int

val g12_example5150 : (((heap * heap) * heap) * heap) * int

val g12_example5151 : (((heap * heap) * heap) * heap) * int

val g12_example5152 : (((heap * heap) * heap) * heap) * int

val g12_example5153 : (((heap * heap) * heap) * heap) * int

val g12_example5154 : (((heap * heap) * heap) * heap) * int

val g12_example5155 : (((heap * heap) * heap) * heap) * int

val g12_example5156 : (((heap * heap) * heap) * heap) * int

val g12_example5157 : (((heap * heap) * heap) * heap) * int

val g12_example5158 : (((heap * heap) * heap) * heap) * int

val g12_example5159 : (((heap * heap) * heap) * heap) * int

val g12_example5160 : (((heap * heap) * heap) * heap) * int

val g12_example5161 : (((heap * heap) * heap) * heap) * int

val g12_example5162 : (((heap * heap) * heap) * heap) * int

val g12_example5163 : (((heap * heap) * heap) * heap) * int

val g12_example5164 : (((heap * heap) * heap) * heap) * int

val g12_example5165 : (((heap * heap) * heap) * heap) * int

val g12_example5166 : (((heap * heap) * heap) * heap) * int

val g12_example5167 : (((heap * heap) * heap) * heap) * int

val g12_example5168 : (((heap * heap) * heap) * heap) * int

val g12_example5169 : (((heap * heap) * heap) * heap) * int

val g12_example5170 : (((heap * heap) * heap) * heap) * int

val g12_example5171 : (((heap * heap) * heap) * heap) * int

val g12_example5172 : (((heap * heap) * heap) * heap) * int

val g12_example5173 : (((heap * heap) * heap) * heap) * int

val g12_example5174 : (((heap * heap) * heap) * heap) * int

val g12_example5175 : (((heap * heap) * heap) * heap) * int

val g12_example5176 : (((heap * heap) * heap) * heap) * int

val g12_example5177 : (((heap * heap) * heap) * heap) * int

val g12_example5178 : (((heap * heap) * heap) * heap) * int

val g12_example5179 : (((heap * heap) * heap) * heap) * int

val g12_example5180 : (((heap * heap) * heap) * heap) * int

val g12_example5181 : (((heap * heap) * heap) * heap) * int

val g12_example5182 : (((heap * heap) * heap) * heap) * int

val g12_example5183 : (((heap * heap) * heap) * heap) * int

val g12_example5184 : (((heap * heap) * heap) * heap) * int

val g12_example5185 : (((heap * heap) * heap) * heap) * int

val g12_example5186 : (((heap * heap) * heap) * heap) * int

val g12_example5187 : (((heap * heap) * heap) * heap) * int

val g12_example5188 : (((heap * heap) * heap) * heap) * int

val g12_example5189 : (((heap * heap) * heap) * heap) * int

val g12_example5190 : (((heap * heap) * heap) * heap) * int

val g12_example5191 : (((heap * heap) * heap) * heap) * int

val g12_example5192 : (((heap * heap) * heap) * heap) * int

val g12_example5193 : (((heap * heap) * heap) * heap) * int

val g12_example5194 : (((heap * heap) * heap) * heap) * int

val g12_example5195 : (((heap * heap) * heap) * heap) * int

val g12_example5196 : (((heap * heap) * heap) * heap) * int

val g12_example5197 : (((heap * heap) * heap) * heap) * int

val g12_example5198 : (((heap * heap) * heap) * heap) * int

val g12_example5199 : (((heap * heap) * heap) * heap) * int

val g12_example5200 : (((heap * heap) * heap) * heap) * int

val g12_example5201 : (((heap * heap) * heap) * heap) * int

val g12_example5202 : (((heap * heap) * heap) * heap) * int

val g12_example5203 : (((heap * heap) * heap) * heap) * int

val g12_example5204 : (((heap * heap) * heap) * heap) * int

val g12_example5205 : (((heap * heap) * heap) * heap) * int

val g12_example5206 : (((heap * heap) * heap) * heap) * int

val g12_example5207 : (((heap * heap) * heap) * heap) * int

val g12_example5208 : (((heap * heap) * heap) * heap) * int

val g12_example5209 : (((heap * heap) * heap) * heap) * int

val g12_example5210 : (((heap * heap) * heap) * heap) * int

val g12_example5211 : (((heap * heap) * heap) * heap) * int

val g12_example5212 : (((heap * heap) * heap) * heap) * int

val g12_example5213 : (((heap * heap) * heap) * heap) * int

val g12_example5214 : (((heap * heap) * heap) * heap) * int

val g12_example5215 : (((heap * heap) * heap) * heap) * int

val g12_example5216 : (((heap * heap) * heap) * heap) * int

val g12_example5217 : (((heap * heap) * heap) * heap) * int

val g12_example5218 : (((heap * heap) * heap) * heap) * int

val g12_example5219 : (((heap * heap) * heap) * heap) * int

val g12_example5220 : (((heap * heap) * heap) * heap) * int

val g12_example5221 : (((heap * heap) * heap) * heap) * int

val g12_example5222 : (((heap * heap) * heap) * heap) * int

val g12_example5223 : (((heap * heap) * heap) * heap) * int

val g12_example5224 : (((heap * heap) * heap) * heap) * int

val g12_example5225 : (((heap * heap) * heap) * heap) * int

val g12_example5226 : (((heap * heap) * heap) * heap) * int

val g12_example5227 : (((heap * heap) * heap) * heap) * int

val g12_example5228 : (((heap * heap) * heap) * heap) * int

val g12_example5229 : (((heap * heap) * heap) * heap) * int

val g12_example5230 : (((heap * heap) * heap) * heap) * int

val g12_example5231 : (((heap * heap) * heap) * heap) * int

val g12_example5232 : (((heap * heap) * heap) * heap) * int

val g12_example5233 : (((heap * heap) * heap) * heap) * int

val g12_example5234 : (((heap * heap) * heap) * heap) * int

val g12_example5235 : (((heap * heap) * heap) * heap) * int

val g12_example5236 : (((heap * heap) * heap) * heap) * int

val g12_example5237 : (((heap * heap) * heap) * heap) * int

val g12_example5238 : (((heap * heap) * heap) * heap) * int

val g12_example5239 : (((heap * heap) * heap) * heap) * int

val g12_example5240 : (((heap * heap) * heap) * heap) * int

val g12_example5241 : (((heap * heap) * heap) * heap) * int

val g12_example5242 : (((heap * heap) * heap) * heap) * int

val g12_example5243 : (((heap * heap) * heap) * heap) * int

val g12_example5244 : (((heap * heap) * heap) * heap) * int

val g12_example5245 : (((heap * heap) * heap) * heap) * int

val g12_example5246 : (((heap * heap) * heap) * heap) * int

val g12_example5247 : (((heap * heap) * heap) * heap) * int

val g12_example5248 : (((heap * heap) * heap) * heap) * int

val g12_example5249 : (((heap * heap) * heap) * heap) * int

val g12_example5250 : (((heap * heap) * heap) * heap) * int

val g12_example5251 : (((heap * heap) * heap) * heap) * int

val g12_example5252 : (((heap * heap) * heap) * heap) * int

val g12_example5253 : (((heap * heap) * heap) * heap) * int

val g12_example5254 : (((heap * heap) * heap) * heap) * int

val g12_example5255 : (((heap * heap) * heap) * heap) * int

val g12_example5256 : (((heap * heap) * heap) * heap) * int

val g12_example5257 : (((heap * heap) * heap) * heap) * int

val g12_example5258 : (((heap * heap) * heap) * heap) * int

val g12_example5259 : (((heap * heap) * heap) * heap) * int

val g12_example5260 : (((heap * heap) * heap) * heap) * int

val g12_example5261 : (((heap * heap) * heap) * heap) * int

val g12_example5262 : (((heap * heap) * heap) * heap) * int

val g12_example5263 : (((heap * heap) * heap) * heap) * int

val g12_example5264 : (((heap * heap) * heap) * heap) * int

val g12_example5265 : (((heap * heap) * heap) * heap) * int

val g12_example5266 : (((heap * heap) * heap) * heap) * int

val g12_example5267 : (((heap * heap) * heap) * heap) * int

val g12_example5268 : (((heap * heap) * heap) * heap) * int

val g12_example5269 : (((heap * heap) * heap) * heap) * int

val g12_example5270 : (((heap * heap) * heap) * heap) * int

val g12_example5271 : (((heap * heap) * heap) * heap) * int

val g12_example5272 : (((heap * heap) * heap) * heap) * int

val g12_example5273 : (((heap * heap) * heap) * heap) * int

val g12_example5274 : (((heap * heap) * heap) * heap) * int

val g12_example5275 : (((heap * heap) * heap) * heap) * int

val g12_example5276 : (((heap * heap) * heap) * heap) * int

val g12_example5277 : (((heap * heap) * heap) * heap) * int

val g12_example5278 : (((heap * heap) * heap) * heap) * int

val g12_example5279 : (((heap * heap) * heap) * heap) * int

val g12_example5280 : (((heap * heap) * heap) * heap) * int

val g12_example5281 : (((heap * heap) * heap) * heap) * int

val g12_example5282 : (((heap * heap) * heap) * heap) * int

val g12_example5283 : (((heap * heap) * heap) * heap) * int

val g12_example5284 : (((heap * heap) * heap) * heap) * int

val g12_example5285 : (((heap * heap) * heap) * heap) * int

val g12_example5286 : (((heap * heap) * heap) * heap) * int

val g12_example5287 : (((heap * heap) * heap) * heap) * int

val g12_example5288 : (((heap * heap) * heap) * heap) * int

val g12_example5289 : (((heap * heap) * heap) * heap) * int

val g12_example5290 : (((heap * heap) * heap) * heap) * int

val g12_example5291 : (((heap * heap) * heap) * heap) * int

val g12_example5292 : (((heap * heap) * heap) * heap) * int

val g12_example5293 : (((heap * heap) * heap) * heap) * int

val g12_example5294 : (((heap * heap) * heap) * heap) * int

val g12_example5295 : (((heap * heap) * heap) * heap) * int

val g12_example5296 : (((heap * heap) * heap) * heap) * int

val g12_example5297 : (((heap * heap) * heap) * heap) * int

val g12_example5298 : (((heap * heap) * heap) * heap) * int

val g12_example5299 : (((heap * heap) * heap) * heap) * int

val g12_example5300 : (((heap * heap) * heap) * heap) * int

val g12_example5301 : (((heap * heap) * heap) * heap) * int

val g12_example5302 : (((heap * heap) * heap) * heap) * int

val g12_example5303 : (((heap * heap) * heap) * heap) * int

val g12_example5304 : (((heap * heap) * heap) * heap) * int

val g12_example5305 : (((heap * heap) * heap) * heap) * int

val g12_example5306 : (((heap * heap) * heap) * heap) * int

val g12_example5307 : (((heap * heap) * heap) * heap) * int

val g12_example5308 : (((heap * heap) * heap) * heap) * int

val g12_example5309 : (((heap * heap) * heap) * heap) * int

val g12_example5310 : (((heap * heap) * heap) * heap) * int

val g12_example5311 : (((heap * heap) * heap) * heap) * int

val g12_example5312 : (((heap * heap) * heap) * heap) * int

val g12_example5313 : (((heap * heap) * heap) * heap) * int

val g12_example5314 : (((heap * heap) * heap) * heap) * int

val g12_example5315 : (((heap * heap) * heap) * heap) * int

val g12_example5316 : (((heap * heap) * heap) * heap) * int

val g12_example5317 : (((heap * heap) * heap) * heap) * int

val g12_example5318 : (((heap * heap) * heap) * heap) * int

val g12_example5319 : (((heap * heap) * heap) * heap) * int

val g12_example5320 : (((heap * heap) * heap) * heap) * int

val g12_example5321 : (((heap * heap) * heap) * heap) * int

val g12_example5322 : (((heap * heap) * heap) * heap) * int

val g12_example5323 : (((heap * heap) * heap) * heap) * int

val g12_example5324 : (((heap * heap) * heap) * heap) * int

val g12_example5325 : (((heap * heap) * heap) * heap) * int

val g12_example5326 : (((heap * heap) * heap) * heap) * int

val g12_example5327 : (((heap * heap) * heap) * heap) * int

val g12_example5328 : (((heap * heap) * heap) * heap) * int

val g12_example5329 : (((heap * heap) * heap) * heap) * int

val g12_example5330 : (((heap * heap) * heap) * heap) * int

val g12_example5331 : (((heap * heap) * heap) * heap) * int

val g12_example5332 : (((heap * heap) * heap) * heap) * int

val g12_example5333 : (((heap * heap) * heap) * heap) * int

val g12_example5334 : (((heap * heap) * heap) * heap) * int

val g12_example5335 : (((heap * heap) * heap) * heap) * int

val g12_example5336 : (((heap * heap) * heap) * heap) * int

val g12_example5337 : (((heap * heap) * heap) * heap) * int

val g12_example5338 : (((heap * heap) * heap) * heap) * int

val g12_example5339 : (((heap * heap) * heap) * heap) * int

val g12_example5340 : (((heap * heap) * heap) * heap) * int

val g12_example5341 : (((heap * heap) * heap) * heap) * int

val g12_example5342 : (((heap * heap) * heap) * heap) * int

val g12_example5343 : (((heap * heap) * heap) * heap) * int

val g12_example5344 : (((heap * heap) * heap) * heap) * int

val g12_example5345 : (((heap * heap) * heap) * heap) * int

val g12_example5346 : (((heap * heap) * heap) * heap) * int

val g12_example5347 : (((heap * heap) * heap) * heap) * int

val g12_example5348 : (((heap * heap) * heap) * heap) * int

val g12_example5349 : (((heap * heap) * heap) * heap) * int

val g12_example5350 : (((heap * heap) * heap) * heap) * int

val g12_example5351 : (((heap * heap) * heap) * heap) * int

val g12_example5352 : (((heap * heap) * heap) * heap) * int

val g12_example5353 : (((heap * heap) * heap) * heap) * int

val g12_example5354 : (((heap * heap) * heap) * heap) * int

val g12_example5355 : (((heap * heap) * heap) * heap) * int

val g12_example5356 : (((heap * heap) * heap) * heap) * int

val g12_example5357 : (((heap * heap) * heap) * heap) * int

val g12_example5358 : (((heap * heap) * heap) * heap) * int

val g12_example5359 : (((heap * heap) * heap) * heap) * int

val g12_example5360 : (((heap * heap) * heap) * heap) * int

val g12_example5361 : (((heap * heap) * heap) * heap) * int

val g12_example5362 : (((heap * heap) * heap) * heap) * int

val g12_example5363 : (((heap * heap) * heap) * heap) * int

val g12_example5364 : (((heap * heap) * heap) * heap) * int

val g12_example5365 : (((heap * heap) * heap) * heap) * int

val g12_example5366 : (((heap * heap) * heap) * heap) * int

val g12_example5367 : (((heap * heap) * heap) * heap) * int

val g12_example5368 : (((heap * heap) * heap) * heap) * int

val g12_example5369 : (((heap * heap) * heap) * heap) * int

val g12_example5370 : (((heap * heap) * heap) * heap) * int

val g12_example5371 : (((heap * heap) * heap) * heap) * int

val g12_example5372 : (((heap * heap) * heap) * heap) * int

val g12_example5373 : (((heap * heap) * heap) * heap) * int

val g12_example5374 : (((heap * heap) * heap) * heap) * int

val g12_example5375 : (((heap * heap) * heap) * heap) * int

val g12_example5376 : (((heap * heap) * heap) * heap) * int

val g12_example5377 : (((heap * heap) * heap) * heap) * int

val g12_example5378 : (((heap * heap) * heap) * heap) * int

val g12_example5379 : (((heap * heap) * heap) * heap) * int

val g12_example5380 : (((heap * heap) * heap) * heap) * int

val g12_example5381 : (((heap * heap) * heap) * heap) * int

val g12_example5382 : (((heap * heap) * heap) * heap) * int

val g12_example5383 : (((heap * heap) * heap) * heap) * int

val g12_example5384 : (((heap * heap) * heap) * heap) * int

val g12_example5385 : (((heap * heap) * heap) * heap) * int

val g12_example5386 : (((heap * heap) * heap) * heap) * int

val g12_example5387 : (((heap * heap) * heap) * heap) * int

val g12_example5388 : (((heap * heap) * heap) * heap) * int

val g12_example5389 : (((heap * heap) * heap) * heap) * int

val g12_example5390 : (((heap * heap) * heap) * heap) * int

val g12_example5391 : (((heap * heap) * heap) * heap) * int

val g12_example5392 : (((heap * heap) * heap) * heap) * int

val g12_example5393 : (((heap * heap) * heap) * heap) * int

val g12_example5394 : (((heap * heap) * heap) * heap) * int

val g12_example5395 : (((heap * heap) * heap) * heap) * int

val g12_example5396 : (((heap * heap) * heap) * heap) * int

val g12_example5397 : (((heap * heap) * heap) * heap) * int

val g12_example5398 : (((heap * heap) * heap) * heap) * int

val g12_example5399 : (((heap * heap) * heap) * heap) * int

val g12_example5400 : (((heap * heap) * heap) * heap) * int

val g12_example5401 : (((heap * heap) * heap) * heap) * int

val g12_example5402 : (((heap * heap) * heap) * heap) * int

val g12_example5403 : (((heap * heap) * heap) * heap) * int

val g12_example5404 : (((heap * heap) * heap) * heap) * int

val g12_example5405 : (((heap * heap) * heap) * heap) * int

val g12_example5406 : (((heap * heap) * heap) * heap) * int

val g12_example5407 : (((heap * heap) * heap) * heap) * int

val g12_example5408 : (((heap * heap) * heap) * heap) * int

val g12_example5409 : (((heap * heap) * heap) * heap) * int

val g12_example5410 : (((heap * heap) * heap) * heap) * int

val g12_example5411 : (((heap * heap) * heap) * heap) * int

val g12_example5412 : (((heap * heap) * heap) * heap) * int

val g12_example5413 : (((heap * heap) * heap) * heap) * int

val g12_example5414 : (((heap * heap) * heap) * heap) * int

val g12_example5415 : (((heap * heap) * heap) * heap) * int

val g12_example5416 : (((heap * heap) * heap) * heap) * int

val g12_example5417 : (((heap * heap) * heap) * heap) * int

val g12_example5418 : (((heap * heap) * heap) * heap) * int

val g12_example5419 : (((heap * heap) * heap) * heap) * int

val g12_example5420 : (((heap * heap) * heap) * heap) * int

val g12_example5421 : (((heap * heap) * heap) * heap) * int

val g12_example5422 : (((heap * heap) * heap) * heap) * int

val g12_example5423 : (((heap * heap) * heap) * heap) * int

val g12_example5424 : (((heap * heap) * heap) * heap) * int

val g12_example5425 : (((heap * heap) * heap) * heap) * int

val g12_example5426 : (((heap * heap) * heap) * heap) * int

val g12_example5427 : (((heap * heap) * heap) * heap) * int

val g12_example5428 : (((heap * heap) * heap) * heap) * int

val g12_example5429 : (((heap * heap) * heap) * heap) * int

val g12_example5430 : (((heap * heap) * heap) * heap) * int

val g12_example5431 : (((heap * heap) * heap) * heap) * int

val g12_example5432 : (((heap * heap) * heap) * heap) * int

val g12_example5433 : (((heap * heap) * heap) * heap) * int

val g12_example5434 : (((heap * heap) * heap) * heap) * int

val g12_example5435 : (((heap * heap) * heap) * heap) * int

val g12_example5436 : (((heap * heap) * heap) * heap) * int

val g12_example5437 : (((heap * heap) * heap) * heap) * int

val g12_example5438 : (((heap * heap) * heap) * heap) * int

val g12_example5439 : (((heap * heap) * heap) * heap) * int

val g12_example5440 : (((heap * heap) * heap) * heap) * int

val g12_example5441 : (((heap * heap) * heap) * heap) * int

val g12_example5442 : (((heap * heap) * heap) * heap) * int

val g12_example5443 : (((heap * heap) * heap) * heap) * int

val g12_example5444 : (((heap * heap) * heap) * heap) * int

val g12_example5445 : (((heap * heap) * heap) * heap) * int

val g12_example5446 : (((heap * heap) * heap) * heap) * int

val g12_example5447 : (((heap * heap) * heap) * heap) * int

val g12_example5448 : (((heap * heap) * heap) * heap) * int

val g12_example5449 : (((heap * heap) * heap) * heap) * int

val g12_example5450 : (((heap * heap) * heap) * heap) * int

val g12_example5451 : (((heap * heap) * heap) * heap) * int

val g12_example5452 : (((heap * heap) * heap) * heap) * int

val g12_example5453 : (((heap * heap) * heap) * heap) * int

val g12_example5454 : (((heap * heap) * heap) * heap) * int

val g12_example5455 : (((heap * heap) * heap) * heap) * int

val g12_example5456 : (((heap * heap) * heap) * heap) * int

val g12_example5457 : (((heap * heap) * heap) * heap) * int

val g12_example5458 : (((heap * heap) * heap) * heap) * int

val g12_example5459 : (((heap * heap) * heap) * heap) * int

val g12_example5460 : (((heap * heap) * heap) * heap) * int

val g12_example5461 : (((heap * heap) * heap) * heap) * int

val g12_example5462 : (((heap * heap) * heap) * heap) * int

val g12_example5463 : (((heap * heap) * heap) * heap) * int

val g12_example5464 : (((heap * heap) * heap) * heap) * int

val g12_example5465 : (((heap * heap) * heap) * heap) * int

val g12_example5466 : (((heap * heap) * heap) * heap) * int

val g12_example5467 : (((heap * heap) * heap) * heap) * int

val g12_example5468 : (((heap * heap) * heap) * heap) * int

val g12_example5469 : (((heap * heap) * heap) * heap) * int

val g12_example5470 : (((heap * heap) * heap) * heap) * int

val g12_example5471 : (((heap * heap) * heap) * heap) * int

val g12_example5472 : (((heap * heap) * heap) * heap) * int

val g12_example5473 : (((heap * heap) * heap) * heap) * int

val g12_example5474 : (((heap * heap) * heap) * heap) * int

val g12_example5475 : (((heap * heap) * heap) * heap) * int

val g12_example5476 : (((heap * heap) * heap) * heap) * int

val g12_example5477 : (((heap * heap) * heap) * heap) * int

val g12_example5478 : (((heap * heap) * heap) * heap) * int

val g12_example5479 : (((heap * heap) * heap) * heap) * int

val g12_example5480 : (((heap * heap) * heap) * heap) * int

val g12_example5481 : (((heap * heap) * heap) * heap) * int

val g12_example5482 : (((heap * heap) * heap) * heap) * int

val g12_example5483 : (((heap * heap) * heap) * heap) * int

val g12_example5484 : (((heap * heap) * heap) * heap) * int

val g12_example5485 : (((heap * heap) * heap) * heap) * int

val g12_example5486 : (((heap * heap) * heap) * heap) * int

val g12_example5487 : (((heap * heap) * heap) * heap) * int

val g12_example5488 : (((heap * heap) * heap) * heap) * int

val g12_example5489 : (((heap * heap) * heap) * heap) * int

val g12_example5490 : (((heap * heap) * heap) * heap) * int

val g12_example5491 : (((heap * heap) * heap) * heap) * int

val g12_example5492 : (((heap * heap) * heap) * heap) * int

val g12_example5493 : (((heap * heap) * heap) * heap) * int

val g12_example5494 : (((heap * heap) * heap) * heap) * int

val g12_example5495 : (((heap * heap) * heap) * heap) * int

val g12_example5496 : (((heap * heap) * heap) * heap) * int

val g12_example5497 : (((heap * heap) * heap) * heap) * int

val g12_example5498 : (((heap * heap) * heap) * heap) * int

val g12_example5499 : (((heap * heap) * heap) * heap) * int

val g12_example5500 : (((heap * heap) * heap) * heap) * int

val g12_example5501 : (((heap * heap) * heap) * heap) * int

val g12_example5502 : (((heap * heap) * heap) * heap) * int

val g12_example5503 : (((heap * heap) * heap) * heap) * int

val g12_example5504 : (((heap * heap) * heap) * heap) * int

val g12_example5505 : (((heap * heap) * heap) * heap) * int

val g12_example5506 : (((heap * heap) * heap) * heap) * int

val g12_example5507 : (((heap * heap) * heap) * heap) * int

val g12_example5508 : (((heap * heap) * heap) * heap) * int

val g12_example5509 : (((heap * heap) * heap) * heap) * int

val g12_example5510 : (((heap * heap) * heap) * heap) * int

val g12_example5511 : (((heap * heap) * heap) * heap) * int

val g12_example5512 : (((heap * heap) * heap) * heap) * int

val g12_example5513 : (((heap * heap) * heap) * heap) * int

val g12_example5514 : (((heap * heap) * heap) * heap) * int

val g12_example5515 : (((heap * heap) * heap) * heap) * int

val g12_example5516 : (((heap * heap) * heap) * heap) * int

val g12_example5517 : (((heap * heap) * heap) * heap) * int

val g12_example5518 : (((heap * heap) * heap) * heap) * int

val g12_example5519 : (((heap * heap) * heap) * heap) * int

val g12_example5520 : (((heap * heap) * heap) * heap) * int

val g12_example5521 : (((heap * heap) * heap) * heap) * int

val g12_example5522 : (((heap * heap) * heap) * heap) * int

val g12_example5523 : (((heap * heap) * heap) * heap) * int

val g12_example5524 : (((heap * heap) * heap) * heap) * int

val g12_example5525 : (((heap * heap) * heap) * heap) * int

val g12_example5526 : (((heap * heap) * heap) * heap) * int

val g12_example5527 : (((heap * heap) * heap) * heap) * int

val g12_example5528 : (((heap * heap) * heap) * heap) * int

val g12_example5529 : (((heap * heap) * heap) * heap) * int

val g12_example5530 : (((heap * heap) * heap) * heap) * int

val g12_example5531 : (((heap * heap) * heap) * heap) * int

val g12_example5532 : (((heap * heap) * heap) * heap) * int

val g12_example5533 : (((heap * heap) * heap) * heap) * int

val g12_example5534 : (((heap * heap) * heap) * heap) * int

val g12_example5535 : (((heap * heap) * heap) * heap) * int

val g12_example5536 : (((heap * heap) * heap) * heap) * int

val g12_example5537 : (((heap * heap) * heap) * heap) * int

val g12_example5538 : (((heap * heap) * heap) * heap) * int

val g12_example5539 : (((heap * heap) * heap) * heap) * int

val g12_example5540 : (((heap * heap) * heap) * heap) * int

val g12_example5541 : (((heap * heap) * heap) * heap) * int

val g12_example5542 : (((heap * heap) * heap) * heap) * int

val g12_example5543 : (((heap * heap) * heap) * heap) * int

val g12_example5544 : (((heap * heap) * heap) * heap) * int

val g12_example5545 : (((heap * heap) * heap) * heap) * int

val g12_example5546 : (((heap * heap) * heap) * heap) * int

val g12_example5547 : (((heap * heap) * heap) * heap) * int

val g12_example5548 : (((heap * heap) * heap) * heap) * int

val g12_example5549 : (((heap * heap) * heap) * heap) * int

val g12_example5550 : (((heap * heap) * heap) * heap) * int

val g12_example5551 : (((heap * heap) * heap) * heap) * int

val g12_example5552 : (((heap * heap) * heap) * heap) * int

val g12_example5553 : (((heap * heap) * heap) * heap) * int

val g12_example5554 : (((heap * heap) * heap) * heap) * int

val g12_example5555 : (((heap * heap) * heap) * heap) * int

val g12_example5556 : (((heap * heap) * heap) * heap) * int

val g12_example5557 : (((heap * heap) * heap) * heap) * int

val g12_example5558 : (((heap * heap) * heap) * heap) * int

val g12_example5559 : (((heap * heap) * heap) * heap) * int

val g12_example5560 : (((heap * heap) * heap) * heap) * int

val g12_example5561 : (((heap * heap) * heap) * heap) * int

val g12_example5562 : (((heap * heap) * heap) * heap) * int

val g12_example5563 : (((heap * heap) * heap) * heap) * int

val g12_example5564 : (((heap * heap) * heap) * heap) * int

val g12_example5565 : (((heap * heap) * heap) * heap) * int

val g12_example5566 : (((heap * heap) * heap) * heap) * int

val g12_example5567 : (((heap * heap) * heap) * heap) * int

val g12_example5568 : (((heap * heap) * heap) * heap) * int

val g12_example5569 : (((heap * heap) * heap) * heap) * int

val g12_example5570 : (((heap * heap) * heap) * heap) * int

val g12_example5571 : (((heap * heap) * heap) * heap) * int

val g12_example5572 : (((heap * heap) * heap) * heap) * int

val g12_example5573 : (((heap * heap) * heap) * heap) * int

val g12_example5574 : (((heap * heap) * heap) * heap) * int

val g12_example5575 : (((heap * heap) * heap) * heap) * int

val g12_example5576 : (((heap * heap) * heap) * heap) * int

val g12_example5577 : (((heap * heap) * heap) * heap) * int

val g12_example5578 : (((heap * heap) * heap) * heap) * int

val g12_example5579 : (((heap * heap) * heap) * heap) * int

val g12_example5580 : (((heap * heap) * heap) * heap) * int

val g12_example5581 : (((heap * heap) * heap) * heap) * int

val g12_example5582 : (((heap * heap) * heap) * heap) * int

val g12_example5583 : (((heap * heap) * heap) * heap) * int

val g12_example5584 : (((heap * heap) * heap) * heap) * int

val g12_example5585 : (((heap * heap) * heap) * heap) * int

val g12_example5586 : (((heap * heap) * heap) * heap) * int

val g12_example5587 : (((heap * heap) * heap) * heap) * int

val g12_example5588 : (((heap * heap) * heap) * heap) * int

val g12_example5589 : (((heap * heap) * heap) * heap) * int

val g12_example5590 : (((heap * heap) * heap) * heap) * int

val g12_example5591 : (((heap * heap) * heap) * heap) * int

val g12_example5592 : (((heap * heap) * heap) * heap) * int

val g12_example5593 : (((heap * heap) * heap) * heap) * int

val g12_example5594 : (((heap * heap) * heap) * heap) * int

val g12_example5595 : (((heap * heap) * heap) * heap) * int

val g12_example5596 : (((heap * heap) * heap) * heap) * int

val g12_example5597 : (((heap * heap) * heap) * heap) * int

val g12_example5598 : (((heap * heap) * heap) * heap) * int

val g12_example5599 : (((heap * heap) * heap) * heap) * int

val g12_example5600 : (((heap * heap) * heap) * heap) * int

val g12_example5601 : (((heap * heap) * heap) * heap) * int

val g12_example5602 : (((heap * heap) * heap) * heap) * int

val g12_example5603 : (((heap * heap) * heap) * heap) * int

val g12_example5604 : (((heap * heap) * heap) * heap) * int

val g12_example5605 : (((heap * heap) * heap) * heap) * int

val g12_example5606 : (((heap * heap) * heap) * heap) * int

val g12_example5607 : (((heap * heap) * heap) * heap) * int

val g12_example5608 : (((heap * heap) * heap) * heap) * int

val g12_example5609 : (((heap * heap) * heap) * heap) * int

val g12_example5610 : (((heap * heap) * heap) * heap) * int

val g12_example5611 : (((heap * heap) * heap) * heap) * int

val g12_example5612 : (((heap * heap) * heap) * heap) * int

val g12_example5613 : (((heap * heap) * heap) * heap) * int

val g12_example5614 : (((heap * heap) * heap) * heap) * int

val g12_example5615 : (((heap * heap) * heap) * heap) * int

val g12_example5616 : (((heap * heap) * heap) * heap) * int

val g12_example5617 : (((heap * heap) * heap) * heap) * int

val g12_example5618 : (((heap * heap) * heap) * heap) * int

val g12_example5619 : (((heap * heap) * heap) * heap) * int

val g12_example5620 : (((heap * heap) * heap) * heap) * int

val g12_example5621 : (((heap * heap) * heap) * heap) * int

val g12_example5622 : (((heap * heap) * heap) * heap) * int

val g12_example5623 : (((heap * heap) * heap) * heap) * int

val g12_example5624 : (((heap * heap) * heap) * heap) * int

val g12_example5625 : (((heap * heap) * heap) * heap) * int

val g12_example5626 : (((heap * heap) * heap) * heap) * int

val g12_example5627 : (((heap * heap) * heap) * heap) * int

val g12_example5628 : (((heap * heap) * heap) * heap) * int

val g12_example5629 : (((heap * heap) * heap) * heap) * int

val g12_example5630 : (((heap * heap) * heap) * heap) * int

val g12_example5631 : (((heap * heap) * heap) * heap) * int

val g12_example5632 : (((heap * heap) * heap) * heap) * int

val g12_example5633 : (((heap * heap) * heap) * heap) * int

val g12_example5634 : (((heap * heap) * heap) * heap) * int

val g12_example5635 : (((heap * heap) * heap) * heap) * int

val g12_example5636 : (((heap * heap) * heap) * heap) * int

val g12_example5637 : (((heap * heap) * heap) * heap) * int

val g12_example5638 : (((heap * heap) * heap) * heap) * int

val g12_example5639 : (((heap * heap) * heap) * heap) * int

val g12_example5640 : (((heap * heap) * heap) * heap) * int

val g12_example5641 : (((heap * heap) * heap) * heap) * int

val g12_example5642 : (((heap * heap) * heap) * heap) * int

val g12_example5643 : (((heap * heap) * heap) * heap) * int

val g12_example5644 : (((heap * heap) * heap) * heap) * int

val g12_example5645 : (((heap * heap) * heap) * heap) * int

val g12_example5646 : (((heap * heap) * heap) * heap) * int

val g12_example5647 : (((heap * heap) * heap) * heap) * int

val g12_example5648 : (((heap * heap) * heap) * heap) * int

val g12_example5649 : (((heap * heap) * heap) * heap) * int

val g12_example5650 : (((heap * heap) * heap) * heap) * int

val g12_example5651 : (((heap * heap) * heap) * heap) * int

val g12_example5652 : (((heap * heap) * heap) * heap) * int

val g12_example5653 : (((heap * heap) * heap) * heap) * int

val g12_example5654 : (((heap * heap) * heap) * heap) * int

val g12_example5655 : (((heap * heap) * heap) * heap) * int

val g12_example5656 : (((heap * heap) * heap) * heap) * int

val g12_example5657 : (((heap * heap) * heap) * heap) * int

val g12_example5658 : (((heap * heap) * heap) * heap) * int

val g12_example5659 : (((heap * heap) * heap) * heap) * int

val g12_example5660 : (((heap * heap) * heap) * heap) * int

val g12_example5661 : (((heap * heap) * heap) * heap) * int

val g12_example5662 : (((heap * heap) * heap) * heap) * int

val g12_example5663 : (((heap * heap) * heap) * heap) * int

val g12_example5664 : (((heap * heap) * heap) * heap) * int

val g12_example5665 : (((heap * heap) * heap) * heap) * int

val g12_example5666 : (((heap * heap) * heap) * heap) * int

val g12_example5667 : (((heap * heap) * heap) * heap) * int

val g12_example5668 : (((heap * heap) * heap) * heap) * int

val g12_example5669 : (((heap * heap) * heap) * heap) * int

val g12_example5670 : (((heap * heap) * heap) * heap) * int

val g12_example5671 : (((heap * heap) * heap) * heap) * int

val g12_example5672 : (((heap * heap) * heap) * heap) * int

val g12_example5673 : (((heap * heap) * heap) * heap) * int

val g12_example5674 : (((heap * heap) * heap) * heap) * int

val g12_example5675 : (((heap * heap) * heap) * heap) * int

val g12_example5676 : (((heap * heap) * heap) * heap) * int

val g12_example5677 : (((heap * heap) * heap) * heap) * int

val g12_example5678 : (((heap * heap) * heap) * heap) * int

val g12_example5679 : (((heap * heap) * heap) * heap) * int

val g12_example5680 : (((heap * heap) * heap) * heap) * int

val g12_example5681 : (((heap * heap) * heap) * heap) * int

val g12_example5682 : (((heap * heap) * heap) * heap) * int

val g12_example5683 : (((heap * heap) * heap) * heap) * int

val g12_example5684 : (((heap * heap) * heap) * heap) * int

val g12_example5685 : (((heap * heap) * heap) * heap) * int

val g12_example5686 : (((heap * heap) * heap) * heap) * int

val g12_example5687 : (((heap * heap) * heap) * heap) * int

val g12_example5688 : (((heap * heap) * heap) * heap) * int

val g12_example5689 : (((heap * heap) * heap) * heap) * int

val g12_example5690 : (((heap * heap) * heap) * heap) * int

val g12_example5691 : (((heap * heap) * heap) * heap) * int

val g12_example5692 : (((heap * heap) * heap) * heap) * int

val g12_example5693 : (((heap * heap) * heap) * heap) * int

val g12_example5694 : (((heap * heap) * heap) * heap) * int

val g12_example5695 : (((heap * heap) * heap) * heap) * int

val g12_example5696 : (((heap * heap) * heap) * heap) * int

val g12_example5697 : (((heap * heap) * heap) * heap) * int

val g12_example5698 : (((heap * heap) * heap) * heap) * int

val g12_example5699 : (((heap * heap) * heap) * heap) * int

val g12_example5700 : (((heap * heap) * heap) * heap) * int

val g12_example5701 : (((heap * heap) * heap) * heap) * int

val g12_example5702 : (((heap * heap) * heap) * heap) * int

val g12_example5703 : (((heap * heap) * heap) * heap) * int

val g12_example5704 : (((heap * heap) * heap) * heap) * int

val g12_example5705 : (((heap * heap) * heap) * heap) * int

val g12_example5706 : (((heap * heap) * heap) * heap) * int

val g12_example5707 : (((heap * heap) * heap) * heap) * int

val g12_example5708 : (((heap * heap) * heap) * heap) * int

val g12_example5709 : (((heap * heap) * heap) * heap) * int

val g12_example5710 : (((heap * heap) * heap) * heap) * int

val g12_example5711 : (((heap * heap) * heap) * heap) * int

val g12_example5712 : (((heap * heap) * heap) * heap) * int

val g12_example5713 : (((heap * heap) * heap) * heap) * int

val g12_example5714 : (((heap * heap) * heap) * heap) * int

val g12_example5715 : (((heap * heap) * heap) * heap) * int

val g12_example5716 : (((heap * heap) * heap) * heap) * int

val g12_example5717 : (((heap * heap) * heap) * heap) * int

val g12_example5718 : (((heap * heap) * heap) * heap) * int

val g12_example5719 : (((heap * heap) * heap) * heap) * int

val g12_example5720 : (((heap * heap) * heap) * heap) * int

val g12_example5721 : (((heap * heap) * heap) * heap) * int

val g12_example5722 : (((heap * heap) * heap) * heap) * int

val g12_example5723 : (((heap * heap) * heap) * heap) * int

val g12_example5724 : (((heap * heap) * heap) * heap) * int

val g12_example5725 : (((heap * heap) * heap) * heap) * int

val g12_example5726 : (((heap * heap) * heap) * heap) * int

val g12_example5727 : (((heap * heap) * heap) * heap) * int

val g12_example5728 : (((heap * heap) * heap) * heap) * int

val g12_example5729 : (((heap * heap) * heap) * heap) * int

val g12_example5730 : (((heap * heap) * heap) * heap) * int

val g12_example5731 : (((heap * heap) * heap) * heap) * int

val g12_example5732 : (((heap * heap) * heap) * heap) * int

val g12_example5733 : (((heap * heap) * heap) * heap) * int

val g12_example5734 : (((heap * heap) * heap) * heap) * int

val g12_example5735 : (((heap * heap) * heap) * heap) * int

val g12_example5736 : (((heap * heap) * heap) * heap) * int

val g12_example5737 : (((heap * heap) * heap) * heap) * int

val g12_example5738 : (((heap * heap) * heap) * heap) * int

val g12_example5739 : (((heap * heap) * heap) * heap) * int

val g12_example5740 : (((heap * heap) * heap) * heap) * int

val g12_example5741 : (((heap * heap) * heap) * heap) * int

val g12_example5742 : (((heap * heap) * heap) * heap) * int

val g12_example5743 : (((heap * heap) * heap) * heap) * int

val g12_example5744 : (((heap * heap) * heap) * heap) * int

val g12_example5745 : (((heap * heap) * heap) * heap) * int

val g12_example5746 : (((heap * heap) * heap) * heap) * int

val g12_example5747 : (((heap * heap) * heap) * heap) * int

val g12_example5748 : (((heap * heap) * heap) * heap) * int

val g12_example5749 : (((heap * heap) * heap) * heap) * int

val g12_example5750 : (((heap * heap) * heap) * heap) * int

val g12_example5751 : (((heap * heap) * heap) * heap) * int

val g12_example5752 : (((heap * heap) * heap) * heap) * int

val g12_example5753 : (((heap * heap) * heap) * heap) * int

val g12_example5754 : (((heap * heap) * heap) * heap) * int

val g12_example5755 : (((heap * heap) * heap) * heap) * int

val g12_example5756 : (((heap * heap) * heap) * heap) * int

val g12_example5757 : (((heap * heap) * heap) * heap) * int

val g12_example5758 : (((heap * heap) * heap) * heap) * int

val g12_example5759 : (((heap * heap) * heap) * heap) * int

val g12_example5760 : (((heap * heap) * heap) * heap) * int

val g12_example5761 : (((heap * heap) * heap) * heap) * int

val g12_example5762 : (((heap * heap) * heap) * heap) * int

val g12_example5763 : (((heap * heap) * heap) * heap) * int

val g12_example5764 : (((heap * heap) * heap) * heap) * int

val g12_example5765 : (((heap * heap) * heap) * heap) * int

val g12_example5766 : (((heap * heap) * heap) * heap) * int

val g12_example5767 : (((heap * heap) * heap) * heap) * int

val g12_example5768 : (((heap * heap) * heap) * heap) * int

val g12_example5769 : (((heap * heap) * heap) * heap) * int

val g12_example5770 : (((heap * heap) * heap) * heap) * int

val g12_example5771 : (((heap * heap) * heap) * heap) * int

val g12_example5772 : (((heap * heap) * heap) * heap) * int

val g12_example5773 : (((heap * heap) * heap) * heap) * int

val g12_example5774 : (((heap * heap) * heap) * heap) * int

val g12_example5775 : (((heap * heap) * heap) * heap) * int

val g12_example5776 : (((heap * heap) * heap) * heap) * int

val g12_example5777 : (((heap * heap) * heap) * heap) * int

val g12_example5778 : (((heap * heap) * heap) * heap) * int

val g12_example5779 : (((heap * heap) * heap) * heap) * int

val g12_example5780 : (((heap * heap) * heap) * heap) * int

val g12_example5781 : (((heap * heap) * heap) * heap) * int

val g12_example5782 : (((heap * heap) * heap) * heap) * int

val g12_example5783 : (((heap * heap) * heap) * heap) * int

val g12_example5784 : (((heap * heap) * heap) * heap) * int

val g12_example5785 : (((heap * heap) * heap) * heap) * int

val g12_example5786 : (((heap * heap) * heap) * heap) * int

val g12_example5787 : (((heap * heap) * heap) * heap) * int

val g12_example5788 : (((heap * heap) * heap) * heap) * int

val g12_example5789 : (((heap * heap) * heap) * heap) * int

val g12_example5790 : (((heap * heap) * heap) * heap) * int

val g12_example5791 : (((heap * heap) * heap) * heap) * int

val g12_example5792 : (((heap * heap) * heap) * heap) * int

val g12_example5793 : (((heap * heap) * heap) * heap) * int

val g12_example5794 : (((heap * heap) * heap) * heap) * int

val g12_example5795 : (((heap * heap) * heap) * heap) * int

val g12_example5796 : (((heap * heap) * heap) * heap) * int

val g12_example5797 : (((heap * heap) * heap) * heap) * int

val g12_example5798 : (((heap * heap) * heap) * heap) * int

val g12_example5799 : (((heap * heap) * heap) * heap) * int

val g12_example5800 : (((heap * heap) * heap) * heap) * int

val g12_example5801 : (((heap * heap) * heap) * heap) * int

val g12_example5802 : (((heap * heap) * heap) * heap) * int

val g12_example5803 : (((heap * heap) * heap) * heap) * int

val g12_example5804 : (((heap * heap) * heap) * heap) * int

val g12_example5805 : (((heap * heap) * heap) * heap) * int

val g12_example5806 : (((heap * heap) * heap) * heap) * int

val g12_example5807 : (((heap * heap) * heap) * heap) * int

val g12_example5808 : (((heap * heap) * heap) * heap) * int

val g12_example5809 : (((heap * heap) * heap) * heap) * int

val g12_example5810 : (((heap * heap) * heap) * heap) * int

val g12_example5811 : (((heap * heap) * heap) * heap) * int

val g12_example5812 : (((heap * heap) * heap) * heap) * int

val g12_example5813 : (((heap * heap) * heap) * heap) * int

val g12_example5814 : (((heap * heap) * heap) * heap) * int

val g12_example5815 : (((heap * heap) * heap) * heap) * int

val g12_example5816 : (((heap * heap) * heap) * heap) * int

val g12_example5817 : (((heap * heap) * heap) * heap) * int

val g12_example5818 : (((heap * heap) * heap) * heap) * int

val g12_example5819 : (((heap * heap) * heap) * heap) * int

val g12_example5820 : (((heap * heap) * heap) * heap) * int

val g12_example5821 : (((heap * heap) * heap) * heap) * int

val g12_example5822 : (((heap * heap) * heap) * heap) * int

val g12_example5823 : (((heap * heap) * heap) * heap) * int

val g12_example5824 : (((heap * heap) * heap) * heap) * int

val g12_example5825 : (((heap * heap) * heap) * heap) * int

val g12_example5826 : (((heap * heap) * heap) * heap) * int

val g12_example5827 : (((heap * heap) * heap) * heap) * int

val g12_example5828 : (((heap * heap) * heap) * heap) * int

val g12_example5829 : (((heap * heap) * heap) * heap) * int

val g12_example5830 : (((heap * heap) * heap) * heap) * int

val g12_example5831 : (((heap * heap) * heap) * heap) * int

val g12_example5832 : (((heap * heap) * heap) * heap) * int

val g12_example5833 : (((heap * heap) * heap) * heap) * int

val g12_example5834 : (((heap * heap) * heap) * heap) * int

val g12_example5835 : (((heap * heap) * heap) * heap) * int

val g12_example5836 : (((heap * heap) * heap) * heap) * int

val g12_example5837 : (((heap * heap) * heap) * heap) * int

val g12_example5838 : (((heap * heap) * heap) * heap) * int

val g12_example5839 : (((heap * heap) * heap) * heap) * int

val g12_example5840 : (((heap * heap) * heap) * heap) * int

val g12_example5841 : (((heap * heap) * heap) * heap) * int

val g12_example5842 : (((heap * heap) * heap) * heap) * int

val g12_example5843 : (((heap * heap) * heap) * heap) * int

val g12_example5844 : (((heap * heap) * heap) * heap) * int

val g12_example5845 : (((heap * heap) * heap) * heap) * int

val g12_example5846 : (((heap * heap) * heap) * heap) * int

val g12_example5847 : (((heap * heap) * heap) * heap) * int

val g12_example5848 : (((heap * heap) * heap) * heap) * int

val g12_example5849 : (((heap * heap) * heap) * heap) * int

val g12_example5850 : (((heap * heap) * heap) * heap) * int

val g12_example5851 : (((heap * heap) * heap) * heap) * int

val g12_example5852 : (((heap * heap) * heap) * heap) * int

val g12_example5853 : (((heap * heap) * heap) * heap) * int

val g12_example5854 : (((heap * heap) * heap) * heap) * int

val g12_example5855 : (((heap * heap) * heap) * heap) * int

val g12_example5856 : (((heap * heap) * heap) * heap) * int

val g12_example5857 : (((heap * heap) * heap) * heap) * int

val g12_example5858 : (((heap * heap) * heap) * heap) * int

val g12_example5859 : (((heap * heap) * heap) * heap) * int

val g12_example5860 : (((heap * heap) * heap) * heap) * int

val g12_example5861 : (((heap * heap) * heap) * heap) * int

val g12_example5862 : (((heap * heap) * heap) * heap) * int

val g12_example5863 : (((heap * heap) * heap) * heap) * int

val g12_example5864 : (((heap * heap) * heap) * heap) * int

val g12_example5865 : (((heap * heap) * heap) * heap) * int

val g12_example5866 : (((heap * heap) * heap) * heap) * int

val g12_example5867 : (((heap * heap) * heap) * heap) * int

val g12_example5868 : (((heap * heap) * heap) * heap) * int

val g12_example5869 : (((heap * heap) * heap) * heap) * int

val g12_example5870 : (((heap * heap) * heap) * heap) * int

val g12_example5871 : (((heap * heap) * heap) * heap) * int

val g12_example5872 : (((heap * heap) * heap) * heap) * int

val g12_example5873 : (((heap * heap) * heap) * heap) * int

val g12_example5874 : (((heap * heap) * heap) * heap) * int

val g12_example5875 : (((heap * heap) * heap) * heap) * int

val g12_example5876 : (((heap * heap) * heap) * heap) * int

val g12_example5877 : (((heap * heap) * heap) * heap) * int

val g12_example5878 : (((heap * heap) * heap) * heap) * int

val g12_example5879 : (((heap * heap) * heap) * heap) * int

val g12_example5880 : (((heap * heap) * heap) * heap) * int

val g12_example5881 : (((heap * heap) * heap) * heap) * int

val g12_example5882 : (((heap * heap) * heap) * heap) * int

val g12_example5883 : (((heap * heap) * heap) * heap) * int

val g12_example5884 : (((heap * heap) * heap) * heap) * int

val g12_example5885 : (((heap * heap) * heap) * heap) * int

val g12_example5886 : (((heap * heap) * heap) * heap) * int

val g12_example5887 : (((heap * heap) * heap) * heap) * int

val g12_example5888 : (((heap * heap) * heap) * heap) * int

val g12_example5889 : (((heap * heap) * heap) * heap) * int

val g12_example5890 : (((heap * heap) * heap) * heap) * int

val g12_example5891 : (((heap * heap) * heap) * heap) * int

val g12_example5892 : (((heap * heap) * heap) * heap) * int

val g12_example5893 : (((heap * heap) * heap) * heap) * int

val g12_example5894 : (((heap * heap) * heap) * heap) * int

val g12_example5895 : (((heap * heap) * heap) * heap) * int

val g12_example5896 : (((heap * heap) * heap) * heap) * int

val g12_example5897 : (((heap * heap) * heap) * heap) * int

val g12_example5898 : (((heap * heap) * heap) * heap) * int

val g12_example5899 : (((heap * heap) * heap) * heap) * int

val g12_example5900 : (((heap * heap) * heap) * heap) * int

val g12_example5901 : (((heap * heap) * heap) * heap) * int

val g12_example5902 : (((heap * heap) * heap) * heap) * int

val g12_example5903 : (((heap * heap) * heap) * heap) * int

val g12_example5904 : (((heap * heap) * heap) * heap) * int

val g12_example5905 : (((heap * heap) * heap) * heap) * int

val g12_example5906 : (((heap * heap) * heap) * heap) * int

val g12_example5907 : (((heap * heap) * heap) * heap) * int

val g12_example5908 : (((heap * heap) * heap) * heap) * int

val g12_example5909 : (((heap * heap) * heap) * heap) * int

val g12_example5910 : (((heap * heap) * heap) * heap) * int

val g12_example5911 : (((heap * heap) * heap) * heap) * int

val g12_example5912 : (((heap * heap) * heap) * heap) * int

val g12_example5913 : (((heap * heap) * heap) * heap) * int

val g12_example5914 : (((heap * heap) * heap) * heap) * int

val g12_example5915 : (((heap * heap) * heap) * heap) * int

val g12_example5916 : (((heap * heap) * heap) * heap) * int

val g12_example5917 : (((heap * heap) * heap) * heap) * int

val g12_example5918 : (((heap * heap) * heap) * heap) * int

val g12_example5919 : (((heap * heap) * heap) * heap) * int

val g12_example5920 : (((heap * heap) * heap) * heap) * int

val g12_example5921 : (((heap * heap) * heap) * heap) * int

val g12_example5922 : (((heap * heap) * heap) * heap) * int

val g12_example5923 : (((heap * heap) * heap) * heap) * int

val g12_example5924 : (((heap * heap) * heap) * heap) * int

val g12_example5925 : (((heap * heap) * heap) * heap) * int

val g12_example5926 : (((heap * heap) * heap) * heap) * int

val g12_example5927 : (((heap * heap) * heap) * heap) * int

val g12_example5928 : (((heap * heap) * heap) * heap) * int

val g12_example5929 : (((heap * heap) * heap) * heap) * int

val g12_example5930 : (((heap * heap) * heap) * heap) * int

val g12_example5931 : (((heap * heap) * heap) * heap) * int

val g12_example5932 : (((heap * heap) * heap) * heap) * int

val g12_example5933 : (((heap * heap) * heap) * heap) * int

val g12_example5934 : (((heap * heap) * heap) * heap) * int

val g12_example5935 : (((heap * heap) * heap) * heap) * int

val g12_example5936 : (((heap * heap) * heap) * heap) * int

val g12_example5937 : (((heap * heap) * heap) * heap) * int

val g12_example5938 : (((heap * heap) * heap) * heap) * int

val g12_example5939 : (((heap * heap) * heap) * heap) * int

val g12_example5940 : (((heap * heap) * heap) * heap) * int

val g12_example5941 : (((heap * heap) * heap) * heap) * int

val g12_example5942 : (((heap * heap) * heap) * heap) * int

val g12_example5943 : (((heap * heap) * heap) * heap) * int

val g12_example5944 : (((heap * heap) * heap) * heap) * int

val g12_example5945 : (((heap * heap) * heap) * heap) * int

val g12_example5946 : (((heap * heap) * heap) * heap) * int

val g12_example5947 : (((heap * heap) * heap) * heap) * int

val g12_example5948 : (((heap * heap) * heap) * heap) * int

val g12_example5949 : (((heap * heap) * heap) * heap) * int

val g12_example5950 : (((heap * heap) * heap) * heap) * int

val g12_example5951 : (((heap * heap) * heap) * heap) * int

val g12_example5952 : (((heap * heap) * heap) * heap) * int

val g12_example5953 : (((heap * heap) * heap) * heap) * int

val g12_example5954 : (((heap * heap) * heap) * heap) * int

val g12_example5955 : (((heap * heap) * heap) * heap) * int

val g12_example5956 : (((heap * heap) * heap) * heap) * int

val g12_example5957 : (((heap * heap) * heap) * heap) * int

val g12_example5958 : (((heap * heap) * heap) * heap) * int

val g12_example5959 : (((heap * heap) * heap) * heap) * int

val g12_example5960 : (((heap * heap) * heap) * heap) * int

val g12_example5961 : (((heap * heap) * heap) * heap) * int

val g12_example5962 : (((heap * heap) * heap) * heap) * int

val g12_example5963 : (((heap * heap) * heap) * heap) * int

val g12_example5964 : (((heap * heap) * heap) * heap) * int

val g12_example5965 : (((heap * heap) * heap) * heap) * int

val g12_example5966 : (((heap * heap) * heap) * heap) * int

val g12_example5967 : (((heap * heap) * heap) * heap) * int

val g12_example5968 : (((heap * heap) * heap) * heap) * int

val g12_example5969 : (((heap * heap) * heap) * heap) * int

val g12_example5970 : (((heap * heap) * heap) * heap) * int

val g12_example5971 : (((heap * heap) * heap) * heap) * int

val g12_example5972 : (((heap * heap) * heap) * heap) * int

val g12_example5973 : (((heap * heap) * heap) * heap) * int

val g12_example5974 : (((heap * heap) * heap) * heap) * int

val g12_example5975 : (((heap * heap) * heap) * heap) * int

val g12_example5976 : (((heap * heap) * heap) * heap) * int

val g12_example5977 : (((heap * heap) * heap) * heap) * int

val g12_example5978 : (((heap * heap) * heap) * heap) * int

val g12_example5979 : (((heap * heap) * heap) * heap) * int

val g12_example5980 : (((heap * heap) * heap) * heap) * int

val g12_example5981 : (((heap * heap) * heap) * heap) * int

val g12_example5982 : (((heap * heap) * heap) * heap) * int

val g12_example5983 : (((heap * heap) * heap) * heap) * int

val g12_example5984 : (((heap * heap) * heap) * heap) * int

val g12_example5985 : (((heap * heap) * heap) * heap) * int

val g12_example5986 : (((heap * heap) * heap) * heap) * int

val g12_example5987 : (((heap * heap) * heap) * heap) * int

val g12_example5988 : (((heap * heap) * heap) * heap) * int

val g12_example5989 : (((heap * heap) * heap) * heap) * int

val g12_example5990 : (((heap * heap) * heap) * heap) * int

val g12_example5991 : (((heap * heap) * heap) * heap) * int

val g12_example5992 : (((heap * heap) * heap) * heap) * int

val g12_example5993 : (((heap * heap) * heap) * heap) * int

val g12_example5994 : (((heap * heap) * heap) * heap) * int

val g12_example5995 : (((heap * heap) * heap) * heap) * int

val g12_example5996 : (((heap * heap) * heap) * heap) * int

val g12_example5997 : (((heap * heap) * heap) * heap) * int

val g12_example5998 : (((heap * heap) * heap) * heap) * int

val g12_example5999 : (((heap * heap) * heap) * heap) * int

val g12_example6000 : (((heap * heap) * heap) * heap) * int

val g12_example6001 : (((heap * heap) * heap) * heap) * int

val g12_example6002 : (((heap * heap) * heap) * heap) * int

val g12_example6003 : (((heap * heap) * heap) * heap) * int

val g12_example6004 : (((heap * heap) * heap) * heap) * int

val g12_example6005 : (((heap * heap) * heap) * heap) * int

val g12_example6006 : (((heap * heap) * heap) * heap) * int

val g12_example6007 : (((heap * heap) * heap) * heap) * int

val g12_example6008 : (((heap * heap) * heap) * heap) * int

val g12_example6009 : (((heap * heap) * heap) * heap) * int

val g12_example6010 : (((heap * heap) * heap) * heap) * int

val g12_example6011 : (((heap * heap) * heap) * heap) * int

val g12_example6012 : (((heap * heap) * heap) * heap) * int

val g12_example6013 : (((heap * heap) * heap) * heap) * int

val g12_example6014 : (((heap * heap) * heap) * heap) * int

val g12_example6015 : (((heap * heap) * heap) * heap) * int

val g12_example6016 : (((heap * heap) * heap) * heap) * int

val g12_example6017 : (((heap * heap) * heap) * heap) * int

val g12_example6018 : (((heap * heap) * heap) * heap) * int

val g12_example6019 : (((heap * heap) * heap) * heap) * int

val g12_example6020 : (((heap * heap) * heap) * heap) * int

val g12_example6021 : (((heap * heap) * heap) * heap) * int

val g12_example6022 : (((heap * heap) * heap) * heap) * int

val g12_example6023 : (((heap * heap) * heap) * heap) * int

val g12_example6024 : (((heap * heap) * heap) * heap) * int

val g12_example6025 : (((heap * heap) * heap) * heap) * int

val g12_example6026 : (((heap * heap) * heap) * heap) * int

val g12_example6027 : (((heap * heap) * heap) * heap) * int

val g12_example6028 : (((heap * heap) * heap) * heap) * int

val g12_example6029 : (((heap * heap) * heap) * heap) * int

val g12_example6030 : (((heap * heap) * heap) * heap) * int

val g12_example6031 : (((heap * heap) * heap) * heap) * int

val g12_example6032 : (((heap * heap) * heap) * heap) * int

val g12_example6033 : (((heap * heap) * heap) * heap) * int

val g12_example6034 : (((heap * heap) * heap) * heap) * int

val g12_example6035 : (((heap * heap) * heap) * heap) * int

val g12_example6036 : (((heap * heap) * heap) * heap) * int

val g12_example6037 : (((heap * heap) * heap) * heap) * int

val g12_example6038 : (((heap * heap) * heap) * heap) * int

val g12_example6039 : (((heap * heap) * heap) * heap) * int

val g12_example6040 : (((heap * heap) * heap) * heap) * int

val g12_example6041 : (((heap * heap) * heap) * heap) * int

val g12_example6042 : (((heap * heap) * heap) * heap) * int

val g12_example6043 : (((heap * heap) * heap) * heap) * int

val g12_example6044 : (((heap * heap) * heap) * heap) * int

val g12_example6045 : (((heap * heap) * heap) * heap) * int

val g12_example6046 : (((heap * heap) * heap) * heap) * int

val g12_example6047 : (((heap * heap) * heap) * heap) * int

val g12_example6048 : (((heap * heap) * heap) * heap) * int

val g12_example6049 : (((heap * heap) * heap) * heap) * int

val g12_example6050 : (((heap * heap) * heap) * heap) * int

val g12_example6051 : (((heap * heap) * heap) * heap) * int

val g12_example6052 : (((heap * heap) * heap) * heap) * int

val g12_example6053 : (((heap * heap) * heap) * heap) * int

val g12_example6054 : (((heap * heap) * heap) * heap) * int

val g12_example6055 : (((heap * heap) * heap) * heap) * int

val g12_example6056 : (((heap * heap) * heap) * heap) * int

val g12_example6057 : (((heap * heap) * heap) * heap) * int

val g12_example6058 : (((heap * heap) * heap) * heap) * int

val g12_example6059 : (((heap * heap) * heap) * heap) * int

val g12_example6060 : (((heap * heap) * heap) * heap) * int

val g12_example6061 : (((heap * heap) * heap) * heap) * int

val g12_example6062 : (((heap * heap) * heap) * heap) * int

val g12_example6063 : (((heap * heap) * heap) * heap) * int

val g12_example6064 : (((heap * heap) * heap) * heap) * int

val g12_example6065 : (((heap * heap) * heap) * heap) * int

val g12_example6066 : (((heap * heap) * heap) * heap) * int

val g12_example6067 : (((heap * heap) * heap) * heap) * int

val g12_example6068 : (((heap * heap) * heap) * heap) * int

val g12_example6069 : (((heap * heap) * heap) * heap) * int

val g12_example6070 : (((heap * heap) * heap) * heap) * int

val g12_example6071 : (((heap * heap) * heap) * heap) * int

val g12_example6072 : (((heap * heap) * heap) * heap) * int

val g12_example6073 : (((heap * heap) * heap) * heap) * int

val g12_example6074 : (((heap * heap) * heap) * heap) * int

val g12_example6075 : (((heap * heap) * heap) * heap) * int

val g12_example6076 : (((heap * heap) * heap) * heap) * int

val g12_example6077 : (((heap * heap) * heap) * heap) * int

val g12_example6078 : (((heap * heap) * heap) * heap) * int

val g12_example6079 : (((heap * heap) * heap) * heap) * int

val g12_example6080 : (((heap * heap) * heap) * heap) * int

val g12_example6081 : (((heap * heap) * heap) * heap) * int

val g12_example6082 : (((heap * heap) * heap) * heap) * int

val g12_example6083 : (((heap * heap) * heap) * heap) * int

val g12_example6084 : (((heap * heap) * heap) * heap) * int

val g12_example6085 : (((heap * heap) * heap) * heap) * int

val g12_example6086 : (((heap * heap) * heap) * heap) * int

val g12_example6087 : (((heap * heap) * heap) * heap) * int

val g12_example6088 : (((heap * heap) * heap) * heap) * int

val g12_example6089 : (((heap * heap) * heap) * heap) * int

val g12_example6090 : (((heap * heap) * heap) * heap) * int

val g12_example6091 : (((heap * heap) * heap) * heap) * int

val g12_example6092 : (((heap * heap) * heap) * heap) * int

val g12_example6093 : (((heap * heap) * heap) * heap) * int

val g12_example6094 : (((heap * heap) * heap) * heap) * int

val g12_example6095 : (((heap * heap) * heap) * heap) * int

val g12_example6096 : (((heap * heap) * heap) * heap) * int

val g12_example6097 : (((heap * heap) * heap) * heap) * int

val g12_example6098 : (((heap * heap) * heap) * heap) * int

val g12_example6099 : (((heap * heap) * heap) * heap) * int

val g12_example6100 : (((heap * heap) * heap) * heap) * int

val g12_example6101 : (((heap * heap) * heap) * heap) * int

val g12_example6102 : (((heap * heap) * heap) * heap) * int

val g12_example6103 : (((heap * heap) * heap) * heap) * int

val g12_example6104 : (((heap * heap) * heap) * heap) * int

val g12_example6105 : (((heap * heap) * heap) * heap) * int

val g12_example6106 : (((heap * heap) * heap) * heap) * int

val g12_example6107 : (((heap * heap) * heap) * heap) * int

val g12_example6108 : (((heap * heap) * heap) * heap) * int

val g12_example6109 : (((heap * heap) * heap) * heap) * int

val g12_example6110 : (((heap * heap) * heap) * heap) * int

val g12_example6111 : (((heap * heap) * heap) * heap) * int

val g12_example6112 : (((heap * heap) * heap) * heap) * int

val g12_example6113 : (((heap * heap) * heap) * heap) * int

val g12_example6114 : (((heap * heap) * heap) * heap) * int

val g12_example6115 : (((heap * heap) * heap) * heap) * int

val g12_example6116 : (((heap * heap) * heap) * heap) * int

val g12_example6117 : (((heap * heap) * heap) * heap) * int

val g12_example6118 : (((heap * heap) * heap) * heap) * int

val g12_example6119 : (((heap * heap) * heap) * heap) * int

val g12_example6120 : (((heap * heap) * heap) * heap) * int

val g12_example6121 : (((heap * heap) * heap) * heap) * int

val g12_example6122 : (((heap * heap) * heap) * heap) * int

val g12_example6123 : (((heap * heap) * heap) * heap) * int

val g12_example6124 : (((heap * heap) * heap) * heap) * int

val g12_example6125 : (((heap * heap) * heap) * heap) * int

val g12_example6126 : (((heap * heap) * heap) * heap) * int

val g12_example6127 : (((heap * heap) * heap) * heap) * int

val g12_example6128 : (((heap * heap) * heap) * heap) * int

val g12_example6129 : (((heap * heap) * heap) * heap) * int

val g12_example6130 : (((heap * heap) * heap) * heap) * int

val g12_example6131 : (((heap * heap) * heap) * heap) * int

val g12_example6132 : (((heap * heap) * heap) * heap) * int

val g12_example6133 : (((heap * heap) * heap) * heap) * int

val g12_example6134 : (((heap * heap) * heap) * heap) * int

val g12_example6135 : (((heap * heap) * heap) * heap) * int

val g12_example6136 : (((heap * heap) * heap) * heap) * int

val g12_example6137 : (((heap * heap) * heap) * heap) * int

val g12_example6138 : (((heap * heap) * heap) * heap) * int

val g12_example6139 : (((heap * heap) * heap) * heap) * int

val g12_example6140 : (((heap * heap) * heap) * heap) * int

val g12_example6141 : (((heap * heap) * heap) * heap) * int

val g12_example6142 : (((heap * heap) * heap) * heap) * int

val g12_example6143 : (((heap * heap) * heap) * heap) * int

val g12_example6144 : (((heap * heap) * heap) * heap) * int

val g12_example6145 : (((heap * heap) * heap) * heap) * int

val g12_example6146 : (((heap * heap) * heap) * heap) * int

val g12_example6147 : (((heap * heap) * heap) * heap) * int

val g12_example6148 : (((heap * heap) * heap) * heap) * int

val g12_example6149 : (((heap * heap) * heap) * heap) * int

val g12_example6150 : (((heap * heap) * heap) * heap) * int

val g12_example6151 : (((heap * heap) * heap) * heap) * int

val g12_example6152 : (((heap * heap) * heap) * heap) * int

val g12_example6153 : (((heap * heap) * heap) * heap) * int

val g12_example6154 : (((heap * heap) * heap) * heap) * int

val g12_example6155 : (((heap * heap) * heap) * heap) * int

val g12_example6156 : (((heap * heap) * heap) * heap) * int

val g12_example6157 : (((heap * heap) * heap) * heap) * int

val g12_example6158 : (((heap * heap) * heap) * heap) * int

val g12_example6159 : (((heap * heap) * heap) * heap) * int

val g12_example6160 : (((heap * heap) * heap) * heap) * int

val g12_example6161 : (((heap * heap) * heap) * heap) * int

val g12_example6162 : (((heap * heap) * heap) * heap) * int

val g12_example6163 : (((heap * heap) * heap) * heap) * int

val g12_example6164 : (((heap * heap) * heap) * heap) * int

val g12_example6165 : (((heap * heap) * heap) * heap) * int

val g12_example6166 : (((heap * heap) * heap) * heap) * int

val g12_example6167 : (((heap * heap) * heap) * heap) * int

val g12_example6168 : (((heap * heap) * heap) * heap) * int

val g12_example6169 : (((heap * heap) * heap) * heap) * int

val g12_example6170 : (((heap * heap) * heap) * heap) * int

val g12_example6171 : (((heap * heap) * heap) * heap) * int

val g12_example6172 : (((heap * heap) * heap) * heap) * int

val g12_example6173 : (((heap * heap) * heap) * heap) * int

val g12_example6174 : (((heap * heap) * heap) * heap) * int

val g12_example6175 : (((heap * heap) * heap) * heap) * int

val g12_example6176 : (((heap * heap) * heap) * heap) * int

val g12_example6177 : (((heap * heap) * heap) * heap) * int

val g12_example6178 : (((heap * heap) * heap) * heap) * int

val g12_example6179 : (((heap * heap) * heap) * heap) * int

val g12_example6180 : (((heap * heap) * heap) * heap) * int

val g12_example6181 : (((heap * heap) * heap) * heap) * int

val g12_example6182 : (((heap * heap) * heap) * heap) * int

val g12_example6183 : (((heap * heap) * heap) * heap) * int

val g12_example6184 : (((heap * heap) * heap) * heap) * int

val g12_example6185 : (((heap * heap) * heap) * heap) * int

val g12_example6186 : (((heap * heap) * heap) * heap) * int

val g12_example6187 : (((heap * heap) * heap) * heap) * int

val g12_example6188 : (((heap * heap) * heap) * heap) * int

val g12_example6189 : (((heap * heap) * heap) * heap) * int

val g12_example6190 : (((heap * heap) * heap) * heap) * int

val g12_example6191 : (((heap * heap) * heap) * heap) * int

val g12_example6192 : (((heap * heap) * heap) * heap) * int

val g12_example6193 : (((heap * heap) * heap) * heap) * int

val g12_example6194 : (((heap * heap) * heap) * heap) * int

val g12_example6195 : (((heap * heap) * heap) * heap) * int

val g12_example6196 : (((heap * heap) * heap) * heap) * int

val g12_example6197 : (((heap * heap) * heap) * heap) * int

val g12_example6198 : (((heap * heap) * heap) * heap) * int

val g12_example6199 : (((heap * heap) * heap) * heap) * int

val g12_example6200 : (((heap * heap) * heap) * heap) * int

val g12_example6201 : (((heap * heap) * heap) * heap) * int

val g12_example6202 : (((heap * heap) * heap) * heap) * int

val g12_example6203 : (((heap * heap) * heap) * heap) * int

val g12_example6204 : (((heap * heap) * heap) * heap) * int

val g12_example6205 : (((heap * heap) * heap) * heap) * int

val g12_example6206 : (((heap * heap) * heap) * heap) * int

val g12_example6207 : (((heap * heap) * heap) * heap) * int

val g12_example6208 : (((heap * heap) * heap) * heap) * int

val g12_example6209 : (((heap * heap) * heap) * heap) * int

val g12_example6210 : (((heap * heap) * heap) * heap) * int

val g12_example6211 : (((heap * heap) * heap) * heap) * int

val g12_example6212 : (((heap * heap) * heap) * heap) * int

val g12_example6213 : (((heap * heap) * heap) * heap) * int

val g12_example6214 : (((heap * heap) * heap) * heap) * int

val g12_example6215 : (((heap * heap) * heap) * heap) * int

val g12_example6216 : (((heap * heap) * heap) * heap) * int

val g12_example6217 : (((heap * heap) * heap) * heap) * int

val g12_example6218 : (((heap * heap) * heap) * heap) * int

val g12_example6219 : (((heap * heap) * heap) * heap) * int

val g12_example6220 : (((heap * heap) * heap) * heap) * int

val g12_example6221 : (((heap * heap) * heap) * heap) * int

val g12_example6222 : (((heap * heap) * heap) * heap) * int

val g12_example6223 : (((heap * heap) * heap) * heap) * int

val g12_example6224 : (((heap * heap) * heap) * heap) * int

val g12_example6225 : (((heap * heap) * heap) * heap) * int

val g12_example6226 : (((heap * heap) * heap) * heap) * int

val g12_example6227 : (((heap * heap) * heap) * heap) * int

val g12_example6228 : (((heap * heap) * heap) * heap) * int

val g12_example6229 : (((heap * heap) * heap) * heap) * int

val g12_example6230 : (((heap * heap) * heap) * heap) * int

val g12_example6231 : (((heap * heap) * heap) * heap) * int

val g12_example6232 : (((heap * heap) * heap) * heap) * int

val g12_example6233 : (((heap * heap) * heap) * heap) * int

val g12_example6234 : (((heap * heap) * heap) * heap) * int

val g12_example6235 : (((heap * heap) * heap) * heap) * int

val g12_example6236 : (((heap * heap) * heap) * heap) * int

val g12_example6237 : (((heap * heap) * heap) * heap) * int

val g12_example6238 : (((heap * heap) * heap) * heap) * int

val g12_example6239 : (((heap * heap) * heap) * heap) * int

val g12_example6240 : (((heap * heap) * heap) * heap) * int

val g12_example6241 : (((heap * heap) * heap) * heap) * int

val g12_example6242 : (((heap * heap) * heap) * heap) * int

val g12_example6243 : (((heap * heap) * heap) * heap) * int

val g12_example6244 : (((heap * heap) * heap) * heap) * int

val g12_example6245 : (((heap * heap) * heap) * heap) * int

val g12_example6246 : (((heap * heap) * heap) * heap) * int

val g12_example6247 : (((heap * heap) * heap) * heap) * int

val g12_example6248 : (((heap * heap) * heap) * heap) * int

val g12_example6249 : (((heap * heap) * heap) * heap) * int

val g12_example6250 : (((heap * heap) * heap) * heap) * int

val g12_example6251 : (((heap * heap) * heap) * heap) * int

val g12_example6252 : (((heap * heap) * heap) * heap) * int

val g12_example6253 : (((heap * heap) * heap) * heap) * int

val g12_example6254 : (((heap * heap) * heap) * heap) * int

val g12_example6255 : (((heap * heap) * heap) * heap) * int

val g12_example6256 : (((heap * heap) * heap) * heap) * int

val g12_example6257 : (((heap * heap) * heap) * heap) * int

val g12_example6258 : (((heap * heap) * heap) * heap) * int

val g12_example6259 : (((heap * heap) * heap) * heap) * int

val g12_example6260 : (((heap * heap) * heap) * heap) * int

val g12_example6261 : (((heap * heap) * heap) * heap) * int

val g12_example6262 : (((heap * heap) * heap) * heap) * int

val g12_example6263 : (((heap * heap) * heap) * heap) * int

val g12_example6264 : (((heap * heap) * heap) * heap) * int

val g12_example6265 : (((heap * heap) * heap) * heap) * int

val g12_example6266 : (((heap * heap) * heap) * heap) * int

val g12_example6267 : (((heap * heap) * heap) * heap) * int

val g12_example6268 : (((heap * heap) * heap) * heap) * int

val g12_example6269 : (((heap * heap) * heap) * heap) * int

val g12_example6270 : (((heap * heap) * heap) * heap) * int

val g12_example6271 : (((heap * heap) * heap) * heap) * int

val g12_example6272 : (((heap * heap) * heap) * heap) * int

val g12_example6273 : (((heap * heap) * heap) * heap) * int

val g12_example6274 : (((heap * heap) * heap) * heap) * int

val g12_example6275 : (((heap * heap) * heap) * heap) * int

val g12_example6276 : (((heap * heap) * heap) * heap) * int

val g12_example6277 : (((heap * heap) * heap) * heap) * int

val g12_example6278 : (((heap * heap) * heap) * heap) * int

val g12_example6279 : (((heap * heap) * heap) * heap) * int

val g12_example6280 : (((heap * heap) * heap) * heap) * int

val g12_example6281 : (((heap * heap) * heap) * heap) * int

val g12_example6282 : (((heap * heap) * heap) * heap) * int

val g12_example6283 : (((heap * heap) * heap) * heap) * int

val g12_example6284 : (((heap * heap) * heap) * heap) * int

val g12_example6285 : (((heap * heap) * heap) * heap) * int

val g12_example6286 : (((heap * heap) * heap) * heap) * int

val g12_example6287 : (((heap * heap) * heap) * heap) * int

val g12_example6288 : (((heap * heap) * heap) * heap) * int

val g12_example6289 : (((heap * heap) * heap) * heap) * int

val g12_example6290 : (((heap * heap) * heap) * heap) * int

val g12_example6291 : (((heap * heap) * heap) * heap) * int

val g12_example6292 : (((heap * heap) * heap) * heap) * int

val g12_example6293 : (((heap * heap) * heap) * heap) * int

val g12_example6294 : (((heap * heap) * heap) * heap) * int

val g12_example6295 : (((heap * heap) * heap) * heap) * int

val g12_example6296 : (((heap * heap) * heap) * heap) * int

val g12_example6297 : (((heap * heap) * heap) * heap) * int

val g12_example6298 : (((heap * heap) * heap) * heap) * int

val g12_example6299 : (((heap * heap) * heap) * heap) * int

val g12_example6300 : (((heap * heap) * heap) * heap) * int

val g12_example6301 : (((heap * heap) * heap) * heap) * int

val g12_example6302 : (((heap * heap) * heap) * heap) * int

val g12_example6303 : (((heap * heap) * heap) * heap) * int

val g12_example6304 : (((heap * heap) * heap) * heap) * int

val g12_example6305 : (((heap * heap) * heap) * heap) * int

val g12_example6306 : (((heap * heap) * heap) * heap) * int

val g12_example6307 : (((heap * heap) * heap) * heap) * int

val g12_example6308 : (((heap * heap) * heap) * heap) * int

val g12_example6309 : (((heap * heap) * heap) * heap) * int

val g12_example6310 : (((heap * heap) * heap) * heap) * int

val g12_example6311 : (((heap * heap) * heap) * heap) * int

val g12_example6312 : (((heap * heap) * heap) * heap) * int

val g12_example6313 : (((heap * heap) * heap) * heap) * int

val g12_example6314 : (((heap * heap) * heap) * heap) * int

val g12_example6315 : (((heap * heap) * heap) * heap) * int

val g12_example6316 : (((heap * heap) * heap) * heap) * int

val g12_example6317 : (((heap * heap) * heap) * heap) * int

val g12_example6318 : (((heap * heap) * heap) * heap) * int

val g12_example6319 : (((heap * heap) * heap) * heap) * int

val g12_example6320 : (((heap * heap) * heap) * heap) * int

val g12_example6321 : (((heap * heap) * heap) * heap) * int

val g12_example6322 : (((heap * heap) * heap) * heap) * int

val g12_example6323 : (((heap * heap) * heap) * heap) * int

val g12_example6324 : (((heap * heap) * heap) * heap) * int

val g12_example6325 : (((heap * heap) * heap) * heap) * int

val g12_example6326 : (((heap * heap) * heap) * heap) * int

val g12_example6327 : (((heap * heap) * heap) * heap) * int

val g12_example6328 : (((heap * heap) * heap) * heap) * int

val g12_example6329 : (((heap * heap) * heap) * heap) * int

val g12_example6330 : (((heap * heap) * heap) * heap) * int

val g12_example6331 : (((heap * heap) * heap) * heap) * int

val g12_example6332 : (((heap * heap) * heap) * heap) * int

val g12_example6333 : (((heap * heap) * heap) * heap) * int

val g12_example6334 : (((heap * heap) * heap) * heap) * int

val g12_example6335 : (((heap * heap) * heap) * heap) * int

val g12_example6336 : (((heap * heap) * heap) * heap) * int

val g12_example6337 : (((heap * heap) * heap) * heap) * int

val g12_example6338 : (((heap * heap) * heap) * heap) * int

val g12_example6339 : (((heap * heap) * heap) * heap) * int

val g12_example6340 : (((heap * heap) * heap) * heap) * int

val g12_example6341 : (((heap * heap) * heap) * heap) * int

val g12_example6342 : (((heap * heap) * heap) * heap) * int

val g12_example6343 : (((heap * heap) * heap) * heap) * int

val g12_example6344 : (((heap * heap) * heap) * heap) * int

val g12_example6345 : (((heap * heap) * heap) * heap) * int

val g12_example6346 : (((heap * heap) * heap) * heap) * int

val g12_example6347 : (((heap * heap) * heap) * heap) * int

val g12_example6348 : (((heap * heap) * heap) * heap) * int

val g12_example6349 : (((heap * heap) * heap) * heap) * int

val g12_example6350 : (((heap * heap) * heap) * heap) * int

val g12_example6351 : (((heap * heap) * heap) * heap) * int

val g12_example6352 : (((heap * heap) * heap) * heap) * int

val g12_example6353 : (((heap * heap) * heap) * heap) * int

val g12_example6354 : (((heap * heap) * heap) * heap) * int

val g12_example6355 : (((heap * heap) * heap) * heap) * int

val g12_example6356 : (((heap * heap) * heap) * heap) * int

val g12_example6357 : (((heap * heap) * heap) * heap) * int

val g12_example6358 : (((heap * heap) * heap) * heap) * int

val g12_example6359 : (((heap * heap) * heap) * heap) * int

val g12_example6360 : (((heap * heap) * heap) * heap) * int

val g12_example6361 : (((heap * heap) * heap) * heap) * int

val g12_example6362 : (((heap * heap) * heap) * heap) * int

val g12_example6363 : (((heap * heap) * heap) * heap) * int

val g12_example6364 : (((heap * heap) * heap) * heap) * int

val g12_example6365 : (((heap * heap) * heap) * heap) * int

val g12_example6366 : (((heap * heap) * heap) * heap) * int

val g12_example6367 : (((heap * heap) * heap) * heap) * int

val g12_example6368 : (((heap * heap) * heap) * heap) * int

val g12_example6369 : (((heap * heap) * heap) * heap) * int

val g12_example6370 : (((heap * heap) * heap) * heap) * int

val g12_example6371 : (((heap * heap) * heap) * heap) * int

val g12_example6372 : (((heap * heap) * heap) * heap) * int

val g12_example6373 : (((heap * heap) * heap) * heap) * int

val g12_example6374 : (((heap * heap) * heap) * heap) * int

val g12_example6375 : (((heap * heap) * heap) * heap) * int

val g12_example6376 : (((heap * heap) * heap) * heap) * int

val g12_example6377 : (((heap * heap) * heap) * heap) * int

val g12_example6378 : (((heap * heap) * heap) * heap) * int

val g12_example6379 : (((heap * heap) * heap) * heap) * int

val g12_example6380 : (((heap * heap) * heap) * heap) * int

val g12_example6381 : (((heap * heap) * heap) * heap) * int

val g12_example6382 : (((heap * heap) * heap) * heap) * int

val g12_example6383 : (((heap * heap) * heap) * heap) * int

val g12_example6384 : (((heap * heap) * heap) * heap) * int

val g12_example6385 : (((heap * heap) * heap) * heap) * int

val g12_example6386 : (((heap * heap) * heap) * heap) * int

val g12_example6387 : (((heap * heap) * heap) * heap) * int

val g12_example6388 : (((heap * heap) * heap) * heap) * int

val g12_example6389 : (((heap * heap) * heap) * heap) * int

val g12_example6390 : (((heap * heap) * heap) * heap) * int

val g12_example6391 : (((heap * heap) * heap) * heap) * int

val g12_example6392 : (((heap * heap) * heap) * heap) * int

val g12_example6393 : (((heap * heap) * heap) * heap) * int

val g12_example6394 : (((heap * heap) * heap) * heap) * int

val g12_example6395 : (((heap * heap) * heap) * heap) * int

val g12_example6396 : (((heap * heap) * heap) * heap) * int

val g12_example6397 : (((heap * heap) * heap) * heap) * int

val g12_example6398 : (((heap * heap) * heap) * heap) * int

val g12_example6399 : (((heap * heap) * heap) * heap) * int

val g12_example6400 : (((heap * heap) * heap) * heap) * int

val g12_example6401 : (((heap * heap) * heap) * heap) * int

val g12_example6402 : (((heap * heap) * heap) * heap) * int

val g12_example6403 : (((heap * heap) * heap) * heap) * int

val g12_example6404 : (((heap * heap) * heap) * heap) * int

val g12_example6405 : (((heap * heap) * heap) * heap) * int

val g12_example6406 : (((heap * heap) * heap) * heap) * int

val g12_example6407 : (((heap * heap) * heap) * heap) * int

val g12_example6408 : (((heap * heap) * heap) * heap) * int

val g12_example6409 : (((heap * heap) * heap) * heap) * int

val g12_example6410 : (((heap * heap) * heap) * heap) * int

val g12_example6411 : (((heap * heap) * heap) * heap) * int

val g12_example6412 : (((heap * heap) * heap) * heap) * int

val g12_example6413 : (((heap * heap) * heap) * heap) * int

val g12_example6414 : (((heap * heap) * heap) * heap) * int

val g12_example6415 : (((heap * heap) * heap) * heap) * int

val g12_example6416 : (((heap * heap) * heap) * heap) * int

val g12_example6417 : (((heap * heap) * heap) * heap) * int

val g12_example6418 : (((heap * heap) * heap) * heap) * int

val g12_example6419 : (((heap * heap) * heap) * heap) * int

val g12_example6420 : (((heap * heap) * heap) * heap) * int

val g12_example6421 : (((heap * heap) * heap) * heap) * int

val g12_example6422 : (((heap * heap) * heap) * heap) * int

val g12_example6423 : (((heap * heap) * heap) * heap) * int

val g12_example6424 : (((heap * heap) * heap) * heap) * int

val g12_example6425 : (((heap * heap) * heap) * heap) * int

val g12_example6426 : (((heap * heap) * heap) * heap) * int

val g12_example6427 : (((heap * heap) * heap) * heap) * int

val g12_example6428 : (((heap * heap) * heap) * heap) * int

val g12_example6429 : (((heap * heap) * heap) * heap) * int

val g12_example6430 : (((heap * heap) * heap) * heap) * int

val g12_example6431 : (((heap * heap) * heap) * heap) * int

val g12_example6432 : (((heap * heap) * heap) * heap) * int

val g12_example6433 : (((heap * heap) * heap) * heap) * int

val g12_example6434 : (((heap * heap) * heap) * heap) * int

val g12_example6435 : (((heap * heap) * heap) * heap) * int

val g12_example6436 : (((heap * heap) * heap) * heap) * int

val g12_example6437 : (((heap * heap) * heap) * heap) * int

val g12_example6438 : (((heap * heap) * heap) * heap) * int

val g12_example6439 : (((heap * heap) * heap) * heap) * int

val g12_example6440 : (((heap * heap) * heap) * heap) * int

val g12_example6441 : (((heap * heap) * heap) * heap) * int

val g12_example6442 : (((heap * heap) * heap) * heap) * int

val g12_example6443 : (((heap * heap) * heap) * heap) * int

val g12_example6444 : (((heap * heap) * heap) * heap) * int

val g12_example6445 : (((heap * heap) * heap) * heap) * int

val g12_example6446 : (((heap * heap) * heap) * heap) * int

val g12_example6447 : (((heap * heap) * heap) * heap) * int

val g12_example6448 : (((heap * heap) * heap) * heap) * int

val g12_example6449 : (((heap * heap) * heap) * heap) * int

val g12_example6450 : (((heap * heap) * heap) * heap) * int

val g12_example6451 : (((heap * heap) * heap) * heap) * int

val g12_example6452 : (((heap * heap) * heap) * heap) * int

val g12_example6453 : (((heap * heap) * heap) * heap) * int

val g12_example6454 : (((heap * heap) * heap) * heap) * int

val g12_example6455 : (((heap * heap) * heap) * heap) * int

val g12_example6456 : (((heap * heap) * heap) * heap) * int

val g12_example6457 : (((heap * heap) * heap) * heap) * int

val g12_example6458 : (((heap * heap) * heap) * heap) * int

val g12_example6459 : (((heap * heap) * heap) * heap) * int

val g12_example6460 : (((heap * heap) * heap) * heap) * int

val g12_example6461 : (((heap * heap) * heap) * heap) * int

val g12_example6462 : (((heap * heap) * heap) * heap) * int

val g12_example6463 : (((heap * heap) * heap) * heap) * int

val g12_example6464 : (((heap * heap) * heap) * heap) * int

val g12_example6465 : (((heap * heap) * heap) * heap) * int

val g12_example6466 : (((heap * heap) * heap) * heap) * int

val g12_example6467 : (((heap * heap) * heap) * heap) * int

val g12_example6468 : (((heap * heap) * heap) * heap) * int

val g12_example6469 : (((heap * heap) * heap) * heap) * int

val g12_example6470 : (((heap * heap) * heap) * heap) * int

val g12_example6471 : (((heap * heap) * heap) * heap) * int

val g12_example6472 : (((heap * heap) * heap) * heap) * int

val g12_example6473 : (((heap * heap) * heap) * heap) * int

val g12_example6474 : (((heap * heap) * heap) * heap) * int

val g12_example6475 : (((heap * heap) * heap) * heap) * int

val g12_example6476 : (((heap * heap) * heap) * heap) * int

val g12_example6477 : (((heap * heap) * heap) * heap) * int

val g12_example6478 : (((heap * heap) * heap) * heap) * int

val g12_example6479 : (((heap * heap) * heap) * heap) * int

val g12_example6480 : (((heap * heap) * heap) * heap) * int

val g12_example6481 : (((heap * heap) * heap) * heap) * int

val g12_example6482 : (((heap * heap) * heap) * heap) * int

val g12_example6483 : (((heap * heap) * heap) * heap) * int

val g12_example6484 : (((heap * heap) * heap) * heap) * int

val g12_example6485 : (((heap * heap) * heap) * heap) * int

val g12_example6486 : (((heap * heap) * heap) * heap) * int

val g12_example6487 : (((heap * heap) * heap) * heap) * int

val g12_example6488 : (((heap * heap) * heap) * heap) * int

val g12_example6489 : (((heap * heap) * heap) * heap) * int

val g12_example6490 : (((heap * heap) * heap) * heap) * int

val g12_example6491 : (((heap * heap) * heap) * heap) * int

val g12_example6492 : (((heap * heap) * heap) * heap) * int

val g12_example6493 : (((heap * heap) * heap) * heap) * int

val g12_example6494 : (((heap * heap) * heap) * heap) * int

val g12_example6495 : (((heap * heap) * heap) * heap) * int

val g12_example6496 : (((heap * heap) * heap) * heap) * int

val g12_example6497 : (((heap * heap) * heap) * heap) * int

val g12_example6498 : (((heap * heap) * heap) * heap) * int

val g12_example6499 : (((heap * heap) * heap) * heap) * int

val g12_example6500 : (((heap * heap) * heap) * heap) * int

val g12_example6501 : (((heap * heap) * heap) * heap) * int

val g12_example6502 : (((heap * heap) * heap) * heap) * int

val g12_example6503 : (((heap * heap) * heap) * heap) * int

val g12_example6504 : (((heap * heap) * heap) * heap) * int

val g12_example6505 : (((heap * heap) * heap) * heap) * int

val g12_example6506 : (((heap * heap) * heap) * heap) * int

val g12_example6507 : (((heap * heap) * heap) * heap) * int

val g12_example6508 : (((heap * heap) * heap) * heap) * int

val g12_example6509 : (((heap * heap) * heap) * heap) * int

val g12_example6510 : (((heap * heap) * heap) * heap) * int

val g12_example6511 : (((heap * heap) * heap) * heap) * int

val g12_example6512 : (((heap * heap) * heap) * heap) * int

val g12_example6513 : (((heap * heap) * heap) * heap) * int

val g12_example6514 : (((heap * heap) * heap) * heap) * int

val g12_example6515 : (((heap * heap) * heap) * heap) * int

val g12_example6516 : (((heap * heap) * heap) * heap) * int

val g12_example6517 : (((heap * heap) * heap) * heap) * int

val g12_example6518 : (((heap * heap) * heap) * heap) * int

val g12_example6519 : (((heap * heap) * heap) * heap) * int

val g12_example6520 : (((heap * heap) * heap) * heap) * int

val g12_example6521 : (((heap * heap) * heap) * heap) * int

val g12_example6522 : (((heap * heap) * heap) * heap) * int

val g12_example6523 : (((heap * heap) * heap) * heap) * int

val g12_example6524 : (((heap * heap) * heap) * heap) * int

val g12_example6525 : (((heap * heap) * heap) * heap) * int

val g12_example6526 : (((heap * heap) * heap) * heap) * int

val g12_example6527 : (((heap * heap) * heap) * heap) * int

val g12_example6528 : (((heap * heap) * heap) * heap) * int

val g12_example6529 : (((heap * heap) * heap) * heap) * int

val g12_example6530 : (((heap * heap) * heap) * heap) * int

val g12_example6531 : (((heap * heap) * heap) * heap) * int

val g12_example6532 : (((heap * heap) * heap) * heap) * int

val g12_example6533 : (((heap * heap) * heap) * heap) * int

val g12_example6534 : (((heap * heap) * heap) * heap) * int

val g12_example6535 : (((heap * heap) * heap) * heap) * int

val g12_example6536 : (((heap * heap) * heap) * heap) * int

val g12_example6537 : (((heap * heap) * heap) * heap) * int

val g12_example6538 : (((heap * heap) * heap) * heap) * int

val g12_example6539 : (((heap * heap) * heap) * heap) * int

val g12_example6540 : (((heap * heap) * heap) * heap) * int

val g12_example6541 : (((heap * heap) * heap) * heap) * int

val g12_example6542 : (((heap * heap) * heap) * heap) * int

val g12_example6543 : (((heap * heap) * heap) * heap) * int

val g12_example6544 : (((heap * heap) * heap) * heap) * int

val g12_example6545 : (((heap * heap) * heap) * heap) * int

val g12_example6546 : (((heap * heap) * heap) * heap) * int

val g12_example6547 : (((heap * heap) * heap) * heap) * int

val g12_example6548 : (((heap * heap) * heap) * heap) * int

val g12_example6549 : (((heap * heap) * heap) * heap) * int

val g12_example6550 : (((heap * heap) * heap) * heap) * int

val g12_example6551 : (((heap * heap) * heap) * heap) * int

val g12_example6552 : (((heap * heap) * heap) * heap) * int

val g12_example6553 : (((heap * heap) * heap) * heap) * int

val g12_example6554 : (((heap * heap) * heap) * heap) * int

val g12_example6555 : (((heap * heap) * heap) * heap) * int

val g12_example6556 : (((heap * heap) * heap) * heap) * int

val g12_example6557 : (((heap * heap) * heap) * heap) * int

val g12_example6558 : (((heap * heap) * heap) * heap) * int

val g12_example6559 : (((heap * heap) * heap) * heap) * int

val g12_example6560 : (((heap * heap) * heap) * heap) * int

val g12_example6561 : (((heap * heap) * heap) * heap) * int

val g12_example6562 : (((heap * heap) * heap) * heap) * int

val g12_example6563 : (((heap * heap) * heap) * heap) * int

val g12_example6564 : (((heap * heap) * heap) * heap) * int

val g12_example6565 : (((heap * heap) * heap) * heap) * int

val g12_example6566 : (((heap * heap) * heap) * heap) * int

val g12_example6567 : (((heap * heap) * heap) * heap) * int

val g12_example6568 : (((heap * heap) * heap) * heap) * int

val g12_example6569 : (((heap * heap) * heap) * heap) * int

val g12_example6570 : (((heap * heap) * heap) * heap) * int

val g12_example6571 : (((heap * heap) * heap) * heap) * int

val g12_example6572 : (((heap * heap) * heap) * heap) * int

val g12_example6573 : (((heap * heap) * heap) * heap) * int

val g12_example6574 : (((heap * heap) * heap) * heap) * int

val g12_example6575 : (((heap * heap) * heap) * heap) * int

val g12_example6576 : (((heap * heap) * heap) * heap) * int

val g12_example6577 : (((heap * heap) * heap) * heap) * int

val g12_example6578 : (((heap * heap) * heap) * heap) * int

val g12_example6579 : (((heap * heap) * heap) * heap) * int

val g12_example6580 : (((heap * heap) * heap) * heap) * int

val g12_example6581 : (((heap * heap) * heap) * heap) * int

val g12_example6582 : (((heap * heap) * heap) * heap) * int

val g12_example6583 : (((heap * heap) * heap) * heap) * int

val g12_example6584 : (((heap * heap) * heap) * heap) * int

val g12_example6585 : (((heap * heap) * heap) * heap) * int

val g12_example6586 : (((heap * heap) * heap) * heap) * int

val g12_example6587 : (((heap * heap) * heap) * heap) * int

val g12_example6588 : (((heap * heap) * heap) * heap) * int

val g12_example6589 : (((heap * heap) * heap) * heap) * int

val g12_example6590 : (((heap * heap) * heap) * heap) * int

val g12_example6591 : (((heap * heap) * heap) * heap) * int

val g12_example6592 : (((heap * heap) * heap) * heap) * int

val g12_example6593 : (((heap * heap) * heap) * heap) * int

val g12_example6594 : (((heap * heap) * heap) * heap) * int

val g12_example6595 : (((heap * heap) * heap) * heap) * int

val g12_example6596 : (((heap * heap) * heap) * heap) * int

val g12_example6597 : (((heap * heap) * heap) * heap) * int

val g12_example6598 : (((heap * heap) * heap) * heap) * int

val g12_example6599 : (((heap * heap) * heap) * heap) * int

val g12_example6600 : (((heap * heap) * heap) * heap) * int

val g12_example6601 : (((heap * heap) * heap) * heap) * int

val g12_example6602 : (((heap * heap) * heap) * heap) * int

val g12_example6603 : (((heap * heap) * heap) * heap) * int

val g12_example6604 : (((heap * heap) * heap) * heap) * int

val g12_example6605 : (((heap * heap) * heap) * heap) * int

val g12_example6606 : (((heap * heap) * heap) * heap) * int

val g12_example6607 : (((heap * heap) * heap) * heap) * int

val g12_example6608 : (((heap * heap) * heap) * heap) * int

val g12_example6609 : (((heap * heap) * heap) * heap) * int

val g12_example6610 : (((heap * heap) * heap) * heap) * int

val g12_example6611 : (((heap * heap) * heap) * heap) * int

val g12_example6612 : (((heap * heap) * heap) * heap) * int

val g12_example6613 : (((heap * heap) * heap) * heap) * int

val g12_example6614 : (((heap * heap) * heap) * heap) * int

val g12_example6615 : (((heap * heap) * heap) * heap) * int

val g12_example6616 : (((heap * heap) * heap) * heap) * int

val g12_example6617 : (((heap * heap) * heap) * heap) * int

val g12_example6618 : (((heap * heap) * heap) * heap) * int

val g12_example6619 : (((heap * heap) * heap) * heap) * int

val g12_example6620 : (((heap * heap) * heap) * heap) * int

val g12_example6621 : (((heap * heap) * heap) * heap) * int

val g12_example6622 : (((heap * heap) * heap) * heap) * int

val g12_example6623 : (((heap * heap) * heap) * heap) * int

val g12_example6624 : (((heap * heap) * heap) * heap) * int

val g12_example6625 : (((heap * heap) * heap) * heap) * int

val g12_example6626 : (((heap * heap) * heap) * heap) * int

val g12_example6627 : (((heap * heap) * heap) * heap) * int

val g12_example6628 : (((heap * heap) * heap) * heap) * int

val g12_example6629 : (((heap * heap) * heap) * heap) * int

val g12_example6630 : (((heap * heap) * heap) * heap) * int

val g12_example6631 : (((heap * heap) * heap) * heap) * int

val g12_example6632 : (((heap * heap) * heap) * heap) * int

val g12_example6633 : (((heap * heap) * heap) * heap) * int

val g12_example6634 : (((heap * heap) * heap) * heap) * int

val g12_example6635 : (((heap * heap) * heap) * heap) * int

val g12_example6636 : (((heap * heap) * heap) * heap) * int

val g12_example6637 : (((heap * heap) * heap) * heap) * int

val g12_example6638 : (((heap * heap) * heap) * heap) * int

val g12_example6639 : (((heap * heap) * heap) * heap) * int

val g12_example6640 : (((heap * heap) * heap) * heap) * int

val g12_example6641 : (((heap * heap) * heap) * heap) * int

val g12_example6642 : (((heap * heap) * heap) * heap) * int

val g12_example6643 : (((heap * heap) * heap) * heap) * int

val g12_example6644 : (((heap * heap) * heap) * heap) * int

val g12_example6645 : (((heap * heap) * heap) * heap) * int

val g12_example6646 : (((heap * heap) * heap) * heap) * int

val g12_example6647 : (((heap * heap) * heap) * heap) * int

val g12_example6648 : (((heap * heap) * heap) * heap) * int

val g12_example6649 : (((heap * heap) * heap) * heap) * int

val g12_example6650 : (((heap * heap) * heap) * heap) * int

val g12_example6651 : (((heap * heap) * heap) * heap) * int

val g12_example6652 : (((heap * heap) * heap) * heap) * int

val g12_example6653 : (((heap * heap) * heap) * heap) * int

val g12_example6654 : (((heap * heap) * heap) * heap) * int

val g12_example6655 : (((heap * heap) * heap) * heap) * int

val g12_example6656 : (((heap * heap) * heap) * heap) * int

val g12_example6657 : (((heap * heap) * heap) * heap) * int

val g12_example6658 : (((heap * heap) * heap) * heap) * int

val g12_example6659 : (((heap * heap) * heap) * heap) * int

val g12_example6660 : (((heap * heap) * heap) * heap) * int

val g12_example6661 : (((heap * heap) * heap) * heap) * int

val g12_example6662 : (((heap * heap) * heap) * heap) * int

val g12_example6663 : (((heap * heap) * heap) * heap) * int

val g12_example6664 : (((heap * heap) * heap) * heap) * int

val g12_example6665 : (((heap * heap) * heap) * heap) * int

val g12_example6666 : (((heap * heap) * heap) * heap) * int

val g12_example6667 : (((heap * heap) * heap) * heap) * int

val g12_example6668 : (((heap * heap) * heap) * heap) * int

val g12_example6669 : (((heap * heap) * heap) * heap) * int

val g12_example6670 : (((heap * heap) * heap) * heap) * int

val g12_example6671 : (((heap * heap) * heap) * heap) * int

val g12_example6672 : (((heap * heap) * heap) * heap) * int

val g12_example6673 : (((heap * heap) * heap) * heap) * int

val g12_example6674 : (((heap * heap) * heap) * heap) * int

val g12_example6675 : (((heap * heap) * heap) * heap) * int

val g12_example6676 : (((heap * heap) * heap) * heap) * int

val g12_example6677 : (((heap * heap) * heap) * heap) * int

val g12_example6678 : (((heap * heap) * heap) * heap) * int

val g12_example6679 : (((heap * heap) * heap) * heap) * int

val g12_example6680 : (((heap * heap) * heap) * heap) * int

val g12_example6681 : (((heap * heap) * heap) * heap) * int

val g12_example6682 : (((heap * heap) * heap) * heap) * int

val g12_example6683 : (((heap * heap) * heap) * heap) * int

val g12_example6684 : (((heap * heap) * heap) * heap) * int

val g12_example6685 : (((heap * heap) * heap) * heap) * int

val g12_example6686 : (((heap * heap) * heap) * heap) * int

val g12_example6687 : (((heap * heap) * heap) * heap) * int

val g12_example6688 : (((heap * heap) * heap) * heap) * int

val g12_example6689 : (((heap * heap) * heap) * heap) * int

val g12_example6690 : (((heap * heap) * heap) * heap) * int

val g12_example6691 : (((heap * heap) * heap) * heap) * int

val g12_example6692 : (((heap * heap) * heap) * heap) * int

val g12_example6693 : (((heap * heap) * heap) * heap) * int

val g12_example6694 : (((heap * heap) * heap) * heap) * int

val g12_example6695 : (((heap * heap) * heap) * heap) * int

val g12_example6696 : (((heap * heap) * heap) * heap) * int

val g12_example6697 : (((heap * heap) * heap) * heap) * int

val g12_example6698 : (((heap * heap) * heap) * heap) * int

val g12_example6699 : (((heap * heap) * heap) * heap) * int

val g12_example6700 : (((heap * heap) * heap) * heap) * int

val g12_example6701 : (((heap * heap) * heap) * heap) * int

val g12_example6702 : (((heap * heap) * heap) * heap) * int

val g12_example6703 : (((heap * heap) * heap) * heap) * int

val g12_example6704 : (((heap * heap) * heap) * heap) * int

val g12_example6705 : (((heap * heap) * heap) * heap) * int

val g12_example6706 : (((heap * heap) * heap) * heap) * int

val g12_example6707 : (((heap * heap) * heap) * heap) * int

val g12_example6708 : (((heap * heap) * heap) * heap) * int

val g12_example6709 : (((heap * heap) * heap) * heap) * int

val g12_example6710 : (((heap * heap) * heap) * heap) * int

val g12_example6711 : (((heap * heap) * heap) * heap) * int

val g12_example6712 : (((heap * heap) * heap) * heap) * int

val g12_example6713 : (((heap * heap) * heap) * heap) * int

val g12_example6714 : (((heap * heap) * heap) * heap) * int

val g12_example6715 : (((heap * heap) * heap) * heap) * int

val g12_example6716 : (((heap * heap) * heap) * heap) * int

val g12_example6717 : (((heap * heap) * heap) * heap) * int

val g12_example6718 : (((heap * heap) * heap) * heap) * int

val g12_example6719 : (((heap * heap) * heap) * heap) * int

val g12_example6720 : (((heap * heap) * heap) * heap) * int

val g12_example6721 : (((heap * heap) * heap) * heap) * int

val g12_example6722 : (((heap * heap) * heap) * heap) * int

val g12_example6723 : (((heap * heap) * heap) * heap) * int

val g12_example6724 : (((heap * heap) * heap) * heap) * int

val g12_example6725 : (((heap * heap) * heap) * heap) * int

val g12_example6726 : (((heap * heap) * heap) * heap) * int

val g12_example6727 : (((heap * heap) * heap) * heap) * int

val g12_example6728 : (((heap * heap) * heap) * heap) * int

val g12_example6729 : (((heap * heap) * heap) * heap) * int

val g12_example6730 : (((heap * heap) * heap) * heap) * int

val g12_example6731 : (((heap * heap) * heap) * heap) * int

val g12_example6732 : (((heap * heap) * heap) * heap) * int

val g12_example6733 : (((heap * heap) * heap) * heap) * int

val g12_example6734 : (((heap * heap) * heap) * heap) * int

val g12_example6735 : (((heap * heap) * heap) * heap) * int

val g12_example6736 : (((heap * heap) * heap) * heap) * int

val g12_example6737 : (((heap * heap) * heap) * heap) * int

val g12_example6738 : (((heap * heap) * heap) * heap) * int

val g12_example6739 : (((heap * heap) * heap) * heap) * int

val g12_example6740 : (((heap * heap) * heap) * heap) * int

val g12_example6741 : (((heap * heap) * heap) * heap) * int

val g12_example6742 : (((heap * heap) * heap) * heap) * int

val g12_example6743 : (((heap * heap) * heap) * heap) * int

val g12_example6744 : (((heap * heap) * heap) * heap) * int

val g12_example6745 : (((heap * heap) * heap) * heap) * int

val g12_example6746 : (((heap * heap) * heap) * heap) * int

val g12_example6747 : (((heap * heap) * heap) * heap) * int

val g12_example6748 : (((heap * heap) * heap) * heap) * int

val g12_example6749 : (((heap * heap) * heap) * heap) * int

val g12_example6750 : (((heap * heap) * heap) * heap) * int

val g12_example6751 : (((heap * heap) * heap) * heap) * int

val g12_example6752 : (((heap * heap) * heap) * heap) * int

val g12_example6753 : (((heap * heap) * heap) * heap) * int

val g12_example6754 : (((heap * heap) * heap) * heap) * int

val g12_example6755 : (((heap * heap) * heap) * heap) * int

val g12_example6756 : (((heap * heap) * heap) * heap) * int

val g12_example6757 : (((heap * heap) * heap) * heap) * int

val g12_example6758 : (((heap * heap) * heap) * heap) * int

val g12_example6759 : (((heap * heap) * heap) * heap) * int

val g12_example6760 : (((heap * heap) * heap) * heap) * int

val g12_example6761 : (((heap * heap) * heap) * heap) * int

val g12_example6762 : (((heap * heap) * heap) * heap) * int

val g12_example6763 : (((heap * heap) * heap) * heap) * int

val g12_example6764 : (((heap * heap) * heap) * heap) * int

val g12_example6765 : (((heap * heap) * heap) * heap) * int

val g12_example6766 : (((heap * heap) * heap) * heap) * int

val g12_example6767 : (((heap * heap) * heap) * heap) * int

val g12_example6768 : (((heap * heap) * heap) * heap) * int

val g12_example6769 : (((heap * heap) * heap) * heap) * int

val g12_example6770 : (((heap * heap) * heap) * heap) * int

val g12_example6771 : (((heap * heap) * heap) * heap) * int

val g12_example6772 : (((heap * heap) * heap) * heap) * int

val g12_example6773 : (((heap * heap) * heap) * heap) * int

val g12_example6774 : (((heap * heap) * heap) * heap) * int

val g12_example6775 : (((heap * heap) * heap) * heap) * int

val g12_example6776 : (((heap * heap) * heap) * heap) * int

val g12_example6777 : (((heap * heap) * heap) * heap) * int

val g12_example6778 : (((heap * heap) * heap) * heap) * int

val g12_example6779 : (((heap * heap) * heap) * heap) * int

val g12_example6780 : (((heap * heap) * heap) * heap) * int

val g12_example6781 : (((heap * heap) * heap) * heap) * int

val g12_example6782 : (((heap * heap) * heap) * heap) * int

val g12_example6783 : (((heap * heap) * heap) * heap) * int

val g12_example6784 : (((heap * heap) * heap) * heap) * int

val g12_example6785 : (((heap * heap) * heap) * heap) * int

val g12_example6786 : (((heap * heap) * heap) * heap) * int

val g12_example6787 : (((heap * heap) * heap) * heap) * int

val g12_example6788 : (((heap * heap) * heap) * heap) * int

val g12_example6789 : (((heap * heap) * heap) * heap) * int

val g12_example6790 : (((heap * heap) * heap) * heap) * int

val g12_example6791 : (((heap * heap) * heap) * heap) * int

val g12_example6792 : (((heap * heap) * heap) * heap) * int

val g12_example6793 : (((heap * heap) * heap) * heap) * int

val g12_example6794 : (((heap * heap) * heap) * heap) * int

val g12_example6795 : (((heap * heap) * heap) * heap) * int

val g12_example6796 : (((heap * heap) * heap) * heap) * int

val g12_example6797 : (((heap * heap) * heap) * heap) * int

val g12_example6798 : (((heap * heap) * heap) * heap) * int

val g12_example6799 : (((heap * heap) * heap) * heap) * int

val g12_example6800 : (((heap * heap) * heap) * heap) * int

val g12_example6801 : (((heap * heap) * heap) * heap) * int

val g12_example6802 : (((heap * heap) * heap) * heap) * int

val g12_example6803 : (((heap * heap) * heap) * heap) * int

val g12_example6804 : (((heap * heap) * heap) * heap) * int

val g12_example6805 : (((heap * heap) * heap) * heap) * int

val g12_example6806 : (((heap * heap) * heap) * heap) * int

val g12_example6807 : (((heap * heap) * heap) * heap) * int

val g12_example6808 : (((heap * heap) * heap) * heap) * int

val g12_example6809 : (((heap * heap) * heap) * heap) * int

val g12_example6810 : (((heap * heap) * heap) * heap) * int

val g12_example6811 : (((heap * heap) * heap) * heap) * int

val g12_example6812 : (((heap * heap) * heap) * heap) * int

val g12_example6813 : (((heap * heap) * heap) * heap) * int

val g12_example6814 : (((heap * heap) * heap) * heap) * int

val g12_example6815 : (((heap * heap) * heap) * heap) * int

val g12_example6816 : (((heap * heap) * heap) * heap) * int

val g12_example6817 : (((heap * heap) * heap) * heap) * int

val g12_example6818 : (((heap * heap) * heap) * heap) * int

val g12_example6819 : (((heap * heap) * heap) * heap) * int

val g12_example6820 : (((heap * heap) * heap) * heap) * int

val g12_example6821 : (((heap * heap) * heap) * heap) * int

val g12_example6822 : (((heap * heap) * heap) * heap) * int

val g12_example6823 : (((heap * heap) * heap) * heap) * int

val g12_example6824 : (((heap * heap) * heap) * heap) * int

val g12_example6825 : (((heap * heap) * heap) * heap) * int

val g12_example6826 : (((heap * heap) * heap) * heap) * int

val g12_example6827 : (((heap * heap) * heap) * heap) * int

val g12_example6828 : (((heap * heap) * heap) * heap) * int

val g12_example6829 : (((heap * heap) * heap) * heap) * int

val g12_example6830 : (((heap * heap) * heap) * heap) * int

val g12_example6831 : (((heap * heap) * heap) * heap) * int

val g12_example6832 : (((heap * heap) * heap) * heap) * int

val g12_example6833 : (((heap * heap) * heap) * heap) * int

val g12_example6834 : (((heap * heap) * heap) * heap) * int

val g12_example6835 : (((heap * heap) * heap) * heap) * int

val g12_example6836 : (((heap * heap) * heap) * heap) * int

val g12_example6837 : (((heap * heap) * heap) * heap) * int

val g12_example6838 : (((heap * heap) * heap) * heap) * int

val g12_example6839 : (((heap * heap) * heap) * heap) * int

val g12_example6840 : (((heap * heap) * heap) * heap) * int

val g12_example6841 : (((heap * heap) * heap) * heap) * int

val g12_example6842 : (((heap * heap) * heap) * heap) * int

val g12_example6843 : (((heap * heap) * heap) * heap) * int

val g12_example6844 : (((heap * heap) * heap) * heap) * int

val g12_example6845 : (((heap * heap) * heap) * heap) * int

val g12_example6846 : (((heap * heap) * heap) * heap) * int

val g12_example6847 : (((heap * heap) * heap) * heap) * int

val g12_example6848 : (((heap * heap) * heap) * heap) * int

val g12_example6849 : (((heap * heap) * heap) * heap) * int

val g12_example6850 : (((heap * heap) * heap) * heap) * int

val g12_example6851 : (((heap * heap) * heap) * heap) * int

val g12_example6852 : (((heap * heap) * heap) * heap) * int

val g12_example6853 : (((heap * heap) * heap) * heap) * int

val g12_example6854 : (((heap * heap) * heap) * heap) * int

val g12_example6855 : (((heap * heap) * heap) * heap) * int

val g12_example6856 : (((heap * heap) * heap) * heap) * int

val g12_example6857 : (((heap * heap) * heap) * heap) * int

val g12_example6858 : (((heap * heap) * heap) * heap) * int

val g12_example6859 : (((heap * heap) * heap) * heap) * int

val g12_example6860 : (((heap * heap) * heap) * heap) * int

val g12_example6861 : (((heap * heap) * heap) * heap) * int

val g12_example6862 : (((heap * heap) * heap) * heap) * int

val g12_example6863 : (((heap * heap) * heap) * heap) * int

val g12_example6864 : (((heap * heap) * heap) * heap) * int

val g12_example6865 : (((heap * heap) * heap) * heap) * int

val g12_example6866 : (((heap * heap) * heap) * heap) * int

val g12_example6867 : (((heap * heap) * heap) * heap) * int

val g12_example6868 : (((heap * heap) * heap) * heap) * int

val g12_example6869 : (((heap * heap) * heap) * heap) * int

val g12_example6870 : (((heap * heap) * heap) * heap) * int

val g12_example6871 : (((heap * heap) * heap) * heap) * int

val g12_example6872 : (((heap * heap) * heap) * heap) * int

val g12_example6873 : (((heap * heap) * heap) * heap) * int

val g12_example6874 : (((heap * heap) * heap) * heap) * int

val g12_example6875 : (((heap * heap) * heap) * heap) * int

val g12_example6876 : (((heap * heap) * heap) * heap) * int

val g12_example6877 : (((heap * heap) * heap) * heap) * int

val g12_example6878 : (((heap * heap) * heap) * heap) * int

val g12_example6879 : (((heap * heap) * heap) * heap) * int

val g12_example6880 : (((heap * heap) * heap) * heap) * int

val g12_example6881 : (((heap * heap) * heap) * heap) * int

val g12_example6882 : (((heap * heap) * heap) * heap) * int

val g12_example6883 : (((heap * heap) * heap) * heap) * int

val g12_example6884 : (((heap * heap) * heap) * heap) * int

val g12_example6885 : (((heap * heap) * heap) * heap) * int

val g12_example6886 : (((heap * heap) * heap) * heap) * int

val g12_example6887 : (((heap * heap) * heap) * heap) * int

val g12_example6888 : (((heap * heap) * heap) * heap) * int

val g12_example6889 : (((heap * heap) * heap) * heap) * int

val g12_example6890 : (((heap * heap) * heap) * heap) * int

val g12_example6891 : (((heap * heap) * heap) * heap) * int

val g12_example6892 : (((heap * heap) * heap) * heap) * int

val g12_example6893 : (((heap * heap) * heap) * heap) * int

val g12_example6894 : (((heap * heap) * heap) * heap) * int

val g12_example6895 : (((heap * heap) * heap) * heap) * int

val g12_example6896 : (((heap * heap) * heap) * heap) * int

val g12_example6897 : (((heap * heap) * heap) * heap) * int

val g12_example6898 : (((heap * heap) * heap) * heap) * int

val g12_example6899 : (((heap * heap) * heap) * heap) * int

val g12_example6900 : (((heap * heap) * heap) * heap) * int

val g12_example6901 : (((heap * heap) * heap) * heap) * int

val g12_example6902 : (((heap * heap) * heap) * heap) * int

val g12_example6903 : (((heap * heap) * heap) * heap) * int

val g12_example6904 : (((heap * heap) * heap) * heap) * int

val g12_example6905 : (((heap * heap) * heap) * heap) * int

val g12_example6906 : (((heap * heap) * heap) * heap) * int

val g12_example6907 : (((heap * heap) * heap) * heap) * int

val g12_example6908 : (((heap * heap) * heap) * heap) * int

val g12_example6909 : (((heap * heap) * heap) * heap) * int

val g12_example6910 : (((heap * heap) * heap) * heap) * int

val g12_example6911 : (((heap * heap) * heap) * heap) * int

val g12_example6912 : (((heap * heap) * heap) * heap) * int

val g12_example6913 : (((heap * heap) * heap) * heap) * int

val g12_example6914 : (((heap * heap) * heap) * heap) * int

val g12_example6915 : (((heap * heap) * heap) * heap) * int

val g12_example6916 : (((heap * heap) * heap) * heap) * int

val g12_example6917 : (((heap * heap) * heap) * heap) * int

val g12_example6918 : (((heap * heap) * heap) * heap) * int

val g12_example6919 : (((heap * heap) * heap) * heap) * int

val g12_example6920 : (((heap * heap) * heap) * heap) * int

val g12_example6921 : (((heap * heap) * heap) * heap) * int

val g12_example6922 : (((heap * heap) * heap) * heap) * int

val g12_example6923 : (((heap * heap) * heap) * heap) * int

val g12_example6924 : (((heap * heap) * heap) * heap) * int

val g12_example6925 : (((heap * heap) * heap) * heap) * int

val g12_example6926 : (((heap * heap) * heap) * heap) * int

val g12_example6927 : (((heap * heap) * heap) * heap) * int

val g12_example6928 : (((heap * heap) * heap) * heap) * int

val g12_example6929 : (((heap * heap) * heap) * heap) * int

val g12_example6930 : (((heap * heap) * heap) * heap) * int

val g12_example6931 : (((heap * heap) * heap) * heap) * int

val g12_example6932 : (((heap * heap) * heap) * heap) * int

val g12_example6933 : (((heap * heap) * heap) * heap) * int

val g12_example6934 : (((heap * heap) * heap) * heap) * int

val g12_example6935 : (((heap * heap) * heap) * heap) * int

val g12_example6936 : (((heap * heap) * heap) * heap) * int

val g12_example6937 : (((heap * heap) * heap) * heap) * int

val g12_example6938 : (((heap * heap) * heap) * heap) * int

val g12_example6939 : (((heap * heap) * heap) * heap) * int

val g12_example6940 : (((heap * heap) * heap) * heap) * int

val g12_example6941 : (((heap * heap) * heap) * heap) * int

val g12_example6942 : (((heap * heap) * heap) * heap) * int

val g12_example6943 : (((heap * heap) * heap) * heap) * int

val g12_example6944 : (((heap * heap) * heap) * heap) * int

val g12_example6945 : (((heap * heap) * heap) * heap) * int

val g12_example6946 : (((heap * heap) * heap) * heap) * int

val g12_example6947 : (((heap * heap) * heap) * heap) * int

val g12_example6948 : (((heap * heap) * heap) * heap) * int

val g12_example6949 : (((heap * heap) * heap) * heap) * int

val g12_example6950 : (((heap * heap) * heap) * heap) * int

val g12_example6951 : (((heap * heap) * heap) * heap) * int

val g12_example6952 : (((heap * heap) * heap) * heap) * int

val g12_example6953 : (((heap * heap) * heap) * heap) * int

val g12_example6954 : (((heap * heap) * heap) * heap) * int

val g12_example6955 : (((heap * heap) * heap) * heap) * int

val g12_example6956 : (((heap * heap) * heap) * heap) * int

val g12_example6957 : (((heap * heap) * heap) * heap) * int

val g12_example6958 : (((heap * heap) * heap) * heap) * int

val g12_example6959 : (((heap * heap) * heap) * heap) * int

val g12_example6960 : (((heap * heap) * heap) * heap) * int

val g12_example6961 : (((heap * heap) * heap) * heap) * int

val g12_example6962 : (((heap * heap) * heap) * heap) * int

val g12_example6963 : (((heap * heap) * heap) * heap) * int

val g12_example6964 : (((heap * heap) * heap) * heap) * int

val g12_example6965 : (((heap * heap) * heap) * heap) * int

val g12_example6966 : (((heap * heap) * heap) * heap) * int

val g12_example6967 : (((heap * heap) * heap) * heap) * int

val g12_example6968 : (((heap * heap) * heap) * heap) * int

val g12_example6969 : (((heap * heap) * heap) * heap) * int

val g12_example6970 : (((heap * heap) * heap) * heap) * int

val g12_example6971 : (((heap * heap) * heap) * heap) * int

val g12_example6972 : (((heap * heap) * heap) * heap) * int

val g12_example6973 : (((heap * heap) * heap) * heap) * int

val g12_example6974 : (((heap * heap) * heap) * heap) * int

val g12_example6975 : (((heap * heap) * heap) * heap) * int

val g12_example6976 : (((heap * heap) * heap) * heap) * int

val g12_example6977 : (((heap * heap) * heap) * heap) * int

val g12_example6978 : (((heap * heap) * heap) * heap) * int

val g12_example6979 : (((heap * heap) * heap) * heap) * int

val g12_example6980 : (((heap * heap) * heap) * heap) * int

val g12_example6981 : (((heap * heap) * heap) * heap) * int

val g12_example6982 : (((heap * heap) * heap) * heap) * int

val g12_example6983 : (((heap * heap) * heap) * heap) * int

val g12_example6984 : (((heap * heap) * heap) * heap) * int

val g12_example6985 : (((heap * heap) * heap) * heap) * int

val g12_example6986 : (((heap * heap) * heap) * heap) * int

val g12_example6987 : (((heap * heap) * heap) * heap) * int

val g12_example6988 : (((heap * heap) * heap) * heap) * int

val g12_example6989 : (((heap * heap) * heap) * heap) * int

val g12_example6990 : (((heap * heap) * heap) * heap) * int

val g12_example6991 : (((heap * heap) * heap) * heap) * int

val g12_example6992 : (((heap * heap) * heap) * heap) * int

val g12_example6993 : (((heap * heap) * heap) * heap) * int

val g12_example6994 : (((heap * heap) * heap) * heap) * int

val g12_example6995 : (((heap * heap) * heap) * heap) * int

val g12_example6996 : (((heap * heap) * heap) * heap) * int

val g12_example6997 : (((heap * heap) * heap) * heap) * int

val g12_example6998 : (((heap * heap) * heap) * heap) * int

val g12_example6999 : (((heap * heap) * heap) * heap) * int

val g12_example7000 : (((heap * heap) * heap) * heap) * int

val g12_example7001 : (((heap * heap) * heap) * heap) * int

val g12_example7002 : (((heap * heap) * heap) * heap) * int

val g12_example7003 : (((heap * heap) * heap) * heap) * int

val g12_example7004 : (((heap * heap) * heap) * heap) * int

val g12_example7005 : (((heap * heap) * heap) * heap) * int

val g12_example7006 : (((heap * heap) * heap) * heap) * int

val g12_example7007 : (((heap * heap) * heap) * heap) * int

val g12_example7008 : (((heap * heap) * heap) * heap) * int

val g12_example7009 : (((heap * heap) * heap) * heap) * int

val g12_example7010 : (((heap * heap) * heap) * heap) * int

val g12_example7011 : (((heap * heap) * heap) * heap) * int

val g12_example7012 : (((heap * heap) * heap) * heap) * int

val g12_example7013 : (((heap * heap) * heap) * heap) * int

val g12_example7014 : (((heap * heap) * heap) * heap) * int

val g12_example7015 : (((heap * heap) * heap) * heap) * int

val g12_example7016 : (((heap * heap) * heap) * heap) * int

val g12_example7017 : (((heap * heap) * heap) * heap) * int

val g12_example7018 : (((heap * heap) * heap) * heap) * int

val g12_example7019 : (((heap * heap) * heap) * heap) * int

val g12_example7020 : (((heap * heap) * heap) * heap) * int

val g12_example7021 : (((heap * heap) * heap) * heap) * int

val g12_example7022 : (((heap * heap) * heap) * heap) * int

val g12_example7023 : (((heap * heap) * heap) * heap) * int

val g12_example7024 : (((heap * heap) * heap) * heap) * int

val g12_example7025 : (((heap * heap) * heap) * heap) * int

val g12_example7026 : (((heap * heap) * heap) * heap) * int

val g12_example7027 : (((heap * heap) * heap) * heap) * int

val g12_example7028 : (((heap * heap) * heap) * heap) * int

val g12_example7029 : (((heap * heap) * heap) * heap) * int

val g12_example7030 : (((heap * heap) * heap) * heap) * int

val g12_example7031 : (((heap * heap) * heap) * heap) * int

val g12_example7032 : (((heap * heap) * heap) * heap) * int

val g12_example7033 : (((heap * heap) * heap) * heap) * int

val g12_example7034 : (((heap * heap) * heap) * heap) * int

val g12_example7035 : (((heap * heap) * heap) * heap) * int

val g12_example7036 : (((heap * heap) * heap) * heap) * int

val g12_example7037 : (((heap * heap) * heap) * heap) * int

val g12_example7038 : (((heap * heap) * heap) * heap) * int

val g12_example7039 : (((heap * heap) * heap) * heap) * int

val g12_example7040 : (((heap * heap) * heap) * heap) * int

val g12_example7041 : (((heap * heap) * heap) * heap) * int

val g12_example7042 : (((heap * heap) * heap) * heap) * int

val g12_example7043 : (((heap * heap) * heap) * heap) * int

val g12_example7044 : (((heap * heap) * heap) * heap) * int

val g12_example7045 : (((heap * heap) * heap) * heap) * int

val g12_example7046 : (((heap * heap) * heap) * heap) * int

val g12_example7047 : (((heap * heap) * heap) * heap) * int

val g12_example7048 : (((heap * heap) * heap) * heap) * int

val g12_example7049 : (((heap * heap) * heap) * heap) * int

val g12_example7050 : (((heap * heap) * heap) * heap) * int

val g12_example7051 : (((heap * heap) * heap) * heap) * int

val g12_example7052 : (((heap * heap) * heap) * heap) * int

val g12_example7053 : (((heap * heap) * heap) * heap) * int

val g12_example7054 : (((heap * heap) * heap) * heap) * int

val g12_example7055 : (((heap * heap) * heap) * heap) * int

val g12_example7056 : (((heap * heap) * heap) * heap) * int

val g12_example7057 : (((heap * heap) * heap) * heap) * int

val g12_example7058 : (((heap * heap) * heap) * heap) * int

val g12_example7059 : (((heap * heap) * heap) * heap) * int

val g12_example7060 : (((heap * heap) * heap) * heap) * int

val g12_example7061 : (((heap * heap) * heap) * heap) * int

val g12_example7062 : (((heap * heap) * heap) * heap) * int

val g12_example7063 : (((heap * heap) * heap) * heap) * int

val g12_example7064 : (((heap * heap) * heap) * heap) * int

val g12_example7065 : (((heap * heap) * heap) * heap) * int

val g12_example7066 : (((heap * heap) * heap) * heap) * int

val g12_example7067 : (((heap * heap) * heap) * heap) * int

val g12_example7068 : (((heap * heap) * heap) * heap) * int

val g12_example7069 : (((heap * heap) * heap) * heap) * int

val g12_example7070 : (((heap * heap) * heap) * heap) * int

val g12_example7071 : (((heap * heap) * heap) * heap) * int

val g12_example7072 : (((heap * heap) * heap) * heap) * int

val g12_example7073 : (((heap * heap) * heap) * heap) * int

val g12_example7074 : (((heap * heap) * heap) * heap) * int

val g12_example7075 : (((heap * heap) * heap) * heap) * int

val g12_example7076 : (((heap * heap) * heap) * heap) * int

val g12_example7077 : (((heap * heap) * heap) * heap) * int

val g12_example7078 : (((heap * heap) * heap) * heap) * int

val g12_example7079 : (((heap * heap) * heap) * heap) * int

val g12_example7080 : (((heap * heap) * heap) * heap) * int

val g12_example7081 : (((heap * heap) * heap) * heap) * int

val g12_example7082 : (((heap * heap) * heap) * heap) * int

val g12_example7083 : (((heap * heap) * heap) * heap) * int

val g12_example7084 : (((heap * heap) * heap) * heap) * int

val g12_example7085 : (((heap * heap) * heap) * heap) * int

val g12_example7086 : (((heap * heap) * heap) * heap) * int

val g12_example7087 : (((heap * heap) * heap) * heap) * int

val g12_example7088 : (((heap * heap) * heap) * heap) * int

val g12_example7089 : (((heap * heap) * heap) * heap) * int

val g12_example7090 : (((heap * heap) * heap) * heap) * int

val g12_example7091 : (((heap * heap) * heap) * heap) * int

val g12_example7092 : (((heap * heap) * heap) * heap) * int

val g12_example7093 : (((heap * heap) * heap) * heap) * int

val g12_example7094 : (((heap * heap) * heap) * heap) * int

val g12_example7095 : (((heap * heap) * heap) * heap) * int

val g12_example7096 : (((heap * heap) * heap) * heap) * int

val g12_example7097 : (((heap * heap) * heap) * heap) * int

val g12_example7098 : (((heap * heap) * heap) * heap) * int

val g12_example7099 : (((heap * heap) * heap) * heap) * int

val g12_example7100 : (((heap * heap) * heap) * heap) * int

val g12_example7101 : (((heap * heap) * heap) * heap) * int

val g12_example7102 : (((heap * heap) * heap) * heap) * int

val g12_example7103 : (((heap * heap) * heap) * heap) * int

val g12_example7104 : (((heap * heap) * heap) * heap) * int

val g12_example7105 : (((heap * heap) * heap) * heap) * int

val g12_example7106 : (((heap * heap) * heap) * heap) * int

val g12_example7107 : (((heap * heap) * heap) * heap) * int

val g12_example7108 : (((heap * heap) * heap) * heap) * int

val g12_example7109 : (((heap * heap) * heap) * heap) * int

val g12_example7110 : (((heap * heap) * heap) * heap) * int

val g12_example7111 : (((heap * heap) * heap) * heap) * int

val g12_example7112 : (((heap * heap) * heap) * heap) * int

val g12_example7113 : (((heap * heap) * heap) * heap) * int

val g12_example7114 : (((heap * heap) * heap) * heap) * int

val g12_example7115 : (((heap * heap) * heap) * heap) * int

val g12_example7116 : (((heap * heap) * heap) * heap) * int

val g12_example7117 : (((heap * heap) * heap) * heap) * int

val g12_example7118 : (((heap * heap) * heap) * heap) * int

val g12_example7119 : (((heap * heap) * heap) * heap) * int

val g12_example7120 : (((heap * heap) * heap) * heap) * int

val g12_example7121 : (((heap * heap) * heap) * heap) * int

val g12_example7122 : (((heap * heap) * heap) * heap) * int

val g12_example7123 : (((heap * heap) * heap) * heap) * int

val g12_example7124 : (((heap * heap) * heap) * heap) * int

val g12_example7125 : (((heap * heap) * heap) * heap) * int

val g12_example7126 : (((heap * heap) * heap) * heap) * int

val g12_example7127 : (((heap * heap) * heap) * heap) * int

val g12_example7128 : (((heap * heap) * heap) * heap) * int

val g12_example7129 : (((heap * heap) * heap) * heap) * int

val g12_example7130 : (((heap * heap) * heap) * heap) * int

val g12_example7131 : (((heap * heap) * heap) * heap) * int

val g12_example7132 : (((heap * heap) * heap) * heap) * int

val g12_example7133 : (((heap * heap) * heap) * heap) * int

val g12_example7134 : (((heap * heap) * heap) * heap) * int

val g12_example7135 : (((heap * heap) * heap) * heap) * int

val g12_example7136 : (((heap * heap) * heap) * heap) * int

val g12_example7137 : (((heap * heap) * heap) * heap) * int

val g12_example7138 : (((heap * heap) * heap) * heap) * int

val g12_example7139 : (((heap * heap) * heap) * heap) * int

val g12_example7140 : (((heap * heap) * heap) * heap) * int

val g12_example7141 : (((heap * heap) * heap) * heap) * int

val g12_example7142 : (((heap * heap) * heap) * heap) * int

val g12_example7143 : (((heap * heap) * heap) * heap) * int

val g12_example7144 : (((heap * heap) * heap) * heap) * int

val g12_example7145 : (((heap * heap) * heap) * heap) * int

val g12_example7146 : (((heap * heap) * heap) * heap) * int

val g12_example7147 : (((heap * heap) * heap) * heap) * int

val g12_example7148 : (((heap * heap) * heap) * heap) * int

val g12_example7149 : (((heap * heap) * heap) * heap) * int

val g12_example7150 : (((heap * heap) * heap) * heap) * int

val g12_example7151 : (((heap * heap) * heap) * heap) * int

val g12_example7152 : (((heap * heap) * heap) * heap) * int

val g12_example7153 : (((heap * heap) * heap) * heap) * int

val g12_example7154 : (((heap * heap) * heap) * heap) * int

val g12_example7155 : (((heap * heap) * heap) * heap) * int

val g12_example7156 : (((heap * heap) * heap) * heap) * int

val g12_example7157 : (((heap * heap) * heap) * heap) * int

val g12_example7158 : (((heap * heap) * heap) * heap) * int

val g12_example7159 : (((heap * heap) * heap) * heap) * int

val g12_example7160 : (((heap * heap) * heap) * heap) * int

val g12_example7161 : (((heap * heap) * heap) * heap) * int

val g12_example7162 : (((heap * heap) * heap) * heap) * int

val g12_example7163 : (((heap * heap) * heap) * heap) * int

val g12_example7164 : (((heap * heap) * heap) * heap) * int

val g12_example7165 : (((heap * heap) * heap) * heap) * int

val g12_example7166 : (((heap * heap) * heap) * heap) * int

val g12_example7167 : (((heap * heap) * heap) * heap) * int

val g12_example7168 : (((heap * heap) * heap) * heap) * int

val g12_example7169 : (((heap * heap) * heap) * heap) * int

val g12_example7170 : (((heap * heap) * heap) * heap) * int

val g12_example7171 : (((heap * heap) * heap) * heap) * int

val g12_example7172 : (((heap * heap) * heap) * heap) * int

val g12_example7173 : (((heap * heap) * heap) * heap) * int

val g12_example7174 : (((heap * heap) * heap) * heap) * int

val g12_example7175 : (((heap * heap) * heap) * heap) * int

val g12_example7176 : (((heap * heap) * heap) * heap) * int

val g12_example7177 : (((heap * heap) * heap) * heap) * int

val g12_example7178 : (((heap * heap) * heap) * heap) * int

val g12_example7179 : (((heap * heap) * heap) * heap) * int

val g12_example7180 : (((heap * heap) * heap) * heap) * int

val g12_example7181 : (((heap * heap) * heap) * heap) * int

val g12_example7182 : (((heap * heap) * heap) * heap) * int

val g12_example7183 : (((heap * heap) * heap) * heap) * int

val g12_example7184 : (((heap * heap) * heap) * heap) * int

val g12_example7185 : (((heap * heap) * heap) * heap) * int

val g12_example7186 : (((heap * heap) * heap) * heap) * int

val g12_example7187 : (((heap * heap) * heap) * heap) * int

val g12_example7188 : (((heap * heap) * heap) * heap) * int

val g12_example7189 : (((heap * heap) * heap) * heap) * int

val g12_example7190 : (((heap * heap) * heap) * heap) * int

val g12_example7191 : (((heap * heap) * heap) * heap) * int

val g12_example7192 : (((heap * heap) * heap) * heap) * int

val g12_example7193 : (((heap * heap) * heap) * heap) * int

val g12_example7194 : (((heap * heap) * heap) * heap) * int

val g12_example7195 : (((heap * heap) * heap) * heap) * int

val g12_example7196 : (((heap * heap) * heap) * heap) * int

val g12_example7197 : (((heap * heap) * heap) * heap) * int

val g12_example7198 : (((heap * heap) * heap) * heap) * int

val g12_example7199 : (((heap * heap) * heap) * heap) * int

val g12_example7200 : (((heap * heap) * heap) * heap) * int

val g12_example7201 : (((heap * heap) * heap) * heap) * int

val g12_example7202 : (((heap * heap) * heap) * heap) * int

val g12_example7203 : (((heap * heap) * heap) * heap) * int

val g12_example7204 : (((heap * heap) * heap) * heap) * int

val g12_example7205 : (((heap * heap) * heap) * heap) * int

val g12_example7206 : (((heap * heap) * heap) * heap) * int

val g12_example7207 : (((heap * heap) * heap) * heap) * int

val g12_example7208 : (((heap * heap) * heap) * heap) * int

val g12_example7209 : (((heap * heap) * heap) * heap) * int

val g12_example7210 : (((heap * heap) * heap) * heap) * int

val g12_example7211 : (((heap * heap) * heap) * heap) * int

val g12_example7212 : (((heap * heap) * heap) * heap) * int

val g12_example7213 : (((heap * heap) * heap) * heap) * int

val g12_example7214 : (((heap * heap) * heap) * heap) * int

val g12_example7215 : (((heap * heap) * heap) * heap) * int

val g12_example7216 : (((heap * heap) * heap) * heap) * int

val g12_example7217 : (((heap * heap) * heap) * heap) * int

val g12_example7218 : (((heap * heap) * heap) * heap) * int

val g12_example7219 : (((heap * heap) * heap) * heap) * int

val g12_example7220 : (((heap * heap) * heap) * heap) * int

val g12_example7221 : (((heap * heap) * heap) * heap) * int

val g12_example7222 : (((heap * heap) * heap) * heap) * int

val g12_example7223 : (((heap * heap) * heap) * heap) * int

val g12_example7224 : (((heap * heap) * heap) * heap) * int

val g12_example7225 : (((heap * heap) * heap) * heap) * int

val g12_example7226 : (((heap * heap) * heap) * heap) * int

val g12_example7227 : (((heap * heap) * heap) * heap) * int

val g12_example7228 : (((heap * heap) * heap) * heap) * int

val g12_example7229 : (((heap * heap) * heap) * heap) * int

val g12_example7230 : (((heap * heap) * heap) * heap) * int

val g12_example7231 : (((heap * heap) * heap) * heap) * int

val g12_example7232 : (((heap * heap) * heap) * heap) * int

val g12_example7233 : (((heap * heap) * heap) * heap) * int

val g12_example7234 : (((heap * heap) * heap) * heap) * int

val g12_example7235 : (((heap * heap) * heap) * heap) * int

val g12_example7236 : (((heap * heap) * heap) * heap) * int

val g12_example7237 : (((heap * heap) * heap) * heap) * int

val g12_example7238 : (((heap * heap) * heap) * heap) * int

val g12_example7239 : (((heap * heap) * heap) * heap) * int

val g12_example7240 : (((heap * heap) * heap) * heap) * int

val g12_example7241 : (((heap * heap) * heap) * heap) * int

val g12_example7242 : (((heap * heap) * heap) * heap) * int

val g12_example7243 : (((heap * heap) * heap) * heap) * int

val g12_example7244 : (((heap * heap) * heap) * heap) * int

val g12_example7245 : (((heap * heap) * heap) * heap) * int

val g12_example7246 : (((heap * heap) * heap) * heap) * int

val g12_example7247 : (((heap * heap) * heap) * heap) * int

val g12_example7248 : (((heap * heap) * heap) * heap) * int

val g12_example7249 : (((heap * heap) * heap) * heap) * int

val g12_example7250 : (((heap * heap) * heap) * heap) * int

val g12_example7251 : (((heap * heap) * heap) * heap) * int

val g12_example7252 : (((heap * heap) * heap) * heap) * int

val g12_example7253 : (((heap * heap) * heap) * heap) * int

val g12_example7254 : (((heap * heap) * heap) * heap) * int

val g12_example7255 : (((heap * heap) * heap) * heap) * int

val g12_example7256 : (((heap * heap) * heap) * heap) * int

val g12_example7257 : (((heap * heap) * heap) * heap) * int

val g12_example7258 : (((heap * heap) * heap) * heap) * int

val g12_example7259 : (((heap * heap) * heap) * heap) * int

val g12_example7260 : (((heap * heap) * heap) * heap) * int

val g12_example7261 : (((heap * heap) * heap) * heap) * int

val g12_example7262 : (((heap * heap) * heap) * heap) * int

val g12_example7263 : (((heap * heap) * heap) * heap) * int

val g12_example7264 : (((heap * heap) * heap) * heap) * int

val g12_example7265 : (((heap * heap) * heap) * heap) * int

val g12_example7266 : (((heap * heap) * heap) * heap) * int

val g12_example7267 : (((heap * heap) * heap) * heap) * int

val g12_example7268 : (((heap * heap) * heap) * heap) * int

val g12_example7269 : (((heap * heap) * heap) * heap) * int

val g12_example7270 : (((heap * heap) * heap) * heap) * int

val g12_example7271 : (((heap * heap) * heap) * heap) * int

val g12_example7272 : (((heap * heap) * heap) * heap) * int

val g12_example7273 : (((heap * heap) * heap) * heap) * int

val g12_example7274 : (((heap * heap) * heap) * heap) * int

val g12_example7275 : (((heap * heap) * heap) * heap) * int

val g12_example7276 : (((heap * heap) * heap) * heap) * int

val g12_example7277 : (((heap * heap) * heap) * heap) * int

val g12_example7278 : (((heap * heap) * heap) * heap) * int

val g12_example7279 : (((heap * heap) * heap) * heap) * int

val g12_example7280 : (((heap * heap) * heap) * heap) * int

val g12_example7281 : (((heap * heap) * heap) * heap) * int

val g12_example7282 : (((heap * heap) * heap) * heap) * int

val g12_example7283 : (((heap * heap) * heap) * heap) * int

val g12_example7284 : (((heap * heap) * heap) * heap) * int

val g12_example7285 : (((heap * heap) * heap) * heap) * int

val g12_example7286 : (((heap * heap) * heap) * heap) * int

val g12_example7287 : (((heap * heap) * heap) * heap) * int

val g12_example7288 : (((heap * heap) * heap) * heap) * int

val g12_example7289 : (((heap * heap) * heap) * heap) * int

val g12_example7290 : (((heap * heap) * heap) * heap) * int

val g12_example7291 : (((heap * heap) * heap) * heap) * int

val g12_example7292 : (((heap * heap) * heap) * heap) * int

val g12_example7293 : (((heap * heap) * heap) * heap) * int

val g12_example7294 : (((heap * heap) * heap) * heap) * int

val g12_example7295 : (((heap * heap) * heap) * heap) * int

val g12_example7296 : (((heap * heap) * heap) * heap) * int

val g12_example7297 : (((heap * heap) * heap) * heap) * int

val g12_example7298 : (((heap * heap) * heap) * heap) * int

val g12_example7299 : (((heap * heap) * heap) * heap) * int

val g12_example7300 : (((heap * heap) * heap) * heap) * int

val g12_example7301 : (((heap * heap) * heap) * heap) * int

val g12_example7302 : (((heap * heap) * heap) * heap) * int

val g12_example7303 : (((heap * heap) * heap) * heap) * int

val g12_example7304 : (((heap * heap) * heap) * heap) * int

val g12_example7305 : (((heap * heap) * heap) * heap) * int

val g12_example7306 : (((heap * heap) * heap) * heap) * int

val g12_example7307 : (((heap * heap) * heap) * heap) * int

val g12_example7308 : (((heap * heap) * heap) * heap) * int

val g12_example7309 : (((heap * heap) * heap) * heap) * int

val g12_example7310 : (((heap * heap) * heap) * heap) * int

val g12_example7311 : (((heap * heap) * heap) * heap) * int

val g12_example7312 : (((heap * heap) * heap) * heap) * int

val g12_example7313 : (((heap * heap) * heap) * heap) * int

val g12_example7314 : (((heap * heap) * heap) * heap) * int

val g12_example7315 : (((heap * heap) * heap) * heap) * int

val g12_example7316 : (((heap * heap) * heap) * heap) * int

val g12_example7317 : (((heap * heap) * heap) * heap) * int

val g12_example7318 : (((heap * heap) * heap) * heap) * int

val g12_example7319 : (((heap * heap) * heap) * heap) * int

val g12_example7320 : (((heap * heap) * heap) * heap) * int

val g12_example7321 : (((heap * heap) * heap) * heap) * int

val g12_example7322 : (((heap * heap) * heap) * heap) * int

val g12_example7323 : (((heap * heap) * heap) * heap) * int

val g12_example7324 : (((heap * heap) * heap) * heap) * int

val g12_example7325 : (((heap * heap) * heap) * heap) * int

val g12_example7326 : (((heap * heap) * heap) * heap) * int

val g12_example7327 : (((heap * heap) * heap) * heap) * int

val g12_example7328 : (((heap * heap) * heap) * heap) * int

val g12_example7329 : (((heap * heap) * heap) * heap) * int

val g12_example7330 : (((heap * heap) * heap) * heap) * int

val g12_example7331 : (((heap * heap) * heap) * heap) * int

val g12_example7332 : (((heap * heap) * heap) * heap) * int

val g12_example7333 : (((heap * heap) * heap) * heap) * int

val g12_example7334 : (((heap * heap) * heap) * heap) * int

val g12_example7335 : (((heap * heap) * heap) * heap) * int

val g12_example7336 : (((heap * heap) * heap) * heap) * int

val g12_example7337 : (((heap * heap) * heap) * heap) * int

val g12_example7338 : (((heap * heap) * heap) * heap) * int

val g12_example7339 : (((heap * heap) * heap) * heap) * int

val g12_example7340 : (((heap * heap) * heap) * heap) * int

val g12_example7341 : (((heap * heap) * heap) * heap) * int

val g12_example7342 : (((heap * heap) * heap) * heap) * int

val g12_example7343 : (((heap * heap) * heap) * heap) * int

val g12_example7344 : (((heap * heap) * heap) * heap) * int

val g12_example7345 : (((heap * heap) * heap) * heap) * int

val g12_example7346 : (((heap * heap) * heap) * heap) * int

val g12_example7347 : (((heap * heap) * heap) * heap) * int

val g12_example7348 : (((heap * heap) * heap) * heap) * int

val g12_example7349 : (((heap * heap) * heap) * heap) * int

val g12_example7350 : (((heap * heap) * heap) * heap) * int

val g12_example7351 : (((heap * heap) * heap) * heap) * int

val g12_example7352 : (((heap * heap) * heap) * heap) * int

val g12_example7353 : (((heap * heap) * heap) * heap) * int

val g12_example7354 : (((heap * heap) * heap) * heap) * int

val g12_example7355 : (((heap * heap) * heap) * heap) * int

val g12_example7356 : (((heap * heap) * heap) * heap) * int

val g12_example7357 : (((heap * heap) * heap) * heap) * int

val g12_example7358 : (((heap * heap) * heap) * heap) * int

val g12_example7359 : (((heap * heap) * heap) * heap) * int

val g12_example7360 : (((heap * heap) * heap) * heap) * int

val g12_example7361 : (((heap * heap) * heap) * heap) * int

val g12_example7362 : (((heap * heap) * heap) * heap) * int

val g12_example7363 : (((heap * heap) * heap) * heap) * int

val g12_example7364 : (((heap * heap) * heap) * heap) * int

val g12_example7365 : (((heap * heap) * heap) * heap) * int

val g12_example7366 : (((heap * heap) * heap) * heap) * int

val g12_example7367 : (((heap * heap) * heap) * heap) * int

val g12_example7368 : (((heap * heap) * heap) * heap) * int

val g12_example7369 : (((heap * heap) * heap) * heap) * int

val g12_example7370 : (((heap * heap) * heap) * heap) * int

val g12_example7371 : (((heap * heap) * heap) * heap) * int

val g12_example7372 : (((heap * heap) * heap) * heap) * int

val g12_example7373 : (((heap * heap) * heap) * heap) * int

val g12_example7374 : (((heap * heap) * heap) * heap) * int

val g12_example7375 : (((heap * heap) * heap) * heap) * int

val g12_example7376 : (((heap * heap) * heap) * heap) * int

val g12_example7377 : (((heap * heap) * heap) * heap) * int

val g12_example7378 : (((heap * heap) * heap) * heap) * int

val g12_example7379 : (((heap * heap) * heap) * heap) * int

val g12_example7380 : (((heap * heap) * heap) * heap) * int

val g12_example7381 : (((heap * heap) * heap) * heap) * int

val g12_example7382 : (((heap * heap) * heap) * heap) * int

val g12_example7383 : (((heap * heap) * heap) * heap) * int

val g12_example7384 : (((heap * heap) * heap) * heap) * int

val g12_example7385 : (((heap * heap) * heap) * heap) * int

val g12_example7386 : (((heap * heap) * heap) * heap) * int

val g12_example7387 : (((heap * heap) * heap) * heap) * int

val g12_example7388 : (((heap * heap) * heap) * heap) * int

val g12_example7389 : (((heap * heap) * heap) * heap) * int

val g12_example7390 : (((heap * heap) * heap) * heap) * int

val g12_example7391 : (((heap * heap) * heap) * heap) * int

val g12_example7392 : (((heap * heap) * heap) * heap) * int

val g12_example7393 : (((heap * heap) * heap) * heap) * int

val g12_example7394 : (((heap * heap) * heap) * heap) * int

val g12_example7395 : (((heap * heap) * heap) * heap) * int

val g12_example7396 : (((heap * heap) * heap) * heap) * int

val g12_example7397 : (((heap * heap) * heap) * heap) * int

val g12_example7398 : (((heap * heap) * heap) * heap) * int

val g12_example7399 : (((heap * heap) * heap) * heap) * int

val g12_example7400 : (((heap * heap) * heap) * heap) * int

val g12_example7401 : (((heap * heap) * heap) * heap) * int

val g12_example7402 : (((heap * heap) * heap) * heap) * int

val g12_example7403 : (((heap * heap) * heap) * heap) * int

val g12_example7404 : (((heap * heap) * heap) * heap) * int

val g12_example7405 : (((heap * heap) * heap) * heap) * int

val g12_example7406 : (((heap * heap) * heap) * heap) * int

val g12_example7407 : (((heap * heap) * heap) * heap) * int

val g12_example7408 : (((heap * heap) * heap) * heap) * int

val g12_example7409 : (((heap * heap) * heap) * heap) * int

val g12_example7410 : (((heap * heap) * heap) * heap) * int

val g12_example7411 : (((heap * heap) * heap) * heap) * int

val g12_example7412 : (((heap * heap) * heap) * heap) * int

val g12_example7413 : (((heap * heap) * heap) * heap) * int

val g12_example7414 : (((heap * heap) * heap) * heap) * int

val g12_example7415 : (((heap * heap) * heap) * heap) * int

val g12_example7416 : (((heap * heap) * heap) * heap) * int

val g12_example7417 : (((heap * heap) * heap) * heap) * int

val g12_example7418 : (((heap * heap) * heap) * heap) * int

val g12_example7419 : (((heap * heap) * heap) * heap) * int

val g12_example7420 : (((heap * heap) * heap) * heap) * int

val g12_example7421 : (((heap * heap) * heap) * heap) * int

val g12_example7422 : (((heap * heap) * heap) * heap) * int

val g12_example7423 : (((heap * heap) * heap) * heap) * int

val g12_example7424 : (((heap * heap) * heap) * heap) * int

val g12_example7425 : (((heap * heap) * heap) * heap) * int

val g12_example7426 : (((heap * heap) * heap) * heap) * int

val g12_example7427 : (((heap * heap) * heap) * heap) * int

val g12_example7428 : (((heap * heap) * heap) * heap) * int

val g12_example7429 : (((heap * heap) * heap) * heap) * int

val g12_example7430 : (((heap * heap) * heap) * heap) * int

val g12_example7431 : (((heap * heap) * heap) * heap) * int

val g12_example7432 : (((heap * heap) * heap) * heap) * int

val g12_example7433 : (((heap * heap) * heap) * heap) * int

val g12_example7434 : (((heap * heap) * heap) * heap) * int

val g12_example7435 : (((heap * heap) * heap) * heap) * int

val g12_example7436 : (((heap * heap) * heap) * heap) * int

val g12_example7437 : (((heap * heap) * heap) * heap) * int

val g12_example7438 : (((heap * heap) * heap) * heap) * int

val g12_example7439 : (((heap * heap) * heap) * heap) * int

val g12_example7440 : (((heap * heap) * heap) * heap) * int

val g12_example7441 : (((heap * heap) * heap) * heap) * int

val g12_example7442 : (((heap * heap) * heap) * heap) * int

val g12_example7443 : (((heap * heap) * heap) * heap) * int

val g12_example7444 : (((heap * heap) * heap) * heap) * int

val g12_example7445 : (((heap * heap) * heap) * heap) * int

val g12_example7446 : (((heap * heap) * heap) * heap) * int

val g12_example7447 : (((heap * heap) * heap) * heap) * int

val g12_example7448 : (((heap * heap) * heap) * heap) * int

val g12_example7449 : (((heap * heap) * heap) * heap) * int

val g12_example7450 : (((heap * heap) * heap) * heap) * int

val g12_example7451 : (((heap * heap) * heap) * heap) * int

val g12_example7452 : (((heap * heap) * heap) * heap) * int

val g12_example7453 : (((heap * heap) * heap) * heap) * int

val g12_example7454 : (((heap * heap) * heap) * heap) * int

val g12_example7455 : (((heap * heap) * heap) * heap) * int

val g12_example7456 : (((heap * heap) * heap) * heap) * int

val g12_example7457 : (((heap * heap) * heap) * heap) * int

val g12_example7458 : (((heap * heap) * heap) * heap) * int

val g12_example7459 : (((heap * heap) * heap) * heap) * int

val g12_example7460 : (((heap * heap) * heap) * heap) * int

val g12_example7461 : (((heap * heap) * heap) * heap) * int

val g12_example7462 : (((heap * heap) * heap) * heap) * int

val g12_example7463 : (((heap * heap) * heap) * heap) * int

val g12_example7464 : (((heap * heap) * heap) * heap) * int

val g12_example7465 : (((heap * heap) * heap) * heap) * int

val g12_example7466 : (((heap * heap) * heap) * heap) * int

val g12_example7467 : (((heap * heap) * heap) * heap) * int

val g12_example7468 : (((heap * heap) * heap) * heap) * int

val g12_example7469 : (((heap * heap) * heap) * heap) * int

val g12_example7470 : (((heap * heap) * heap) * heap) * int

val g12_example7471 : (((heap * heap) * heap) * heap) * int

val g12_example7472 : (((heap * heap) * heap) * heap) * int

val g12_example7473 : (((heap * heap) * heap) * heap) * int

val g12_example7474 : (((heap * heap) * heap) * heap) * int

val g12_example7475 : (((heap * heap) * heap) * heap) * int

val g12_example7476 : (((heap * heap) * heap) * heap) * int

val g12_example7477 : (((heap * heap) * heap) * heap) * int

val g12_example7478 : (((heap * heap) * heap) * heap) * int

val g12_example7479 : (((heap * heap) * heap) * heap) * int

val g12_example7480 : (((heap * heap) * heap) * heap) * int

val g12_example7481 : (((heap * heap) * heap) * heap) * int

val g12_example7482 : (((heap * heap) * heap) * heap) * int

val g12_example7483 : (((heap * heap) * heap) * heap) * int

val g12_example7484 : (((heap * heap) * heap) * heap) * int

val g12_example7485 : (((heap * heap) * heap) * heap) * int

val g12_example7486 : (((heap * heap) * heap) * heap) * int

val g12_example7487 : (((heap * heap) * heap) * heap) * int

val g12_example7488 : (((heap * heap) * heap) * heap) * int

val g12_example7489 : (((heap * heap) * heap) * heap) * int

val g12_example7490 : (((heap * heap) * heap) * heap) * int

val g12_example7491 : (((heap * heap) * heap) * heap) * int

val g12_example7492 : (((heap * heap) * heap) * heap) * int

val g12_example7493 : (((heap * heap) * heap) * heap) * int

val g12_example7494 : (((heap * heap) * heap) * heap) * int

val g12_example7495 : (((heap * heap) * heap) * heap) * int

val g12_example7496 : (((heap * heap) * heap) * heap) * int

val g12_example7497 : (((heap * heap) * heap) * heap) * int

val g12_example7498 : (((heap * heap) * heap) * heap) * int

val g12_example7499 : (((heap * heap) * heap) * heap) * int

val g12_example7500 : (((heap * heap) * heap) * heap) * int

val g12_example7501 : (((heap * heap) * heap) * heap) * int

val g12_example7502 : (((heap * heap) * heap) * heap) * int

val g12_example7503 : (((heap * heap) * heap) * heap) * int

val g12_example7504 : (((heap * heap) * heap) * heap) * int

val g12_example7505 : (((heap * heap) * heap) * heap) * int

val g12_example7506 : (((heap * heap) * heap) * heap) * int

val g12_example7507 : (((heap * heap) * heap) * heap) * int

val g12_example7508 : (((heap * heap) * heap) * heap) * int

val g12_example7509 : (((heap * heap) * heap) * heap) * int

val g12_example7510 : (((heap * heap) * heap) * heap) * int

val g12_example7511 : (((heap * heap) * heap) * heap) * int

val g12_example7512 : (((heap * heap) * heap) * heap) * int

val g12_example7513 : (((heap * heap) * heap) * heap) * int

val g12_example7514 : (((heap * heap) * heap) * heap) * int

val g12_example7515 : (((heap * heap) * heap) * heap) * int

val g12_example7516 : (((heap * heap) * heap) * heap) * int

val g12_example7517 : (((heap * heap) * heap) * heap) * int

val g12_example7518 : (((heap * heap) * heap) * heap) * int

val g12_example7519 : (((heap * heap) * heap) * heap) * int

val g12_example7520 : (((heap * heap) * heap) * heap) * int

val g12_example7521 : (((heap * heap) * heap) * heap) * int

val g12_example7522 : (((heap * heap) * heap) * heap) * int

val g12_example7523 : (((heap * heap) * heap) * heap) * int

val g12_example7524 : (((heap * heap) * heap) * heap) * int

val g12_example7525 : (((heap * heap) * heap) * heap) * int

val g12_example7526 : (((heap * heap) * heap) * heap) * int

val g12_example7527 : (((heap * heap) * heap) * heap) * int

val g12_example7528 : (((heap * heap) * heap) * heap) * int

val g12_example7529 : (((heap * heap) * heap) * heap) * int

val g12_example7530 : (((heap * heap) * heap) * heap) * int

val g12_example7531 : (((heap * heap) * heap) * heap) * int

val g12_example7532 : (((heap * heap) * heap) * heap) * int

val g12_example7533 : (((heap * heap) * heap) * heap) * int

val g12_example7534 : (((heap * heap) * heap) * heap) * int

val g12_example7535 : (((heap * heap) * heap) * heap) * int

val g12_example7536 : (((heap * heap) * heap) * heap) * int

val g12_example7537 : (((heap * heap) * heap) * heap) * int

val g12_example7538 : (((heap * heap) * heap) * heap) * int

val g12_example7539 : (((heap * heap) * heap) * heap) * int

val g12_example7540 : (((heap * heap) * heap) * heap) * int

val g12_example7541 : (((heap * heap) * heap) * heap) * int

val g12_example7542 : (((heap * heap) * heap) * heap) * int

val g12_example7543 : (((heap * heap) * heap) * heap) * int

val g12_example7544 : (((heap * heap) * heap) * heap) * int

val g12_example7545 : (((heap * heap) * heap) * heap) * int

val g12_example7546 : (((heap * heap) * heap) * heap) * int

val g12_example7547 : (((heap * heap) * heap) * heap) * int

val g12_example7548 : (((heap * heap) * heap) * heap) * int

val g12_example7549 : (((heap * heap) * heap) * heap) * int

val g12_example7550 : (((heap * heap) * heap) * heap) * int

val g12_example7551 : (((heap * heap) * heap) * heap) * int

val g12_example7552 : (((heap * heap) * heap) * heap) * int

val g12_example7553 : (((heap * heap) * heap) * heap) * int

val g12_example7554 : (((heap * heap) * heap) * heap) * int

val g12_example7555 : (((heap * heap) * heap) * heap) * int

val g12_example7556 : (((heap * heap) * heap) * heap) * int

val g12_example7557 : (((heap * heap) * heap) * heap) * int

val g12_example7558 : (((heap * heap) * heap) * heap) * int

val g12_example7559 : (((heap * heap) * heap) * heap) * int

val g12_example7560 : (((heap * heap) * heap) * heap) * int

val g12_example7561 : (((heap * heap) * heap) * heap) * int

val g12_example7562 : (((heap * heap) * heap) * heap) * int

val g12_example7563 : (((heap * heap) * heap) * heap) * int

val g12_example7564 : (((heap * heap) * heap) * heap) * int

val g12_example7565 : (((heap * heap) * heap) * heap) * int

val g12_example7566 : (((heap * heap) * heap) * heap) * int

val g12_example7567 : (((heap * heap) * heap) * heap) * int

val g12_example7568 : (((heap * heap) * heap) * heap) * int

val g12_example7569 : (((heap * heap) * heap) * heap) * int

val g12_example7570 : (((heap * heap) * heap) * heap) * int

val g12_example7571 : (((heap * heap) * heap) * heap) * int

val g12_example7572 : (((heap * heap) * heap) * heap) * int

val g12_example7573 : (((heap * heap) * heap) * heap) * int

val g12_example7574 : (((heap * heap) * heap) * heap) * int

val g12_example7575 : (((heap * heap) * heap) * heap) * int

val g12_example7576 : (((heap * heap) * heap) * heap) * int

val g12_example7577 : (((heap * heap) * heap) * heap) * int

val g12_example7578 : (((heap * heap) * heap) * heap) * int

val g12_example7579 : (((heap * heap) * heap) * heap) * int

val g12_example7580 : (((heap * heap) * heap) * heap) * int

val g12_example7581 : (((heap * heap) * heap) * heap) * int

val g12_example7582 : (((heap * heap) * heap) * heap) * int

val g12_example7583 : (((heap * heap) * heap) * heap) * int

val g12_example7584 : (((heap * heap) * heap) * heap) * int

val g12_example7585 : (((heap * heap) * heap) * heap) * int

val g12_example7586 : (((heap * heap) * heap) * heap) * int

val g12_example7587 : (((heap * heap) * heap) * heap) * int

val g12_example7588 : (((heap * heap) * heap) * heap) * int

val g12_example7589 : (((heap * heap) * heap) * heap) * int

val g12_example7590 : (((heap * heap) * heap) * heap) * int

val g12_example7591 : (((heap * heap) * heap) * heap) * int

val g12_example7592 : (((heap * heap) * heap) * heap) * int

val g12_example7593 : (((heap * heap) * heap) * heap) * int

val g12_example7594 : (((heap * heap) * heap) * heap) * int

val g12_example7595 : (((heap * heap) * heap) * heap) * int

val g12_example7596 : (((heap * heap) * heap) * heap) * int

val g12_example7597 : (((heap * heap) * heap) * heap) * int

val g12_example7598 : (((heap * heap) * heap) * heap) * int

val g12_example7599 : (((heap * heap) * heap) * heap) * int

val g12_example7600 : (((heap * heap) * heap) * heap) * int

val g12_example7601 : (((heap * heap) * heap) * heap) * int

val g12_example7602 : (((heap * heap) * heap) * heap) * int

val g12_example7603 : (((heap * heap) * heap) * heap) * int

val g12_example7604 : (((heap * heap) * heap) * heap) * int

val g12_example7605 : (((heap * heap) * heap) * heap) * int

val g12_example7606 : (((heap * heap) * heap) * heap) * int

val g12_example7607 : (((heap * heap) * heap) * heap) * int

val g12_example7608 : (((heap * heap) * heap) * heap) * int

val g12_example7609 : (((heap * heap) * heap) * heap) * int

val g12_example7610 : (((heap * heap) * heap) * heap) * int

val g12_example7611 : (((heap * heap) * heap) * heap) * int

val g12_example7612 : (((heap * heap) * heap) * heap) * int

val g12_example7613 : (((heap * heap) * heap) * heap) * int

val g12_example7614 : (((heap * heap) * heap) * heap) * int

val g12_example7615 : (((heap * heap) * heap) * heap) * int

val g12_example7616 : (((heap * heap) * heap) * heap) * int

val g12_example7617 : (((heap * heap) * heap) * heap) * int

val g12_example7618 : (((heap * heap) * heap) * heap) * int

val g12_example7619 : (((heap * heap) * heap) * heap) * int

val g12_example7620 : (((heap * heap) * heap) * heap) * int

val g12_example7621 : (((heap * heap) * heap) * heap) * int

val g12_example7622 : (((heap * heap) * heap) * heap) * int

val g12_example7623 : (((heap * heap) * heap) * heap) * int

val g12_example7624 : (((heap * heap) * heap) * heap) * int

val g12_example7625 : (((heap * heap) * heap) * heap) * int

val g12_example7626 : (((heap * heap) * heap) * heap) * int

val g12_example7627 : (((heap * heap) * heap) * heap) * int

val g12_example7628 : (((heap * heap) * heap) * heap) * int

val g12_example7629 : (((heap * heap) * heap) * heap) * int

val g12_example7630 : (((heap * heap) * heap) * heap) * int

val g12_example7631 : (((heap * heap) * heap) * heap) * int

val g12_example7632 : (((heap * heap) * heap) * heap) * int

val g12_example7633 : (((heap * heap) * heap) * heap) * int

val g12_example7634 : (((heap * heap) * heap) * heap) * int

val g12_example7635 : (((heap * heap) * heap) * heap) * int

val g12_example7636 : (((heap * heap) * heap) * heap) * int

val g12_example7637 : (((heap * heap) * heap) * heap) * int

val g12_example7638 : (((heap * heap) * heap) * heap) * int

val g12_example7639 : (((heap * heap) * heap) * heap) * int

val g12_example7640 : (((heap * heap) * heap) * heap) * int

val g12_example7641 : (((heap * heap) * heap) * heap) * int

val g12_example7642 : (((heap * heap) * heap) * heap) * int

val g12_example7643 : (((heap * heap) * heap) * heap) * int

val g12_example7644 : (((heap * heap) * heap) * heap) * int

val g12_example7645 : (((heap * heap) * heap) * heap) * int

val g12_example7646 : (((heap * heap) * heap) * heap) * int

val g12_example7647 : (((heap * heap) * heap) * heap) * int

val g12_example7648 : (((heap * heap) * heap) * heap) * int

val g12_example7649 : (((heap * heap) * heap) * heap) * int

val g12_example7650 : (((heap * heap) * heap) * heap) * int

val g12_example7651 : (((heap * heap) * heap) * heap) * int

val g12_example7652 : (((heap * heap) * heap) * heap) * int

val g12_example7653 : (((heap * heap) * heap) * heap) * int

val g12_example7654 : (((heap * heap) * heap) * heap) * int

val g12_example7655 : (((heap * heap) * heap) * heap) * int

val g12_example7656 : (((heap * heap) * heap) * heap) * int

val g12_example7657 : (((heap * heap) * heap) * heap) * int

val g12_example7658 : (((heap * heap) * heap) * heap) * int

val g12_example7659 : (((heap * heap) * heap) * heap) * int

val g12_example7660 : (((heap * heap) * heap) * heap) * int

val g12_example7661 : (((heap * heap) * heap) * heap) * int

val g12_example7662 : (((heap * heap) * heap) * heap) * int

val g12_example7663 : (((heap * heap) * heap) * heap) * int

val g12_example7664 : (((heap * heap) * heap) * heap) * int

val g12_example7665 : (((heap * heap) * heap) * heap) * int

val g12_example7666 : (((heap * heap) * heap) * heap) * int

val g12_example7667 : (((heap * heap) * heap) * heap) * int

val g12_example7668 : (((heap * heap) * heap) * heap) * int

val g12_example7669 : (((heap * heap) * heap) * heap) * int

val g12_example7670 : (((heap * heap) * heap) * heap) * int

val g12_example7671 : (((heap * heap) * heap) * heap) * int

val g12_example7672 : (((heap * heap) * heap) * heap) * int

val g12_example7673 : (((heap * heap) * heap) * heap) * int

val g12_example7674 : (((heap * heap) * heap) * heap) * int

val g12_example7675 : (((heap * heap) * heap) * heap) * int

val g12_example7676 : (((heap * heap) * heap) * heap) * int

val g12_example7677 : (((heap * heap) * heap) * heap) * int

val g12_example7678 : (((heap * heap) * heap) * heap) * int

val g12_example7679 : (((heap * heap) * heap) * heap) * int

val g12_example7680 : (((heap * heap) * heap) * heap) * int

val g12_example7681 : (((heap * heap) * heap) * heap) * int

val g12_example7682 : (((heap * heap) * heap) * heap) * int

val g12_example7683 : (((heap * heap) * heap) * heap) * int

val g12_example7684 : (((heap * heap) * heap) * heap) * int

val g12_example7685 : (((heap * heap) * heap) * heap) * int

val g12_example7686 : (((heap * heap) * heap) * heap) * int

val g12_example7687 : (((heap * heap) * heap) * heap) * int

val g12_example7688 : (((heap * heap) * heap) * heap) * int

val g12_example7689 : (((heap * heap) * heap) * heap) * int

val g12_example7690 : (((heap * heap) * heap) * heap) * int

val g12_example7691 : (((heap * heap) * heap) * heap) * int

val g12_example7692 : (((heap * heap) * heap) * heap) * int

val g12_example7693 : (((heap * heap) * heap) * heap) * int

val g12_example7694 : (((heap * heap) * heap) * heap) * int

val g12_example7695 : (((heap * heap) * heap) * heap) * int

val g12_example7696 : (((heap * heap) * heap) * heap) * int

val g12_example7697 : (((heap * heap) * heap) * heap) * int

val g12_example7698 : (((heap * heap) * heap) * heap) * int

val g12_example7699 : (((heap * heap) * heap) * heap) * int

val g12_example7700 : (((heap * heap) * heap) * heap) * int

val g12_example7701 : (((heap * heap) * heap) * heap) * int

val g12_example7702 : (((heap * heap) * heap) * heap) * int

val g12_example7703 : (((heap * heap) * heap) * heap) * int

val g12_example7704 : (((heap * heap) * heap) * heap) * int

val g12_example7705 : (((heap * heap) * heap) * heap) * int

val g12_example7706 : (((heap * heap) * heap) * heap) * int

val g12_example7707 : (((heap * heap) * heap) * heap) * int

val g12_example7708 : (((heap * heap) * heap) * heap) * int

val g12_example7709 : (((heap * heap) * heap) * heap) * int

val g12_example7710 : (((heap * heap) * heap) * heap) * int

val g12_example7711 : (((heap * heap) * heap) * heap) * int

val g12_example7712 : (((heap * heap) * heap) * heap) * int

val g12_example7713 : (((heap * heap) * heap) * heap) * int

val g12_example7714 : (((heap * heap) * heap) * heap) * int

val g12_example7715 : (((heap * heap) * heap) * heap) * int

val g12_example7716 : (((heap * heap) * heap) * heap) * int

val g12_example7717 : (((heap * heap) * heap) * heap) * int

val g12_example7718 : (((heap * heap) * heap) * heap) * int

val g12_example7719 : (((heap * heap) * heap) * heap) * int

val g12_example7720 : (((heap * heap) * heap) * heap) * int

val g12_example7721 : (((heap * heap) * heap) * heap) * int

val g12_example7722 : (((heap * heap) * heap) * heap) * int

val g12_example7723 : (((heap * heap) * heap) * heap) * int

val g12_example7724 : (((heap * heap) * heap) * heap) * int

val g12_example7725 : (((heap * heap) * heap) * heap) * int

val g12_example7726 : (((heap * heap) * heap) * heap) * int

val g12_example7727 : (((heap * heap) * heap) * heap) * int

val g12_example7728 : (((heap * heap) * heap) * heap) * int

val g12_example7729 : (((heap * heap) * heap) * heap) * int

val g12_example7730 : (((heap * heap) * heap) * heap) * int

val g12_example7731 : (((heap * heap) * heap) * heap) * int

val g12_example7732 : (((heap * heap) * heap) * heap) * int

val g12_example7733 : (((heap * heap) * heap) * heap) * int

val g12_example7734 : (((heap * heap) * heap) * heap) * int

val g12_example7735 : (((heap * heap) * heap) * heap) * int

val g12_example7736 : (((heap * heap) * heap) * heap) * int

val g12_example7737 : (((heap * heap) * heap) * heap) * int

val g12_example7738 : (((heap * heap) * heap) * heap) * int

val g12_example7739 : (((heap * heap) * heap) * heap) * int

val g12_example7740 : (((heap * heap) * heap) * heap) * int

val g12_example7741 : (((heap * heap) * heap) * heap) * int

val g12_example7742 : (((heap * heap) * heap) * heap) * int

val g12_example7743 : (((heap * heap) * heap) * heap) * int

val g12_example7744 : (((heap * heap) * heap) * heap) * int

val g12_example7745 : (((heap * heap) * heap) * heap) * int

val g12_example7746 : (((heap * heap) * heap) * heap) * int

val g12_example7747 : (((heap * heap) * heap) * heap) * int

val g12_example7748 : (((heap * heap) * heap) * heap) * int

val g12_example7749 : (((heap * heap) * heap) * heap) * int

val g12_example7750 : (((heap * heap) * heap) * heap) * int

val g12_example7751 : (((heap * heap) * heap) * heap) * int

val g12_example7752 : (((heap * heap) * heap) * heap) * int

val g12_example7753 : (((heap * heap) * heap) * heap) * int

val g12_example7754 : (((heap * heap) * heap) * heap) * int

val g12_example7755 : (((heap * heap) * heap) * heap) * int

val g12_example7756 : (((heap * heap) * heap) * heap) * int

val g12_example7757 : (((heap * heap) * heap) * heap) * int

val g12_example7758 : (((heap * heap) * heap) * heap) * int

val g12_example7759 : (((heap * heap) * heap) * heap) * int

val g12_example7760 : (((heap * heap) * heap) * heap) * int

val g12_example7761 : (((heap * heap) * heap) * heap) * int

val g12_example7762 : (((heap * heap) * heap) * heap) * int

val g12_example7763 : (((heap * heap) * heap) * heap) * int

val g12_example7764 : (((heap * heap) * heap) * heap) * int

val g12_example7765 : (((heap * heap) * heap) * heap) * int

val g12_example7766 : (((heap * heap) * heap) * heap) * int

val g12_example7767 : (((heap * heap) * heap) * heap) * int

val g12_example7768 : (((heap * heap) * heap) * heap) * int

val g12_example7769 : (((heap * heap) * heap) * heap) * int

val g12_example7770 : (((heap * heap) * heap) * heap) * int

val g12_example7771 : (((heap * heap) * heap) * heap) * int

val g12_example7772 : (((heap * heap) * heap) * heap) * int

val g12_example7773 : (((heap * heap) * heap) * heap) * int

val g12_example7774 : (((heap * heap) * heap) * heap) * int

val g12_example7775 : (((heap * heap) * heap) * heap) * int

val g12_example7776 : (((heap * heap) * heap) * heap) * int

val g12_example7777 : (((heap * heap) * heap) * heap) * int

val g12_example7778 : (((heap * heap) * heap) * heap) * int

val g12_example7779 : (((heap * heap) * heap) * heap) * int

val g12_example7780 : (((heap * heap) * heap) * heap) * int

val g12_example7781 : (((heap * heap) * heap) * heap) * int

val g12_example7782 : (((heap * heap) * heap) * heap) * int

val g12_example7783 : (((heap * heap) * heap) * heap) * int

val g12_example7784 : (((heap * heap) * heap) * heap) * int

val g12_example7785 : (((heap * heap) * heap) * heap) * int

val g12_example7786 : (((heap * heap) * heap) * heap) * int

val g12_example7787 : (((heap * heap) * heap) * heap) * int

val g12_example7788 : (((heap * heap) * heap) * heap) * int

val g12_example7789 : (((heap * heap) * heap) * heap) * int

val g12_example7790 : (((heap * heap) * heap) * heap) * int

val g12_example7791 : (((heap * heap) * heap) * heap) * int

val g12_example7792 : (((heap * heap) * heap) * heap) * int

val g12_example7793 : (((heap * heap) * heap) * heap) * int

val g12_example7794 : (((heap * heap) * heap) * heap) * int

val g12_example7795 : (((heap * heap) * heap) * heap) * int

val g12_example7796 : (((heap * heap) * heap) * heap) * int

val g12_example7797 : (((heap * heap) * heap) * heap) * int

val g12_example7798 : (((heap * heap) * heap) * heap) * int

val g12_example7799 : (((heap * heap) * heap) * heap) * int

val g12_example7800 : (((heap * heap) * heap) * heap) * int

val g12_example7801 : (((heap * heap) * heap) * heap) * int

val g12_example7802 : (((heap * heap) * heap) * heap) * int

val g12_example7803 : (((heap * heap) * heap) * heap) * int

val g12_example7804 : (((heap * heap) * heap) * heap) * int

val g12_example7805 : (((heap * heap) * heap) * heap) * int

val g12_example7806 : (((heap * heap) * heap) * heap) * int

val g12_example7807 : (((heap * heap) * heap) * heap) * int

val g12_example7808 : (((heap * heap) * heap) * heap) * int

val g12_example7809 : (((heap * heap) * heap) * heap) * int

val g12_example7810 : (((heap * heap) * heap) * heap) * int

val g12_example7811 : (((heap * heap) * heap) * heap) * int

val g12_example7812 : (((heap * heap) * heap) * heap) * int

val g12_example7813 : (((heap * heap) * heap) * heap) * int

val g12_example7814 : (((heap * heap) * heap) * heap) * int

val g12_example7815 : (((heap * heap) * heap) * heap) * int

val g12_example7816 : (((heap * heap) * heap) * heap) * int

val g12_example7817 : (((heap * heap) * heap) * heap) * int

val g12_example7818 : (((heap * heap) * heap) * heap) * int

val g12_example7819 : (((heap * heap) * heap) * heap) * int

val g12_example7820 : (((heap * heap) * heap) * heap) * int

val g12_example7821 : (((heap * heap) * heap) * heap) * int

val g12_example7822 : (((heap * heap) * heap) * heap) * int

val g12_example7823 : (((heap * heap) * heap) * heap) * int

val g12_example7824 : (((heap * heap) * heap) * heap) * int

val g12_example7825 : (((heap * heap) * heap) * heap) * int

val g12_example7826 : (((heap * heap) * heap) * heap) * int

val g12_example7827 : (((heap * heap) * heap) * heap) * int

val g12_example7828 : (((heap * heap) * heap) * heap) * int

val g12_example7829 : (((heap * heap) * heap) * heap) * int

val g12_example7830 : (((heap * heap) * heap) * heap) * int

val g12_example7831 : (((heap * heap) * heap) * heap) * int

val g12_example7832 : (((heap * heap) * heap) * heap) * int

val g12_example7833 : (((heap * heap) * heap) * heap) * int

val g12_example7834 : (((heap * heap) * heap) * heap) * int

val g12_example7835 : (((heap * heap) * heap) * heap) * int

val g12_example7836 : (((heap * heap) * heap) * heap) * int

val g12_example7837 : (((heap * heap) * heap) * heap) * int

val g12_example7838 : (((heap * heap) * heap) * heap) * int

val g12_example7839 : (((heap * heap) * heap) * heap) * int

val g12_example7840 : (((heap * heap) * heap) * heap) * int

val g12_example7841 : (((heap * heap) * heap) * heap) * int

val g12_example7842 : (((heap * heap) * heap) * heap) * int

val g12_example7843 : (((heap * heap) * heap) * heap) * int

val g12_example7844 : (((heap * heap) * heap) * heap) * int

val g12_example7845 : (((heap * heap) * heap) * heap) * int

val g12_example7846 : (((heap * heap) * heap) * heap) * int

val g12_example7847 : (((heap * heap) * heap) * heap) * int

val g12_example7848 : (((heap * heap) * heap) * heap) * int

val g12_example7849 : (((heap * heap) * heap) * heap) * int

val g12_example7850 : (((heap * heap) * heap) * heap) * int

val g12_example7851 : (((heap * heap) * heap) * heap) * int

val g12_example7852 : (((heap * heap) * heap) * heap) * int

val g12_example7853 : (((heap * heap) * heap) * heap) * int

val g12_example7854 : (((heap * heap) * heap) * heap) * int

val g12_example7855 : (((heap * heap) * heap) * heap) * int

val g12_example7856 : (((heap * heap) * heap) * heap) * int

val g12_example7857 : (((heap * heap) * heap) * heap) * int

val g12_example7858 : (((heap * heap) * heap) * heap) * int

val g12_example7859 : (((heap * heap) * heap) * heap) * int

val g12_example7860 : (((heap * heap) * heap) * heap) * int

val g12_example7861 : (((heap * heap) * heap) * heap) * int

val g12_example7862 : (((heap * heap) * heap) * heap) * int

val g12_example7863 : (((heap * heap) * heap) * heap) * int

val g12_example7864 : (((heap * heap) * heap) * heap) * int

val g12_example7865 : (((heap * heap) * heap) * heap) * int

val g12_example7866 : (((heap * heap) * heap) * heap) * int

val g12_example7867 : (((heap * heap) * heap) * heap) * int

val g12_example7868 : (((heap * heap) * heap) * heap) * int

val g12_example7869 : (((heap * heap) * heap) * heap) * int

val g12_example7870 : (((heap * heap) * heap) * heap) * int

val g12_example7871 : (((heap * heap) * heap) * heap) * int

val g12_example7872 : (((heap * heap) * heap) * heap) * int

val g12_example7873 : (((heap * heap) * heap) * heap) * int

val g12_example7874 : (((heap * heap) * heap) * heap) * int

val g12_example7875 : (((heap * heap) * heap) * heap) * int

val g12_example7876 : (((heap * heap) * heap) * heap) * int

val g12_example7877 : (((heap * heap) * heap) * heap) * int

val g12_example7878 : (((heap * heap) * heap) * heap) * int

val g12_example7879 : (((heap * heap) * heap) * heap) * int

val g12_example7880 : (((heap * heap) * heap) * heap) * int

val g12_example7881 : (((heap * heap) * heap) * heap) * int

val g12_example7882 : (((heap * heap) * heap) * heap) * int

val g12_example7883 : (((heap * heap) * heap) * heap) * int

val g12_example7884 : (((heap * heap) * heap) * heap) * int

val g12_example7885 : (((heap * heap) * heap) * heap) * int

val g12_example7886 : (((heap * heap) * heap) * heap) * int

val g12_example7887 : (((heap * heap) * heap) * heap) * int

val g12_example7888 : (((heap * heap) * heap) * heap) * int

val g12_example7889 : (((heap * heap) * heap) * heap) * int

val g12_example7890 : (((heap * heap) * heap) * heap) * int

val g12_example7891 : (((heap * heap) * heap) * heap) * int

val g12_example7892 : (((heap * heap) * heap) * heap) * int

val g12_example7893 : (((heap * heap) * heap) * heap) * int

val g12_example7894 : (((heap * heap) * heap) * heap) * int

val g12_example7895 : (((heap * heap) * heap) * heap) * int

val g12_example7896 : (((heap * heap) * heap) * heap) * int

val g12_example7897 : (((heap * heap) * heap) * heap) * int

val g12_example7898 : (((heap * heap) * heap) * heap) * int

val g12_example7899 : (((heap * heap) * heap) * heap) * int

val g12_example7900 : (((heap * heap) * heap) * heap) * int

val g12_example7901 : (((heap * heap) * heap) * heap) * int

val g12_example7902 : (((heap * heap) * heap) * heap) * int

val g12_example7903 : (((heap * heap) * heap) * heap) * int

val example_set_12 :
  (char list * ((((heap * heap) * heap) * heap) * int)) list