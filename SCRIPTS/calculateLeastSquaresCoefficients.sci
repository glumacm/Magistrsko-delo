function [coefficients, leastSquares]=getLeastSquares(pathToCSV_ofMatA, pathToCSV_ofMatB)
    coefficients=[];
    leastSquares=[];
    M1=csvRead(pathToCSV_ofMatA);
    Aa=M1(2:$,1:$); // izpustiti moramo 1 vrstico ker je header
    Aat=Aa';
    M2=csvRead(pathToCSV_ofMatB);
    Bb=M2(2:$,1:$);
    coefficients=lsq(Aa,Bb);
    leastSquares=[];
    x11=coefficients(1);
    x22=coefficients(2);
    x33=coefficients(3);
    leastSquares=zeros(size(Bb));
    forlooplength=size(Bb)(1);    
    for ii=1:1:forlooplength;
        leastSquares(ii,1)=((x11* Aa(ii,1)) + (x22 * Aa(ii,2)) + (x33* Aa(ii,3)));
    end
endfunction
