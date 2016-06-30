function DXL = loadDXL(ids)
    DXL.ids = ids;
    
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

