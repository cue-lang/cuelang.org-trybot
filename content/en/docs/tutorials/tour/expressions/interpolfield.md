+++
# Code generated by gentour. DO NOT EDIT.
title = "Interpolation of Field Names"
description = ""
weight = 2625
layout = "tutorial"
+++
String interpolations may also be used in field names.

One cannot refer to generated fields with references.


<a id="td-block-padding" class="td-offset-anchor"></a>
<section class="row td-box td-box--white td-box--gradient td-box--height-auto">
<div class="col-lg-6 mr-0">
<i>genfield.cue</i>
<p>
{{< highlight go >}}
sandwich: {
    type:            "Cheese"
    "has\(type)":    true
    hasButter:       true
    butterAndCheese: hasButter && hasCheese
}

{{< /highlight >}}
<br>
</div>

<div class="col-lg-6 ml-0"><i>$ cue eval genfield.cue</i>
<p>
{{< highlight txt >}}
sandwich.butterAndCheese: reference "hasCheese" not found:
    ./genfield.cue:5:35
{{< /highlight >}}
</div>
</section>