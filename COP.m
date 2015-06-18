function COP (tIn, tOut, type)

output = 0;
tDiff = tIn - tOut;

if strcmp(type, 'ASHP')~= 0
    if tDiff <= 27 && tDiff >= 19
        output = (-1/300) * tOut + 4.1 + (1/300) * 27; 
        
    elseif tDiff <= 29
        output = (-1/360) * tOut + 3.9 + (1/360) * 29;
        
    elseif tDiff <= 37
        output = (-0.001875) * tOut + 3.3 + (0.001875) * 37;
                
    elseif tDiff <= 39
        output = (-1/450) * tOut + 3.1 + (1/450) * 39;
        
    elseif tDiff <= 47
        output = (-0.0015) * tOut + 2.5 + (0.0015) * 47;
        
    elseif tDiff <= 49
        output = (-1/1100) * tOut + 2.4 + (1/1100) * 49;
        
    elseif tDiff <= 57
        output = (-1/1200) * tOut + 2.0 + (1/1200) * 57;
        
    else
        disp('There are no statistics for your input values');
        
    end
    
elseif strcmp(type, 'SWHP')~= 0
    if tDiff <= 23 && tDiff >= 17
        output = (-1/180) * tOut + 5.6 + (1/180) * 23; 
        
    elseif tDiff <= 27
        output = (-1/600) * tOut + 5.4 + (1/600) * 27;
        
    elseif tDiff <= 33
        output = (-0.00375) * tOut + 4.5 + 0.00375 * 33;
                
    elseif tDiff <= 37
        output = (-1/600) * tOut + 4.2 + (1/600) * 37;
        
    elseif tDiff <= 43
        output = (-7/3000) * tOut + 3.5 + (7/3000) * 43;
        
    elseif tDiff <= 47
        output = (-1/2200) * tOut + 3.4 + (1/2200) * 47;
        
    elseif tDiff <= 53
        output = (-1/600) * tOut + 28 + (1/600) * 53;
    end
        
elseif strcmp(type, 'GSHP')~= 0
    disp('There are no statistics for GSHP');
        
else
   disp('Please input a valid heat pump type: ASHP, GSHP, or SWHP'); 
        
end
    
output
end


    
    