//
//  fromChristianToBinary.cpp
//  WheniOSmeetsAssembly
//
//  Created by Juan Manuel Moreno on 18/10/24.
//

#include "fromChristianToBinary.hpp"

#include <stdio.h>

#ifndef __arm64__

int perform(int x) {
    int i;
    int count = 0;
    for (i = 0; i < sizeof(int)*8; i++) {
        if ( (x&1) == 1 ) {
            count++;
        }
        x >>= 1;
    }
    return count;
}

#endif
