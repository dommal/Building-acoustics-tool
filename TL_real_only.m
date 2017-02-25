function [TL_out, f_out] = TL_real_only(f_in, TL_in)

%%% remove imaginary data from datasets
TL_real = TL_in(imag(TL_in) == 0);
f_real = f_in(imag(TL_in) == 0);

%remove values equal and less 0 from data --> problems if log10 taken
TL_out = TL_real(TL_real > 0);
f_out = f_real(TL_real > 0);
