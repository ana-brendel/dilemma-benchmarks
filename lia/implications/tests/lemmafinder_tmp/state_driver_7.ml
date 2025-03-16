open State_7


let char_list_to_string (c : char list) : string = String.of_seq (List.to_seq c)


let split_for_prop (example_set : ((char list) * 'c) list) (prop_str : string) (prop : 'c -> bool) : unit =
  let trues,falses = List.partition_map (fun (s,c) -> if prop c then Left (char_list_to_string s) else Right (char_list_to_string s)) example_set in
  print_endline ";"; print_endline prop_str;
  print_endline "*"; print_endline (String.concat "," trues);
  print_endline "*"; print_endline (String.concat "," falses)


let () = split_for_prop example_set_7 "goal" goal; split_for_prop example_set_7 "assump_Assumption_4" assump_Assumption_4; split_for_prop example_set_7 "assump_Assumption_7" assump_Assumption_7; split_for_prop example_set_7 "assump_GenVarEq_gv0" assump_GenVarEq_gv0; split_for_prop example_set_7 "assump_Assumption_6" assump_Assumption_6