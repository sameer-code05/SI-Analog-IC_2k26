*Title:Cr step charecteristics

* set the device temperature
.TEMP 27 


* ele   n1   n2   value
  C1    in   out   1p
  R1    out  0     1k


*Vpulse   n1   n2    PULSE   v1    v2    td    tr   tf     pw    per
 Vpulse   IN   0     pulse   0     5     0    0.1n  0.1n   10n   20n

*TRAN    step_size    sim_size
.TRAN     1p          60n



*RISE time
.measure tran trise TRIG v(out) VAL=0.5  RISE=1  TARG v(out)  VAL=4.5  RISE=1

*FALL time
.measure tran tfall TRIG v(out)   VAL=-0.5  RISE=1  TARG v(out)  VAL=-4.5  FALL=1

* Average value 
.measure tran vavg AVG  v(out)  FROM= 40N   TO = 60n




.control  
RUN

plot v(in)  v(out)

.endc


.end
   
