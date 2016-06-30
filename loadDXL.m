function DXL = loadDXL(ids, motorDirection, motorOffset)
    DXL.ids = ids;
    
    if nargin > 2
        DXL.motorOffset = motorOffset;
    else
        DXL.motorOffset = zeros(size(ids,1), 1);
    end

    if nargin > 1
        DXL.motorDirection = motorDirection;
    else
        DXL.motorDirection = ones(size(ids,1), 1);
    end
    
    DXL.init = @dxl_initialize;
    DXL.finalize = @dxl_finalize;
    DXL.ping = @dxl_ping;
    DXL.read = @dxl_read;
    DXL.write = @dxl_write;
    DXL.syncRead = @dxl_sync_read;
    DXL.syncWrite = @dxl_sync_write;
    DXL.torqueEnable = @dxl_torque_enable;
    DXL.makeSyncData = @dxl_make_sync_data;
end

