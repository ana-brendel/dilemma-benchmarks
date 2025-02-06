import os
import shutil

# GIT CLEANUP: git gc --aggressive --prune

folder = "/Users/anabrendel/Desktop/LemmaSynthesis/benchmarks/vfa_selection/refined/tests"
source = "/Users/anabrendel/Desktop/LemmaSynthesis/benchmarks/vfa_selection/refined/selection.v"
results = "/Users/anabrendel/Desktop/LemmaSynthesis/benchmarks/vfa_selection/refined/results"

tests = [
    "select_rest_length_by_select_perm",
    "select_rest_length_by_Permutation_length",

    "selsort_perm_by_select_perm",
    "selsort_perm_by_select_rest_length",

    "selection_sort_perm_by_selsort_perm",

    "le_all__le_one_by_Forall_forall",

    "select_smallest_by_select_fst_leq_1",
    "select_smallest_by_select_fst_leq_2",

    "select_in_by_select_perm",
    "select_in_by_Permutation_in",

    "cons_of_small_maintains_sort_ind_list_by_le_all__le_one",
    "cons_of_small_maintains_sort_ind_list_by_Permutation_in",
    "cons_of_small_maintains_sort_ind_list_by_selsort_perm",

    "cons_of_small_maintains_sort_ind_length_by_select_in",
    "cons_of_small_maintains_sort_ind_length_by_le_all__le_one",
    "cons_of_small_maintains_sort_ind_length_by_select_rest_length",
    "cons_of_small_maintains_sort_ind_length_by_select_smallest",

    "selsort_sorted_by_cons_of_small_maintains_sort",
    "selsort_sorted_by_select_rest_length_1",
    "selsort_sorted_by_select_smallest",
    "selsort_sorted_by_select_rest_length_2",

    "selection_sort_sorted_by_selsort_sorted",

    "selection_sort_is_correct_by_selection_sort_perm",
    "selection_sort_is_correct_by_selection_sort_sorted"
]

def clean():
    for f in os.listdir(folder):
        full = os.path.join(folder,f)
        if f.endswith(".txt"):
            dst = os.path.join(results,f)
            shutil.move(src=full,dst=dst)
        elif not f.endswith(".v"):
            os.system(f"rm {full}")

def run_k(at,k):
    ran = []
    for test in tests:
        file = f"{test}.v"
        if (at <= len(ran)) and (len(ran) < k + at):
            cmd = f"cd {folder} && coqc {file}"
            os.system(cmd)
            print(f"Completed: {test}")
        ran += [test]

    print(f"\nCompleted All Tests ({at} - {at + k - 1})")
    for i in range(len(ran)):
        if at <= i and i < k + at:
            print(f"{i + 1}. {ran[i]}")

next_index = 0

run_k(next_index,0)
clean()