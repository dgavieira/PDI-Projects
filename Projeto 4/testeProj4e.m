%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADR�ES E OTIMIZA��O
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 4 - Developing Image Padding
%image
%ARQUIVO - main.m
%AUTOR - Diego Giovanni de Alc�ntara Vieira
%--------------------------------------------------------------------------
clc; close all; clear all;
f = imread('testpattern1024.tif');
imagePad4e(f,256,256,'zeros')
imagePad4e(f,256,256,'replicate')
imagePad4e(f,256,256);