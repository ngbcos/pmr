function [] = task3b()
%TASK3B Plots the approximate gaussian of each player winning with diagonal
%and full covariance matrices

    load('go_player_skill_model/diag_covar.mat');
    
    % take a sample
    %skill_sample = approx_mean(lee_sedol_id) + randn(1, n_players) .* approx_covar(lee_sedol_id).^0.5;
    
    % set axis
    %x = -3:.105255:3;
    x = -10:.0025:15;
    
    figure(1);
    hold on;
    title('Diagonal covariance matrix');
    plot(x, normpdf(x, approx_mean(lee_sedol_id), approx_covar(lee_sedol_id)),'-r');
    plot(x, normpdf(x, approx_mean(fan_hui_id), approx_covar(fan_hui_id)),'--g');
    plot(x, normpdf(x, approx_mean(alpha_go_id), approx_covar(alpha_go_id)),'-.b');
    ylim([0 1.6]);
    legend('Lee Sedol','Fan Hui', 'AlphaGo', 'Location', 'northwest');
    xlabel('Position along line s');
    ylabel('Value of factor at s=s(x^{(k)T}x^{(k)})^{-1}x^{(k)}');
    hold off;
    
    load('go_player_skill_model/full_covar.mat');
    
    %x = -3:.1063905:3;
    
    figure(2);
    hold on;
    title('Full covariance matrix');
    plot(x, normpdf(x, approx_mean(lee_sedol_id), approx_covar(lee_sedol_id,lee_sedol_id)),'-r');
    plot(x, normpdf(x, approx_mean(fan_hui_id), approx_covar(fan_hui_id,fan_hui_id)),'--g');
    plot(x, normpdf(x, approx_mean(alpha_go_id), approx_covar(alpha_go_id,alpha_go_id)),'-.b');
    ylim([0 1.6]);
    legend('Lee Sedol','Fan Hui', 'AlphaGo', 'Location', 'northwest');
    xlabel('Position along line s');
    ylabel('Value of factor at s=s(x^{(k)T}x^{(k)})^{-1}x^{(k)}');
    hold off;
    drawnow;
    


end

