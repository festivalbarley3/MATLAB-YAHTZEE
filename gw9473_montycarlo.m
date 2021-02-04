%Jacob Headley 
%Gw9473
%MonteCarloSim
clear all;clc
x = input('how many times would you like to run this simulation?');
amountrerolled = (1:x);%Initizalizes vector for amount of rerolls
tic
p=5; %place holder for amount of dice thrown
for j=1:x %Loop set up for the amount of times you want this to occur
    resultsrolled = gw9473_Dice_Rollerd6(p);
    [d6tally,mostrolled,rerolls,amountrerolled(j)] = gw9473_rollcounter(resultsrolled);
end
hist(amountrerolled)
toc

    
    
    
    



