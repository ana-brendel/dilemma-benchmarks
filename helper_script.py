import sys
import os
import shutil
import csv

def write_content(file, content):
    with open(file,"w") as f:
        f.write("".join(content))

def run_benchmarks(project,status_file):
    ran = ""
    for folder in (os.listdir(project)):
        # folder should have a _CoqProject in it and the .v file
        path = os.path.join(project,folder)
        make_cmd = f"cd {path} && make"
        make_file = f"cd {path} && coq_makefile -f _CoqProject -o Makefile"
        ran = f"{ran}{path}\n"
        os.system(make_cmd)
        write_content(status_file,ran)

def read_lines_from(f):
    file = open(f, "r+")
    lines = file.readlines()
    r = []
    for l in lines: 
        test = l.strip()
        r.append(test)
    return r

def read_for_starts_with(f,exp):
    file = open(f, "r+")
    lines = file.readlines()
    r = []
    for l in lines: 
        test = l.strip()
        if test.startswith(exp):
            return test
    return ""

def read_for_between(f,start,end):
    found = False
    file = open(f, "r+")
    lines = file.readlines()
    ret = ""
    for l in lines: 
        test = l.strip()
        if test.startswith("* Hypothesis:"):
            return ret.strip()
        elif found:
            ret = f"{ret} {test}"
        elif test.startswith(start):
            content = test.removeprefix(start)
            ret = f"{ret} {content}"
            found = True
    return ""

# Folder should be the folder that holds the _lfind_ files
def remove_lfind_by_prod(folder):
    for t in os.listdir(folder):
        ft = os.path.join(folder,t)
        for file in os.listdir(ft):
            if file.endswith(".txt"):
                print(file)
            elif file.endswith(".v"):
                if file.startswith("show"):
                    print(file)
            else:
                ff = os.path.join(ft,file)
                os.remove(ff)


# projects should be the folder that holds the results
def get_benchmarks(projects):
    tests = []
    for f in os.listdir(projects):
        fp = os.path.join(projects,f)
        for test in os.listdir(fp):
            tests.append(os.path.join(fp,test))
    return tests

def get_benchmarks_circuits(projects):
    tests = []
    for f in os.listdir(projects):
        ff = os.path.join(projects,f)
        for p in os.listdir(ff):
            fp = os.path.join(ff,p)
            for test in os.listdir(fp):
                tests.append(os.path.join(fp,test))
    return tests

def get_duplicates_by_goal(tests):
    goal_states = {}
    for test in tests:
        base = os.path.basename(test)
        progress_file = os.path.join(test,"lfind_progress_log.txt")
        goal_delim = "* Goal State:"
        hyp_delim = "* Hypothesis:"
        goal = read_for_between(progress_file,goal_delim,hyp_delim)
        if goal in goal_states:
            goal_states[goal].append(base)
        else:
            goal_states[goal] = [base]
    return goal_states
        
def write_to_csv_duplicates(d,file):
    fieldnames = ['GOAL', 'TESTS']
    lines = []
    for goal in d.keys():
        tests = d[goal]
        test_string = ""
        for t in tests: 
            no_lfind = t.removeprefix("_lfind_")
            test_string = f"{test_string}[{no_lfind}]"
        entry = {'GOAL' : goal, 'TESTS' : test_string}
        lines.append(entry)
    csv_file = open(file,'w',newline='')
    writer = csv.DictWriter(csv_file,fieldnames=fieldnames)
    for row in lines:
        writer.writerow(row)
        

# p should be folder that contains "failure" and "success" folders
def count_duplicates(p):
    file = f"{p}/duplicates.csv"
    tests = get_benchmarks(p)
    # tests = get_benchmarks_circuits(p)
    dups_dict = get_duplicates_by_goal(tests)
    write_to_csv_duplicates(dups_dict,file)

def run_benchmarks_from_list(projects):
    for path in (projects):
        make_cmd = f"cd {path} && make"
        os.system(make_cmd)


