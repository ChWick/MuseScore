#ifndef ANDROID_FIX_H
#define ANDROID_FIX_H

#ifndef ANDROID
#error This file is for android only~
#endif

#include <cmath>

template <typename T>
T log2(T x) { return std::log(x) / 1.4426950408889634; }

#endif // ANDROID_FIX_H
