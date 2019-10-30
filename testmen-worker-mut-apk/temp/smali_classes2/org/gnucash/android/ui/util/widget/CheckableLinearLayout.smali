.class public Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckable:Landroid/widget/Checkable;

.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mIsChecked:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mIsChecked:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mIsChecked:Z

    .line 56
    return-void
.end method

.method private findCheckableView(Landroid/view/ViewGroup;)Landroid/widget/Checkable;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "childView":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 81
    check-cast v1, Landroid/widget/Checkable;

    .line 90
    .end local v1    # "childView":Landroid/view/View;
    :goto_1
    return-object v1

    .line 83
    .restart local v1    # "childView":Landroid/view/View;
    :cond_0
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 84
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "childView":Landroid/view/View;
    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->findCheckableView(Landroid/view/ViewGroup;)Landroid/widget/Checkable;

    move-result-object v0

    .line 85
    .local v0, "checkable":Landroid/widget/Checkable;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 86
    goto :goto_1

    .line 77
    .end local v0    # "checkable":Landroid/widget/Checkable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mIsChecked:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 68
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->refreshDrawableState()V

    .line 101
    return-void

    .line 98
    :cond_0
    iput-boolean p1, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mIsChecked:Z

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->refreshDrawableState()V

    .line 116
    return-void

    .line 113
    :cond_0
    iget-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mIsChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CheckableLinearLayout;->mIsChecked:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
