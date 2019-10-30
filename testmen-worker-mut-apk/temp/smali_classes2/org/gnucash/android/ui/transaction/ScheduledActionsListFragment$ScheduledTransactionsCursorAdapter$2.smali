.class Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;
.super Ljava/lang/Object;
.source "ScheduledActionsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;

.field final synthetic val$checkBoxView:Landroid/view/View;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;

    .prologue
    .line 447
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;->this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;->val$checkBoxView:Landroid/view/View;

    iput-object p3, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 450
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;->this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;

    iget-object v2, v2, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;->this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;

    iget-object v2, v2, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 452
    .local v0, "extraPadding":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 453
    .local v1, "hitRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;->val$checkBoxView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 454
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 455
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 456
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 457
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 458
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;->val$parentView:Landroid/view/View;

    new-instance v3, Landroid/view/TouchDelegate;

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter$2;->val$checkBoxView:Landroid/view/View;

    invoke-direct {v3, v1, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 460
    .end local v0    # "extraPadding":F
    .end local v1    # "hitRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
