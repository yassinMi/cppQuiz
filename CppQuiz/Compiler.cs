using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace CppQuiz
{

    /// <summary>
    /// besides compilling this class also provides methods for running
    /// the compilled program and reading from it's stdout
    /// </summary>
    static class Compiler
    {


        /// <summary>
        /// the result of a compiling and running operaion
        /// </summary>
        public struct MainResult
        {
            public bool CompileFailure;
            public string Output;
            public int ExitCode;
        }
        /// <summary>
        /// the result of a compiling operaion
        /// </summary>
        struct compilingResult
        {
            public bool Success;
            public string OutputExecutable;
        }
        /// <summary>
        /// the result of a running the compiled program and listenign to it's stdout
        /// </summary>
        struct RunningProgramResult
        {
            public int ExitCode;
            public string Output;
        }

        private static string CompleteCode(string mainBodyCode)
        {

            return
@"
#include<iostream>
#include<cmath>
using namespace std;
int main(){
" 
+mainBodyCode +
@"return 0;
}
";

        }


        /// <summary>
        /// hashes the code to generate a tempFileName that is usique to that code, 
        /// </summary>
        /// <param name="cppCode"></param>
        /// <returns></returns>
        private static string generateTempFileName(string cppCode)
        {
            return MI.TEMP_CPP_FILES+ "\\temp" + cppCode.GetHashCode().ToString();

        }
        public static async Task<MainResult> GetResult(string mainBodyCode)
        {
            var outp = new MainResult() { };
            string cppCode = CompleteCode(mainBodyCode);
            var compilingRes = await Compile(cppCode);
            if (!compilingRes.Success)
            {
                outp.CompileFailure = true;
                return outp;
            }
            var runningRes = await RunPogram(compilingRes.OutputExecutable);
            outp.Output = runningRes.Output.TrimEnd();
            outp.ExitCode = runningRes.ExitCode;
            return outp;

        }


        private static async Task <compilingResult> Compile(string CppCode)
        {
            var outp =  new compilingResult();
            string tempFileName = generateTempFileName(CppCode); //without extension
            string cppTempFile = tempFileName + ".cpp";
            string exeTempFile = tempFileName + ".exe";

            File.WriteAllText(cppTempFile, CppCode);
            //>g++ "tests-mi.cpp" -o "testmi.exe"
            string mingwArgs = $"\"{cppTempFile}\" -o \"{exeTempFile}\"";
           // MessageBox.Show(mingwArgs);

            int compilerExitCode = await RunMingw(mingwArgs);
            if(compilerExitCode== -1616)
            {
                //todo handle g++ missing error

            }
            outp.OutputExecutable = exeTempFile;
            outp.Success = compilerExitCode == 0;
            return outp;

        }

        /// <summary>
        /// Runs the program, listens to it's stdout, appending everything to a string biulder, 
        /// when the program finishes it returns the string builder's content and exit code
        /// </summary>
        private static async Task<RunningProgramResult> RunPogram(string programFullPath)
        {
            Process programProcess = new Process();

            programProcess = constructProcess(programFullPath,"");

            var Builder = new StringBuilder();

            DataReceivedEventHandler hndl = ((sender, args) =>
            {
                if (args.Data == null)
                    return;
                Builder.AppendLine(args.Data);

            });
            programProcess.OutputDataReceived += hndl;
            programProcess.ErrorDataReceived += hndl;
            //MI.Verbose("starting ffmpeg..");

            await Task.Run(new Action(() =>
            {
                programProcess.Start();
                programProcess.BeginErrorReadLine();
                programProcess.BeginOutputReadLine();
            }), new System.Threading.CancellationToken());
            //MI.Verbose("ffmpeg is runing");
            //OnRunning?.Invoke(this, new EventArgs());
            await Task.Run(new Action(() =>
            {
                programProcess.WaitForExit();
            }));
            //MI.Verbose(null);
            //OnExited?.Invoke(this, programProcess.ExitCode);
            

            return new RunningProgramResult() { Output = Builder.ToString(), ExitCode = programProcess.ExitCode };

        }

        /// <summary>
        /// Runs a mingw process, with the specifyed args and returns it's exit code 
        /// </summary>
        private static async Task<int> RunMingw(string mingwArgs)
        {
            Process mingwProcess = constructProcess(MI.MINGW_PATH, mingwArgs);
            var Builder = new StringBuilder(); //not used
            DataReceivedEventHandler hndl = ((sender, args) =>
            {
                if (args.Data == null)
                    return;
                Builder.AppendLine(args.Data);
            });
            mingwProcess.OutputDataReceived += hndl;
            mingwProcess.ErrorDataReceived += hndl;
            //MI.Verbose("starting ffmpeg..");
            try
            {
                await Task.Run(new Action(() =>
                {
                    mingwProcess.Start();
                    mingwProcess.BeginErrorReadLine();
                    mingwProcess.BeginOutputReadLine();
                }), new System.Threading.CancellationToken());
            }
            catch (Exception exp)
            {

                MessageBox.Show($"couldn't start g++.exe:\n{exp.Message}", "couldn't start g++.exe", MessageBoxButton.OK, MessageBoxImage.Error);
                return -1616;//special codes when g++ fails to start// todo fix this
            }
            
            //MI.Verbose("ffmpeg is runing");
            await Task.Run(new Action(() =>
            {
                mingwProcess.WaitForExit();
            }));
            //MI.Verbose(null);
            return mingwProcess.ExitCode ;

        }



        /// <summary>
        /// borowed from mi-fbhd
        /// makes a process object for general use,
        /// </summary>
        /// <returns></returns>
        public static Process constructProcess(string filename, string args)
        {
            Process process = new Process();
            ProcessStartInfo startInfo = new ProcessStartInfo();
            //startInfo.WindowStyle = ProcessWindowStyle.Normal;
            startInfo.FileName = filename;
            startInfo.Arguments = args;
            startInfo.WorkingDirectory = MI.MAIN_PATH;
            startInfo.CreateNoWindow = true;
            startInfo.RedirectStandardOutput = true;
            startInfo.RedirectStandardError = true;
            startInfo.RedirectStandardInput = true;
            startInfo.UseShellExecute = false;
            process.StartInfo = startInfo;
            process.EnableRaisingEvents = true;

            return process;
        }


    }






    /// <summary>
    /// partially borowed from mi-fbhd
    /// used o hold generc constants
    /// </summary>
    public class MI
    {
        public static string MAIN_PATH = Path.GetDirectoryName(
           System.Reflection.Assembly.GetExecutingAssembly().Location);

       // public static string MINGW_PATH = @"C:\TOOLS\CodeBlocks\MinGW\bin\g++.exe";

        public static string MINGW_PATH =  @"g++.exe";
        public static string APP_DATA = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + "\\Mi\\CppQuiz";
        internal static string TEMP_CPP_FILES = APP_DATA + "\\Temp CPP";

        public static object APP_VERSION { get; internal set; } = "0.2.0";
        public static string QUIZZES_PATH { get; internal set; } = MAIN_PATH + @"\quizzes";
    }





}
