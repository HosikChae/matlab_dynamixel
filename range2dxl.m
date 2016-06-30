function dxl = range2dxl( value, type, range_min, range_max )
max_dxl_value = type*1024-1;

range_avg = (range_min+range_max).*0.5;
range_radius = (range_max-range_min).*0.5;
dxl = (value - range_avg + range_radius).*max_dxl_value./(range_max-range_min);
if type == 1
    dxl = uint8(dxl);
elseif type == 2
    dxl = uint16(dxl);
end

end

