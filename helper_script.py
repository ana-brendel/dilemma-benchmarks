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


