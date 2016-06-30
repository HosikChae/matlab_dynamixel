function Performance = loadPerformance( model )
% Torque        : [ N.m ]
% Efficiency    : [  %  ]
% Speed         : [ RPM ]
% Current       : [  A  ]
if strcmp('mx106', model)
    Performance.torqueLimit = [0.8; 5.6];
    Performance.current =           @(tq) ( (((((-0.0001.*tq)+0.0022).*tq-0.0034).*tq+0.0290).*tq+0.3610).*tq+0.4006 );
    Performance.current2torque =    @(tq) ( (((((-0.0013.*tq)+0.0117).*tq+0.0124).*tq-0.5490).*tq+3.2416).*tq-1.2270 );
    Performance.speed =             @(tq) ( (((((-0.0176.*tq)+0.2024).*tq-0.8837).*tq+1.1066).*tq-3.3060).*tq+42.4721);
    Performance.efficiency =        @(tq) ( (((((-0.0169.*tq)+0.5554).*tq-5.0158).*tq+14.4202).*tq-9.6591).*tq+40.2340);
elseif strcmp('mx28', model)
    Performance.torqueLimit = [0.13; 1.27];
    Performance.current =           @(tq) ( (((-0.0047.*tq)+  0.1892).*tq+  0.5338).*tq+ 0.1462);
    Performance.current2torque =    @(tq) ( ((( 0.2115.*tq)-  0.7767).*tq+  1.9768).*tq- 0.2656);
    Performance.speed =             @(tq) ( ((( 1.5382.*tq)-  9.2631).*tq- 26.6770).*tq+52.2656);
    Performance.efficiency =        @(tq) ( (((62.2666.*tq)-183.5469).*tq+130.9878).*tq+10.1200);
else
    Performance = [];
end

end

%{
% Test Sample Code
DXL = loadDXL([1]);
Perf.MX106 = loadPerformance('mx106');
Perf.MX28 = loadPerformance('mx28');

torq106 = linspace(Perf.MX106.torqueLimit(1), Perf.MX106.torqueLimit(2), 100);
torq28 = linspace(Perf.MX28.torqueLimit(1), Perf.MX28.torqueLimit(2), 100);

figure(106); hold on; grid on;
subplot(221); plot(torq106, Perf.MX106.current(torq106),      'r'); axis([0, 6, 0,   5]); grid on;
subplot(222); plot(torq106, Perf.MX106.efficiency(torq106),   'g'); axis([0, 6, 0, 100]); grid on;
subplot(223); plot(torq106, Perf.MX106.speed(torq106),        'k'); axis([0, 6, 0,  45]); grid on;
subplot(224); plot(torq106, Perf.MX106.current2torque(Perf.MX106.current(torq106)),      'b');grid on; axis([0 5 0 5]);

figure(28);hold on; grid on;
subplot(221); plot(torq28, Perf.MX28.current(torq28),      'r'); axis([0, 1.4, 0, 1.5]); grid on;
subplot(222); plot(torq28, Perf.MX28.efficiency(torq28),   'g'); axis([0, 1.4, 0, 100]); grid on;
subplot(223); plot(torq28, Perf.MX28.speed(torq28),        'k'); axis([0, 1.4, 0,  50]); grid on;
subplot(224); plot(torq28, Perf.MX28.current2torque(Perf.MX28.current(torq28)),      'b'); grid on; axis([0 1.4 0 1.4]);
%}