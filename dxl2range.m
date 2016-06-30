function value = dxl2range( dxl, type, range_min, range_max )
max_dxl_value = type*1024-1;

range_avg = (range_min+range_max).*0.5;
range_radius = (range_max-range_min).*0.5;
value = dxl.*(range_max-range_min)./max_dxl_value - range_radius + range_avg;
end

