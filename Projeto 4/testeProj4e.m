%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 4 - Developing Image Padding
%image
%ARQUIVO - main.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%--------------------------------------------------------------------------
clc; close all; clear all;
f = imread('testpattern1024.tif');
imagePad4e(f,256,256,'zeros')
imagePad4e(f,256,256,'replicate')
imagePad4e(f,256,256);