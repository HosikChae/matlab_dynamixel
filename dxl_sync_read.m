function res = dxl_sync_read(data, ids)

% Since sync_read or bulk_read is not supported for MATLAB APIs, sync_read is impremented with iteration.
%
% data.address := [Address Object]
% data.id      := [id Numbers] (corresponding)
global DXL

if nargin < 2
	ids = DXL.ids;
end

address = data;
res = zeros(size(ids));
for ii = 1:size(ids, 1)
	id = ids(ii);
    res(ii) = dxl_read(id, address);
end

end