%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 6 - 2D spatial Filteting
%ARQUIVO - mainProj6.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%AUTOR - Lucas Lima de Oliveira
clc; clear all; close all;
%--------------------------------------------------------------------------
% This File runs the requested tests for the two different kind of spatial
% filtering: twodSfilter, medianSFilter.
%--------------------------------------------------------------------------
% Reading Image
f = imread('Fig3.37(a).jpg');
%--------------------------------------------------------------------------
% Executing twodSFilter
%g = twodSFilter(f,3);   %   3x3 kernel
%g = twodSFilter(f,11);  %   11x11 kernel
g = twodSFilter(f,21);  %   21x21 kernel
%--------------------------------------------------------------------------
% Executing medianSFilter
%g = medianSFilter(f,3);