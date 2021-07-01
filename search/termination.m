function isLooping = termination(populasi)
  [the_best_solution,~]= selection(populasi);
  if the_best_solution.fitnes==100
    isLooping = false;
    disp('found it');
  else
    isLooping = true;
  end
  solusi=the_best_solution;
end