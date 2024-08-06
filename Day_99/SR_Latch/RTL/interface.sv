interface sr_if;

 logic s;
 logic r;
 logic q;
 logic qbar;

 modport wr_drv_mp(output s, output r);

 modport wr_mon_mp(input s, input r);

 modport rd_mon_mp(input q, input qbar);

 endinterface 
