function dxl_finalize()
if(libisloaded('dynamixel') ~= 0)
    %% Disconnecting from the USB2DXL
    calllib('dynamixel','dxl_terminate');
    % Unload Library
    unloadlibrary('dynamixel');
    display('Disconnected from Dynamixel');
end
end

