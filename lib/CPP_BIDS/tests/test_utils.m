% (C) Copyright 2020 CPP_BIDS developers

function test_suite = test_utils %#ok<*STOUT>
    try % assignment of 'localfunctions' is necessary in Matlab >= 2016
        test_functions = localfunctions(); %#ok<*NASGU>
    catch % no problem; early Matlab versions can use initTestSuite fine
    end
    initTestSuite;
end

function test_utilsBasic()

    cfg.verbose = true;

    printCreditsCppBids(cfg);

    checkCppBidsDependencies(cfg);

end
