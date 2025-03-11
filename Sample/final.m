% Group - 8 OEL
% MD. TAHSIN HASIB - 22-46026-1
% MD. SHOHANUR RAHMAN SHOHAN - 22-46013-1
% KHUSHBU ALAM RAHI - 22-46947-1
% MD. ASHIKUZZAMAN ABIR - 22-47006-1
% A.F.M. RAFIUL HASSAN - 22-47048-1


clc
clear all
close all

% digital bit stream
x1 = [1 0 1 0 1 1];
x2 = [0 1 0 1 0 0];
x3 = [1 1 1 0 0 1];

bit1 = []; 
bp1 = 1; 
for n=1:1:length(x1)
    if x1(n) == 1;
        se = 3*ones(1,100);
    else
        x1(n) == 0;
        se = zeros(1,100);
    end
    bit1 = [bit1 se];
end

tb1 = bp1/100:bp1/100:100*length(x1)*(bp1/100);

figure
subplot(3,1,1);
plot(tb1, bit1,'lineWidth',2.5);
grid on;
axis([-0 6 -5 5]);
ylabel('Amplitude(volt)');
xlabel('Time(sec)');
title('Digital Bit Stream Signal - 1');


Am1 = 3;
A = 0;
brm1 = 1/bp1; 
fm1 = brm1*3; 
tm1 = bp1/99:bp1/99:bp1; 
ask1 = [];
for i=1:1:length(x1)
    if (x1(i)==1)
        y = Am1*sin(2*pi*fm1*tm1);
    else
        y = A*sin(2*pi*fm1*tm1);
    end
    ask1 = [ask1 y];
end
% plotting ask1
tmp1 = bp1/99:bp1/99:bp1*length(x1);
subplot(3,1,2);
plot(tmp1, ask1);
axis([-0 6 -5 5]);
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('ASK of Digital Bit Stream Signal - 1');



Ac1 = 3;
brc1 = 1/bp1; 
fc1 = brc1*101;
tc1 = bp1/99:bp1/99:bp1; 
c1=[];
for i=1:1:length(x1)
    if (x1(i)==1)
        y = Ac1*sin(2*pi*fc1*tc1);
    else
        y = Ac1*sin(2*pi*fc1*tc1);
    end
    c1 = [c1 y];
end

tcp1 = bp1/99:bp1/99:bp1*length(x1);
subplot(3,1,3);
plot(tcp1, c1);
axis([-0 6 -5 5]);
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('Carrier Signal for ASK - 1');













bit2 = []; 
bp2 = 1; 
for n=1:1:length(x2)
    if x2(n) == 1;
        se = 3*ones(1,100);
    else
        x2(n) == 0;
        se = zeros(1,100);
    end
    bit2 = [bit2 se];
end

tb2 = bp2/100:bp2/100:100*length(x2)*(bp2/100);

figure
subplot(3,1,1);
plot(tb2, bit2,'lineWidth',2.5);
grid on;
axis([-0 6 -5 5]);;
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('Digital Bit Stream Signal - 2');

Am2 = 3;
A = 0;
brm2 = 1/bp2; 
fm2 = brm2*4; 
tm2 = bp2/99:bp2/99:bp2; 
ask2 = [];
for i=1:1:length(x2)
    if (x2(i)==1)
        y = Am2*sin(2*pi*fm2*tm2);
    else
        y = A*sin(2*pi*fm2*tm2);
    end
    ask2 = [ask2 y];
end
% plotting ask2
tmp2 = bp2/99:bp2/99:bp2*length(x2);
subplot(3,1,2);
plot(tmp2, ask2);
axis([-0 6 -5 5]);
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('ASK of Digital Bit Stream Signal - 2');

% carrier for ask2
Ac2 = 3; 
brc2 = 1/bp2; 
fc2 = brc2*105;
tc2 = bp2/99:bp2/99:bp2; 
c2 = [];
for i=1:1:length(x2)
    if (x2(i)==1)
        y = Ac2*sin(2*pi*fc2*tc2);
    else
        y = Ac2*sin(2*pi*fc2*tc2);
    end
    c2 = [c2 y];
end
% plotting carrier for ask - 2
tcp2 = bp2/99:bp2/99:bp2*length(x2);
subplot(3,1,3);
plot(tcp2, c2);
axis([-0 6 -5 5]);
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('Carrier Signal for ASK - 2');















% third Signal
bit3 = []; 
bp3 = 1; 
for n=1:1:length(x3)
    if x3(n) == 1;
        se = 3*ones(1,100);
    else
        x3(n) == 0;
        se = zeros(1,100);
    end
    bit3 = [bit3 se];
end

tb3 = bp3/100:bp3/100:100*length(x1)*(bp3/100);

figure
subplot(3,1,1);
plot(tb3, bit3,'lineWidth',2.5);
grid on;
axis([-0 6 -5 5]);
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('Digital Bit Stream Signal - 3');


Am3 = 3; 
A = 0;
brm3 = 1/bp3; 
fm3 = brm3*5;
tm3 = bp3/99:bp3/99:bp3; 
ask3 = [];
for i=1:1:length(x3)
    if (x3(i)==1)
        y = Am3*sin(2*pi*fm3*tm3);
    else
        y = A*sin(2*pi*fm3*tm3);
    end
    ask3 = [ask3 y];
end
% plotting ask - 3
tmp3 = bp3/99:bp3/99:bp3*length(x3);
subplot(3,1,2);
plot(tmp3, ask3);
axis([-0 6 -5 5]);
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('ASK of Digital Bit Stream Signal - 3');


