.class Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;
.super Ljava/lang/Object;
.source "ScheduledActionsListFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;

.field final synthetic val$itemPosition:I


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;

    .prologue
    .line 520
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;->this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;

    iput p2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;->val$itemPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 524
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;->this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;->val$itemPosition:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 525
    if-eqz p2, :cond_0

    .line 526
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;->this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$300(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V

    .line 530
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;->this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->setActionModeTitle()V

    .line 531
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;->this$1:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$400(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V

    goto :goto_0
.end method
