function [P] = mask_band(n,type, p,q)


if (type=='band')
    q=p;
    for i=1:n
        for j=1:n
            if (j<i-p)
                P(i,j)=0;
            end
            if (j>i+q)
                P(i,j)=0;
            end
        end
    end
elseif (type=='btdr')
    
        r=rem(n,p);
        k=floor(n/p);
        P=zeros(n);
        
        if (mod(n,p)~=0 || n<p)
            
            if (k<1)
                P=blkdiag(ones(p),0)
            elseif (k==1)
                P=blkdiag(ones(p),ones(r))
            else
                for i=1:k-1
                P=blkdiag(ones(p),ones(p))
                end
            P=blkdiag(P,ones(r))
            end
        else
            for i=1:k-1
                P=blkdiag(ones(p),ones(p))
            end
                 
        end
end
end
        
   
                                   






