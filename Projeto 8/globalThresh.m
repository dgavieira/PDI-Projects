function g = globalThresh(f, delT)
    f = im2double(f);
    Id = f;
    T = 0.5*(min(min(Id))+max(max(Id)));
    deltaT = delT;
    done = false;
    
    while ~done
        s = Id >= T;
        Tnext = 0.5*(mean(Id(s)) + mean(Id(~s)));
        done = abs(T - Tnext) < deltaT;
        T = Tnext;
    end
    g = T;
end