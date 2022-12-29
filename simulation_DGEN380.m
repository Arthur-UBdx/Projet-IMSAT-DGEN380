clear all;
close all;
clc;

Te=0.02; %période d'échantillonnage imposée par le modèle Simulink : ne pas modifier
Tf=350;
h=2000;
T=1;
v=0.2;

%% Point d'équilibre

Cmd_kero_i=50;
Cmd_kero_t=200;
Cmd_kero_delta=0;
Cmd_kero_f=Cmd_kero_i+Cmd_kero_delta;
sim('DGEN380_BO');
t=NL.time;
y=NL.signals.values;
plot(t,y);