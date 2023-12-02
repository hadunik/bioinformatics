
set bg_rgb, [1,1,1]
set ray_trace_fog=0
set fog=0
set antialias=1
set depth_cue=0
select all

load ptm0.pdb.pdb, pdb1
load selected_prediction.pdb.pdb, pdb2
select pdb1
select pdb2

hide lines, all

color red, pdb1
color green, pdb2
set cartoon_fancy_helices, 1
set cartoon_flat_sheets, 1
set cartoon_smooth_loops, 1
show cartoon, all 

hide nonbonded
center all
zoom all
