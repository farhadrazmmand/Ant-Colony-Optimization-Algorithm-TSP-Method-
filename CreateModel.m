function model=CreateModel()

    x=[0 0.1 0.3 0.5 1 2];
    
    y=[2435.7 2472.65 2545.28 2616.5 2789.03 3116.6];
    
    n=numel(x);
    
    D=zeros(n,n);
    
    for i=1:n-1
       for j=i+1:n
           
           D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
           
           D(j,i)=D(i,j);
           
       end
    end
    
    model.n=n;
    model.x=x;
    model.y=y;
    model.D=D;
    
end