clam_tests_from_lfind_paper = {"goal1.v": [["theorem0", 31, "lem"]],"goal2.v": [["theorem0", 40, "lem"], ["theorem0", 41, "lem2"]],"goal4.v": [["theorem0", 39, "lem"]],"goal5.v": [["theorem0", 46, "lem"], ["theorem0", 47, "lem2"]],
"goal6.v": [["len_rev", 55, "len_append"], ["len_rev", 56, "plus_comm"], ["theorem0", 63, "len_rev"], ["theorem0", 64, "len_append"]],"goal7.v": [["theorem0", 54, "plus_comm"], ["theorem0", 55, "plus_comm"], ["theorem0", 58, "plus_comm"], ["theorem0", 59, "plus_comm"]],"goal8.v": [["drop_Cons_assoc", 33, "drop_Cons"], ["drop_Cons_assoc", 34, "drop_Cons"], ["drop_Cons_assoc", 38, "drop_Nil"], ["drop_Cons_assoc", 39, "drop_Nil"], ["theorem0", 48, "drop_Cons_assoc"], ["theorem0", 50, "drop_Nil"]],"goal9.v":[["theorem0", 52, "drop_assoc"], ["theorem0", 53, "drop_assoc"], ["theorem0", 54, "drop_assoc"]],"goal10.v": [["append_assoc", 35, "append_Nil"], ["append_assoc", 36, "append_Nil"], ["append_assoc", 37, "append_Nil"], ["append_rev_Cons", 45, "append_assoc"], ["rev_append", 54, "append_rev_Cons"], ["rev_append", 57, "append_Nil"], ["rev_append", 59, "append_Nil"], ["theorem0", 65, "rev_append"]],"goal11.v": [["lem2", 41, "lem"], ["theorem0", 55, "append_assoc"], ["theorem0", 56, "lem"], ["theorem0", 56, "append_assoc"], ["theorem0", 57, "lem2"], ["theorem0", 57, "lem3"]],"goal12.v": [["theorem0", 40, "append_assoc"]],"goal13.v": [["theorem0", 36, "lem"]], "goal14.v": [["theorem0", 109, "lem"]], "goal15.v": [["theorem0", 28, "lem"], ["theorem0", 29, "lem"]],"goal16.v": [["theorem0", 33, "lem"]],"goal17.v": [["theorem0", 39, "lem"], ["theorem0", 40, "lem"], ["theorem0", 41, "lem"]],"goal18.v": [["theorem0", 41, "append_assoc"], ["theorem0", 42, "append_assoc"], ["theorem0", 43, "lem3"]],"goal19.v": [["theorem0", 40, "lem2"], ["theorem0", 41, "lem2"]],"goal20.v": [["theorem0", 40, "lem"]],"goal21.v": [["theorem0", 49, "append_assoc"], ["theorem0", 50, "append_assoc"], ["theorem0", 51, "lem3"]],"goal22.v": [["theorem0", 46, "lem"], ["theorem0", 47, "lem3"]],"goal23.v": [["lem", 46, "lem2"], ["lem", 47, "lem3"], ["theorem0", 52, "lem"]],"goal24.v": [["theorem0", 45, "lem"], ["theorem0", 47, "lem2"]],"goal26.v": [["theorem0", 36, "plus_comm"]],"goal27.v": [["append_assoc", 41, "append_nil"], ["append_assoc", 42, "append_nil"], ["append_assoc", 43, "append_nil"], ["qreva_append", 50, "append_assoc"], ["qreva_append", 53, "append_nil"], ["theorem0", 60, "qreva_append"], ["theorem0", 61, "append_nil"]],"goal28.v": [ ["qrevflat_append", 62, "append_assoc"], ["qrevflat_append", 69, "append_nil"], ["qrevflat_append", 74, "append_nil"], ["theorem0", 82, "qrevflat_append"], ["theorem0", 83, "append_nil"]],"goal29.v": [["rev_qreva_nil", 89, "qreva_append"], ["rev_qreva_nil", 90, "append_nil"], ["theorem0", 97, "rev_qreva_nil"], ["theorem0", 98, "rev_involutive"]], "goal30.v": [["theorem0", 73, "append_nil"], ["theorem0", 74, "rev_involutive"]],"goal31.v": [["qreva_qreva", 67, "qreva_nil"], ["qreva_qreva", 67, "qreva_append"]], 
"goal32.v": [["rotate_len_append", 50, "append_nil"], ["rotate_len_append", 51, "append_assoc"], ["rotate_len_append", 51, "append_assoc"], ["rotate_len", 59, "rotate_len_append"]],  "goal33.v": [["plus_commut", 63, "plus_zero"], ["plus_commut", 64, "plus_succ"], ["mult_succ", 80, "plus_succ"], ["mult_succ", 80, "plus_assoc"], ["mult_succ", 80, "plus_commut"], ["mult_succ", 81, "plus_assoc"], ["mult_succ", 81, "plus_succ"], ["mult_commut", 89, "mult_zero"], ["mult_commut", 90, "mult_succ"], ["distrib", 98, "plus_assoc"], ["distrib", 98, "plus_commut"], ["distrib", 99, "plus_assoc"], ["mult_assoc", 107, "distrib"], ["qfac_mult", 115, "mult_assoc"], ["qfac_mult", 115, "mult_commut"], ["fac_eq_qfac", 123, "qfac_mult"]], "goal34.v": [["plus_qmult", 66, "plus_assoc"], ["plus_qmult", 66, "plus_commut"], ["plus_qmult", 67, "plus_assoc"], ["mult_eq_qmult", 75, "plus_qmult"]],"goal35.v": [["mult_qexp", 110, "mult_assoc"], ["mult_qexp", 110, "mult_commut"], ["mult_qexp", 111, "mult_assoc"], ["exp_eq_qexp", 119, "mult_qexp"]],"goal38.v": [["theorem0", 54, "goal36"], ["theorem0", 56, "goal37"]], "goal40.v": [["subset_append", 81, "append_cons"], ["subset_append", 84, "Nat_beq_refl"], ["subset_refl", 97, "append_single"], ["subset_refl", 97, "subset_append"], ["subset_refl", 98, "Nat_beq_refl"], ["theorem0", 111, "subset_refl"], ["theorem0", 113, "subset_refl"]],"goal41.v": [["subset_append_general", 85, "mem_append"], ["theorem0", 98, "append_single"], ["theorem0", 98, "subset_append_general"], ["theorem0", 100, "Nat_beq_refl"], ["theorem0", 103, "append_single"], ["theorem0", 103, "subset_append_general"], ["theorem0", 105, "Nat_beq_refl"]],"goal42.v": [["theorem0", 67, "mem_union"]], "goal45.v": [["theorem0", 61, "Nat_beq_refl"], ["theorem0", 63, "Nat_beq_refl"]], "goal46.v": [["theorem0", 58, "eqb_refl"], ["theorem0", 61, "eqb_refl"]],  "goal47.v": [["theorem0", 66, "eqb_not_eq"], ["theorem0", 70, "eqb_not_eq"]],"goal48.v": [["theorem0", 72, "insort_len"]],"goal50.v": [["count_cons", 102, "eqb_refl"], ["count_insort", 114, "count_cons"], ["count_insort", 123, "count_cons"], ["count_insort", 136, "eqb_refl"],["count_insort_diff", 163, "count_cons_diff"], ["theorem0", 194, "count_insort"], ["theorem0", 199, "count_insort_diff"]],"goal54.v": [["theorem0", 35, "lem"]],"goal56.v": [["theorem0", 35, "lem"], ["theorem0", 36, "lem"]], "goal57.v": [["theorem0", 35, "lem"], ["theorem0", 36, "lem"], ["theorem0", 37, "lem"], ["theorem0", 38, "lem"]],"goal59.v": [["theorem0", 33, "lem"]], "goal60.v": [["theorem0", 34, "lem"]],"goal64.v": [["theorem0", 41, "negb_invol"]], "goal66.v": [["theorem0", 35, "negb_invol"]],"goal70.v": [["theorem0", 82, "Nat_beq_refl"], ["theorem0", 84, "Nat_beq_refl"]],"goal71.v": [["theorem0", 66, "Nat_beq_eq"]],"goal75.v": [["theorem0", 41, "append_assoc"]],"goal76.v": [["theorem0", 52, "append_assoc"]], "goal77.v": [["theorem0", 46, "append_nil"], ["theorem0", 47, "append_assoc"]], "goal78.v": [ ["theorem0", 64, "rev_rev"], ["theorem0", 64, "append_nil"], ["theorem0", 65, "rev_append"], ["theorem0", 65, "append_assoc"]], "goal79.v": [["theorem0", 42, "append_nil"], ["theorem0", 43, "append_assoc"], ["theorem0", 44, "append_assoc"]], "goal80.v": [["theorem0", 58, "append_nil"], ["theorem0", 59, "rev_append"], ["theorem0", 59, "rev_rev"]],"goal81.v": [["theorem0", 47, "qreva_rev"], ["theorem0", 48, "append_assoc"]], "goal82.v": [["qreva_rev", 65, "append_assoc"], ["theorem0", 71, "qreva_rev"], ["theorem0", 71, "rev_rev"], ["theorem0", 74, "rev_append"], ["theorem0", 76, "append_assoc"]],  
 "goal83.v": [["theorem0", 50, "append_assoc"], ["theorem0", 51, "append_assoc"], ["theorem0", 52, "append_nil"]], 
  "goal84.v": [["theorem0", 111, "mult_assoc"], ["theorem0", 111, "mult_commut"]], "goal85.v": [["theorem0", 66, "plus_commut"], ["theorem0", 66, "plus_assoc"]],"goal86.v": [["theorem0", 113, "mult_assoc"], ["theorem0", 113, "mult_commut"]]}

