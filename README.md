<h1 style="text-align: center;">ECEN 743: Reinforcement Learning</h1>
<h1 style="text-align: center;">Assignment 1</h1>


## Overview
1. You have to submit a report in `HTML` and your code to Canvas.
2. Put all your files (`HTML` report and code) into a single compressed folder named `Lastname_Firstname_A1.zip`.
3. In Jupyter Notebook, you can export it in `HTML` by going through the top toolbar: File -> Save and Export Notebook As... -> HTML
4. This homework is self-containted in one Jupyter notebook. In your `zip`, we expect only your `HTML` report and one Jupyter notebook.


## Installation Instructions

This course uses the Texas A&M High Performance Research Computing (HPRC) system for all programming assignments.  
Follow the instructions below to create your account, set up the required conda environment, and launch JupyterLab.

### Step 1 — Apply for an HPRC Account

If you do not already have access:
1. Apply here: https://hprc.tamu.edu/apply/
2. Wait for your account to be approved before continuing.

### Step 2 — Access the Grace Cluster Portal

Once approved:
1. Go to: https://portal-grace.hprc.tamu.edu/
2. Log in with your TAMU credentials.

This portal provides:
    - Shell access
    - JupyterLab
    - Interactive applications

### Step 3 - Create the Course Conda Environment (one-time setup)

You will create the environment once at the beginning of the semester and reuse it for all assignments.

**Open a shell**
In the portal, click: Clusters → Grace → Shell Access

**Run the following commands**
```
cd $SCRATCH
git clone https://github.com/ECEN743-TAMU/ECEN743-SP26-A1-DP.git
cd ECEN743-SP26-A1-DP
bash make_env.sh
```
This script will automatically install all required packages.

### Step 4 - Environment Location
Your environment will be created at:
```
$SCRATCH/conda_envs/rl_env
```
You should not need to modify this manually.

### Step 5 — Launch JupyterLab with the Environment
We will use JupyterLab as our development environment.
1. In the portal, click: Interactive Apps → JupyterLab
2. Use the following settings:

    | Option             |         Value        |
    |--------------------|:--------------------:|
    | Environment type   | Anaconda environment |
    | Conda/mamba module | Anaconda3/2024.02-1  |
    | Conda environment  | rl_env               |
3. Launch the session

### Done
You are now ready to work on assignments inside JupyterLab using the course environment.


## Assignment
In this assignment, you will implement planning (dynamic programming) algorithms on the FrozenLake environment from Gymnasium [link](https://gymnasium.farama.org/environments/toy_text/frozen_lake/).

1. **Q-Value Iteration (QVI):** Implement Q-value iteration on the frozen lake environment.  
    (a). What is the optimal policy and value function?  
    (b). Plot $U_k = ||Q_k-Q_{k-1}||,$ where $Q_k$ is the Q-value during the $k^{\mathrm{th}}$ iteration.  
    (c). Use the `display_q` function to plot the heat maps of the optimal policy and value function.  

2. **Policy Evaluation:** Consider the following polices: $(i)$ the optimal policy obtained from  QVI, and $(ii)$ a uniformly random policy where each action is taken with equal probability. Compute the value of the  these polices using:  
    (a). By solving a linear systems of equations.  
    (b). By the iterative approach.    
    (c). Which method is better and why?  

3. **Policy Iteration (PI):** Implement policy iteration on the frozen lake environment.  
    (a). What is the optimal policy and value function?  
    (b). Compare the convergence of QVI and PI.  
    (c). Run the animation code to visualize the policy.

3. **Policy Visualization on Cliff Walking:** 
    (a). Run your choice of Algorithm (Q-value Iteration or Policy Iteration) and visualize the policy on Cliff Walking environment.