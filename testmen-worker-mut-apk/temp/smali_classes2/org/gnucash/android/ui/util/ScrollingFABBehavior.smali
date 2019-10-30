.class public Lorg/gnucash/android/ui/util/ScrollingFABBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "ScrollingFABBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field private toolbarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/util/ScrollingFABBehavior;->getToolbarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lorg/gnucash/android/ui/util/ScrollingFABBehavior;->toolbarHeight:I

    .line 40
    return-void
.end method

.method private getToolbarHeight(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 62
    .local v1, "tv":Landroid/util/TypedValue;
    const v0, 0x7f040003

    .line 63
    .local v0, "actionBarHeight":I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f040003

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 65
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 69
    :cond_0
    return v0
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 44
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lorg/gnucash/android/ui/util/ScrollingFABBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 49
    instance-of v4, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 51
    .local v2, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 52
    .local v1, "fabBottomMargin":I
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v4

    add-int v0, v4, v1

    .line 53
    .local v0, "distanceToScroll":I
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v4

    iget v5, p0, Lorg/gnucash/android/ui/util/ScrollingFABBehavior;->toolbarHeight:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 54
    .local v3, "ratio":F
    neg-int v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p2, v4}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 57
    .end local v0    # "distanceToScroll":I
    .end local v1    # "fabBottomMargin":I
    .end local v2    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "ratio":F
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lorg/gnucash/android/ui/util/ScrollingFABBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
