clear all
clc

KWcc = 1
KWcs = 0.7
KWcp = 0.7

%��������� �������� ���������������:
% � ������ ����������� �� ������� � �������� 64 ���, ������� ��� 10 ���, ���������� ������� ������� ���� 5 ��� ����� Tpow = ( 62,5 + 64 + 8 + 5 ) ��� = 139.5 ���.
Tpwc = 0.00014; % � - ������ ��������� ����������, ����� ������� �������-���������� ��������� � ������� ���������������
Un   = 450;     % � - ����������, �������� ������� ���������
% Un = M*n/I    % M - ����������� ������ [�*�], n -����������� �������� [���/�], I - ����������� ���� ���� [�]
Uc   = 10;      % � - ������������ ���������� ������������ �������, ����������� �� ������
Kpwc = Un/Uc;   % - ����������� �������� (��������) ���

% ��������� ���������
i = 120; % - ������������ ��������� ���������
Jgear = 0.00273; % ��*�^2 - ������ ������� ���������

%��������� ���������
Jrot = 0.000605; % ��*�^2 - ������ ������� ������ ���������
Jmotor = Jgear + Jrot;  % ��*�^2 - ������ ������� �������
I = 6; % � - ����������� ��� ���������
n = 3000*2*pi/60; % ���/� - ����������� ������� �������� ���������
Rrot = 0.8250;    % �� - ������������� ������� �����������, R
Lrot = 0.0059; % �� - ������������� ������� �����������, Lm

Mrate = 8.5;  % �� - ����������� ������
Km = Mrate/I; % �� - ���������� ���������
Ke = Km;      % �� - ����������� ��� ��������� (���������� ������� ���������� ����������)
Imax = 10;    % � - ������������ ���
Te = Lrot/Rrot; % - ���������������� ���������� ������� ���������

% ��������� ��������
Jload = 5; % ��*�^2

%��������� ������� ���������
Nps_i   = 100000;     % - ��������� �� ������
kps_int = 2*Nps_i/pi; % - ����������� �������� ������� ���������

%��������� ������� ������������� ���� (���� ����)
kcur_i = 1/Te; % - ����������� �������� ������������ ������������ ���������� ����
Uadc_inp = 10; % � - ������������ ������� ���������� ���
kcs       = Uadc_inp/Imax;             % - ����������� �������� ������� ����
Nadc      = 8;                         % - ����������� ���
kadc      = ((2^(Nadc-1))-1)/Uadc_inp; % - ����������� �������� ���
Kcur_Fdb  = round(Uadc_inp*kadc/Imax); % - ����������� ������������� �������� ����� �� ����
Ndac      = 8;                         % - ����������� ���
kdac      = Uadc_inp/((2^(Ndac-1))-1); % - ����������� �������� ���
%������ �� ��������� �� ����������� �������
Wcutoff_c = KWcc*round(1/2/(Tpwc)); % - ������� ����� ����������� ���������� ������������� ����
kcur_p = Wcutoff_c*Te*Rrot/(Kpwc*Kcur_Fdb); % ����������� �������� �-���������� ������� ����

% ��������� ������� ������������� ��������
Ts = 1e-3; % - ������ ����������� � ������� �������� (������ ���)
Tspd_ekv = Ts+(1/Wcutoff_c); % c - ������������� ���������� ������� ����������������� ��������������� ����� � ������� ������������� �������� 
Wcutoff_s = KWcs*1/(2*Tspd_ekv); % - ������� ����� ����������� ���������� ������������� ��������
Tspd = 4/Wcutoff_s; % - ����������� ������� ���������� ��������
kspd_i = 1/Tspd; % - ����������� �������� ������������ ������������ ���������� ��������
Kspd_Fdb = kps_int*Ts; % - ����������� ������������� �������� ����� �� ��������
ksn = Km*Kspd_Fdb/Kcur_Fdb/(Jmotor+Jload/i^2); % - ����������� �������� ������������ ����� (� �������� ��������) 
kspd_p = Wcutoff_s/ksn; % - ����������� �������� ���������������� ������������ ���������� ��������

% ��������� ������� ������������� ���������
Kpos_Fdb = kps_int; % - ����������� ������������� �������� ����� �� ���������
Wcutoff_pos = KWcp*round(Wcutoff_s/3); % - ������� ����� ������������ �� ��������� ����������� ��������� �������
kpos_p = Wcutoff_pos*Ts; % - ����������� �������� ���������������� ������������ ���������� ���������
