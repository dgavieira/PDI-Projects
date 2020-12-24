%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 5 - Histogram
%ARQUIVO - mainProj5.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%AUTOR - Lucas Lima de Oliveira
%--------------------------------------------------------------------------
% This File runs the requested tests for histogram equalization.
% based on https://ieeexplore.ieee.org/abstract/document/8660839 / https://web.cs.wpi.edu/~emmanuel/courses/cs545/S14/slides/lecture02.pdf
%--------------------------------------------------------------------------
% Reading Image
clc; clear; close all;
f1 = imread('rose1024.tif');
str1 = 'rose1024';
f2 = imread('hidden-horse.tif');
str2 = 'hidden-horse';
f3 = imread('spillway-dark.tif');
str3 = 'spillway-dark';
%--------------------------------------------------------------------------
% Calling histogram plot functions
imageHist4e(f1,'n',str1);
imageHist4e(f1,'u',str1);

imageHist4e(f2,'n',str2);
imageHist4e(f2,'u',str2);

imageHist4e(f3,'n',str3);
imageHist4e(f3,'u',str3);
%--------------------------------------------------------------------------
% Calling histogram equalization
histEqual4e(f1, str1);
histEqual4e(f2, str2);
histEqual4e(f3, str3);
%adicionei um parametro string às funções para permitir que eu rodasse os
%testes para todas as imagens em um único script teste