
clear; clc; close all;

global nn1 nn2 nn3 nn4 nn5 nn6 nn7 nn8 nn9 nn10...
    nn11 nn12 nn13 nn14 nn15 nn16 nn17 nn18 nn19 nn20...
    nn21 nn22 nn23 c1 alpha1 B1 Lambda1 Lambda2 Lambda3 zz N;


load rateDATA_Composite

open_system('Fraction_Backlash_like_model_Cascadeforwardnet_com')

N=length(zz);

input=[tt';xx']';

input1=[tt';zz']';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%优化算法


pop_size=60;  
max_iter=90;  

% Define your objective function's details here

LB1=[0.0001,0.0001,0.0001,0.0001,0.0001,0.0001];
UB1=[10,10,10,10,10,10];
LB2=-10*ones(1,23);
UB2=10*ones(1,23);
LB=[LB1 LB2];
UB=[UB1 UB2];



Dim=length(LB);
F_obj=@(x)FBL_CFNN_OBJ(x);     
      
[Best_smNRBO,Best_pmNRBO,mNRBO_curve]=mNRBO(pop_size,max_iter,LB,UB,Dim,F_obj);

    c1=Best_pmNRBO(1);
    alpha1=Best_pmNRBO(2);
    B1=Best_pmNRBO(3);
    Lambda1=Best_pmNRBO(4);
    Lambda2=Best_pmNRBO(5); 
    Lambda3=Best_pmNRBO(6);
    nn1=Best_pmNRBO(7); 
    nn2=Best_pmNRBO(8);
    nn3=Best_pmNRBO(9);
    nn4=Best_pmNRBO(10);
    nn5=Best_pmNRBO(11);
    nn6=Best_pmNRBO(12); 
    nn7=Best_pmNRBO(13); 
    nn8=Best_pmNRBO(14);
    nn9=Best_pmNRBO(15); 
    nn10=Best_pmNRBO(16);
    nn11=Best_pmNRBO(17);
    nn12=Best_pmNRBO(18);
    nn13=Best_pmNRBO(19);
    nn14=Best_pmNRBO(20);
    nn15=Best_pmNRBO(21);
    nn16=Best_pmNRBO(22);
    nn17=Best_pmNRBO(23);
    nn18=Best_pmNRBO(24);
    nn19=Best_pmNRBO(25);
    nn20=Best_pmNRBO(26);
    nn21=Best_pmNRBO(27);
    nn22=Best_pmNRBO(28);
    nn23=Best_pmNRBO(29);


save_system('Fraction_Backlash_like_model_Cascadeforwardnet_com');
out1=sim('Fraction_Backlash_like_model_Cascadeforwardnet_com');

best_score_mNRBO=Best_smNRBO;

output_mNRBO=out1.zz1;

error_mNRBO=out1.zz1-zz;

convergence_mNRBO=mNRBO_curve;



