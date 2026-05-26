# BenchLab

**Benchmark suite for validation, verification, and cross-comparison of numerical tools for fusion plasma modelling and inverse problems.**

BenchLab is a repository within the [TokaLab](https://tokalab.github.io/) initiative, dedicated to providing standardised benchmark cases for the systematic evaluation of computational tools used in fusion plasma research.

---

## 🎯 Vision

Reproducibility and comparability are fundamental to scientific progress — yet in computational plasma physics, benchmarking is rarely systematic.

BenchLab addresses this gap by providing:

- **Reference cases** with clearly defined inputs, evaluation metrics, and reference solutions
- **A common ground** for quantitative comparison between independent numerical frameworks
- **Standardised workflows** for validation and verification of forward and inverse problem solvers
- **Reusable datasets** compatible with the [VirtualLab](https://github.com/TokaLab/VirtualLab) ecosystem

---

## 🔭 Scope

Benchmarks may include, but are not limited to:

- **Inverse problems** — tokamak equilibrium reconstruction, plasma tomography
- **Forward problems** — Grad–Shafranov solvers for simulation and engineering optimisation
- **Synthetic diagnostics** — signal generation and validation against reference plasma scenarios
- **Data-driven and machine learning approaches** — model training, generalisation, and performance assessment

The repository will evolve as new benchmark categories are defined and formalised by the community.

---

## 🗂 Repository Structure

Each benchmark is organised as a self-contained folder:

```plaintext
BenchLab/
│
├── tomography/                  # Example: plasma tomography benchmark
│   ├── configurations/          # Configuration files
│   ├── datasets/                # Input data and reference cases
│   └── methods/                 # methods to benchmark
│
├── equilibrium_reconstruction/  # Example: Grad–Shafranov inverse problem
│   └── ...
│
└── README.md
```

Every benchmark folder is expected to include:

- A clear **mathematical formulation** of the problem
- **Input datasets** in an open, documented format
- Explicit **evaluation metrics**
- **Reference solutions** (when available)
- **Reproducibility instructions**, including dependencies and runtime information

---

## 🧭 Philosophy

BenchLab is built on three core principles:

- **Reproducibility** — All benchmark definitions must be fully specified and self-contained.
- **Transparency** — Evaluation metrics must be explicit, documented, and justified.
- **Comparability** — Results must be directly comparable across tools and implementations.

Quantitative evaluation is always prioritised over qualitative comparison.

---

## 🔗 Integration with VirtualLab

BenchLab is designed to work in concert with [VirtualLab](https://github.com/TokaLab/VirtualLab).
Synthetic datasets for benchmark cases can be generated using VirtualLab modules such as **SimPLa**, **SynDiag**, **SimRad**, and **DataGen**, ensuring full traceability from the physical model to the benchmark input.

---

## 🤝 Contributing

Contributions are welcome and should follow the [TokaLab contribution guidelines](https://github.com/TokaLab/VirtualLab/blob/main/Contributing.md).

To propose a new benchmark:

1. Open an [Issue](https://github.com/TokaLab/BenchLab/issues) describing the problem and its scientific motivation.
2. Provide a clear problem definition and evaluation criteria.
3. Include datasets and reference results when available.
4. The admin team will review the proposal and coordinate the integration.

If your benchmark is based on published work, you may include a citation request in the benchmark folder's `README.md`.

---

## 📄 License

BenchLab is released under the BSD 3-Clause License.
See the [License](./License) file for full details.

---

## 📬 Contact

For questions, suggestions, or collaborations:

📧 Email: [tokalab.fusion@gmail.com](mailto:tokalab.fusion@gmail.com)
🌐 Website: [tokalab.github.io](https://tokalab.github.io/)
💼 Social: [LinkedIn](https://www.linkedin.com/company/tokalab-fusion/)
