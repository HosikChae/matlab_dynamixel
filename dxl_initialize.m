function res = dxl_initialize(port, baudrate_code)
if(libisloaded('dynamixel') ~= 0)
    dxl_finalize();
end

loadlibrary('dynamixel', 'dynamixel.h');
res = calllib('dynamixel','dxl_initialize', port, baudrate_code);
if res == 1
    display('Dynamixel is ready');
else
    display('Error occured to init Dynamixel');
end
end