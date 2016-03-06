function [] = task3c()
%TASK3C Calculate the probability of AlphaGo winning, when playing as black
%using both diagonal and full covariance matrices

    format long
    
    load('go_player_skill_model/diag_covar.mat');
    
    % take a sample
    %skill_sample = approx_mean(lee_sedol_id) + randn(1, n_players) .* approx_covar(lee_sedol_id).^0.5;
    
    % create your x vector to be a column vector with n_players size
    x = zeros(n_players, 1);
    
    % set Alpha Go with black
    x(alpha_go_id,1) = 1 / sqrt(2*performance_var);
    
    % set Lee Sedol with white
    x(lee_sedol_id,1) = -1 / sqrt(2*performance_var);
    
    numerator = approx_mean * x;
    
    denominator_diag = sqrt((x' * diag(approx_covar) * x) + 1);
    
    eq_diag = numerator / denominator_diag;
    
    disp(['Using diag cov: ',num2str(normcdf(eq_diag))]);
    
    load('go_player_skill_model/full_covar.mat');
    
    numerator_full = approx_mean * x;
    
    denominator_full = sqrt((x' * approx_covar * x) + 1);
    
    eq_full = numerator_full / denominator_full;
    
    disp(['Using full cov: ',num2str(normcdf(eq_full))]);
    
end

