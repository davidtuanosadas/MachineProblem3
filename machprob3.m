function a = machprob3(n)
x=n(:,1);
y=n(:,2);
if length(x)>=11
    l=10;
else
    l=length(x)-1;
end
e=zeros(1,l);
for i=(1:l)
    pfit=polyfit(x,y,i);
    pval=polyval(pfit,x);
    e(i)=norm(y-pval);
end
[~,I]=min(e);
coeff=polyfit(x,y,i);
disp(coeff)
    
    
   

