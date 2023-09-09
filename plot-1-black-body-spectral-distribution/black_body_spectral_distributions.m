%------------------------------------------------------------------------%
%---------Black Body Radiation-------------------------------------------%
%------------------------------------------------------------------------%

clc;
close all;
clear all;

%------------------------------------------------------------------------%

c=3*10^8; % speed of light in vaccum
h=6.625*10.^-34; %  Planck constant 
k=1.38*10.^-23; %   Boltzmann constant
T=[ 500 600 700 ]; % Temperatures in Kelvin
Lam=(0.0:0.01:20).*1e-6; 


figure(1)
for i=1:3
    
%------------Wiens Displacement Law--------------------------------------%

I1(:,i)= ((2*h*c*c)./(Lam.^5)).*(exp(-(h*c)./(Lam*k*T(i))));

%------------Planks Law--------------------------------------------------%

I2(:,i)=(2*h*c*c)./((Lam.^5).*(exp((h.*c)./(k.*T(i).*Lam))-1));

%------------------------------------------------------------------------%


plot(Lam,I1(:,i),'linewidth',2)
hold on
plot(Lam,I2(:,i),'r','linewidth',2)

  text(.5e-5,.7e8,'500K','fontSize',14)
  text(.5e-5,2e8,'600K','fontSize',14)
  text(.5e-5,5e8,'T=700K','fontSize',14)

  line([1.2e-5 1.4e-5], [6e8 6e8],'color','r','linewidth',2)
  line([1.2e-5 1.4e-5], [5e8 5e8],'linewidth',2)
  
  text(1.45e-5,6e8,'Plancks Law','fontSize',14)
  text(1.45e-5,5e8,'Wiens Law','fontSize',14)

  
  xlabel('\lambda','fontsize',14)
  ylabel('Intensity','fontsize',14)
  title('Blackbody Radiation','fontsize',14)
  
  fh = figure(1);
  set(fh, 'color', 'white');
end

