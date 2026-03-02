# BenchLab (Coming Soon)

**Benchmark suite for validation, verification, and cross-comparison of numerical tools for fusion plasma modelling and inverse problems.**

BenchLab is a repository within the TokaLab initiative dedicated to providing standardised benchmark cases for the systematic evaluation of computational tools used in fusion plasma research.

---

## Goal

The goal of BenchLab is to:

- Provide reference benchmark cases for fusion plasma modelling tools  
- Enable quantitative comparison between independent numerical frameworks  
- Support validation and verification workflows  
- Facilitate benchmarking of inverse problem methodologies  
- Promote reproducibility and transparency in computational plasma physics  

---

## Scope

Benchmarks may include (but are not limited to):

- **Inverse problems**, such as tokamak equilibrium reconstruction and plasma tomography  
- **Forward problems**, including Grad–Shafranov solvers for simulation and engineering optimisation  
- **Synthetic diagnostics** generation  
- **Data-driven and machine learning approaches**

The repository will evolve as new benchmark categories are defined and formalised.

---

## Repository Structure

Each benchmark problem is organised as a dedicated folder within the repository.

Example:

```
tomography/
    datasets/
    codes/
    results/
    documentation/
```

Each benchmark folder is expected to include:

- A clear mathematical formulation  
- Input datasets  
- Evaluation metrics  
- Reference solutions (when available)  
- Reproducibility instructions  

---

## Philosophy

BenchLab follows three core principles:

- **Reproducibility** – All benchmark definitions must be fully specified.  
- **Transparency** – Evaluation metrics must be explicit and documented.  
- **Comparability** – Results should be directly comparable across tools.  

Quantitative evaluation is prioritised over qualitative comparison.

---

## Contributing

Contributions are welcome and should follow the standard TokaLab contribution guidelines.

To propose a new benchmark:

1. Open an issue describing the problem and its scientific motivation.  
2. Provide a clear problem definition and evaluation criteria.  
3. Include datasets and reference results when available.

---

## Status

BenchLab is currently under active development.

---
## Contact

For questions, suggestions, or collaborations:

📧 Email: [tokalab.fusion@gmail.com](mailto:tokalab.fusion@gmail.com)  
🌐 Website: [tokalab.github.io](https://tokalab.github.io/)  
💼 Social: [LinkedIn](https://www.linkedin.com/company/tokalab-fusion/)  
