%% Parameters
% Household Parameters
par.beta        = 0.98;     % Discount factor
par.xi          = 4;          % CRRA
par.gamma       = 1;          % Inverse Frisch elasticity
par.nu          = 0.065;          % Prob. of trade given adj. decision

% Income Process
par.rhoH        = 0.98;    % Persistence of productivity
par.sigmaH      = 0.06;    % STD of productivity shocks
mpar.in         = 0.0005;  % Prob. to become entrepreneur
mpar.out        = 0.0625;   % Prob. to become worker again

% Firm Side Parameters
par.eta         = 20;
par.mu          = (par.eta-1)/par.eta;       % Markup 5%
par.alpha       = 2/3/par.mu;  % Labor share 2/3
par.delta       = 0.054/4;     % Depreciation rate
par.phi         = 11.4;        % Capital adj costs

% Phillips Curve
par.prob_priceadj = 3/4; % average price duration of 4 quarters = 1/(1-par.prob_priceadj)
par.kappa         = (1-par.prob_priceadj)*(1-par.prob_priceadj*par.beta)/par.prob_priceadj;% Phillips-curve parameter (from Calvo prob.)

% Central Bank Policy
par.theta_pi    = 1.25; % Reaction to inflation
par.rho_R       = 0.8;  % Inertia

% Tax Schedule
par.tau         = 0.7;   % Proportional tax on labor and profit income 

% Debt rule
par.gamma_pi    = 1.5;   % Reaction to inflation
par.gamma_T     = 0.5075; % Reaction to tax revenue
par.rho_B       = 0.86;  % Autocorrelation

%% Returns
par.PI  = 1.00^.25;     % Gross inflation
par.RB  = (par.PI*1.025)^0.25;    % Real return times inflation

par.ABS = 0;                    % Loan to value ratio max.
par.borrwedge = par.PI*(1.1^0.25-1); % Wedge on borrowing beyond secured borrowing

par.Q  = 1;

%% Grids
% Idiosyncratic States
mpar.nm         = 100;
mpar.nk         = 100;
mpar.nh         = 26;
mpar.tauchen    ='importance';


%% Numerical Parameters
mpar.crit    = 1e-10;

