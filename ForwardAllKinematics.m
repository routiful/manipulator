function ForwardAllKinematics(j)
global uLINK
if j == 0 
    return;
end

if j ~= 1
    mom = uLINK(j).mother;
    %% Position and orientation
    uLINK(j).p = uLINK(mom).R * uLINK(j).b + uLINK(mom).p;
    uLINK(j).R = uLINK(mom).R * Rodrigues(uLINK(j).a, uLINK(j).q);
    %% Spatial velocity
    sw = uLINK(mom).R * uLINK(j).a; % axis vector in world frame
    sv = cross(uLINK(j).p, sw); % p_i x axis
    uLINK(j).w = uLINK(mom).w + sw * uLINK(j).dq;
    uLINK(j).vo = uLINK(mom).vo + sv * uLINK(j).dq;
    %% Spatial acceleration
    dsv = cross(uLINK(mom).w, sv) + cross(uLINK(mom).vo, sw);
    dsw = cross(uLINK(mom).w, sw);
    uLINK(j).dw = uLINK(mom).dw + dsw * uLINK(j).dq + sw * uLINK(j).ddq;
    uLINK(j).dvo = uLINK(mom).dvo + dsv * uLINK(j).dq + sv * uLINK(j).ddq;
    uLINK(j).sw = sw; % store h1 and h2 for future use
    uLINK(j).sv = sv;
end

ForwardAllKinematics(uLINK(j).sister); % Propagate to sister
ForwardAllKinematics(uLINK(j).child); % Propagate to child

end