import os

folder = "/Users/anabrendel/Desktop/LemmaSynthesis/benchmarks/vfa_selection/tests"

# 25 tests

ran = [
    "cons_of_small_maintains_sort_by_le_all__le_one.v", # other computer
    "select_rest_length_2_by_Permutation_length.v", # other computer
    "selsort_sorted_by_select_rest_length_1.v", # other computer
    "selsort_perm_by_length_zero_iff_nil.v", # other computer
    "selsort_sorted_by_select_smallest.v", # other computer
    "selsort_sorted_by_select_rest_length_2.v", # other computer
    "cons_of_small_maintains_sort_by_Permutation_in.v",
    "select_smallest_by_select_fst_leq_1.v",
    "select_rest_length_2_by_cons_equal_length.v",
    "select_in_by_Permutation_in.v",
    "selsort_sorted_by_cons_of_small_maintains_sort.v",
    "select_in_by_select_perm.v",
    "selsort_perm_by_Permutation_refl.v",
    "select_smallest_by_select_fst_leq_2.v",
    "cons_of_small_maintains_sort_by_Permutation_sym.v",
    "select_rest_length_2_by_select_perm.v",
    "selsort_perm_by_select_rest_length.v",
    "select_in_by_Permutation_sym.v",
    "select_rest_length_1_by_select_perm.v",
    "le_all__le_one_by_Forall_forall.v",
    "selection_sort_perm_by_selsort_perm.v",
    "selsort_perm_by_select_perm.v",
    "cons_of_small_maintains_sort_by_selsort_perm.v",
    "selection_sort_sorted_by_selsort_sorted.v",
    "select_rest_length_1_by_Permutation_length.v"
]

new_run = []

for test in os.listdir(folder):
    if not (test.endswith(".v") or test.endswith(".txt")):
        full = os.path.join(folder,test)
        rm = f"rm {full}"
        os.system(rm)

# for test in os.listdir(folder):
#     if len(new_run) < 12 and test.endswith(".v") and test not in ran:
#         full = os.path.join(folder,test)
#         cmd = f"cd {folder} && coqc {full}"
#         # os.system(cmd)
#         new_run += [test]

# index = 1
# for i in new_run: 
#     print(f"{index}. {i}")
#     index += 1

# GIT CLEANUP: git gc --aggressive --prune