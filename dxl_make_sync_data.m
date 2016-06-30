function [address, data] = dxl_make_sync_data(raw_address, raw_data)
global Address
icol_to_write = 1;
ncol_to_write = 0;
for icol = 1:length(raw_address)
    ncol_to_write = ncol_to_write + raw_address(icol).type;
end
data = zeros(size(raw_data,1), ncol_to_write);
for icol = 1:length(raw_address)
    if raw_address(icol).type == Address.type.WORD
        for irow = 1:size(raw_data,1)
            data(irow, icol_to_write)   = calllib('dynamixel','dxl_get_lowbyte' , raw_data(irow, icol));
            data(irow, icol_to_write+1) = calllib('dynamixel','dxl_get_highbyte', raw_data(irow, icol));
        end
        icol_to_write = icol_to_write+2;
    else
        for irow = 1:size(raw_data,1)
            data(irow, icol_to_write)   = raw_data(irow, icol);
        end
        icol_to_write = icol_to_write+1;
    end
end


address = raw_address(1);
end