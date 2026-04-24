
# Tomography Emissivity Benchmark

This repository contains the codes for tomographic reconstruction of emissivity using bolometric diagnostics benchmarking.

---

## Requirements

Before running this benchmark, you must install and initialize **VirtualLab_MATLAB**.

### 1. Download VirtualLab_MATLAB

Clone or download the [VirtualLab_MATLAB](https://github.com/TokaLab/VirtualLab/tree/main/VirtualLab_MatLab) repository into your working directory.

Make sure it is accessible from your MATLAB path.

---

### 2. Initialize VirtualLab

Open MATLAB and run :

```matlab
VirtualLab_init()  
```

You can find it inside the VirtualLab_MATLAB folder. 

### 3. Benchmark Workflow

Once VirtualLab is initialized, navigate to: **BenchLab/Tomography_emissivity**
This benchmark consists of two main steps:

**Step 1 — Generate Dataset**

Run the following MATLAB script:
```matlab
rad_bolo_db_generate
```

This script generates the synthetic dataset used for the tomography benchmark, including:

Ground truth emissivity distribution
Geometry and forward model data

The output of this step is required for the testing phase.

** Step 2 — Run Benchmark Test **

After dataset generation, execute:

```matlab
rad_bolo_db_test
```

Simulated 
This script performs the following steps: 
1. for each Ground truth emissivity distribution evaluate the bolometric diagnostic signals (given the diagnostic configuration from Bolo (see SynDiag)).

2. perform tomographic reconstructions with the selected methods
3. compares the ground truth with the reconstructions and some metrics are evaluated
 
### Outputs

After running the test script, you will obtain:

- Reconstructed emissivity fields
- Ground truth comparison plots
- Numerical error metrics for performance evaluation

## Important Notes
- VirtualLab_init() must be executed each time MATLAB is opened
- rad_bolo_db_generate must be run before rad_bolo_db_test
- All required paths are automatically configured after initialization

## Benchmark Version

Tomography Emissivity v0.1
First official benchmark of the BenchLab framework.

## Collaboration and Extensions

BenchLab is an open and collaborative initiative. Researchers and developers are encouraged to contribute new benchmark cases, propose extensions to existing ones, or integrate additional reconstruction methods and diagnostic models.

If you are interested in:

- implementing new benchmark problems  
- testing your own inversion or reconstruction methods  
- extending the current tomography framework  
- or collaborating on synthetic diagnostic developments  

please contact us to discuss possible integration within BenchLab.

We welcome contributions from both physics-based and data-driven approaches, including machine learning and hybrid methodologies, provided that they follow the principles of reproducibility and quantitative evaluation defined by the framework.