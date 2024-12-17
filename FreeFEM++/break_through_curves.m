clear all

figure(1)

subplot(1,2,1)

load ('sim_convect_refine_16/break_through.csv');
plot(break_through(:,1), break_through(:,3))
hold on
plot(break_through(:,1), break_through(:,2))

load ('sim_nonhomogeneous_16/break_through.csv');
plot(break_through(:,1), break_through(:,2))

xlabel('$t$','FontSize',14,'interpreter','latex')
ylabel('$B(t)$','FontSize',14,'interpreter','latex')
legend('Stable ground-state','Homogeneous column','Non-homogeneous columm','Location','northwest')

axis([0 50 0 1.1])
axis square
grid on

subplot(1,2,2)

load ('sim_convect_refine_20/break_through.csv');
plot(break_through(:,1), break_through(:,3))
hold on
plot(break_through(:,1), break_through(:,2))

load ('sim_nonhomogeneous_20/break_through.csv');
plot(break_through(:,1), break_through(:,2))

xlabel('$t$','FontSize',14,'interpreter','latex')
ylabel('$B(t)$','FontSize',14,'interpreter','latex')
legend('Stable ground-state','Homogeneous column','Non-homogeneous columm','Location','northwest')

axis([0 50 0 1.1])
axis square
grid on


% fig = gcf;
% fig.PaperPositionMode = 'auto';
% fig_pos = fig.PaperPosition;
% fig.PaperSize = [fig_pos(3) fig_pos(4)];
% print(fig, 'break_through.pdf', '-dpdf', '-fillpage')