import os

folder = "/Users/anabrendel/Desktop/LemmaSynthesis/benchmarks/vfa_selection/tests"

ran = [
    "select_fst_leq_by_lt_lt_succ_r_1.v",
    "cons_of_small_maintains_sort_by_Permutation_in.v",
    "select_fst_leq_by_lt_succ_r_2.v",
    "select_smallest_by_select_fst_leq_1.v",
    "select_rest_length_2_by_cons_equal_length.v",
    "select_in_by_Permutation_in.v",
    "select_rest_length_1_by_select_perm.v",
    "selsort_sorted_by_cons_of_small_maintains_sort.v",
    "select_in_by_select_perm.v",
    "select_smallest_by_lt_lt_succ_r.v",
    "select_fst_leq_by_lt_lt_succ_r_2.v",
    "select_fst_leq_by_lt_succ_r_1.v",
    "selsort_perm_by_Permutation_refl.v",
    "select_smallest_by_select_fst_leq_2.v",
    "select_rest_length_2_by_select_perm.v",
    "selsort_perm_by_select_rest_length.v",
    "cons_of_small_maintains_sort_by_Permutation_sym.v",
    "select_in_by_in_inv.v",
    "select_in_by_Permutation_sym.v",
    "cons_of_small_maintains_sort_by_le_all__le_one.v",
    "select_smallest_by_le_trans.v", 
    "select_rest_length_2_by_Permutation_length.v", 
    "selsort_sorted_by_select_rest_length_1.v",
    "select_fst_leq_by_le_lt_trans.v", 
    "selsort_perm_by_length_zero_iff_nil.v",
    "select_smallest_by_Forall_cons_2.v", 
    "selsort_sorted_by_select_smallest.v",
    "selsort_sorted_by_select_rest_length_2.v"
]

new_run = []

# for test in os.listdir(folder):
#     if not test.endswith(".v"):
#         full = os.path.join(folder,test)
#         rm = f"rm {full}"
#         os.system(rm)

# for test in os.listdir(folder):
#     if len(new_run) < 10 and test.endswith(".v") and test not in ran:
#         full = os.path.join(folder,test)
#         cmd = f"cd {folder} && coqc {full}"
#         os.system(cmd)
#         new_run += [test]

# index = 1
# for i in new_run: 
#     print(f"{index}. {i}")
#     index += 1

# GIT CLEANUP: git gc --aggressive --prune