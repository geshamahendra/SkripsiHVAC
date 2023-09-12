function in = localResetFcn(in)

    blk1 = sprintf('Gesha1sl/Plant/Init_temp');
    blk2 = sprintf('Gesha1sl/SP_Temp');
    blk3 = sprintf('Gesha1sl/Plant/init_humid');
    blk4 = sprintf('Gesha1sl/SP_Humid');
    blk5 = sprintf('Gesha1sl/Step1_Temp');
    blk6 = sprintf('Gesha1sl/Step2_Temp');
    blk7 = sprintf('Gesha1sl/Step3_Temp');
    blk8 = sprintf('Gesha1sl/Step1_Humid');
    blk9 = sprintf('Gesha1sl/Step2_Humid');
    blk10 = sprintf('Gesha1sl/Step3_Humid');

    [T_sp, H_sp, H_init, T_init] = AssignerSP2();
    [Step1_Temp, Step1_Humid]= AssignerStep2(H_init, T_init);
    [Step2_Temp, Step2_Humid]= AssignerStep2(H_init, T_init);
    [Step3_Temp, Step3_Humid]= AssignerStep2(H_init, T_init);
    in = setBlockParameter(in,blk1,'Value',num2str(T_init));
    in = setBlockParameter(in,blk2,'Value',num2str(T_sp));
    in = setBlockParameter(in,blk3,'Value',num2str(H_init));
    in = setBlockParameter(in,blk4,'Value',num2str(H_sp));
    in = setBlockParameter(in,blk5,'Value',num2str(Step1_Temp));
    
    in = setBlockParameter(in,blk6,'Value',num2str(Step2_Temp));
    in = setBlockParameter(in,blk7,'Value',num2str(Step3_Temp));

    in = setBlockParameter(in,blk8,'Value',num2str(Step1_Humid));

    in = setBlockParameter(in,blk9,'Value',num2str(Step2_Humid));
    in = setBlockParameter(in,blk10,'Value',num2str(Step3_Humid));

end