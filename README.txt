This paper aims to develop a hysteretic model by combining with a fractional Backlash-like model and cascade forward neural network, and proposed a modified Newton-Raphson-based optimizer parameter identification method to precisely capture the nonlinear behavior of piezoelectric platform.

(1) Instructions for using the code:

•Environment requirements: Make sure you have a compatible version of MATLAB installed in your computing environment, R2022a or later is recommended.

•Code structure: The code base contains the core functions of the algorithm, auxiliary functions, and sample scripts to demonstrate how to solve optimization problems using the mNRBO algorithm.

(2) Application: The proposed mNRBO  is mainly used for parameter tuning of hysteresis model in this paper, including but not limited to:

•Engineering optimization: such as structural design, circuit design and other fields.

•Machine learning: strategy optimization in deep reinforcement learning.

•Numerical calculation: such as solving nonlinear equations, function minimization problems, etc.

(3) Guidelines for use:

•The initial parameters that you need are: F_obj = @(x)FBL_CFNN_OBJ(x); Dim = number of your variables; max_iter = maximum number of generations; pop_size = number of search agents; LB=[LB1,LB2,... ,LBn], where LBn is the lower bound of variable n; UB=[UB1,UB2,... ,UBn], where UBn is the upper bound of variable n.

•To run mNRBO: [Best_smNRBO,Best_pmNRBO,mNRBO_curve]=mNRBO(pop_size,max_iter,LB,UB,Dim,F_obj);
