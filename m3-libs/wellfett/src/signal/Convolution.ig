
GENERIC INTERFACE Convolution(V);

CONST Brand = "Convolution";


(* Convolution where one operand is same in several computations. *)

TYPE
  Width = [1 .. LAST(CARDINAL)];

  (* Abstract handle for a convolution. *)
  Handle = OBJECT
           METHODS
             init (x: V.T; width: Width; ): Handle;
             (* Initialize a convolution of signal 'x' with respect to
                operands of size 'width'.  Splitting the convolution into
                initialization and execution increases speed when several
                filters are applied to the same signal. *)

             convolve (y: V.T; ): V.T;
             (* Convolve the signal 'x' given at initialisation time with
                'y', where 'y' contains at most 'width' values.  If 'y' is
                shorter than 'width' the length of the resulting vector
                depends on the implementation. *)
           END;

  (* Handles for concrete methods of performing the Convolution. *)
  HandleFourier <: Handle;       (* Use Fourier transform *)
  HandleNaive <: Handle;         (* Use naive convolution *)

END Convolution.
