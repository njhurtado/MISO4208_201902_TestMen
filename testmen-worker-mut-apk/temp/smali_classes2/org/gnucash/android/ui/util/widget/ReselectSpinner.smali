.class public Lorg/gnucash/android/ui/util/widget/ReselectSpinner;
.super Landroid/support/v7/widget/AppCompatSpinner;
.source "ReselectSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/ReselectSpinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v6, 0x1

    .line 38
    .local v6, "sameSelected":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 39
    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/ReselectSpinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    .line 41
    .local v0, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/ReselectSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/ReselectSpinner;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 44
    .end local v0    # "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    :cond_0
    return-void

    .line 37
    .end local v6    # "sameSelected":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
