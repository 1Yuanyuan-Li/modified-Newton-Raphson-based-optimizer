function J=FBL_CFNN_OBJ(X)%********计算个体目标函数值,返回单个值J

global nn1 nn2 nn3 nn4 nn5 nn6 nn7 nn8 nn9 nn10...
    nn11 nn12 nn13 nn14 nn15 nn16 nn17 nn18 nn19 nn20...
    nn21 nn22 nn23 c1 alpha1 B1 Lambda1 Lambda2 Lambda3 zz N;

    c1=X(1);
    alpha1=X(2);
    B1=X(3);
    Lambda1=X(4);
    Lambda2=X(5);
    Lambda3=X(6);
    nn1=X(7); 
    nn2=X(8);
    nn3=X(9);
    nn4=X(10);
    nn5=X(11);
    nn6=X(12); 
    nn7=X(13); 
    nn8=X(14);
    nn9=X(15); 
    nn10=X(16);
    nn11=X(17);
    nn12=X(18);
    nn13=X(19);
    nn14=X(20);
    nn15=X(21);
    nn16=X(22);
    nn17=X(23);
    nn18=X(24);
    nn19=X(25);
    nn20=X(26);
    nn21=X(27);
    nn22=X(28);
    nn23=X(29);
 
 save_system('Fraction_Backlash_like_model_Cascadeforwardnet1');

sim('Fraction_Backlash_like_model_Cascadeforwardnet1');

Yp=ans.zz1;  % 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E=Yp-zz;
J=sqrt(E'*E/N);
% J=mean(E'*E);
% J=std(E);

end

