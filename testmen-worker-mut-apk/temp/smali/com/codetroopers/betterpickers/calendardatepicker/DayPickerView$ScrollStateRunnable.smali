.class public Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field final synthetic this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;


# direct methods
.method protected constructor <init>(Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    iput p2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->mNewState:I

    .line 301
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xfa

    const/4 v6, 0x1

    .line 306
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    iget v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v9, v8, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mCurrentScrollState:I

    .line 307
    const-string v8, "MonthFragment"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 308
    const-string v8, "MonthFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new scroll state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->mNewState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " old state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    iget v10, v10, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->mNewState:I

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    iget v8, v8, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    iget v8, v8, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    if-eq v8, v6, :cond_6

    .line 315
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    iget v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v9, v8, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    .line 316
    const/4 v3, 0x0

    .line 317
    .local v3, "i":I
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v8, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 318
    .local v1, "child":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    if-gtz v8, :cond_1

    .line 319
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 321
    :cond_1
    if-nez v1, :cond_3

    .line 341
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 325
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_3
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getFirstVisiblePosition()I

    move-result v2

    .line 326
    .local v2, "firstPosition":I
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getLastVisiblePosition()I

    move-result v4

    .line 327
    .local v4, "lastPosition":I
    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v4, v8, :cond_4

    .line 328
    .local v6, "scroll":Z
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 329
    .local v7, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 330
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getHeight()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 331
    .local v5, "midpoint":I
    if-eqz v6, :cond_2

    const/4 v8, -0x1

    if-ge v7, v8, :cond_2

    .line 332
    if-le v0, v5, :cond_5

    .line 333
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v8, v7, v11}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 327
    .end local v0    # "bottom":I
    .end local v5    # "midpoint":I
    .end local v6    # "scroll":Z
    .end local v7    # "top":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 335
    .restart local v0    # "bottom":I
    .restart local v5    # "midpoint":I
    .restart local v6    # "scroll":Z
    .restart local v7    # "top":I
    :cond_5
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v8, v0, v11}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 339
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "firstPosition":I
    .end local v3    # "i":I
    .end local v4    # "lastPosition":I
    .end local v5    # "midpoint":I
    .end local v6    # "scroll":Z
    .end local v7    # "top":I
    :cond_6
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    iget v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v9, v8, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    goto :goto_1
.end method
