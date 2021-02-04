%Jacob Headley 
%gw9473
%Function 1 Dice Function
function [Resultsrolled] = gw9473_Dice_Rollerd6(n) %rolls an n amount of dice
Resultsrolled = randi(6,1,n); %Collects the amount of rolls and results of them
