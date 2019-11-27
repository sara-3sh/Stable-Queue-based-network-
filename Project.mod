## This is simulation Code for course project in MATH5593 Linear Programming 
##  at the University of Colorado-Denver, Fall 2019. 
## Student contributors: Sajjad Nassirpour and John McFarlane

## ---- Queue-Based Strategy to Achieve Maximum Stable rate in Multi-user Network ---- ##
  
# Erasure probabilities
param e1 >=0;
param e2 >=0;
param e3 >=0;

# Probability of Network Codes
var P0>= 0 ;
var P1>= 0 ;
var P2>= 0 ;
var P3>= 0 ;
var P4>= 0 ;

# Arriving rate

var lambda>= 0 ;

## constructing the LP

maximize lambda_value: lambda ;

# constraints

subject to Q0: lambda-P0*(e1*e2*(1-e3)+e1*(1-e2)*(1-e3)+(1-e1)*(1-e2)*(1-e3)+(1-e1)*e2*(1-e3)+e2*e3*(1-e1)+(1-e1)*(1-e2)*e3+e1*e3*(1-e2))<=0;
subject to Q1: P0*e1*e2*(1-e3)-P2*((1-e1)*(1-e2)+e1*(1-e2)+(1-e1)*e2)<=0;
subject to Q2: P0*e2*e3*(1-e1)-P3*(e2*(1-e3)+(1-e2)*(1-e3)+e3*(1-e2))<=0;
subject to Q3: P0*e1*e3*(1-e2)-P4*((1-e1)*(1-e3)+e1*e3+(1-e1)*e3)<=0;
subject to Q4: P2*e1*(1-e2)+P0*e1*(1-e2)*(1-e3)+P4*e1*(1-e3)-(P1+P3)*(1-e1)<=0;
subject to Q5: P2*e2*(1-e1)+P0*e2*(1-e1)*(1-e3)+P3*e2*(1-e3)-(P1+P4)*(1-e2)<=0;
subject to Q6: P3*e3*(1-e2)+P0*e3*(1-e1)*(1-e2)+P4*e3*(1-e1)-(P1+P2)*(1-e3)<=0;

subject to Prob : P0+P1+P2+P3+P4=1;

