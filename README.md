# VS 2022 New MonoGame Project
An easy to use Powershell script to create new MonoGame Projects usable within Visual Studio 2022

[![Test New MonoGame Script](https://github.com/miker525/New-MonoGameVS2022/actions/workflows/main.yml/badge.svg)](https://github.com/miker525/New-MonoGameVS2022/actions/workflows/main.yml)

The purpose of this script is to quickly and easily generate new MonoGame projects for use within VS2022. 

MonoGame is fully supported within VS2022 but there are no publicly available templates yet for it. This script aims to remedy that by installing project templates and generating new projects for you based on your input

When running this script there are three supported parameters. Info about them and their usage in the chart below

Parameter Name|Options / Input|Effect / Info
:-:|:-:|:-:
-name |[user inputted string]|VS Solution & project will be named whatever is entered here. This is a required parameter
-path |[user inputted string]|This is the path the vs solution / project will be created in. If not used project will be created in the current working directory
-template|"gl"|This will create a MonoGame Cross Platform OpenGL Desktop project. This is also the default used if -template is not passed.
-template|"dx"|This will create a MonoGame Windows DirectX Desktop project.
-template|"cr" or "core"|This will create a MonoGame Windows Universal Application (Core App).
-template|"xm" or "xaml"|This will create a MonoGame Windows Universal Application (XAML).
-template|"and"|This will create a MonoGame Android Application.
-template|"ios"|This will create a MonoGame iOS Application.
-template|"net"|This will create a MonoGame NetStandard Library.
-template|"pl" or "pipe"|This will create a MonoGame Pipeline Extension.
-template|"lib" or "shared"|This will create a MonoGame Shared Library Project.

It should be noted MonoGame at present still requires dotnet core v3.1 - if you do not have this installed you will be prompted to install it via VS2022 upon opening generated MonoGame project.

This script was created entirely just to make it simpler to quickly create MonoGame projects for use within Visual Studio. Feel free to redistribute, modify or adjust to your own needs. 

Script should be considered under the MIT License
