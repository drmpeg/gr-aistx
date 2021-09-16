/* -*- c++ -*- */

#define AISTX_API

%include "gnuradio.i"           // the common stuff

//load generated python docstrings
%include "aistx_swig_doc.i"

%{
#include "aistx/Build_Frame.h"
#include "aistx/DebugME.h"
#include "aistx/nrz_to_nrzi.h"
%}

%include "aistx/Build_Frame.h"
GR_SWIG_BLOCK_MAGIC2(aistx, Build_Frame);
%include "aistx/DebugME.h"
GR_SWIG_BLOCK_MAGIC2(aistx, DebugME);
%include "aistx/nrz_to_nrzi.h"
GR_SWIG_BLOCK_MAGIC2(aistx, nrz_to_nrzi);
