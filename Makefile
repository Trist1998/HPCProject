particle: particle.c
	gcc -I C:\MinGW\include -L C:\MinGW\lib particle.c -o particle
particle_omp: particle.c
	gcc -I C:\MinGW\include -L C:\MinGW\lib -fopenmp omp\particle.c -o particle_omp

run: particle
	./particle 2000 100 100 10 5
	python3 plot_solution.py solution.txt

run_omp: particle_omp
	./particle_omp 2000 100 100 10 5
	python3 plot_solution.py solution.txt

