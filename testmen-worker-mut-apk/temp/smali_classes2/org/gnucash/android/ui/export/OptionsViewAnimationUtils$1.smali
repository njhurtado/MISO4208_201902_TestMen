.class final Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$1;
.super Landroid/view/animation/Animation;
.source "ExportFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->expand(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$targetHeight:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$1;->val$v:Landroid/view/View;

    iput p2, p0, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$1;->val$targetHeight:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 625
    iget-object v0, p0, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 628
    iget-object v0, p0, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 629
    return-void

    .line 625
    :cond_0
    iget v0, p0, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils$1;->val$targetHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x1

    return v0
.end method
