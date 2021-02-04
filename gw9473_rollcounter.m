%Jacob Headley
%Gw9473
%Counting,Most rolled, and dice to reroll  Function
function [d6tally,mostrolled,rerolls,amountrerolled] = gw9473_rollcounter(Resultsrolled)
d6tally = zeros(1,6);
rerolls = Resultsrolled;
amountrerolled = 0;
placeholder=1;
while placeholder == 1 
ones = 0; twos =0; threes = 0; fours = 0; fives = 0; sixs = 0; compare = 0;
for counter = 1:length(rerolls)
    if rerolls(counter) == 1 %Amount of ones
        ones = ones+1;
    elseif rerolls(counter) == 2 %Amount of twos
        twos=twos+1;
    elseif rerolls(counter) == 3 %Amount of Threes
        threes = threes+1;
    elseif rerolls(counter) == 4 %Amount of fours
        fours = fours+1;
    elseif rerolls(counter) == 5 %Amount of fives
        fives = fives+1;
    elseif rerolls(counter) == 6 %Amount of sixs
        sixs = sixs+1;
    end
end
    d6tally(1) = ones;
    d6tally(2) = twos;
    d6tally(3) = threes;
    d6tally(4) = fours;
    d6tally(5) = fives;
    d6tally(6) = sixs;
for counter2=1:6 %Comparator for determing most rolled
    if d6tally(counter2)> compare
        compare = d6tally(counter2);
        mostrolled = counter2;
    end
end 
for counter3=1:length(rerolls) %Sets all non most rolled numbers to 0 since a d6 has no 0
    if rerolls(counter3) ~= mode(rerolls) 
        rerolls(counter3) = randi(6,1);
    end
    %amountrerolled= amountrerolled+1;
end
amountrerolled= amountrerolled+1;
if rerolls == mode(rerolls) %Tests to see if you got a yahtzee
    placeholder = 0;
end
end
end


    
       
