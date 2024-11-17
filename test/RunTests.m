% run_tests.m
% A script to run all tests in the 'test' folder.

% Get the project root directory
projectRoot = fileparts(fileparts(mfilename('fullpath')));

% Add 'src' folder to MATLAB path
srcPath = fullfile(projectRoot, 'src');
addpath(srcPath);

% Find all test files in the 'test' folder
testFolder = fullfile(projectRoot, 'test');
testSuite = matlab.unittest.TestSuite.fromFolder(testFolder, 'IncludingSubfolders', true);

% Run the tests and display results
results = testSuite.run();
disp(results);

% Exit with a non-zero status code if any tests fail
if ~all([results.Passed])
    error('One or more tests failed.');
end
