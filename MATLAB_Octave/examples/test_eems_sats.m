

%% Directory with the EEMS source scripts
sourcepath = '../';
addpath(strcat(sourcepath,'/mscripts'));

%% Path to the EEMS input files (without file extensions)
datapath = './data/sat-barrier-nIndiv150-nSites16';

%% Choose the size of the graph
%% The population graph is a regular triangular graph with size xDemes-by-yDemes
xDemes = 13;
yDemes = 7;

%% Path to the EEMS output files
simno = 1;  %% If you simulate several realizations of the MCMC chain,
            %% it is convenient to keep track of them 
mcmcpath = strcat(datapath,'-g',num2str(xDemes),'x',num2str(yDemes),'-simno',num2str(simno));

%% The input arguments sourcepath, datapath, mcmcpath, xDemes, yDemes have
%% to be always specified

MCMC_microsat(sourcepath,datapath,mcmcpath,xDemes,yDemes,...
	     'numMCMCIter',4000,'numBurnIter',2000,'numThinIter',19);
