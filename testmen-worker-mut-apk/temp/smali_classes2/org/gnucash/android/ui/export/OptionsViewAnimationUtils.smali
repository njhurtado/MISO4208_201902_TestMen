.class Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;
.super Ljava/lang/Object;
.source "ExportFormFragment.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapse(Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 644
    .local v1, "initialHeight":I
    new-instance v0, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$2;

    invoke-direct {v0, p0, v1}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$2;-><init>(Landroid/view/View;I)V

    .line 662
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v2, v1, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 663
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 664
    return-void
.end method

.method public static expand(Landroid/view/View;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 616
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 617
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 619
    .local v1, "targetHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 620
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 621
    new-instance v0, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$1;

    invoke-direct {v0, p0, v1}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$1;-><init>(Landroid/view/View;I)V

    .line 637
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v2, v1, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 638
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 639
    return-void
.end method
