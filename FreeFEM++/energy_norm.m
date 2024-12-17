clear all

figure(1)

subplot(1,2,1)

load ('sim_convect_refine_16/norms.csv');
plot(norms(:,1), norms(:,2))
hold on

load ('sim_nonhomogeneous_16/norms.csv');
plot(norms(:,1), norms(:,2))

xlabel('$t$','FontSize',14,'interpreter','latex')
ylabel('$E(t)$','FontSize',14,'interpreter','latex')
legend('Homogeneous column','Non-homogeneous columm','Location','northwest')

axis([0 50 0 7])
axis square
grid on

subplot(1,2,2)

load ('sim_convect_refine_20/norms.csv');
plot(norms(:,1), norms(:,2))
hold on

load ('sim_nonhomogeneous_20/norms.csv');
plot(norms(:,1), norms(:,2))

xlabel('$t$','FontSize',14,'interpreter','latex')
ylabel('$E(t)$','FontSize',14,'interpreter','latex')
legend('Homogeneous column','Non-homogeneous columm','Location','northwest')

axis([0 50 0 7])
axis square
grid on


fig = gcf;
fig.PaperPositionMode = 'auto';
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
print(fig, 'norms.pdf', '-dpdf', '-fillpage')