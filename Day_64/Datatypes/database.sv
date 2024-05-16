 module database();
  //integer i;
 
    typedef struct{byte sl_no; string name; longint mobile_num; real ssc; real pug; real btech; int placed; real ctc; string company_name;} database; 
    
     database p1,p2,p3,p4,p5,p6,p7,p8,p9,p10;
    
     initial
       begin
       	p1 =  '{1,"Komali",  64'd9381601546, 9.7, 9.5, 8.16, 1, 12.0, "Synopsys"};
        p2 =  '{2,"Sowjanya",64'd9052516587, 9.3, 8.2, 8.16, 1, 9.0, "AMD"};
        p3 =  '{3,"Kanishka",64'd9703782692, 8.4, 8.5, 8.8, 1, 10, "cadence"};
        p4 =  '{4,"Ajith",   64'd7034556788, 9.2, 8.4, 8.8, 1, 13, "Apple"};
        p5 =  '{5,"Hruthik", 64'd9070678456, 8.7, 8.8, 7.8, 1, 14, "Qualcom"};
        p6 =  '{6,"Hemanth", 64'd6309287564, 7.8, 8.9, 7.8, 1, 12, "Synopsys"};
        p7 =  '{7,"Praveen", 64'd7890278934, 7.8, 8.9, 8.8, 1, 12, "Apple"};
        p8 =  '{8,"Abhishek",64'd8309567037, 7.7, 8.7, 8.9, 1, 14, "Intel"};
        p9 =  '{9,"Sanath",  64'd7456389067, 7.9, 7.8, 8.9, 0, 0, "None"};
        p10 = '{10,"Gaurav", 64'd6030189067, 7.9, 7.8, 8.9, 1, 12, "AMD"};

        $display("p1 = %p\n,p2 = %p\n,p3 = %p\n,p4 = %p\n,p5 = %p\n,p6 = %p\n,p7 = %p\n,p8 = %p\n,p9 = %p\n,p10 = %p",p1,p2,p3,p4,p5,p6,p7,p8,p9,p10);
       end

   endmodule
    
                                                       
