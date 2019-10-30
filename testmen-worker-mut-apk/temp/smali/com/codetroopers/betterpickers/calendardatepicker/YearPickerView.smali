.class public Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YearPickerView"


# instance fields
.field private mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;

.field private mBackgroundColor:I

.field private mChildSize:I

.field private mCircleColor:I

.field private final mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

.field private mSelectedView:Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

.field private mTextColor:I

.field private mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object p2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .line 68
    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v2, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->registerOnDateChangedListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;)V

    .line 69
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    .local v0, "frame":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/codetroopers/betterpickers/R$dimen;->date_picker_view_animator_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mViewSize:I

    .line 74
    sget v2, Lcom/codetroopers/betterpickers/R$dimen;->year_label_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mChildSize:I

    .line 75
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 76
    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mChildSize:I

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setFadingEdgeLength(I)V

    .line 77
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->init(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setDividerHeight(I)V

    .line 81
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->onDateChanged()V

    .line 83
    sget v2, Lcom/codetroopers/betterpickers/R$color;->circle_background:I

    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mBackgroundColor:I

    .line 84
    sget v2, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mCircleColor:I

    .line 85
    sget v2, Lcom/codetroopers/betterpickers/R$color;->ampm_text_color:I

    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mTextColor:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;Landroid/widget/TextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    .prologue
    .line 43
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mCircleColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    .prologue
    .line 43
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mTextColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;)Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;
    .param p1, "x1"    # Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mSelectedView:Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    return-object p1
.end method

.method private getYearFromTextView(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "years":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v2

    iget v0, v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    .local v0, "year":I
    :goto_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v2

    iget v2, v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-gt v0, v2, :cond_0

    .line 91
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    new-instance v2, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;

    sget v3, Lcom/codetroopers/betterpickers/R$layout;->calendar_year_label_text_view:I

    invoke-direct {v2, p0, p1, v3, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;-><init>(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;

    .line 94
    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_0

    .line 166
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public onDateChanged()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 172
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getSelectedDay()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v1

    iget v1, v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->postSetSelectionCentered(I)V

    .line 173
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 178
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 180
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->tryVibrate()V

    move-object v0, p2

    .line 100
    check-cast v0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    .line 101
    .local v0, "clickedView":Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;
    if-eqz v0, :cond_2

    .line 102
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mSelectedView:Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    if-eq v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mSelectedView:Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mSelectedView:Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 105
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mSelectedView:Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->requestLayout()V

    .line 107
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 108
    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->requestLayout()V

    .line 109
    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mSelectedView:Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->onYearSelected(I)V

    .line 112
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 114
    :cond_2
    return-void
.end method

.method public postSetSelectionCentered(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 147
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mViewSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mChildSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->postSetSelectionFromTop(II)V

    .line 148
    return-void
.end method

.method public postSetSelectionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 151
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;-><init>(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;II)V

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public setTheme(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "themeColors"    # Landroid/content/res/TypedArray;

    .prologue
    .line 58
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpRadialPointerColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mCircleColor:I

    .line 59
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpBodyUnselectedTextColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->ampm_text_color:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->mTextColor:I

    .line 60
    return-void
.end method
