function [] = task3b()
%TASK3B Plots the approximate gaussian of each player winning with diagonal
%and full covariance matrices

    load('go_player_skill_model/diag_covar.mat');
    
    % set axis
    x = -5:.0012:7;
    
    figure(1);
    hold on;
    title('Diagonal covariance matrix');
    plot(x, normpdf(x, approx_mean(lee_sedol_id), approx_covar(lee_sedol_id)^0.5),'-r');
    plot(x, normpdf(x, approx_mean(fan_hui_id), approx_covar(fan_hui_id)^0.5),'--g');
    plot(x, normpdf(x, approx_mean(alpha_go_id), approx_covar(alpha_go_id)^0.5),'-.b');
    ylim([0 9]);
    legend('Lee Sedol','Fan Hui', 'AlphaGo', 'Location', 'northwest');
    xlabel('Skill');
    ylabel('P(Skill)');
    hold off;
    
    load('go_player_skill_model/full_covar.mat');
    
    figure(2);
    hold on;
    title('Full covariance matrix');
    plot(x, normpdf(x, approx_mean(lee_sedol_id), approx_covar(lee_sedol_id,lee_sedol_id)^0.5),'-r');
    plot(x, normpdf(x, approx_mean(fan_hui_id), approx_covar(fan_hui_id,fan_hui_id)^0.5),'--g');
    plot(x, normpdf(x, approx_mean(alpha_go_id), approx_covar(alpha_go_id,alpha_go_id)^0.5),'-.b');
    ylim([0 9]);
    legend('Lee Sedol','Fan Hui', 'AlphaGo', 'Location', 'northwest');
    xlabel('Skill');
    ylabel('P(Skill)');
    hold off;
    drawnow;
end

