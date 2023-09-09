clc;
syms x Tx KA Tl Th L k
Sgen = KA*((1/x)*((Tx-Tl)^2)*(1/(Tl*Tx))+(1/(L-x))*((Th-Tx)^2)*(1/(Tx*Th)));
Sgen_x = diff(Sgen,x);
Sgen_Tx = diff(Sgen,Tx);
pt = solve([Sgen_x == 0, Sgen_Tx == 0], [x, Tx])
sol = struct2array(pt)

Sgen_0 = (KA/L)*(Th-Tl)*((1/Tl)-(1/Th));
Sgen_min = subs(Sgen, {x, Tx, KA, Tl, Th, L}, {sol(1,1), sol(1,2), KA, Tl, Th, L});
Ns = Sgen_min/Sgen_0;
Ns = simplify(subs(Ns, {Th, Tl}, {k/Tl, Tl}));
Ns = subs(Ns, Tl, 1)
fplot(Ns, [1, 10], 'LineWidth', 2);
grid on
title('Entropy Generation (Ns) vs Th/Tl')
xlabel('Th/Tl')
ylabel('Entropy Generation (Ns)')
legend('show', 'location', 'best')
title('DONE BY DEEP SAMANTA: 21ME8162') 
axis([1 inf 0 inf])