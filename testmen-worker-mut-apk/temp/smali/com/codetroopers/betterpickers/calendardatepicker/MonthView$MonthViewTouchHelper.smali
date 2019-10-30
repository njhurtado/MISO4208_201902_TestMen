.class Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;


# direct methods
.method public constructor <init>(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;Landroid/view/View;)V
    .locals 1
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    .line 624
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 620
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 621
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 625
    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .locals 11
    .param p1, "day"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 697
    iget-object v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v4, v9, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    .line 698
    .local v4, "offsetX":I
    sget v5, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_HEADER_SIZE:I

    .line 699
    .local v5, "offsetY":I
    iget-object v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v0, v9, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    .line 700
    .local v0, "cellHeight":I
    iget-object v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v9, v9, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWidth:I

    iget-object v10, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v10, v10, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v10, v10, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    div-int v1, v9, v10

    .line 701
    .local v1, "cellWidth":I
    add-int/lit8 v9, p1, -0x1

    iget-object v10, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    invoke-static {v10}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->access$100(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;)I

    move-result v10

    add-int v3, v9, v10

    .line 702
    .local v3, "index":I
    iget-object v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v9, v9, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    div-int v6, v3, v9

    .line 703
    .local v6, "row":I
    iget-object v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v9, v9, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    rem-int v2, v3, v9

    .line 704
    .local v2, "column":I
    mul-int v9, v2, v1

    add-int v7, v4, v9

    .line 705
    .local v7, "x":I
    mul-int v9, v6, v0

    add-int v8, v5, v9

    .line 707
    .local v8, "y":I
    add-int v9, v7, v1

    add-int v10, v8, v0

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 708
    return-void
.end method

.method private getItemDescription(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "day"    # I

    .prologue
    .line 718
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v2, v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v3, v3, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/Calendar;->set(III)V

    .line 719
    const-string v1, "dd MMMM yyyy"

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 720
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 719
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 722
    .local v0, "date":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v1, v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedDay:I

    if-ne p1, v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$string;->item_is_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .end local v0    # "date":Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 634
    .local v0, "focusedVirtualView":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    .line 640
    :cond_0
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 644
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    invoke-virtual {v1, p1, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getDayFromLocation(FF)I

    move-result v0

    .line 645
    .local v0, "day":I
    if-ltz v0, :cond_0

    .line 648
    .end local v0    # "day":I
    :goto_0
    return v0

    .restart local v0    # "day":I
    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .local v0, "day":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v1, v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    if-gt v0, v1, :cond_0

    .line 654
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 681
    packed-switch p2, :pswitch_data_0

    .line 687
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 683
    :pswitch_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    invoke-static {v0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->access$000(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;I)V

    .line 684
    const/4 v0, 0x1

    goto :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 661
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 668
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 670
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 672
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedDay:I

    if-ne p1, v0, :cond_0

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 676
    :cond_0
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 3
    .param p1, "virtualViewId"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    .line 630
    return-void
.end method
