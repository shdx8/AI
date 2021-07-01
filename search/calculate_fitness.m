function fitnes = calculate_fitnes(gen,target)
  fitnes = (sum(target==gen)/panjang_target)*100
end