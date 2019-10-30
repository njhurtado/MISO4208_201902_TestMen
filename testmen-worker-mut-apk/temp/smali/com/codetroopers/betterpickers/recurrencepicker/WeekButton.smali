.class public Lcom/codetroopers/betterpickers/recurrencepicker/WeekButton;
.super Landroid/widget/ToggleButton;
.source "WeekButton.java"


# static fields
.field private static mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public static setSuggestedWidth(I)V
    .locals 0
    .param p0, "w"    # I

    .prologue
    .line 41
    sput p0, Lcom/codetroopers/betterpickers/recurrencepicker/WeekButton;->mWidth:I

    .line 42
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/ToggleButton;->onMeasure(II)V

    .line 47
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/WeekButton;->getMeasuredHeight()I

    move-result v0

    .line 48
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/WeekButton;->getMeasuredWidth()I

    move-result v1

    .line 49
    .local v1, "w":I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 50
    if-ge v1, v0, :cond_1

    .line 51
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 52
    move v0, v1

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/WeekButton;->setMeasuredDimension(II)V

    .line 61
    return-void

    .line 54
    :cond_1
    if-ge v0, v1, :cond_0

    .line 55
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 56
    move v1, v0

    goto :goto_0
.end method
