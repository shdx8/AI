clear
clc

Target = 'shdx'
besar_populasi=10;
laju_mutasi = 0.5
A
populasi = create_population(target, besar_populasi);
populasi.fitnes;
isLooping=true;
generasi=0;
%representasi gen

while isLooping

  [parent1, parent2]= selection (populasi)

  [child1, child2]=crossover (parent1,parent2)

  mutant1 = mutation(child1,laju_mutasi);
  mutant2 = mutation(child2,laju_mutasi);

  children = [mutant1,mutant2];
  populasi = regeneration(children,populasi);
  generasi = generasi+1;

   
  [isLooping,solusi] = termination(populasi);
  logging(populasi,target,solusi,generasi)
end