// Copyright (c) OpenMMLab. All rights reserved.

#include "../attention_config.h"
#include "../attention_template.h"

namespace turbomind {

using namespace attention;

template void invokeAttention<typename AttentionConfig<arch::Sm80, nv_bfloat16, 192, CacheType::kLinear>::Kernel>(
    const AttentionParams<nv_bfloat16>& params);

template void invokeAttention<typename AttentionConfig<arch::Sm80, half, 192, CacheType::kLinear>::Kernel>(
    const AttentionParams<half>& params);

}  // namespace turbomind
