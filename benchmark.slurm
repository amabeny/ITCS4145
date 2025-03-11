#!/bin/bash
#SBATCH --job-name=mergesort_benchmark
#SBATCH --output=benchmark_output.txt
#SBATCH --partition=Centaurus  # Updated partition name
#SBATCH --time=01:00:00
#SBATCH --mem=4G
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

module load gcc  # Load GCC module

# Compile if not compiled
make

# Create or clear the results file
echo "Array Size,Execution Time (seconds)" > results.csv

# Benchmark for different array sizes
sizes=(10 100 1000 10000 100000 1000000 10000000 100000000 1000000000)
for size in "${sizes[@]}"; do
    echo "Running mergesort with size $size..."
    runtime=$(./mergesort $size | awk '{print $NF}')  # Extract execution time
    echo "$size,$runtime" >> results.csv  # Save results
done

