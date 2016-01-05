close all
n=100000;
x=sign(randn(1,n)+0.04);
run_algos

set(0, 'DefaultLineLineWidth',2);
set(0, 'DefaultAxesFontSize',14);
figure
plot(log10(wealth_array)-log10(wealth_opt_array));
hold on
plot(log10(wealth_kt_array)-log10(wealth_opt_array),'r');
%plot(log10(wealth_opt_array),'k');
legend('COCOB','KT bettor','location','SouthEast')
grid on
xlabel('Time')
ylabel('log10(Wealth/Optimal\_Wealth)')
title(sprintf('Binary coin, optimal fraction to bet = %.3f',b_opt))
print -dpng binary_coin.png

n=100000;
x=rand(1,n).*x;
run_algos

figure
plot(log10(wealth_array)-log10(wealth_opt_array));
hold on
plot(log10(wealth_kt_array)-log10(wealth_opt_array),'r');
%plot(log10(wealth_opt_array),'k');
legend('COCOB','KT bettor','location','SouthEast')
grid on
xlabel('Time')
ylabel('log10(Wealth/Optimal\_Wealth)')
title(sprintf('Continuos coin, optimal fraction to bet = %.3f',b_opt))
print -dpng continuos_coin.png