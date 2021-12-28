function [dflag, discrC, discrR] = dd_check(A)
%Author: жытиос-бемифекос папамийокаоу, а.л:235949, гл.суццяажгс:24/12/2019 


discrR=true;
discrC=true;
[r,c]= size(A);

if (r~=c)
    error('The number of rows must be equal to the number of columns')
else
    isit=issparse(A);
    if (isit==true)
        A=full(A);
    end
    for i=1:r                                                    
    rs=sum(A(i,:));
    cs=sum(A(:,i));
    if (abs(A(i,i)>= abs(rs-A(i,i))) && abs(A(i,i)>= abs(cs-A(i,i))))                 
        dflag=true;
        if (abs(A(i,i)> abs(rs-A(i,i))))
            discrR=discrR*true;
        elseif (abs(A(i,i)== abs(rs-A(i,i))))
            discrR=false;
        end
        if (abs(A(i,i)> abs(cs-A(i,i))))
            discrC=discrC*true;
        elseif (abs(A(i,i)== abs(cs-A(i,i))))
            discrC=false;
        end
    else
        dflag=false;
    end 
    
    end

end
if (dflag==false)
disp(dflag)
else
    disp(dflag)
    disp(discrR)
    disp(discrC)
end


