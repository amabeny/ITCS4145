import matplotlib.pyplot as plt
import pandas as pd

# Load the benchmark results
data = pd.read_csv("results.csv")

# Plot the results
plt.figure(figsize=(10, 6))
plt.plot(data["Array Size"], data["Execution Time (seconds)"], marker='o', linestyle='-')
plt.xscale("log")
plt.yscale("log")
plt.xlabel("Array Size")
plt.ylabel("Execution Time (seconds)")
plt.title("Merge Sort Benchmark Performance")
plt.grid(True)

# Save and show plot
plt.savefig("benchmark_plot.png")
plt.show()