Ac3 = 3; 
brc3 = 1/bp3; 
fc3 = brc3*110;
tc3 = bp3/99:bp3/99:bp3; 
c3 = [];
for i=1:1:length(x3)
    if (x3(i)==1)
        y = Ac3*sin(2*pi*fc3*tc3);
    else
        y = Ac3*sin(2*pi*fc3*tc3);
    end
    c3 = [c3 y];
end
% plotting carrier for ask - 3
tcp3 = bp3/99:bp3/99:bp3*length(x3);
subplot(3,1,3);
plot(tcp3, c3);
axis([-0 6 -5 5]);
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('Carrier Signal for ASK - 3');









% Fourier Transform of ask1
figure
fs = 594;
M_ask1 = abs(fftshift(fft(ask1)))/(fs/2); 
f_bit1 = fs/2*linspace(-1,1,fs);
subplot(3,1,1)
stem(f_bit1, M_ask1)
axis([-270 270 0 2.5])
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Domain - ASK of Digital Bit Stream Signal - 1')
% Fourier Transform of ask2
M_ask2 = abs(fftshift(fft(ask2)))/(fs/2); 
f_bit2 = fs/2*linspace(-1,1,fs);
subplot(3,1,2)
stem(f_bit2, M_ask2)
axis([-270 270 0 2.5])
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Domain - ASK of Digital Bit Stream Signal - 2')
% Fourier Transform of ask3
M_ask3 = abs(fftshift(fft(ask3)))/(fs/2); 
f_bit3 = fs/2*linspace(-1,1,fs);
subplot(3,1,3)
stem(f_bit3, M_ask3)
axis([-270 270 0 2.5])
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Domain - ASK of Digital Bit Stream Signal - 3')












% plotting composite signal of ask1, ask2, ask3
tcomp = bp3/99:bp3/99:bp3*length(x3);
comp_sig = (ask1).*c1+(ask2).*c2+(ask3).*c3;

figure
subplot(2,1,1)
plot(tcomp, comp_sig);
axis([0 6 -20 20]);
xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('Composite Signal: ASK1 + ASK2 + ASK3');
% Fourier Transform of composite signal
M_comp = abs(fftshift(fft(comp_sig)))/(fs/2); 
f_bitcomp = fs/2*linspace(-1,1,fs);
subplot(2,1,2)
stem(f_bitcomp, M_comp)
axis([-270 270 0 3.5])
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Domain - Composite Signal (ASK1 + ASK2 + ASK3)')






% demultiplexing the original analog ask1, ask2, ask3 signals
fs = 300; %Sampling Frequency
trec = bp3/99:bp3/99:bp3*length(x3); %Generating Time axis

% Passing the Composite Signal Through Bandpass Filter
% Normalize cutoff frequencies
fc1_norm = (fc1 - fm1 - 6) / (fs/2);
fh1_norm = (fc1 + fm1 + 6) / (fs/2);
[num1, den1] = butter(5, [fc1_norm fh1_norm]); % Design filter for signal 1

fc2_norm = (fc2 - fm2 - 6) / (fs/2);
fh2_norm = (fc2 + fm2 + 6) / (fs/2);
[num2, den2] = butter(5, [fc2_norm fh2_norm]); % Design filter for signal 2

fc3_norm = (fc3 - fm3 - 6) / (fs/2);
fh3_norm = (fc3 + fm3 + 6) / (fs/2);
[num3, den3] = butter(5, [fc3_norm fh3_norm]); % Design filter for signal 3

% Filter the composite signal (assuming comp_sig is defined)
bpf1 = filter(num1, den1, comp_sig);
bpf2 = filter(num2, den2, comp_sig);
bpf3 = filter(num3, den3, comp_sig);

% Demodulation (assuming Am1, Am2, Am3 are defined)
z1 = 2*bpf1 .* c1;
z2 = 2*bpf2 .* c2;
z3 = 2*bpf3 .* c3;

% Normalize cutoff frequencies for demodulation filters
fm1_norm = (fm1 + 6) / (fs/2);
[num5, den5] = butter(5, fm1_norm);
Rec1 = filter(num5, den5, z1);

fm2_norm = (fm2 + 6) / (fs/2);
[num6, den6] = butter(5, fm2_norm);
Rec2 = filter(num6, den6, z2);

fm3_norm = (fm3 + 6) / (fs/2);
[num7, den7] = butter(5, fm3_norm);
Rec3 = filter(num7, den7, z3);

% Plotting the Received Signals in Time-Domain and Frequency Domain
figure
subplot(3,1,1)
plot(trec, Rec1)
xlabel('time')
ylabel('amplitude')
title('received signal 1 in time domain')
subplot(3,1,2)
plot(trec,Rec2)
xlabel('time')
ylabel('amplitude')
title('received signal 2 in time domain')
subplot(3,1,3)
plot(trec,Rec3)
xlabel('time')
ylabel('amplitude')
title('received signal 3 in time domain')





% Fourier Transform of rec1
figure
fs = 594;
M_rec1 = abs(fftshift(fft(Rec1)))/(fs/2); 
f_rec1 = fs/2*linspace(-1,1,fs);
subplot(3,1,1)
stem(f_bit1, M_rec1)

xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Domain - Received ASK of Digital Bit Stream Signal - 1')
% Fourier Transform of rec2
M_rec2 = abs(fftshift(fft(Rec2)))/(fs/2); 
f_rec2 = fs/2*linspace(-1,1,fs);
subplot(3,1,2)
stem(f_rec2, M_rec2)

xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Domain - Received ASK of Digital Bit Stream Signal - 2')
% Fourier Transform of ask3
M_rec3 = abs(fftshift(fft(Rec3)))/(fs/2); 
f_rec3 = fs/2*linspace(-1,1,fs);
subplot(3,1,3)
stem(f_rec3, M_rec3)

xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Domain - Received ASK of Digital Bit Stream Signal - 3')