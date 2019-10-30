.class Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity$1;
.super Ljava/lang/Object;
.source "FragmentListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity$1;->this$0:Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity$1;->this$0:Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->access$000(Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity$1;->this$0:Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->access$000(Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 35
    return-void
.end method
