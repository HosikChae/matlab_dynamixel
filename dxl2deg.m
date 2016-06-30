function deg = dxl2deg(dxl)
    global DXL
    % dxl(i,:) is for id == i
    deg = (dxl/2048*180-180).*DXL.motorDirection;
end