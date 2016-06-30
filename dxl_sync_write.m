function dxl_sync_write(raw_address, raw_data, ids)

% raw_address := [Address Object] 
% raw_data    := N(id) x N(parameter) Matrix
% ** ids : [1; 2; 3; ...; n]

global Address, DXL
% FF FF BROADCAST LENGTH INSTRUCTION  (Address len id data data id data data) clc
[address, data] = dxl_make_sync_data(raw_address, raw_data);
data_length = size(data,2);        % each data has to be int32
calllib('dynamixel','dxl_set_txpacket_id',          254);                       % BROADCAST_ID = 0XFE
calllib('dynamixel','dxl_set_txpacket_length',      (data_length+1)*4 + 4);   % NUM_ACTUATOR = 4, +4 : Inst+Add+Len+CLC
calllib('dynamixel','dxl_set_txpacket_instruction', 131);                       % INST_SYNC_WRITE = 0X83
calllib('dynamixel','dxl_set_txpacket_parameter',      0,      address.value);  % Parameter1 Start address to write Data
calllib('dynamixel','dxl_set_txpacket_parameter',      1,      data_length);    % Parameter2 Length of Data to write

if nargin < 3
	ids = DXL.ids;
end

for ii = 1:size(ids, 1)
	id = ids(ii);
    calllib('dynamixel','dxl_set_txpacket_parameter',  2+(data_length+1)*(ii-1),  id);       % Parameter i First ID of RX-64, Parameter i+1 First data, Parameter i+2 Second Data...

    for iData = 1:data_length
        calllib('dynamixel','dxl_set_txpacket_parameter',   2+(data_length+1)*(ii-1)+iData, data(ii, iData));
    end
end


calllib('dynamixel','dxl_txrx_packet');
end