lia_benches_from_lfind_paper  = {"list_rev_append.v": [["rev_append", 37, "app_nil"], ["rev_append", 38, "app_assoc"]], "list_rev.v": [["double_rev", 46, "rev_append"]], "list_rev_len.v": [["len_rev", 38, "len_append"]], "queue_push.v": [["queue_push", 76, "len_app"], ["queue_push", 77, "len_app"], ["queue_push", 77, "len_rev"], ["queue_push", 78, "plus_comm"]], "list_rev2_append.v": [["rev2_append", 41, "append_single"], ["rev2_append", 42, "rev2_append_aux"]], "list_rev2_len.v": [["list_rev2_len", 32, "list_rev2_len_lem"]], "list_rev2.v": [["rev2_append", 47, "append_single"], ["rev2_append", 48, "rev2_append_aux"], ["rev_eq_rev2", 59, "rev2_append"]], "tree_insert_all.v": [["tree_insert_all", 70, "helper"]], "queue_len.v": [["len_rev", 69, "len_app"], ["len_rev", 69, "plus_comm"], ["queue_len", 77, "len_app"], ["queue_len", 80, "len_rev"]]}

full_adder_from_lfind_paper  = {"fulladder.v": [["full_adder_sum_sym2", 95, "half_adder_sum_false"], ["full_adder_sum_sym2", 96, "half_adder_sum_false"], ["full_adder_sum_sym2", 99, "half_adder_sum_false"], ["full_adder_sum_sym2", 100, "half_adder_sum_false"], ["full_adder_carry_sym2", 128, "half_adder_sum_false"], ["full_adder_carry_sym2", 129, "half_adder_carry_false"], ["full_adder_carry_sym2", 130, "half_adder_carry_false"], ["full_adder_carry_sym2", 135, "half_adder_carry_false"], ["full_adder_carry_sym2", 136, "half_adder_sum_false"], ["full_adder_carry_sym2", 137, "half_adder_carry_false"], ["full_adder_carry_neg", 168, "full_adder_carry_sym1"], ["full_adder_carry_neg", 169, "full_adder_carry_true"], ["full_adder_carry_neg", 170, "full_adder_carry_false"], ["full_adder_carry_neg", 171, "full_adder_carry_true"], ["full_adder_carry_neg", 172, "full_adder_carry_sym1"], ["full_adder_carry_neg", 173, "full_adder_carry_false"], ["BV_full_adder_sum_v_nil_false", 351, "BV_full_adder_sum_eq3"], ["BV_full_adder_sum_v_nil_false", 352, "half_adder_carry_false"], ["BV_full_adder_sum_v_nil_false", 353, "half_adder_sum_false"], ["BV_full_adder_carry_v_nil_false", 361, "BV_full_adder_carry_eq3"], ["BV_full_adder_carry_v_nil_false", 362, "half_adder_carry_false"], ["BV_full_adder_sum_sym", 371, "BV_full_adder_sum_eq2"], ["BV_full_adder_sum_sym", 372, "BV_full_adder_sum_eq3"], ["BV_full_adder_sum_sym", 374, "BV_full_adder_sum_eq2"], ["BV_full_adder_sum_sym", 375, "BV_full_adder_sum_eq3"], ["BV_full_adder_sum_sym", 376, "BV_full_adder_sum_eq4"], ["BV_full_adder_sum_sym", 377, "full_adder_carry_sym1"], ["BV_full_adder_sum_sym", 378, "full_adder_sum_sym1"], ["BV_full_adder_carry_sym", 397, "BV_full_adder_carry_eq2"], ["BV_full_adder_carry_sym", 398, "BV_full_adder_carry_eq3"], ["BV_full_adder_carry_sym", 400, "BV_full_adder_carry_eq2"], ["BV_full_adder_carry_sym", 401, "BV_full_adder_carry_eq3"], ["BV_full_adder_carry_sym", 403, "BV_full_adder_carry_eq4"], ["BV_full_adder_carry_sym", 404, "full_adder_carry_sym1"], ["BV_full_adder_sym", 413, "BV_full_adder_sum_sym"], ["BV_full_adder_sym", 414, "BV_full_adder_carry_sym"], ["BV_to_nat_app2", 460, "BV_to_nat_app"], ["BV_full_adder_nil_true_ok", 467, "BV_full_adder_sum_eq3"], ["BV_full_adder_nil_true_ok", 468, "BV_full_adder_carry_eq3"], ["BV_full_adder_nil_true_ok", 469, "app_eq2"], ["BV_full_adder_nil_true_ok", 470, "half_adder_carry_true"], ["BV_full_adder_nil_true_ok", 472, "BV_full_adder_sum_v_nil_false"], ["BV_full_adder_nil_true_ok", 473, "BV_full_adder_carry_v_nil_false"], ["BV_full_adder_nil_true_ok", 474, "BV_to_nat_app2"], ["BV_full_adder_nil_ok", 484, "BV_full_adder_nil_true_ok"], ["BV_full_adder_nil_ok", 485, "BV_full_adder_sum_v_nil_false"], ["BV_full_adder_nil_ok", 486, "BV_full_adder_carry_v_nil_false"], ["BV_full_adder_nil_ok", 487, "BV_to_nat_app2"], ["BV_full_adder_ok", 500, "BV_full_adder_sym"], ["BV_full_adder_ok", 502, "BV_full_adder_nil_ok"], ["BV_full_adder_ok", 527, "half_adder_ok"], ["BV_full_adder_ok", 528, "plus_permute2"], ["BV_full_adder_ok", 556, "full_adder_carry_sym1"], ["BV_full_adder_ok", 557, "full_adder_carry_true"], ["BV_full_adder_ok", 558, "full_adder_sum_sym1"], ["BV_full_adder_ok", 559, "full_adder_sum_true"], ["BV_full_adder_ok", 572, "plus_permute2"], ["BV_full_adder_ok", 585, "plus_permute2"], ["BV_full_adder_ok", 593, "plus_permute2"], ["BV_full_adder_ok", 602, "plus_permute2"], ["BV_full_adder_ok", 608, "plus_permute2"], ["BV_full_adder_ok", 613, "plus_permute2"]]}
len(full_adder_from_lfind_paper["fulladder.v"])


tests = "/home/anabrendel/lfind/benchmarks/clam/results/incomplete/__rename_fixpoint"
for f in os.listdir(tests):
    test = f.removeprefix("_lfind_")
    print(test)
    path = os.path.join("/home/anabrendel/lfind/benchmarks/clam/sources",test)
    make_cmd = f"cd {path} && make"
    os.system(make_cmd)