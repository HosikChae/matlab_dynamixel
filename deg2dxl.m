function dxl = deg2dxl(deg)
    global DXL
    % deg(i,:) is for id == i
    dxl = int32( ( (deg.*DXL.motorDirection)+180)/180*2048);
end