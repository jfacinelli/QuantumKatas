﻿// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT license.

//////////////////////////////////////////////////////////////////
// This file is a back end for the tasks in the tutorial.
// We strongly recommend to use the Notebook version of the tutorial
// to enjoy the full experience.
//////////////////////////////////////////////////////////////////

namespace Quantum.Kata.SingleQubitGates {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    
    // Exercise 1.
    operation ApplyY (q : Qubit) : Unit is Adj+Ctl {
        Y(q);
    }

    // Exercise 2.
    operation GlobalPhaseI (q : Qubit) : Unit is Adj+Ctl {
        X(q);
        Y(q);
        Z(q);
    }

    // Exercise 3.
    operation SignFlipOnZero (q : Qubit) : Unit is Adj+Ctl {
        X(q);
        Z(q);
        X(q);
    }

    // Exercise 4.
    operation PrepareMinus (q : Qubit) : Unit is Adj+Ctl {
        X(q);
        H(q);
    }

    // Exercise 5.
    operation ThreeQuatersPiPhase (q : Qubit) : Unit is Adj+Ctl {
        S(q);
        T(q);
    }

    // Exercise 6.
    operation PrepareRotatedState (alpha : Double, beta : Double, q : Qubit) : Unit is Adj+Ctl {
        Rx(2.0 * ArcTan2(beta, alpha), q);
    }

    // Exercise 7.
    operation PrepareArbitraryState (alpha : Double, beta : Double, theta : Double, q : Qubit) : Unit is Adj+Ctl {
        Ry(2.0 * ArcTan2(beta, alpha), q);
        R1(theta, q);        
    }
}
