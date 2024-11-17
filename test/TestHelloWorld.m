classdef TestHelloWorld < matlab.unittest.TestCase
    methods (TestClassSetup)
        function addSourceToPath(testCase) %#ok<MANU>
            % Add the 'src' folder to the MATLAB path for testing
            projectRoot = fileparts(fileparts(mfilename('fullpath')));
            srcPath = fullfile(projectRoot, 'src');
            addpath(srcPath);
        end
    end

    methods (Test)
        function testSayHello(testCase)
            % Create an instance of HelloWorld
            hw = HelloWorld(); %#ok<NASGU>

            % Capture the output of sayHello
            output = evalc('hw.sayHello()');

            % Verify the output matches the expected string
            testCase.verifyEqual(strtrim(output), 'Hello world!');
        end
    end
end
