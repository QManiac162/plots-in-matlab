% Defining the constants
% Speed of light in m/s
    c = 3e+8;
% Planck's Constant
    h = 6.626e-34;
% Boltzman Constant
    k = 1.38e-23;
% Temperature range plotted in Kelvin
    T = [500 600 700 800 900];
lambda=(0.0:0.01:20).*1e-6; 
figure(1)
for i=1:5

    % Planck's Distribution Law
    E(:,i) = (2*pi*h*c.^2)./((lambda.^5).*(exp((h.*c)./(k.*T(i).*lambda))-1));
    hold on
    plot(lambda,E(:,i),'r','LineWidth',2)
    text(.5e-5,.6e9,'500K','fontSize',8)
    text(.5e-5,1.2e9,'600K','fontSize',8)
    text(.5e-5,2.2e9,'700K','fontSize',8)
    text(.5e-5,3.5e9,'800k','fontsize',8)
    text(.5e-5,5.5e9,'900k','fontsize',8)

    xlabel('Wavelength, lambda (um)','fontsize',10)
    ylabel('Spectral Emissive Power, E (W/m^2*um)','fontsize',10)
    title('Blackbody Radiation - 21ME8162','fontsize',10)
    
    fh = figure(1);
    set(fh, 'color', 'white');
end